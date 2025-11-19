@interface NotificationViewController
- (id)_launchURLForActionIdentifier:(id)a3;
- (id)_notificationServiceConnection;
- (int64_t)_previewContentType;
- (void)_showContentViewControllerIfNeeded;
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
@end

@implementation NotificationViewController

- (void)_showContentViewControllerIfNeeded
{
  if ([(NotificationViewController *)self _hasAnyPreviewableContent]&& self->_contentIsPreviewable)
  {
    if (self->_extraPreviewText)
    {
      v3 = [[TextPreviewViewController alloc] initWithPreviewText:self->_extraPreviewText footerTitle:self->_previewFooterTitle footerSubtitle:self->_previewFooterSubtitle];
LABEL_13:
      v11 = [(TextPreviewViewController *)v3 view];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:1];
      [v11 setAutoresizingMask:18];
      v12 = [(NotificationViewController *)self view];
      [v12 bounds];
      Width = CGRectGetWidth(v32);
      v14 = [(NotificationViewController *)self view];
      [v14 bounds];
      [v11 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v33)}];

      if (self->_extraPreviewText)
      {
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_1000023FC;
        v20 = &unk_1000082C8;
        v21 = self;
        v22 = v3;
        [UIView performWithoutAnimation:&v17];
      }

      [(NotificationViewController *)self addChildViewController:v3, v17, v18, v19, v20, v21];
      v15 = [(NotificationViewController *)self view];
      [v15 addSubview:v11];

      [(TextPreviewViewController *)v3 didMoveToParentViewController:self];
      v16 = +[BCSAWDLogger sharedLogger];
      [v16 logBarcodePreviewedEventForContentType:{-[NotificationViewController _previewContentType](self, "_previewContentType")}];

      return;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v4 = qword_10000CCE8;
    v31 = qword_10000CCE8;
    if (!qword_10000CCE8)
    {
      *buf = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100002EB0;
      v26 = &unk_100008318;
      v27 = &v28;
      sub_100002EB0(buf);
      v4 = v29[3];
    }

    v5 = v4;
    _Block_object_dispose(&v28, 8);
    v6 = [v4 sharedController];
    v7 = [v6 barcodePreviewActionForContext:0 URL:self->_defaultURL result:-[DDScannerResult coreResult](self->_scannerResult contact:"coreResult") ics:{self->_contact, self->_icsString}];
    previewAction = self->_previewAction;
    self->_previewAction = v7;

    v9 = self->_previewAction;
    if (v9)
    {
      v10 = [(DDPreviewAction *)v9 viewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 _setShowingLinkPreviewWithMinimalUI:1];
      }

      v3 = [[PreviewWithFooterViewController alloc] initWithPreviewViewController:v10 footerTitle:self->_previewFooterTitle footerSubtitle:self->_previewFooterSubtitle];

      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003050();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "NotificationViewController: the notification banner doesn't have any content that can be previewed!", buf, 2u);
  }
}

- (void)didReceiveNotification:(id)a3
{
  v4 = [a3 request];
  v5 = [v4 content];

  v6 = [v5 userInfo];
  v7 = [v6 objectForKey:BCSBarcodeNotificationPayloadURLKey];

  v8 = [NSURL URLWithString:v7];
  defaultURL = self->_defaultURL;
  self->_defaultURL = v8;

  v10 = [v5 userInfo];
  v11 = [v10 objectForKey:BCSBarcodeNotificationPayloadKey];

  if (!v11)
  {
LABEL_6:
    [(NotificationViewController *)self _showContentViewControllerIfNeeded];
    goto LABEL_10;
  }

  v42 = 0;
  v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v11 error:&v42];
  v13 = v42;
  v14 = v13;
  if (v12)
  {
    v41 = v13;
    v15 = [v12 decodeObjectOfClass:objc_opt_class() forKey:BCSBarcodeNotificationPayloadURLKey];
    v16 = self->_defaultURL;
    self->_defaultURL = v15;

    v17 = [v12 decodeObjectOfClass:objc_opt_class() forKey:BCSBarcodeNotificationPayloadScannerResultKey];
    scannerResult = self->_scannerResult;
    self->_scannerResult = v17;

    v19 = [v12 decodeObjectOfClass:objc_opt_class() forKey:BCSBarcodeNotificationPayloadICSStringKey];
    icsString = self->_icsString;
    self->_icsString = v19;

    v21 = [v12 decodeObjectOfClass:objc_opt_class() forKey:BCSBarcodeNotificationPayloadContactKey];
    contact = self->_contact;
    self->_contact = v21;

    v23 = [v12 decodeObjectOfClass:objc_opt_class() forKey:BCSBarcodeNotificationPayloadExtraPreviewText];
    extraPreviewText = self->_extraPreviewText;
    self->_extraPreviewText = v23;

    v25 = [v12 decodeObjectOfClass:objc_opt_class() forKey:BCSBarcodeNotificationPayloadPreviewFooterTitleKey];
    previewFooterTitle = self->_previewFooterTitle;
    self->_previewFooterTitle = v25;

    v27 = [v12 decodeObjectOfClass:objc_opt_class() forKey:BCSBarcodeNotificationPayloadPreviewFooterSubtitleKey];
    previewFooterSubtitle = self->_previewFooterSubtitle;
    self->_previewFooterSubtitle = v27;

    v29 = [v12 decodeObjectOfClass:objc_opt_class() forKey:BCSBarcodeNotificationPayloadContentIsPreviewableKey];
    self->_contentIsPreviewable = [v29 BOOLValue];
    v30 = objc_opt_class();
    v31 = [NSSet setWithObjects:v30, objc_opt_class(), 0];
    v32 = [v12 decodeObjectOfClasses:v31 forKey:BCSBarcodeNotificationPayloadActionsKey];
    notificationActions = self->_notificationActions;
    self->_notificationActions = v32;

    v34 = self->_notificationActions;
    v35 = [(NotificationViewController *)self extensionContext];
    [v35 setNotificationActions:v34];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v36 = self->_defaultURL;
      v37 = self->_scannerResult;
      v38 = self->_icsString;
      v39 = self->_contact;
      v40 = self->_extraPreviewText;
      *buf = 138478851;
      v44 = v36;
      v45 = 2113;
      v46 = v37;
      v47 = 2113;
      v48 = v38;
      v49 = 2113;
      v50 = v39;
      v51 = 2113;
      v52 = v40;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "NotificationViewController: payload URL: %{private}@ scannerResult: %{private}@ icsString: %{private}@ contact: %{private}@ extraPreviewText: %{private}@", buf, 0x34u);
    }

    [v12 finishDecoding];

    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003098(v14);
  }

LABEL_10:
}

- (id)_notificationServiceConnection
{
  notificationServiceConnection = self->_notificationServiceConnection;
  if (!notificationServiceConnection)
  {
    v4 = objc_alloc_init(BCSNotificationServiceConnection);
    v5 = self->_notificationServiceConnection;
    self->_notificationServiceConnection = v4;

    notificationServiceConnection = self->_notificationServiceConnection;
  }

  return notificationServiceConnection;
}

- (id)_launchURLForActionIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_notificationActions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = [v9 url];
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 actionIdentifier];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "NotificationViewController: did receive notification response with action identifier %{public}@", buf, 0xCu);
  }

  v9 = [(NotificationViewController *)self _launchURLForActionIdentifier:v8];
  if (v9)
  {
    v10 = [(NotificationViewController *)self extensionContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002C20;
    v12[3] = &unk_1000082F0;
    v13 = v9;
    [v10 openURL:v13 completionHandler:v12];

    v11 = v13;
  }

  else
  {
    v11 = [(NotificationViewController *)self _notificationServiceConnection];
    [v11 didReceiveNotificationResponse:v6];
  }

  v7[2](v7, 1);
}

- (int64_t)_previewContentType
{
  if (self->_defaultURL)
  {
    return 0;
  }

  if (self->_scannerResult)
  {
    return 1;
  }

  if ([(NSString *)self->_icsString length])
  {
    return 2;
  }

  if (self->_contact)
  {
    return 3;
  }

  if (self->_extraPreviewText)
  {
    return 4;
  }

  return 5;
}

@end