@interface SMSToSuper_PAR_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation SMSToSuper_PAR_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v12 = IMCopyNormalizedAttributes();
  v13 = objc_alloc_init(IMDSMSPart);
  [context _addPart:v13];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = v12;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Found PART with attributes: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = element;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "    element name: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = i;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "    namespaceURI: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = name;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "   qualifiedName: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      nameCopy = v13;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "         smsPart: %@", &v19, 0xCu);
    }
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  orderedParts = [objc_msgSend(context orderedParts];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = orderedParts;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Ending SMSPart: %@", &v9, 0xCu);
    }
  }
}

@end