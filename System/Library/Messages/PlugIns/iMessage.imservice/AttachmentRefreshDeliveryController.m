@interface AttachmentRefreshDeliveryController
- (AttachmentRefreshDeliveryController)initWithSession:(id)a3;
- (void)_sendFTMessage:(id)a3 withCompletionBlock:(id)a4;
- (void)dealloc;
- (void)sendFTMessage:(id)a3 attempts:(unint64_t)a4 withCompletionBlock:(id)a5;
@end

@implementation AttachmentRefreshDeliveryController

- (AttachmentRefreshDeliveryController)initWithSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = AttachmentRefreshDeliveryController;
  v4 = [(AttachmentRefreshDeliveryController *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(+[FTMessageDelivery APNSMessageDeliveryClass]);
    v4->_messageDelivery = v5;
    [(FTMessageDelivery *)v5 setMaxConcurrentMessages:2];
    objc_storeWeak(&v4->_session, a3);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AttachmentRefreshDeliveryController;
  [(AttachmentRefreshDeliveryController *)&v3 dealloc];
}

- (void)_sendFTMessage:(id)a3 withCompletionBlock:(id)a4
{
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v10 = [a3 messageBody];
      v11 = 2112;
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 command]);
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Sending FTMessage: %@ command %@ ", buf, 0x16u);
    }
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_91DBC;
  v8[3] = &unk_114A08;
  v8[4] = a4;
  [a3 setCompletionBlock:v8];
  [(FTMessageDelivery *)self->_messageDelivery sendMessage:a3];
}

- (void)sendFTMessage:(id)a3 attempts:(unint64_t)a4 withCompletionBlock:(id)a5
{
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "sendFTMessage %@ attempts %lu ", buf, 0x16u);
    }
  }

  if (a5)
  {
    if (a3)
    {
      if ([+[IMLockdownManager isInternalInstall]&& IMGetCachedDomainBoolForKey() sharedInstance]
      {
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "************* failed sending sticker refresh due to defaults being set. Please do defaults delete com.apple.madrid FailSendingFileRefreshMessage to fix yourself", buf, 2u);
          }
        }

        (*(a5 + 2))(a5, a3, 0, 0);
      }

      else if (a4 > 1)
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "AttachmentRefreshDeliveryController failed to refresh. Ran out of attempts", buf, 2u);
          }
        }

        (*(a5 + 2))(a5, a3, 0, 4);
      }

      else
      {
        objc_initWeak(buf, a3);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_92518;
        v14[3] = &unk_114A58;
        v15[1] = a4;
        v14[4] = self;
        objc_copyWeak(v15, buf);
        v14[5] = a5;
        [(AttachmentRefreshDeliveryController *)self _sendFTMessage:a3 withCompletionBlock:v14];
        objc_destroyWeak(v15);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v17 = "[AttachmentRefreshDeliveryController sendFTMessage:attempts:withCompletionBlock:]";
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "nil message sent to %s", buf, 0xCu);
        }
      }

      (*(a5 + 2))(a5, 0, 0, 5);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "AttachmentRefreshDelivery invalid parameters passed to sendFTMessage. No completion block", buf, 2u);
    }
  }
}

@end