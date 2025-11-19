@interface MSMessageExtensionBalloonLiveView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKTranscriptPluginViewDelegate)pluginViewDelegate;
- (MSMessageExtensionBalloonLiveView)initWithFrame:(CGRect)a3 dataSource:(id)a4 fromMe:(BOOL)a5;
- (MSMessageExtensionBalloonLiveViewDelegate)delegate;
- (id)interactiveViews;
- (id)payload;
- (void)configureForDisplay;
- (void)dataSourcePluginPayloadDidChange:(id)a3 didUpdateData:(BOOL)a4;
- (void)iconViewTapped:(id)a3;
- (void)layoutSubviews;
- (void)setForceHideAppIcon:(BOOL)a3;
- (void)setIsInShelf:(BOOL)a3;
- (void)setRemoteBalloonView:(id)a3;
- (void)setStaticView:(id)a3;
- (void)updateIconForPlugin:(id)a3;
@end

@implementation MSMessageExtensionBalloonLiveView

- (MSMessageExtensionBalloonLiveView)initWithFrame:(CGRect)a3 dataSource:(id)a4 fromMe:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v34.receiver = self;
  v34.super_class = MSMessageExtensionBalloonLiveView;
  v13 = [(MSMessageExtensionBalloonLiveView *)&v34 initWithFrame:x, y, width, height];
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
      v36 = v13;
      v38 = v18;
      v37 = 2112;
      if (v5)
      {
        v17 = @"YES";
      }

      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBalloonView init self %@ payload from me %@ from me %@", buf, 0x20u);
    }

    v13->_fromMe = v5;
    objc_storeStrong(&v13->_dataSource, a4);
    [(MSMessageExtensionBalloonLiveView *)v13 setClipsToBounds:1];
    v19 = +[IMBalloonPluginManager sharedInstance];
    v20 = [(MSMessageExtensionBalloonLiveView *)v13 payload];
    v21 = [v20 pluginBundleID];
    v22 = [v19 balloonPluginForBundleID:v21];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v22 shouldBalloonHideAppIcon] & 1) == 0)
    {
      if (v5)
      {
        v23 = 6.0;
      }

      else
      {
        v23 = 12.0;
      }

      v24 = +[CKUIBehavior sharedBehaviors];
      [v24 iMessageAppIconSize];
      v26 = v25;
      v28 = v27;

      v29 = [[UIImageView alloc] initWithFrame:{v23, 6.0, v26, v28}];
      [(UIImageView *)v29 setAutoresizingMask:36];
      [(UIImageView *)v29 setUserInteractionEnabled:1];
      v30 = [[UITapGestureRecognizer alloc] initWithTarget:v13 action:"iconViewTapped:"];
      [(UIImageView *)v29 addGestureRecognizer:v30];

      iconView = v13->_iconView;
      v13->_iconView = v29;
      v32 = v29;

      [(MSMessageExtensionBalloonLiveView *)v13 addSubview:v32];
    }
  }

  return v13;
}

- (void)setForceHideAppIcon:(BOOL)a3
{
  if (self->_forceHideAppIcon != a3)
  {
    v3 = a3;
    v5 = [(MSMessageExtensionBalloonLiveView *)self iconView];

    if (v5)
    {
      self->_forceHideAppIcon = v3;
      v6 = [(MSMessageExtensionBalloonLiveView *)self iconView];
      [v6 setHidden:v3];
    }
  }
}

- (id)payload
{
  v2 = [(MSMessageExtensionBalloonLiveView *)self dataSource];
  v3 = [v2 pluginPayload];

  return v3;
}

- (void)updateIconForPlugin:(id)a3
{
  v4 = a3;
  if (self->_iconView)
  {
    v5 = [(MSMessageExtensionBalloonLiveView *)self payload];
    v6 = [v5 pluginBundleID];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_13190;
    v8[3] = &unk_4D498;
    objc_copyWeak(&v10, &location);
    v7 = v6;
    v9 = v7;
    [v4 __ck_generateStatusImage:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = MSMessageExtensionBalloonLiveView;
  [(MSMessageExtensionBalloonLiveView *)&v18 layoutSubviews];
  fromMe = self->_fromMe;
  v4 = [(MSMessageExtensionBalloonLiveView *)self remoteBalloonView];
  [(MSMessageExtensionBalloonLiveView *)self bounds];
  [v4 setFrame:?];

  v5 = [(MSMessageExtensionBalloonLiveView *)self iconView];

  if (v5)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = v6;
    if (fromMe)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    [v6 extensionIconBadgeRectForOrientation:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [(MSMessageExtensionBalloonLiveView *)self iconView];
    [v17 setFrame:{v10, v12, v14, v16}];
  }
}

- (void)setIsInShelf:(BOOL)a3
{
  if (self->_isInShelf != a3)
  {
    self->_isInShelf = a3;
    if (a3)
    {
      [(MSMessageExtensionBalloonLiveView *)self configureForDisplay];
    }

    [(MSMessageExtensionBalloonLiveView *)self setNeedsLayout];
  }
}

- (void)configureForDisplay
{
  v3 = [(MSMessageExtensionBalloonLiveView *)self delegate];
  [v3 configureLiveViewForDisplay:self];
}

- (void)setRemoteBalloonView:(id)a3
{
  v5 = a3;
  remoteBalloonView = self->_remoteBalloonView;
  if (remoteBalloonView != v5)
  {
    v11 = v5;
    [(UIView *)remoteBalloonView removeFromSuperview];
    objc_storeStrong(&self->_remoteBalloonView, a3);
    if (self->_remoteBalloonView)
    {
      v7 = 48;
      v8 = [(UIView *)self->_staticView superview];

      if (v8 == self)
      {
        v10 = self->_remoteBalloonView;
      }

      else
      {
        v7 = 56;
        v9 = [(UIImageView *)self->_iconView superview];

        v10 = self->_remoteBalloonView;
        if (v9 != self)
        {
          [(MSMessageExtensionBalloonLiveView *)self addSubview:v10];
          goto LABEL_8;
        }
      }

      [(MSMessageExtensionBalloonLiveView *)self insertSubview:v10 belowSubview:*(&self->super.super.super.isa + v7)];
    }

LABEL_8:
    remoteBalloonView = [(MSMessageExtensionBalloonLiveView *)self setNeedsLayout];
    v5 = v11;
  }

  _objc_release_x1(remoteBalloonView, v5);
}

- (void)setStaticView:(id)a3
{
  v5 = a3;
  staticView = self->_staticView;
  if (staticView != v5)
  {
    v12 = v5;
    [(UIView *)staticView removeFromSuperview];
    objc_storeStrong(&self->_staticView, a3);
    v7 = +[IMBalloonPluginManager sharedInstance];
    v8 = [(MSMessageExtensionBalloonLiveView *)self payload];
    v9 = [v8 pluginBundleID];
    v10 = [v7 balloonPluginForBundleID:v9];

    if ([v10 wantsLoadingView])
    {
      if (self->_staticView)
      {
        v11 = [(UIImageView *)self->_iconView superview];

        if (v11 == self)
        {
          [(MSMessageExtensionBalloonLiveView *)self insertSubview:v12 belowSubview:self->_iconView];
        }

        else
        {
          [(MSMessageExtensionBalloonLiveView *)self addSubview:self->_staticView];
        }
      }

      else
      {
        [(UIView *)self->_remoteBalloonView setHidden:0];
      }

      [(MSMessageExtensionBalloonLiveView *)self setNeedsLayout];
    }

    v5 = v12;
  }

  _objc_release_x1(staticView, v5);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MSMessageExtensionBalloonLiveView *)self dataSource];
  v7 = [v6 message];

  v8 = +[IMBalloonPluginManager sharedInstance];
  v9 = [(MSMessageExtensionBalloonLiveView *)self payload];
  v10 = [v9 pluginBundleID];
  v11 = [v8 balloonPluginForBundleID:v10];

  v12 = [(MSMessageExtensionBalloonLiveView *)self staticView];
  if (v12 && (v13 = v12, v14 = [v11 wantsLoadingView], v13, v14))
  {
    v15 = [(MSMessageExtensionBalloonLiveView *)self staticView];
    [v15 bounds];
  }

  else
  {
    v16 = [v7 layout];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [(MSMessageExtensionBalloonLiveView *)self delegate];
      [v15 liveView:self sizeThatFits:{width, height}];
    }

    else
    {
      v15 = +[CKUIBehavior sharedBehaviors];
      [v15 extensionBalloonMaximumHeight];
    }
  }

  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 minimumSizeThatFitsExtensionIconBadge:self->_fromMe];
  v20 = v19;
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)dataSourcePluginPayloadDidChange:(id)a3 didUpdateData:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(MSMessageExtensionBalloonLiveView *)self dataSource];

  v8 = v11;
  if (v6 != v11)
  {
    [(MSMessageExtensionBalloonLiveView *)self setDataSource:v11];
    v9 = [(MSMessageExtensionBalloonLiveView *)self delegate];
    [v9 pluginPayloadDidChangeForLiveView:self];

    v8 = v11;
  }

  if (v4)
  {
    v10 = [(MSMessageExtensionBalloonLiveView *)self delegate];
    [v10 pluginPayloadDataDidChangeForLiveView:self];

    v8 = v11;
  }

  _objc_release_x1(v7, v8);
}

- (id)interactiveViews
{
  v4 = self;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)iconViewTapped:(id)a3
{
  v4 = [(MSMessageExtensionBalloonLiveView *)self pluginViewDelegate];
  [v4 pluginViewRequestsPresentationAction:self];
}

- (CKTranscriptPluginViewDelegate)pluginViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginViewDelegate);

  return WeakRetained;
}

- (MSMessageExtensionBalloonLiveViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end