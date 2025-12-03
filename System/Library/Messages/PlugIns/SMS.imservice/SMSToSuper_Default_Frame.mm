@interface SMSToSuper_Default_Frame
- (void)_addAttachmentPartWithSource:(id)source toContext:(id)context;
- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters;
@end

@implementation SMSToSuper_Default_Frame

- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters
{
  v5.receiver = self;
  v5.super_class = SMSToSuper_Default_Frame;
  -[SMSToSuper_Default_Frame parser:context:foundCharacters:](&v5, "parser:context:foundCharacters:", parser, context, [characters stringByRemovingCharactersFromSet:{+[NSCharacterSet newlineCharacterSet](NSCharacterSet, "newlineCharacterSet")}]);
}

- (void)_addAttachmentPartWithSource:(id)source toContext:(id)context
{
  v5 = [objc_msgSend(context "orderedParts")];
  if (!v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Unexpected lack of PART, creating one", &v10, 2u);
      }
    }

    v5 = objc_alloc_init(IMDSMSPart);
    [context _addPart:v5];
  }

  v7 = SMSCopySanitizedContentLocation();
  v8 = [[IMDSMSAttachmentPart alloc] initWithContentLocation:v7];
  [v5 addAttachmentPart:v8];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Adding attachmentPart %@ to latestPart %@", &v10, 0x16u);
    }
  }
}

@end