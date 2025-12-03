@interface MSMessageExtensionBalloonLiveView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptPluginViewDelegate)pluginViewDelegate;
- (MSMessageExtensionBalloonLiveView)initWithFrame:(CGRect)frame dataSource:(id)source fromMe:(BOOL)me;
- (MSMessageExtensionBalloonLiveViewDelegate)delegate;
- (id)interactiveViews;
- (id)payload;
- (void)configureForDisplay;
- (void)dataSourcePluginPayloadDidChange:(id)change didUpdateData:(BOOL)data;
- (void)iconViewTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setForceHideAppIcon:(BOOL)icon;
- (void)setIsInShelf:(BOOL)shelf;
- (void)setRemoteBalloonView:(id)view;
- (void)setStaticView:(id)view;
- (void)updateIconForPlugin:(id)plugin;
@end

@implementation MSMessageExtensionBalloonLiveView

- (MSMessageExtensionBalloonLiveView)initWithFrame:(CGRect)frame dataSource:(id)source fromMe:(BOOL)me
{
  meCopy = me;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sourceCopy = source;
  v34.receiver = self;
  v34.super_class = MSMessageExtensionBalloonLiveView;
  height = [(MSMessageExtensionBalloonLiveView *)&v34 initWithFrame:x, y, width, height];
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
      v36 = height;
      v38 = v18;
      v37 = 2112;
      if (meCopy)
      {
        v17 = @"YES";
      }

      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "MSMessageExtensionBalloonView init self %@ payload from me %@ from me %@", buf, 0x20u);
    }

    height->_fromMe = meCopy;
    objc_storeStrong(&height->_dataSource, source);
    [(MSMessageExtensionBalloonLiveView *)height setClipsToBounds:1];
    v19 = +[IMBalloonPluginManager sharedInstance];
    payload = [(MSMessageExtensionBalloonLiveView *)height payload];
    pluginBundleID = [payload pluginBundleID];
    v22 = [v19 balloonPluginForBundleID:pluginBundleID];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v22 shouldBalloonHideAppIcon] & 1) == 0)
    {
      if (meCopy)
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
      v30 = [[UITapGestureRecognizer alloc] initWithTarget:height action:"iconViewTapped:"];
      [(UIImageView *)v29 addGestureRecognizer:v30];

      iconView = height->_iconView;
      height->_iconView = v29;
      v32 = v29;

      [(MSMessageExtensionBalloonLiveView *)height addSubview:v32];
    }
  }

  return height;
}

- (void)setForceHideAppIcon:(BOOL)icon
{
  if (self->_forceHideAppIcon != icon)
  {
    iconCopy = icon;
    iconView = [(MSMessageExtensionBalloonLiveView *)self iconView];

    if (iconView)
    {
      self->_forceHideAppIcon = iconCopy;
      iconView2 = [(MSMessageExtensionBalloonLiveView *)self iconView];
      [iconView2 setHidden:iconCopy];
    }
  }
}

- (id)payload
{
  dataSource = [(MSMessageExtensionBalloonLiveView *)self dataSource];
  pluginPayload = [dataSource pluginPayload];

  return pluginPayload;
}

- (void)updateIconForPlugin:(id)plugin
{
  pluginCopy = plugin;
  if (self->_iconView)
  {
    payload = [(MSMessageExtensionBalloonLiveView *)self payload];
    pluginBundleID = [payload pluginBundleID];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_13190;
    v8[3] = &unk_4D498;
    objc_copyWeak(&v10, &location);
    v7 = pluginBundleID;
    v9 = v7;
    [pluginCopy __ck_generateStatusImage:v8];

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
  remoteBalloonView = [(MSMessageExtensionBalloonLiveView *)self remoteBalloonView];
  [(MSMessageExtensionBalloonLiveView *)self bounds];
  [remoteBalloonView setFrame:?];

  iconView = [(MSMessageExtensionBalloonLiveView *)self iconView];

  if (iconView)
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

    iconView2 = [(MSMessageExtensionBalloonLiveView *)self iconView];
    [iconView2 setFrame:{v10, v12, v14, v16}];
  }
}

- (void)setIsInShelf:(BOOL)shelf
{
  if (self->_isInShelf != shelf)
  {
    self->_isInShelf = shelf;
    if (shelf)
    {
      [(MSMessageExtensionBalloonLiveView *)self configureForDisplay];
    }

    [(MSMessageExtensionBalloonLiveView *)self setNeedsLayout];
  }
}

- (void)configureForDisplay
{
  delegate = [(MSMessageExtensionBalloonLiveView *)self delegate];
  [delegate configureLiveViewForDisplay:self];
}

- (void)setRemoteBalloonView:(id)view
{
  viewCopy = view;
  remoteBalloonView = self->_remoteBalloonView;
  if (remoteBalloonView != viewCopy)
  {
    v11 = viewCopy;
    [(UIView *)remoteBalloonView removeFromSuperview];
    objc_storeStrong(&self->_remoteBalloonView, view);
    if (self->_remoteBalloonView)
    {
      v7 = 48;
      superview = [(UIView *)self->_staticView superview];

      if (superview == self)
      {
        v10 = self->_remoteBalloonView;
      }

      else
      {
        v7 = 56;
        superview2 = [(UIImageView *)self->_iconView superview];

        v10 = self->_remoteBalloonView;
        if (superview2 != self)
        {
          [(MSMessageExtensionBalloonLiveView *)self addSubview:v10];
          goto LABEL_8;
        }
      }

      [(MSMessageExtensionBalloonLiveView *)self insertSubview:v10 belowSubview:*(&self->super.super.super.isa + v7)];
    }

LABEL_8:
    remoteBalloonView = [(MSMessageExtensionBalloonLiveView *)self setNeedsLayout];
    viewCopy = v11;
  }

  _objc_release_x1(remoteBalloonView, viewCopy);
}

- (void)setStaticView:(id)view
{
  viewCopy = view;
  staticView = self->_staticView;
  if (staticView != viewCopy)
  {
    v12 = viewCopy;
    [(UIView *)staticView removeFromSuperview];
    objc_storeStrong(&self->_staticView, view);
    v7 = +[IMBalloonPluginManager sharedInstance];
    payload = [(MSMessageExtensionBalloonLiveView *)self payload];
    pluginBundleID = [payload pluginBundleID];
    v10 = [v7 balloonPluginForBundleID:pluginBundleID];

    if ([v10 wantsLoadingView])
    {
      if (self->_staticView)
      {
        superview = [(UIImageView *)self->_iconView superview];

        if (superview == self)
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

    viewCopy = v12;
  }

  _objc_release_x1(staticView, viewCopy);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  dataSource = [(MSMessageExtensionBalloonLiveView *)self dataSource];
  message = [dataSource message];

  v8 = +[IMBalloonPluginManager sharedInstance];
  payload = [(MSMessageExtensionBalloonLiveView *)self payload];
  pluginBundleID = [payload pluginBundleID];
  v11 = [v8 balloonPluginForBundleID:pluginBundleID];

  staticView = [(MSMessageExtensionBalloonLiveView *)self staticView];
  if (staticView && (v13 = staticView, v14 = [v11 wantsLoadingView], v13, v14))
  {
    staticView2 = [(MSMessageExtensionBalloonLiveView *)self staticView];
    [staticView2 bounds];
  }

  else
  {
    layout = [message layout];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      staticView2 = [(MSMessageExtensionBalloonLiveView *)self delegate];
      [staticView2 liveView:self sizeThatFits:{width, height}];
    }

    else
    {
      staticView2 = +[CKUIBehavior sharedBehaviors];
      [staticView2 extensionBalloonMaximumHeight];
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

- (void)dataSourcePluginPayloadDidChange:(id)change didUpdateData:(BOOL)data
{
  dataCopy = data;
  changeCopy = change;
  dataSource = [(MSMessageExtensionBalloonLiveView *)self dataSource];

  v8 = changeCopy;
  if (dataSource != changeCopy)
  {
    [(MSMessageExtensionBalloonLiveView *)self setDataSource:changeCopy];
    delegate = [(MSMessageExtensionBalloonLiveView *)self delegate];
    [delegate pluginPayloadDidChangeForLiveView:self];

    v8 = changeCopy;
  }

  if (dataCopy)
  {
    delegate2 = [(MSMessageExtensionBalloonLiveView *)self delegate];
    [delegate2 pluginPayloadDataDidChangeForLiveView:self];

    v8 = changeCopy;
  }

  _objc_release_x1(v7, v8);
}

- (id)interactiveViews
{
  selfCopy = self;
  v2 = [NSArray arrayWithObjects:&selfCopy count:1];

  return v2;
}

- (void)iconViewTapped:(id)tapped
{
  pluginViewDelegate = [(MSMessageExtensionBalloonLiveView *)self pluginViewDelegate];
  [pluginViewDelegate pluginViewRequestsPresentationAction:self];
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