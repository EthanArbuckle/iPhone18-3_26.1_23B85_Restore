@interface IMDChatAssetRefreshController
- (BOOL)shouldRefreshTTLForAsset:(id)a3 chatGUID:(id)a4;
- (IMDChatAssetRefreshController)initWithSession:(id)a3;
- (MessageServiceSession)session;
- (double)maxRefreshTime;
- (double)minRefreshTime;
- (id)attachmentRefreshDeliveryController;
- (void)dealloc;
- (void)refreshTTLForChatAsset:(id)a3 chat:(id)a4 refreshDate:(id)a5 resendBlock:(id)a6 successBlock:(id)a7;
- (void)refreshTTLForChatAsset:(id)a3 chat:(id)a4 resendBlock:(id)a5 successBlock:(id)a6;
@end

@implementation IMDChatAssetRefreshController

- (IMDChatAssetRefreshController)initWithSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMDChatAssetRefreshController;
  v5 = [(IMDChatAssetRefreshController *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    refreshRequests = v5->_refreshRequests;
    v5->_refreshRequests = v6;

    objc_storeWeak(&v5->_session, v4);
  }

  return v5;
}

- (void)dealloc
{
  refreshRequests = self->_refreshRequests;
  self->_refreshRequests = 0;

  v4.receiver = self;
  v4.super_class = IMDChatAssetRefreshController;
  [(IMDChatAssetRefreshController *)&v4 dealloc];
}

- (id)attachmentRefreshDeliveryController
{
  v2 = [(IMDChatAssetRefreshController *)self session];
  v3 = [v2 attachmentRefreshDeliveryController];

  return v3;
}

- (BOOL)shouldRefreshTTLForAsset:(id)a3 chatGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "not refreshing chat asset - no transfer", &v20, 2u);
      }

      goto LABEL_20;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  v8 = [(IMDChatAssetRefreshController *)self refreshRequests];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(IMDChatAssetRefreshController *)self refreshRequests];
        v20 = 138412290;
        v21 = *&v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "not refreshing asset - request already in flight. %@", &v20, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:v6];
  v15 = v14;

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 134218498;
      v21 = v15;
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Time since last refresh: %f for chat: %@, refresh date: %@", &v20, 0x20u);
    }
  }

  [(IMDChatAssetRefreshController *)self minRefreshTime];
  if (v15 < v17)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = 134217984;
        v21 = v15;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "not refreshing chat asset - time since last refresh outside window %f", &v20, 0xCu);
      }

LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v18 = 1;
LABEL_22:

  return v18;
}

- (void)refreshTTLForChatAsset:(id)a3 chat:(id)a4 resendBlock:(id)a5 successBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [v13 userInfo];
  v14 = [v13 refreshDate];

  [(IMDChatAssetRefreshController *)self refreshTTLForChatAsset:v15 chat:v12 refreshDate:v14 resendBlock:v11 successBlock:v10];
}

- (void)refreshTTLForChatAsset:(id)a3 chat:(id)a4 refreshDate:(id)a5 resendBlock:(id)a6 successBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v36 = a7;
  v16 = [v13 guid];
  v17 = [(IMDChatAssetRefreshController *)self shouldRefreshTTLForAsset:v14 chatGUID:v16];

  if (v17)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = *&v12;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "requesting to refresh tll for asset %@", buf, 0xCu);
      }
    }

    v19 = [v12 objectForKey:@"decryption-key"];
    if (v19)
    {
      v20 = [v12 objectForKey:@"file-size"];
      if (v20)
      {
        v21 = [v12 objectForKey:@"mmcs-owner"];
        if (v21)
        {
          v22 = [v12 objectForKey:@"mmcs-signature-hex"];
          if (v22)
          {
            v23 = [v12 objectForKey:@"mmcs-url"];
            v24 = v23 != 0;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = +[NSDate date];
    [v25 timeIntervalSinceDate:v14];
    v27 = v26;

    [(IMDChatAssetRefreshController *)self maxRefreshTime];
    if (v27 <= v28 && v24)
    {
      v29 = v12;
      v30 = objc_alloc_init(FTiMessageRequestMMCSFileRefreshToken);
      AttachmentRefreshUtilConfigureStickerToken(v30, v29);
      v31 = [(IMDChatAssetRefreshController *)self refreshRequests];
      v32 = [v13 guid];
      [v31 addObject:v32];

      v33 = [(IMDChatAssetRefreshController *)self attachmentRefreshDeliveryController];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_74044;
      v37[3] = &unk_113FD0;
      v37[4] = self;
      v38 = v13;
      v39 = v15;
      v40 = v36;
      [v33 sendFTMessage:v30 attempts:0 withCompletionBlock:v37];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = @"NO";
          if (v24)
          {
            v35 = @"YES";
          }

          *buf = 134218242;
          v42 = v27;
          v43 = 2112;
          v44 = v35;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "It's been a long time since a refresh has occurred, just re-send the transfer to everyone. timeSinceLastRefresh: %f, canRefreshAsset: %@", buf, 0x16u);
        }
      }

      v15[2](v15);
    }
  }
}

- (double)minRefreshTime
{
  v2 = IMGetDomainIntForKey();
  result = v2;
  if (v2 <= 0)
  {
    return 864000.0;
  }

  return result;
}

- (double)maxRefreshTime
{
  v2 = IMGetDomainIntForKey();
  result = v2;
  if (v2 <= 0)
  {
    return 2160000.0;
  }

  return result;
}

- (MessageServiceSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end