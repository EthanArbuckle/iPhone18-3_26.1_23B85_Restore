@interface CKAssistantSyncHandler
- (id)identifierForChatIdentifier:(id)identifier;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation CKAssistantSyncHandler

- (id)identifierForChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = [@"x-apple-sms-group://" stringByAppendingString:identifierCopy];
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  anchorCopy = anchor;
  validityCopy = validity;
  keyCopy = key;
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = anchorCopy;
      v28 = 2112;
      v29 = validityCopy;
      v30 = 2112;
      v31 = keyCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "beginSyncWithAnchor: %@ validity: %@ forKey: %@", buf, 0x20u);
    }
  }

  if ([keyCopy isEqualToString:@"com.apple.chatkit.groups"])
  {
    [(CKAssistantSyncHandler *)self syncDidEnd];
    v12 = IMDChatRecordCopyAllNamedChats();
    v13 = v12;
    if (v12)
    {
      if (CFArrayGetCount(v12))
      {
        [(CKAssistantSyncHandler *)self setFinalAnchor:0];
        [(CKAssistantSyncHandler *)self setPostAnchors:0];
        [(CKAssistantSyncHandler *)self setDomainObjects:0];
        v14 = +[NSMutableArray array];
        v15 = +[NSMutableArray array];
        v16 = +[NSMutableString string];
        [v16 appendFormat:@"%ld:", CFArrayGetCount(v13)];
        if (CFArrayGetCount(v13) >= 1)
        {
          v17 = 0;
          do
          {
            if (CFArrayGetValueAtIndex(v13, v17))
            {
              v26 = 0;
              *buf = 0;
              _IMDChatRecordBulkCopy();
              if ([v26 length])
              {
                v18 = objc_alloc_init(SASmsGroupName);
                v19 = [(CKAssistantSyncHandler *)self identifierForChatIdentifier:*buf];
                [v18 setIdentifier:v19];

                [v18 setGroupName:v26];
                [v18 setGroupNameId:*buf];
                [v15 addObject:v18];
                v20 = [NSString stringWithFormat:@"%ld", v17];
                [v14 addObject:v20];

                v21 = [NSString stringWithFormat:@"%@-%@", *buf, v26];
                [v16 appendString:v21];
              }

              if (*buf)
              {
                CFRelease(*buf);
              }

              if (v26)
              {
                CFRelease(v26);
              }
            }

            ++v17;
          }

          while (v17 < CFArrayGetCount(v13));
        }

        v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v16 hash]);
        [v14 addObject:v22];
        if (([v22 isEqualToString:validityCopy] & 1) == 0)
        {
          [infoCopy resetWithValidity:v22];
          [(CKAssistantSyncHandler *)self setPostAnchors:v14];
          [(CKAssistantSyncHandler *)self setDomainObjects:v15];
        }

        CFRelease(v13);
      }

      else
      {
        CFRelease(v13);
      }
    }
  }
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  anchorCopy = anchor;
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = anchorCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "getChangeAfterAnchor: %@", &v24, 0xCu);
    }
  }

  domainObjects = [(CKAssistantSyncHandler *)self domainObjects];
  if (![domainObjects count])
  {

    goto LABEL_12;
  }

  finalAnchor = [(CKAssistantSyncHandler *)self finalAnchor];
  v11 = [finalAnchor isEqualToString:anchorCopy];

  if (v11)
  {
LABEL_12:
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_13;
  }

  if (anchorCopy)
  {
    postAnchors = [(CKAssistantSyncHandler *)self postAnchors];
    v13 = [postAnchors indexOfObject:anchorCopy];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13 + 1;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      domainObjects2 = [(CKAssistantSyncHandler *)self domainObjects];
      v17 = [domainObjects2 count];
      v24 = 134218240;
      v25 = v14;
      v26 = 2048;
      v27 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Syncing index: %lu from %lu available objects.", &v24, 0x16u);
    }
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL || (-[CKAssistantSyncHandler domainObjects](self, "domainObjects"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v14 < [v18 count], v18, !v19))
  {
    [infoCopy setObject:0];
    [infoCopy setPostAnchor:anchorCopy];
  }

  else
  {
    domainObjects3 = [(CKAssistantSyncHandler *)self domainObjects];
    v21 = [domainObjects3 objectAtIndex:v14];
    [infoCopy setObject:v21];

    postAnchors2 = [(CKAssistantSyncHandler *)self postAnchors];
    v23 = [postAnchors2 objectAtIndex:v14];
    [infoCopy setPostAnchor:v23];
  }
}

- (void)syncDidEnd
{
  finalAnchor = self->_finalAnchor;
  self->_finalAnchor = 0;

  postAnchors = self->_postAnchors;
  self->_postAnchors = 0;

  domainObjects = self->_domainObjects;
  self->_domainObjects = 0;
}

@end