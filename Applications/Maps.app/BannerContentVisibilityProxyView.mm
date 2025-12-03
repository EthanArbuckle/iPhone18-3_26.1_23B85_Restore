@interface BannerContentVisibilityProxyView
- (UIView)visibilityModel;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setVisibilityModel:(id)model;
@end

@implementation BannerContentVisibilityProxyView

- (UIView)visibilityModel
{
  WeakRetained = objc_loadWeakRetained(&self->_visibilityModel);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (context == &off_101630228)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[BannerContentVisibilityProxyView setHidden:](self, "setHidden:", [objectCopy isHidden]);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = BannerContentVisibilityProxyView;
    [(BannerContentVisibilityProxyView *)&v11 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

- (void)setVisibilityModel:(id)model
{
  obj = model;
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