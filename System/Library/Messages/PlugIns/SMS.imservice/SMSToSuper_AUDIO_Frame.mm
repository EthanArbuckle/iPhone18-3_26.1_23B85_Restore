@interface SMSToSuper_AUDIO_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation SMSToSuper_AUDIO_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v13 = IMCopyNormalizedAttributes();
  v14 = [v13 objectForKey:@"src"];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = v13;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Found audio part with attributes: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = element;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "    element name: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = i;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "    namespaceURI: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = name;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "   qualifiedName: %@", &v19, 0xCu);
    }
  }

  [(SMSToSuper_Default_Frame *)self _addAttachmentPartWithSource:v14 toContext:context];
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  orderedParts = [objc_msgSend(context orderedParts];
  v8 = [objc_msgSend(orderedParts "attachmentParts")];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = orderedParts;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Ending SMSPart(%@)'s attachmentPart: %@", &v10, 0x16u);
    }
  }
}

@end