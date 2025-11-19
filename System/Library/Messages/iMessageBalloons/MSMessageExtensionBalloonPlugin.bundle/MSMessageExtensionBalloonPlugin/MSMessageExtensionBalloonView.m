@interface MSMessageExtensionBalloonView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKTranscriptPluginViewDelegate)pluginViewDelegate;
- (MSMessageExtensionBalloonView)initWithFrame:(CGRect)a3 dataSource:(id)a4 fromMe:(BOOL)a5;
- (id)payload;
- (void)dataSourcePluginPayloadDidChange:(id)a3 didUpdateData:(BOOL)a4 forceReloadData:(BOOL)a5;
- (void)iconViewTapped:(id)a3;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setIsInShelf:(BOOL)a3;
@end

@implementation MSMessageExtensionBalloonView

- (MSMessageExtensionBalloonView)initWithFrame:(CGRect)a3 dataSource:(id)a4 fromMe:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v50.receiver = self;
  v50.super_class = MSMessageExtensionBalloonView;
  v13 = [(MSMessageExtensionBalloonView *)&v50 initWithFrame:x, y, width, height];
  if (v13)
  {
    v14 = ms_defaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 pluginPayload];
      v16 = [v15 isFromMe];
      v17 = @"NO";
      if (v16)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138412802;
      v52 = v13;
      v54 = v18;
      v53 = 2112;
      if (v5)
      {
        v17 = @"YES";
      }

      v55 = 2112;
      v56 = v17;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBalloonView init self %@ payload from me %@ from me %@", buf, 0x20u);
    }

    v13->_fromMe = v5;
    objc_storeStrong(&v13->_dataSource, a4);
    dataSource = v13->_dataSource;
    if (dataSource)
    {
      v20 = [(MSMessageExtensionDataSource *)dataSource allowedByScreenTime];
    }

    else
    {
      v20 = 1;
    }

    v13->_allowedByScreenTime = v20;
    if (v13->_dataSource)
    {
      objc_initWeak(buf, v13);
      v21 = +[NSNotificationCenter defaultCenter];
      v22 = +[NSOperationQueue mainQueue];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_14670;
      v48[3] = &unk_4D4E8;
      objc_copyWeak(&v49, buf);
      v23 = [v21 addObserverForName:IMBalloonPluginDataSourceScreenTimeAllowedStateChanged object:v12 queue:v22 usingBlock:v48];

      objc_destroyWeak(&v49);
      objc_destroyWeak(buf);
    }

    v24 = +[IMBalloonPluginManager sharedInstance];
    v25 = [(MSMessageExtensionBalloonView *)v13 payload];
    v26 = [v25 pluginBundleID];
    v27 = [v24 balloonPluginForBundleID:v26];

    v28 = [(MSMessageExtensionDataSource *)v13->_dataSource propertyProvider];
    propertyProvider = v13->_propertyProvider;
    v13->_propertyProvider = v28;

    [(MSMessageExtensionBalloonView *)v13 setClipsToBounds:1];
    v30 = [[LPLinkView alloc] initWithPresentationProperties:v13->_propertyProvider URL:0];
    [v30 _setDisableTapGesture:1];
    [v30 _setApplyCornerRadius:0];
    [v30 setAutoresizingMask:18];
    objc_storeStrong(&v13->_linkView, v30);
    [(MSMessageExtensionBalloonView *)v13 addSubview:v30];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v27 shouldBalloonHideAppIcon] & 1) == 0)
    {
      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 iMessageAppIconSize];
      v33 = v32;
      v35 = v34;

      v36 = 6.0;
      if (!v5)
      {
        v37 = +[CKUIBehavior sharedBehaviors];
        [v37 balloonMaskTailWidth];
        v39 = v38;

        v36 = v39 + 6.0;
      }

      v40 = [[UIImageView alloc] initWithFrame:{v36, 6.0, v33, v35}];
      [v40 setAutoresizingMask:36];
      [v40 setUserInteractionEnabled:1];
      v41 = [[UITapGestureRecognizer alloc] initWithTarget:v13 action:"iconViewTapped:"];
      [v40 addGestureRecognizer:v41];

      objc_storeStrong(&v13->_iconView, v40);
      [(MSMessageExtensionBalloonView *)v13 addSubview:v40];
      v42 = [v27 identifier];
      objc_initWeak(buf, v13);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_146E4;
      v45[3] = &unk_4D498;
      objc_copyWeak(&v47, buf);
      v43 = v42;
      v46 = v43;
      [v27 __ck_generateStatusImage:v45];

      objc_destroyWeak(&v47);
      objc_destroyWeak(buf);
    }
  }

  return v13;
}

- (id)payload
{
  v2 = [(MSMessageExtensionBalloonView *)self dataSource];
  v3 = [v2 pluginPayload];

  return v3;
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
    v24 = [(LPLinkPresentationPropertyProvider *)self->_propertyProvider image];
    if (v24)
    {
    }

    else
    {
      v25 = [(LPLinkPresentationPropertyProvider *)self->_propertyProvider video];

      if (!v25)
      {
        v30.origin.x = v8;
        v30.origin.y = v10;
        v30.size.width = v12;
        v30.size.height = v14;
        left = left + CGRectGetWidth(v30);
      }
    }
  }

  v26 = [(MSMessageExtensionBalloonView *)self linkView];
  [v26 setContentInset:{top, left, bottom, right}];

  v27 = [(MSMessageExtensionBalloonView *)self linkView];
  [(MSMessageExtensionBalloonView *)self bounds];
  [v27 setFrame:?];

  v28 = [(MSMessageExtensionBalloonView *)self iconView];
  [v28 setFrame:{v8, v10, v12, v14}];

  [(MSMessageExtensionBalloonView *)self setUserInteractionEnabled:[(MSMessageExtensionBalloonView *)self allowedByScreenTime]];
}

- (void)setIsInShelf:(BOOL)a3
{
  if (self->_isInShelf != a3)
  {
    self->_isInShelf = a3;
    [(MSMessageExtensionBalloonView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(LPLinkView *)self->_linkView sizeThatFits:a3.width, a3.height];
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

- (void)dataSourcePluginPayloadDidChange:(id)a3 didUpdateData:(BOOL)a4 forceReloadData:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v7 = [(MSMessageExtensionBalloonView *)self dataSource];

  v8 = v9;
  if (v7 != v9 || v5)
  {
    [(MSMessageExtensionBalloonView *)self setDataSource:v9];
    [(MSMessageExtensionBalloonView *)self reloadData];
    v8 = v9;
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

    v5 = [(MSMessageExtensionBalloonView *)self payload];
    *buf = 138412802;
    if ([v5 isFromMe])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v23 = self;
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "reloadData %@ isFromMe %@ incoming isFromMe %@", buf, 0x20u);
  }

  v7 = [(MSMessageExtensionBalloonView *)self payload];
  -[MSMessageExtensionBalloonView setFromMe:](self, "setFromMe:", [v7 isFromMe]);

  v8 = [(MSMessageExtensionDataSource *)self->_dataSource propertyProvider];
  propertyProvider = self->_propertyProvider;
  self->_propertyProvider = v8;

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
    v12 = [(MSMessageExtensionBalloonView *)self payload];
    v13 = [v12 pluginBundleID];
    v14 = [v11 balloonPluginForBundleID:v13];

    v15 = [v14 identifier];
    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_15004;
    v18[3] = &unk_4D510;
    objc_copyWeak(&v21, buf);
    v16 = v15;
    v19 = v16;
    v17 = v14;
    v20 = v17;
    [v17 __ck_generateStatusImage:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  [(MSMessageExtensionBalloonView *)self setNeedsLayout];
}

- (void)iconViewTapped:(id)a3
{
  v4 = [(MSMessageExtensionBalloonView *)self pluginViewDelegate];
  [v4 pluginViewRequestsPresentationAction:self];
}

- (CKTranscriptPluginViewDelegate)pluginViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginViewDelegate);

  return WeakRetained;
}

@end