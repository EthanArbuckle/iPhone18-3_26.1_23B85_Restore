@interface CKAssistantSyncHandler
- (id)identifierForChatIdentifier:(id)a3;
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)syncDidEnd;
@end

@implementation CKAssistantSyncHandler

- (id)identifierForChatIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [@"x-apple-sms-group://" stringByAppendingString:v3];
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6
{
  v24 = a3;
  v25 = a4;
  v10 = a5;
  v23 = a6;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = v24;
      v28 = 2112;
      v29 = v25;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "beginSyncWithAnchor: %@ validity: %@ forKey: %@", buf, 0x20u);
    }
  }

  if ([v10 isEqualToString:@"com.apple.chatkit.groups"])
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
        if (([v22 isEqualToString:v25] & 1) == 0)
        {
          [v23 resetWithValidity:v22];
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

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "getChangeAfterAnchor: %@", &v24, 0xCu);
    }
  }

  v9 = [(CKAssistantSyncHandler *)self domainObjects];
  if (![v9 count])
  {

    goto LABEL_12;
  }

  v10 = [(CKAssistantSyncHandler *)self finalAnchor];
  v11 = [v10 isEqualToString:v6];

  if (v11)
  {
LABEL_12:
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_13;
  }

  if (v6)
  {
    v12 = [(CKAssistantSyncHandler *)self postAnchors];
    v13 = [v12 indexOfObject:v6];

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
      v16 = [(CKAssistantSyncHandler *)self domainObjects];
      v17 = [v16 count];
      v24 = 134218240;
      v25 = v14;
      v26 = 2048;
      v27 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Syncing index: %lu from %lu available objects.", &v24, 0x16u);
    }
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL || (-[CKAssistantSyncHandler domainObjects](self, "domainObjects"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v14 < [v18 count], v18, !v19))
  {
    [v7 setObject:0];
    [v7 setPostAnchor:v6];
  }

  else
  {
    v20 = [(CKAssistantSyncHandler *)self domainObjects];
    v21 = [v20 objectAtIndex:v14];
    [v7 setObject:v21];

    v22 = [(CKAssistantSyncHandler *)self postAnchors];
    v23 = [v22 objectAtIndex:v14];
    [v7 setPostAnchor:v23];
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