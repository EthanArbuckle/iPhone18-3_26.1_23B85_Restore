@interface MSMessageExtensionBalloonView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptPluginViewDelegate)pluginViewDelegate;
- (MSMessageExtensionBalloonView)initWithFrame:(CGRect)frame dataSource:(id)source fromMe:(BOOL)me;
- (id)payload;
- (void)dataSourcePluginPayloadDidChange:(id)change didUpdateData:(BOOL)data forceReloadData:(BOOL)reloadData;
- (void)iconViewTapped:(id)tapped;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setIsInShelf:(BOOL)shelf;
@end

@implementation MSMessageExtensionBalloonView

- (MSMessageExtensionBalloonView)initWithFrame:(CGRect)frame dataSource:(id)source fromMe:(BOOL)me
{
  meCopy = me;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sourceCopy = source;
  v50.receiver = self;
  v50.super_class = MSMessageExtensionBalloonView;
  height = [(MSMessageExtensionBalloonView *)&v50 initWithFrame:x, y, width, height];
  if (height)
  {
    v14 = ms_defaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      pluginPayload = [sourceCopy pluginPayload];
      isFromMe = [pluginPayload isFromMe];
      v17 = @"NO";
      if (isFromMe)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138412802;
      v52 = height;
      v54 = v18;
      v53 = 2112;
      if (meCopy)
      {
        v17 = @"YES";
      }

      v55 = 2112;
      v56 = v17;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBalloonView init self %@ payload from me %@ from me %@", buf, 0x20u);
    }

    height->_fromMe = meCopy;
    objc_storeStrong(&height->_dataSource, source);
    dataSource = height->_dataSource;
    if (dataSource)
    {
      allowedByScreenTime = [(MSMessageExtensionDataSource *)dataSource allowedByScreenTime];
    }

    else
    {
      allowedByScreenTime = 1;
    }

    height->_allowedByScreenTime = allowedByScreenTime;
    if (height->_dataSource)
    {
      objc_initWeak(buf, height);
      v21 = +[NSNotificationCenter defaultCenter];
      v22 = +[NSOperationQueue mainQueue];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_14670;
      v48[3] = &unk_4D4E8;
      objc_copyWeak(&v49, buf);
      v23 = [v21 addObserverForName:IMBalloonPluginDataSourceScreenTimeAllowedStateChanged object:sourceCopy queue:v22 usingBlock:v48];

      objc_destroyWeak(&v49);
      objc_destroyWeak(buf);
    }

    v24 = +[IMBalloonPluginManager sharedInstance];
    payload = [(MSMessageExtensionBalloonView *)height payload];
    pluginBundleID = [payload pluginBundleID];
    v27 = [v24 balloonPluginForBundleID:pluginBundleID];

    propertyProvider = [(MSMessageExtensionDataSource *)height->_dataSource propertyProvider];
    propertyProvider = height->_propertyProvider;
    height->_propertyProvider = propertyProvider;

    [(MSMessageExtensionBalloonView *)height setClipsToBounds:1];
    v30 = [[LPLinkView alloc] initWithPresentationProperties:height->_propertyProvider URL:0];
    [v30 _setDisableTapGesture:1];
    [v30 _setApplyCornerRadius:0];
    [v30 setAutoresizingMask:18];
    objc_storeStrong(&height->_linkView, v30);
    [(MSMessageExtensionBalloonView *)height addSubview:v30];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v27 shouldBalloonHideAppIcon] & 1) == 0)
    {
      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 iMessageAppIconSize];
      v33 = v32;
      v35 = v34;

      v36 = 6.0;
      if (!meCopy)
      {
        v37 = +[CKUIBehavior sharedBehaviors];
        [v37 balloonMaskTailWidth];
        v39 = v38;

        v36 = v39 + 6.0;
      }

      v40 = [[UIImageView alloc] initWithFrame:{v36, 6.0, v33, v35}];
      [v40 setAutoresizingMask:36];
      [v40 setUserInteractionEnabled:1];
      v41 = [[UITapGestureRecognizer alloc] initWithTarget:height action:"iconViewTapped:"];
      [v40 addGestureRecognizer:v41];

      objc_storeStrong(&height->_iconView, v40);
      [(MSMessageExtensionBalloonView *)height addSubview:v40];
      identifier = [v27 identifier];
      objc_initWeak(buf, height);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_146E4;
      v45[3] = &unk_4D498;
      objc_copyWeak(&v47, buf);
      v43 = identifier;
      v46 = v43;
      [v27 __ck_generateStatusImage:v45];

      objc_destroyWeak(&v47);
      objc_destroyWeak(buf);
    }
  }

  return height;
}

- (id)payload
{
  dataSource = [(MSMessageExtensionBalloonView *)self dataSource];
  pluginPayload = [dataSource pluginPayload];

  return pluginPayload;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = MSMessageExtensionBalloonView;
  [(MSMessageExtensionBalloonView *)&v29 layoutSubviews];
  fromMe = self->_fromMe;
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (fromMe)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [v4 extensionIconBadgeRectForOrientation:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (self->_isInShelf)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 pluginBalloonInsetsForMessageFromMe:self->_fromMe];
    top = v20;
    left = v21;
    bottom = v22;
    right = v23;
  }

  if (self->_iconView)
  {
    image = [(LPLinkPresentationPropertyProvider *)self->_propertyProvider image];
    if (image)
    {
    }

    else
    {
      video = [(LPLinkPresentationPropertyProvider *)self->_propertyProvider video];

      if (!video)
      {
        v30.origin.x = v8;
        v30.origin.y = v10;
        v30.size.width = v12;
        v30.size.height = v14;
        left = left + CGRectGetWidth(v30);
      }
    }
  }

  linkView = [(MSMessageExtensionBalloonView *)self linkView];
  [linkView setContentInset:{top, left, bottom, right}];

  linkView2 = [(MSMessageExtensionBalloonView *)self linkView];
  [(MSMessageExtensionBalloonView *)self bounds];
  [linkView2 setFrame:?];

  iconView = [(MSMessageExtensionBalloonView *)self iconView];
  [iconView setFrame:{v8, v10, v12, v14}];

  [(MSMessageExtensionBalloonView *)self setUserInteractionEnabled:[(MSMessageExtensionBalloonView *)self allowedByScreenTime]];
}

- (void)setIsInShelf:(BOOL)shelf
{
  if (self->_isInShelf != shelf)
  {
    self->_isInShelf = shelf;
    [(MSMessageExtensionBalloonView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(LPLinkView *)self->_linkView sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 minimumSizeThatFitsExtensionIconBadge:self->_fromMe];
  v10 = v9;
  v12 = v11;

  if (v7 >= v12)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v5 >= v10)
  {
    v14 = v5;
  }

  else
  {
    v14 = v10;
  }

  result.height = v13;
  result.width = v14;
  return result;
}

- (void)dataSourcePluginPayloadDidChange:(id)change didUpdateData:(BOOL)data forceReloadData:(BOOL)reloadData
{
  reloadDataCopy = reloadData;
  changeCopy = change;
  dataSource = [(MSMessageExtensionBalloonView *)self dataSource];

  v8 = changeCopy;
  if (dataSource != changeCopy || reloadDataCopy)
  {
    [(MSMessageExtensionBalloonView *)self setDataSource:changeCopy];
    [(MSMessageExtensionBalloonView *)self reloadData];
    v8 = changeCopy;
  }
}

- (void)reloadData
{
  [(LPLinkView *)self->_linkView removeFromSuperview];
  v3 = ms_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_fromMe)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    payload = [(MSMessageExtensionBalloonView *)self payload];
    *buf = 138412802;
    if ([payload isFromMe])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    selfCopy = self;
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "reloadData %@ isFromMe %@ incoming isFromMe %@", buf, 0x20u);
  }

  payload2 = [(MSMessageExtensionBalloonView *)self payload];
  -[MSMessageExtensionBalloonView setFromMe:](self, "setFromMe:", [payload2 isFromMe]);

  propertyProvider = [(MSMessageExtensionDataSource *)self->_dataSource propertyProvider];
  propertyProvider = self->_propertyProvider;
  self->_propertyProvider = propertyProvider;

  v10 = [[LPLinkView alloc] initWithPresentationProperties:self->_propertyProvider URL:0];
  [v10 _setDisableTapGesture:1];
  [v10 _setApplyCornerRadius:0];
  [v10 setAutoresizingMask:18];
  objc_storeStrong(&self->_linkView, v10);
  [(MSMessageExtensionBalloonView *)self addSubview:v10];
  [(MSMessageExtensionBalloonView *)self bringSubviewToFront:self->_iconView];
  if (self->_iconView)
  {
    v11 = +[IMBalloonPluginManager sharedInstance];
    payload3 = [(MSMessageExtensionBalloonView *)self payload];
    pluginBundleID = [payload3 pluginBundleID];
    v14 = [v11 balloonPluginForBundleID:pluginBundleID];

    identifier = [v14 identifier];
    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_15004;
    v18[3] = &unk_4D510;
    objc_copyWeak(&v21, buf);
    v16 = identifier;
    v19 = v16;
    v17 = v14;
    v20 = v17;
    [v17 __ck_generateStatusImage:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  [(MSMessageExtensionBalloonView *)self setNeedsLayout];
}

- (void)iconViewTapped:(id)tapped
{
  pluginViewDelegate = [(MSMessageExtensionBalloonView *)self pluginViewDelegate];
  [pluginViewDelegate pluginViewRequestsPresentationAction:self];
}

- (CKTranscriptPluginViewDelegate)pluginViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginViewDelegate);

  return WeakRetained;
}

@end