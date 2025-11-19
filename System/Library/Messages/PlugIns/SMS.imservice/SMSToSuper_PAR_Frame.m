@interface SMSToSuper_PAR_Frame
- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7;
- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8;
@end

@implementation SMSToSuper_PAR_Frame

- (void)parser:(id)a3 context:(id)a4 didStartElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7 attributes:(id)a8
{
  v12 = IMCopyNormalizedAttributes();
  v13 = objc_alloc_init(IMDSMSPart);
  [a4 _addPart:v13];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v12;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Found PART with attributes: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = a5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "    element name: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = a6;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "    namespaceURI: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = a7;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "   qualifiedName: %@", &v19, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "         smsPart: %@", &v19, 0xCu);
    }
  }
}

- (void)parser:(id)a3 context:(id)a4 didEndElement:(id)a5 namespaceURI:(id)a6 qualifiedName:(id)a7
{
  v7 = [objc_msgSend(a4 orderedParts];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Ending SMSPart: %@", &v9, 0xCu);
    }
  }
}

@end