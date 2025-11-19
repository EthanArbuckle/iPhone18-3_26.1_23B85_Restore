@interface RouteLibraryOfflineDownloadStateView
- (RouteLibraryOfflineDownloadStateView)initWithFrame:(CGRect)a3;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setSubscriptionInfo:(id)a3;
@end

@implementation RouteLibraryOfflineDownloadStateView

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_10192D0F8 == a6)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008ECDF0;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v8, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RouteLibraryOfflineDownloadStateView;
    [(RouteLibraryOfflineDownloadStateView *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_updateIfNeeded
{
  subscriptionInfo = self->_subscriptionInfo;
  if (subscriptionInfo)
  {
    v4 = [(MapDataSubscriptionInfo *)subscriptionInfo state];
    v5 = [v4 loadState];

    if ((v5 - 1) < 2)
    {
      v9 = 0;
      v15 = 0;
      v10 = 0;
LABEL_17:
      [(UIImageView *)self->_imageView setHidden:v9];
      [(MUCircleProgressObservingView *)self->_progressView setProgress:v15];
      [(MUCircleProgressObservingView *)self->_progressView setTintColor:v10];
      [(MUCircleProgressObservingView *)self->_progressView setHidden:v15 == 0];

      return;
    }

    if (v5 == 3 || v5 == 0)
    {
      v7 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
      v8 = [v7 downloadState];

      v9 = 1;
      if (v8 > 5)
      {
        v10 = 0;
        v15 = 0;
        goto LABEL_17;
      }

      if (((1 << v8) & 0x33) != 0)
      {
        v15 = [NSProgress progressWithTotalUnitCount:-1];
        v10 = +[UIColor systemFillColor];
LABEL_16:
        v9 = 1;
        goto LABEL_17;
      }

      v10 = 0;
      v15 = 0;
      if (v8 != 2)
      {
        goto LABEL_17;
      }

      v12 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
      v13 = [v12 downloadProgress];

      if (v13)
      {
        v14 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
        v15 = [v14 downloadProgress];
      }

      else
      {
        v15 = [NSProgress progressWithTotalUnitCount:-1];
      }
    }

    else
    {
      v15 = 0;
    }

    v10 = 0;
    goto LABEL_16;
  }

  [(UIImageView *)self->_imageView setHidden:1];
  progressView = self->_progressView;

  [(MUCircleProgressObservingView *)progressView setHidden:1];
}

- (void)setSubscriptionInfo:(id)a3
{
  v5 = a3;
  subscriptionInfo = self->_subscriptionInfo;
  if (subscriptionInfo != v5)
  {
    if (subscriptionInfo)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [&off_1016ED058 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          v10 = 0;
          do
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(&off_1016ED058);
            }

            [(MapDataSubscriptionInfo *)self->_subscriptionInfo removeObserver:self forKeyPath:*(*(&v19 + 1) + 8 * v10) context:off_10192D0F8];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [&off_1016ED058 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v8);
      }
    }

    objc_storeStrong(&self->_subscriptionInfo, a3);
    if (self->_subscriptionInfo)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v11 = [&off_1016ED058 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(&off_1016ED058);
            }

            [(MapDataSubscriptionInfo *)self->_subscriptionInfo addObserver:self forKeyPath:*(*(&v15 + 1) + 8 * v14) options:0 context:off_10192D0F8];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [&off_1016ED058 countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v12);
      }
    }

    [(RouteLibraryOfflineDownloadStateView *)self _updateIfNeeded];
  }
}

- (void)dealloc
{
  if (self->_subscriptionInfo)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [&off_1016ED058 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(&off_1016ED058);
          }

          [(MapDataSubscriptionInfo *)self->_subscriptionInfo removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v6) context:off_10192D0F8];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [&off_1016ED058 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  v7.receiver = self;
  v7.super_class = RouteLibraryOfflineDownloadStateView;
  [(RouteLibraryOfflineDownloadStateView *)&v7 dealloc];
}

- (RouteLibraryOfflineDownloadStateView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = RouteLibraryOfflineDownloadStateView;
  v3 = [(RouteLibraryOfflineDownloadStateView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIImageView);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [UIImage systemImageNamed:@"arrow.down.circle.fill"];
    [(UIImageView *)v3->_imageView setImage:v6];

    [(UIImageView *)v3->_imageView setContentMode:1];
    v7 = +[UIColor tertiaryLabelColor];
    [(UIImageView *)v3->_imageView setTintColor:v7];

    v8 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:13.0];
    [(UIImageView *)v3->_imageView setPreferredSymbolConfiguration:v8];

    [(UIImageView *)v3->_imageView setHidden:1];
    [(RouteLibraryOfflineDownloadStateView *)v3 addSubview:v3->_imageView];
    v9 = objc_alloc_init(MUCircleProgressObservingView);
    progressView = v3->_progressView;
    v3->_progressView = v9;

    [(MUCircleProgressObservingView *)v3->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUCircleProgressObservingView *)v3->_progressView setHidden:1];
    LODWORD(v11) = 1132068864;
    [(MUCircleProgressObservingView *)v3->_progressView setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1132068864;
    [(MUCircleProgressObservingView *)v3->_progressView setContentCompressionResistancePriority:1 forAxis:v12];
    [(RouteLibraryOfflineDownloadStateView *)v3 addSubview:v3->_progressView];
    LODWORD(v13) = 1148846080;
    v14 = [(UIImageView *)v3->_imageView _maps_constraintsEqualToEdgesOfView:v3 priority:v13];
    v15 = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:v15];

    v16 = [(MUCircleProgressObservingView *)v3->_progressView _maps_constraintsForCenteringInView:v3 edgeInsets:1.0, 1.0, 1.0, 1.0];
    [NSLayoutConstraint activateConstraints:v16];

    v17 = v3;
  }

  return v3;
}

@end