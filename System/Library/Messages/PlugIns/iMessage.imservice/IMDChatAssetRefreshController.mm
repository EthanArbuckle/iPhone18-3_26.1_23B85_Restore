@interface IMDChatAssetRefreshController
- (BOOL)shouldRefreshTTLForAsset:(id)asset chatGUID:(id)d;
- (IMDChatAssetRefreshController)initWithSession:(id)session;
- (MessageServiceSession)session;
- (double)maxRefreshTime;
- (double)minRefreshTime;
- (id)attachmentRefreshDeliveryController;
- (void)dealloc;
- (void)refreshTTLForChatAsset:(id)asset chat:(id)chat refreshDate:(id)date resendBlock:(id)block successBlock:(id)successBlock;
- (void)refreshTTLForChatAsset:(id)asset chat:(id)chat resendBlock:(id)block successBlock:(id)successBlock;
@end

@implementation IMDChatAssetRefreshController

- (IMDChatAssetRefreshController)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = IMDChatAssetRefreshController;
  v5 = [(IMDChatAssetRefreshController *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableSet);
    refreshRequests = v5->_refreshRequests;
    v5->_refreshRequests = v6;

    objc_storeWeak(&v5->_session, sessionCopy);
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
  session = [(IMDChatAssetRefreshController *)self session];
  attachmentRefreshDeliveryController = [session attachmentRefreshDeliveryController];

  return attachmentRefreshDeliveryController;
}

- (BOOL)shouldRefreshTTLForAsset:(id)asset chatGUID:(id)d
{
  assetCopy = asset;
  dCopy = d;
  if (!assetCopy)
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

  refreshRequests = [(IMDChatAssetRefreshController *)self refreshRequests];
  v9 = [refreshRequests containsObject:dCopy];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        refreshRequests2 = [(IMDChatAssetRefreshController *)self refreshRequests];
        v20 = 138412290;
        v21 = *&refreshRequests2;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "not refreshing asset - request already in flight. %@", &v20, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v13 = +[NSDate date];
  [v13 timeIntervalSinceDate:assetCopy];
  v15 = v14;

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 134218498;
      v21 = v15;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = assetCopy;
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

- (void)refreshTTLForChatAsset:(id)asset chat:(id)chat resendBlock:(id)block successBlock:(id)successBlock
{
  successBlockCopy = successBlock;
  blockCopy = block;
  chatCopy = chat;
  assetCopy = asset;
  userInfo = [assetCopy userInfo];
  refreshDate = [assetCopy refreshDate];

  [(IMDChatAssetRefreshController *)self refreshTTLForChatAsset:userInfo chat:chatCopy refreshDate:refreshDate resendBlock:blockCopy successBlock:successBlockCopy];
}

- (void)refreshTTLForChatAsset:(id)asset chat:(id)chat refreshDate:(id)date resendBlock:(id)block successBlock:(id)successBlock
{
  assetCopy = asset;
  chatCopy = chat;
  dateCopy = date;
  blockCopy = block;
  successBlockCopy = successBlock;
  guid = [chatCopy guid];
  v17 = [(IMDChatAssetRefreshController *)self shouldRefreshTTLForAsset:dateCopy chatGUID:guid];

  if (v17)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = *&assetCopy;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "requesting to refresh tll for asset %@", buf, 0xCu);
      }
    }

    v19 = [assetCopy objectForKey:@"decryption-key"];
    if (v19)
    {
      v20 = [assetCopy objectForKey:@"file-size"];
      if (v20)
      {
        v21 = [assetCopy objectForKey:@"mmcs-owner"];
        if (v21)
        {
          v22 = [assetCopy objectForKey:@"mmcs-signature-hex"];
          if (v22)
          {
            v23 = [assetCopy objectForKey:@"mmcs-url"];
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
    [v25 timeIntervalSinceDate:dateCopy];
    v27 = v26;

    [(IMDChatAssetRefreshController *)self maxRefreshTime];
    if (v27 <= v28 && v24)
    {
      v29 = assetCopy;
      v30 = objc_alloc_init(FTiMessageRequestMMCSFileRefreshToken);
      AttachmentRefreshUtilConfigureStickerToken(v30, v29);
      refreshRequests = [(IMDChatAssetRefreshController *)self refreshRequests];
      guid2 = [chatCopy guid];
      [refreshRequests addObject:guid2];

      attachmentRefreshDeliveryController = [(IMDChatAssetRefreshController *)self attachmentRefreshDeliveryController];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_74044;
      v37[3] = &unk_113FD0;
      v37[4] = self;
      v38 = chatCopy;
      v39 = blockCopy;
      v40 = successBlockCopy;
      [attachmentRefreshDeliveryController sendFTMessage:v30 attempts:0 withCompletionBlock:v37];
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

      blockCopy[2](blockCopy);
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