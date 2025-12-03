@interface NFCISO15693Tag
- (NSData)icSerialNumber;
- (NSData)identifier;
- (id)_generateRequestHeader:(unsigned __int8)header flags:(unsigned __int8)flags;
- (id)_parseResponseErrorWithData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)icManufacturerCode;
- (void)_wtxRetryWithCommnand:(id)commnand maxRetry:(int64_t)retry completionHandler:(id)handler;
- (void)readMultipleBlocksWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)selectWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler;
- (void)sendCustomCommandWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)sendRequestWithFlag:(int64_t)flag commandCode:(int64_t)code data:(id)data completionHandler:(id)handler;
- (void)stayQuietWithCompletionHandler:(id)handler;
@end

@implementation NFCISO15693Tag

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NFCISO15693Tag;
  return [(NFCTag *)&v4 copyWithZone:zone];
}

- (id)_generateRequestHeader:(unsigned __int8)header flags:(unsigned __int8)flags
{
  headerCopy = header;
  v13[0] = flags;
  v13[1] = header;
  v6 = 1;
  if (header <= 0x9Fu && header != 57)
  {
    if ((flags & 0x10) != 0)
    {
      v6 = 0;
      v7 = flags & 0xDF;
    }

    else
    {
      v7 = flags | 0x20;
    }

    v13[0] = v7;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:v13 length:2];
  if (headerCopy == 57 || headerCopy > 0x9F || !v6)
  {
    if (headerCopy - 160 <= 0x3F)
    {
      icManufacturerCode = [(NFCISO15693Tag *)self icManufacturerCode];
      [v8 appendBytes:&icManufacturerCode length:1];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NFCISO15693Tag;
    identifier = [(NFCTag *)&v12 identifier];
    [v8 appendData:identifier];
  }

  return v8;
}

- (NSData)identifier
{
  v5.receiver = self;
  v5.super_class = NFCISO15693Tag;
  identifier = [(NFCTag *)&v5 identifier];
  v3 = [NFCISO15693ReaderSessionTag reverseByteOrder:identifier];

  return v3;
}

- (unint64_t)icManufacturerCode
{
  v5 = 0;
  identifier = [(NFCISO15693Tag *)self identifier];
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:identifier manufacturerCode:&v5 serialNumber:0];

  if (v3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (NSData)icSerialNumber
{
  identifier = [(NFCISO15693Tag *)self identifier];
  v8 = 0;
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:identifier manufacturerCode:0 serialNumber:&v8];
  v4 = v8;

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

- (id)_parseResponseErrorWithData:(id)data
{
  v18[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  if (![dataCopy length])
  {
    v17 = @"TagResponseInvalidLength";
    v18[0] = MEMORY[0x277CBEC38];
    v6 = MEMORY[0x277CBEAC0];
    v7 = v18;
    v8 = &v17;
LABEL_8:
    v9 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];
    v5 = [NFCError errorWithCode:102 userInfo:v9];
    goto LABEL_9;
  }

  if ((*bytes & 1) == 0)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if ([dataCopy length] != 2)
  {
    v13 = @"TagResponseInvalidLength";
    v14 = MEMORY[0x277CBEC38];
    v6 = MEMORY[0x277CBEAC0];
    v7 = &v14;
    v8 = &v13;
    goto LABEL_8;
  }

  v15 = @"ISO15693TagResponseErrorCode";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[1]];
  v16 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v5 = [NFCError errorWithCode:102 userInfo:v10];

LABEL_9:
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)readMultipleBlocksWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372BB558;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)sendCustomCommandWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372BB66C;
  v7[3] = &unk_278A29C38;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)stayQuietWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag stayQuietWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = [(NFCISO15693Tag *)self _generateRequestHeader:2 flags:32];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372BB7E8;
  v8[3] = &unk_278A29C10;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v6 completionHandler:v8];
}

- (void)selectWithRequestFlags:(unsigned __int8)flags completionHandler:(id)handler
{
  flagsCopy = flags;
  handlerCopy = handler;
  v7 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag selectWithRequestFlags:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  0x20 = [(NFCISO15693Tag *)self _generateRequestHeader:37 flags:flagsCopy & 0xFFFFFFCF | 0x20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372BD178;
  v10[3] = &unk_278A29F78;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:0x20 completionHandler:v10];
}

- (void)_wtxRetryWithCommnand:(id)commnand maxRetry:(int64_t)retry completionHandler:(id)handler
{
  commnandCopy = commnand;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2372C182C;
  v13[3] = &unk_278A2A040;
  v15 = handlerCopy;
  retryCopy = retry;
  v17 = a2;
  v13[4] = self;
  v14 = commnandCopy;
  v11 = commnandCopy;
  v12 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v11 completionHandler:v13];
}

- (void)sendRequestWithFlag:(int64_t)flag commandCode:(int64_t)code data:(id)data completionHandler:(id)handler
{
  codeCopy = code;
  flagCopy = flag;
  dataCopy = data;
  handlerCopy = handler;
  v12 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag sendRequestWithFlag:commandCode:data:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  LOBYTE(state.opaque[0]) = flagCopy;
  BYTE1(state.opaque[0]) = codeCopy;
  v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:2];
  v14 = v13;
  if (dataCopy)
  {
    [v13 appendData:dataCopy];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2372C23A8;
  v16[3] = &unk_278A29C10;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(NFCTag *)self _transceiveWithData:v14 completionHandler:v16];
}

@end