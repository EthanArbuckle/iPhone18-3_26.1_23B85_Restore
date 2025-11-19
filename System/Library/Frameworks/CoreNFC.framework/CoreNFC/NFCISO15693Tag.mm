@interface NFCISO15693Tag
- (NSData)icSerialNumber;
- (NSData)identifier;
- (id)_generateRequestHeader:(unsigned __int8)a3 flags:(unsigned __int8)a4;
- (id)_parseResponseErrorWithData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)icManufacturerCode;
- (void)_wtxRetryWithCommnand:(id)a3 maxRetry:(int64_t)a4 completionHandler:(id)a5;
- (void)readMultipleBlocksWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)selectWithRequestFlags:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)sendCustomCommandWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)sendRequestWithFlag:(int64_t)a3 commandCode:(int64_t)a4 data:(id)a5 completionHandler:(id)a6;
- (void)stayQuietWithCompletionHandler:(id)a3;
@end

@implementation NFCISO15693Tag

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = NFCISO15693Tag;
  return [(NFCTag *)&v4 copyWithZone:a3];
}

- (id)_generateRequestHeader:(unsigned __int8)a3 flags:(unsigned __int8)a4
{
  v4 = a3;
  v13[0] = a4;
  v13[1] = a3;
  v6 = 1;
  if (a3 <= 0x9Fu && a3 != 57)
  {
    if ((a4 & 0x10) != 0)
    {
      v6 = 0;
      v7 = a4 & 0xDF;
    }

    else
    {
      v7 = a4 | 0x20;
    }

    v13[0] = v7;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:v13 length:2];
  if (v4 == 57 || v4 > 0x9F || !v6)
  {
    if (v4 - 160 <= 0x3F)
    {
      v11 = [(NFCISO15693Tag *)self icManufacturerCode];
      [v8 appendBytes:&v11 length:1];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NFCISO15693Tag;
    v9 = [(NFCTag *)&v12 identifier];
    [v8 appendData:v9];
  }

  return v8;
}

- (NSData)identifier
{
  v5.receiver = self;
  v5.super_class = NFCISO15693Tag;
  v2 = [(NFCTag *)&v5 identifier];
  v3 = [NFCISO15693ReaderSessionTag reverseByteOrder:v2];

  return v3;
}

- (unint64_t)icManufacturerCode
{
  v5 = 0;
  v2 = [(NFCISO15693Tag *)self identifier];
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:v2 manufacturerCode:&v5 serialNumber:0];

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
  v2 = [(NFCISO15693Tag *)self identifier];
  v8 = 0;
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:v2 manufacturerCode:0 serialNumber:&v8];
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

- (id)_parseResponseErrorWithData:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bytes];
  if (![v3 length])
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

  if ((*v4 & 1) == 0)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if ([v3 length] != 2)
  {
    v13 = @"TagResponseInvalidLength";
    v14 = MEMORY[0x277CBEC38];
    v6 = MEMORY[0x277CBEAC0];
    v7 = &v14;
    v8 = &v13;
    goto LABEL_8;
  }

  v15 = @"ISO15693TagResponseErrorCode";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4[1]];
  v16 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v5 = [NFCError errorWithCode:102 userInfo:v10];

LABEL_9:
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)readMultipleBlocksWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372BB558;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)sendCustomCommandWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372BB66C;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)stayQuietWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  [(NFCTag *)self _transceiveWithData:v6 completionHandler:v8];
}

- (void)selectWithRequestFlags:(unsigned __int8)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag selectWithRequestFlags:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v8 = [(NFCISO15693Tag *)self _generateRequestHeader:37 flags:v4 & 0xFFFFFFCF | 0x20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2372BD178;
  v10[3] = &unk_278A29F78;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(NFCTag *)self _transceiveWithData:v8 completionHandler:v10];
}

- (void)_wtxRetryWithCommnand:(id)a3 maxRetry:(int64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2372C182C;
  v13[3] = &unk_278A2A040;
  v15 = v10;
  v16 = a4;
  v17 = a2;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  v12 = v10;
  [(NFCTag *)self _transceiveWithData:v11 completionHandler:v13];
}

- (void)sendRequestWithFlag:(int64_t)a3 commandCode:(int64_t)a4 data:(id)a5 completionHandler:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  v12 = _os_activity_create(&dword_23728C000, "NFCISO15693Tag sendRequestWithFlag:commandCode:data:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  LOBYTE(state.opaque[0]) = v8;
  BYTE1(state.opaque[0]) = v7;
  v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:2];
  v14 = v13;
  if (v10)
  {
    [v13 appendData:v10];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2372C23A8;
  v16[3] = &unk_278A29C10;
  v17 = v11;
  v15 = v11;
  [(NFCTag *)self _transceiveWithData:v14 completionHandler:v16];
}

@end