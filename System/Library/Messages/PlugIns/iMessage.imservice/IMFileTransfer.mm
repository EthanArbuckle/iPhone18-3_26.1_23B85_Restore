@interface IMFileTransfer
- (BOOL)shouldFastSend;
@end

@implementation IMFileTransfer

- (BOOL)shouldFastSend
{
  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 objectForKey:@"should-not-fast-send"];
  v5 = v4;
  if (v4 && [(__CFString *)v4 BOOLValue])
  {
    v6 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      guid = [(IMFileTransfer *)self guid];
      v13 = 138412546;
      v14 = guid;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Not fast sending transfer %@ due to server override %@", &v13, 0x16u);
    }

    isSticker2 = 0;
  }

  else
  {
    v9 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      isSticker = [(IMFileTransfer *)self isSticker];
      v11 = @"NO";
      if (isSticker)
      {
        v11 = @"YES";
      }

      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "shouldFastSend serverbag %@,  isSticker %@", &v13, 0x16u);
    }

    isSticker2 = [(IMFileTransfer *)self isSticker];
  }

  return isSticker2;
}

@end