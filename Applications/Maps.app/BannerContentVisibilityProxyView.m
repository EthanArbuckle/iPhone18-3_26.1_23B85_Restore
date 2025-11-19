@interface BannerContentVisibilityProxyView
- (UIView)visibilityModel;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setVisibilityModel:(id)a3;
@end

@implementation BannerContentVisibilityProxyView

- (UIView)visibilityModel
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityModel);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (a6 == &off_101630228)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[BannerContentVisibilityProxyView setHidden:](self, "setHidden:", [v10 isHidden]);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = BannerContentVisibilityProxyView;
    [(BannerContentVisibilityProxyView *)&v11 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

- (void)setVisibilityModel:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_visibilityModel);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained removeObserver:self forKeyPath:@"hidden" context:&off_101630228];
    }

    v5 = obj;
    if (obj)
    {
      [obj addObserver:self forKeyPath:@"hidden" options:0 context:&off_101630228];
      -[BannerContentVisibilityProxyView setHidden:](self, "setHidden:", [obj isHidden]);
      v5 = obj;
    }

    objc_storeWeak(&self->_visibilityModel, v5);
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityModel);
  [WeakRetained removeObserver:self forKeyPath:@"hidden" context:&off_101630228];

  v4.receiver = self;
  v4.super_class = BannerContentVisibilityProxyView;
  [(BannerContentVisibilityProxyView *)&v4 dealloc];
}

@end