@interface SMSToSuper_TEXT_Frame
- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters;
@end

@implementation SMSToSuper_TEXT_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v12 = IMCopyNormalizedAttributes();
  v13 = [objc_msgSend(context "orderedParts")];
  if (!v13)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Unexpected lack of PART, creating one", &v23, 2u);
      }
    }

    v13 = objc_alloc_init(IMDSMSPart);
    [context _addPart:v13];
  }

  [v12 objectForKey:@"src"];
  v15 = SMSCopySanitizedContentLocation();
  v16 = [[IMDSMSTextPart alloc] initWithContentLocation:v15];
  [v13 addTextPart:v16];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      nameCopy = v12;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Found text part with attributes: %@", &v23, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      nameCopy = element;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "    element name: %@", &v23, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      nameCopy = i;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "    namespaceURI: %@", &v23, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      nameCopy = name;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "   qualifiedName: %@", &v23, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      nameCopy = v13;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "      latestPart: %@", &v23, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      nameCopy = v16;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "        textPart: %@", &v23, 0xCu);
    }
  }
}

- (void)parser:(id)parser context:(id)context foundCharacters:(id)characters
{
  v9 = [objc_msgSend(objc_msgSend(objc_msgSend(context "orderedParts")];
  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = MarcoLoggingStringForMessageData();
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "CurrentTextPart %@ is eating found characters %@", buf, 0x16u);
      }
    }

    [v9 appendText:characters];
  }

  else
  {
    if (v10)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = MarcoLoggingStringForMessageData();
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "SMS text parser found unexpected characters without a corresponding textPart! %@", buf, 0xCu);
      }
    }

    v13.receiver = self;
    v13.super_class = SMSToSuper_TEXT_Frame;
    [(SMSToSuper_Default_Frame *)&v13 parser:parser context:context foundCharacters:characters];
  }
}

- (void)parser:(id)parser context:(id)context didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  orderedParts = [objc_msgSend(context orderedParts];
  v8 = [objc_msgSend(orderedParts "textParts")];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = orderedParts;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Ending SMSPart(%@)'s textPart: %@", &v10, 0x16u);
    }
  }
}

@end