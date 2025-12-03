@interface COSFeatureHighlightView
- (CGSize)_sizeThatFits:(CGSize)fits doLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (COSFeatureHighlightDataSource)dataSource;
- (COSFeatureHighlightView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)showFeaturesForDataSource:(id)source;
@end

@implementation COSFeatureHighlightView

- (COSFeatureHighlightView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = COSFeatureHighlightView;
  v3 = [(COSFeatureHighlightView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    features = v3->_features;
    v3->_features = v4;

    [(COSFeatureHighlightView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)showFeaturesForDataSource:(id)source
{
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != sourceCopy)
  {
    v29 = sourceCopy;
    objc_storeWeak(&self->_dataSource, sourceCopy);
    [(NSMutableArray *)self->_features makeObjectsPerformSelector:"removeFromSuperview"];
    [(NSMutableArray *)self->_features removeAllObjects];
    v6 = objc_loadWeakRetained(&self->_dataSource);
    features = [v6 features];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = features;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          height = [[COSFeatureHighlightRowView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
          [(NSMutableArray *)self->_features addObject:height];
          [(COSFeatureHighlightView *)self addSubview:height];
          flattenImages = self->_flattenImages;
          v18 = [v15 objectForKeyedSubscript:@"i"];
          v19 = [UIImage imageNamed:v18];
          if (flattenImages)
          {
            v20 = BPSSetupTintColor();
            v21 = [v19 _flatImageWithColor:v20];

            v19 = v21;
          }

          imageView = [(COSFeatureHighlightRowView *)height imageView];
          [imageView setImage:v19];

          title = [(COSFeatureHighlightRowView *)height title];
          v24 = [v15 objectForKeyedSubscript:@"t"];
          v25 = [(COSFeatureHighlightView *)self localizedStringForString:v24];
          [title setText:v25];

          body = [(COSFeatureHighlightRowView *)height body];
          v27 = [v15 objectForKeyedSubscript:@"b"];
          v28 = [(COSFeatureHighlightView *)self localizedStringForString:v27];
          [body setText:v28];
        }

        v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    sourceCopy = v29;
  }

  [(COSFeatureHighlightView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  [(COSFeatureHighlightView *)self bounds];

  [(COSFeatureHighlightView *)self _sizeThatFits:1 doLayout:v3, v4];
}

- (CGSize)_sizeThatFits:(CGSize)fits doLayout:(BOOL)layout
{
  layoutCopy = layout;
  width = fits.width;
  [(COSFeatureHighlightView *)self rowHeight:fits.width];
  v8 = v7;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self->_features;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        [v15 sizeThatFits:{width, v8, v24}];
        v18 = v16;
        v19 = v17;
        if (v17 >= v8)
        {
          v20 = v17;
        }

        else
        {
          v20 = v8;
        }

        if (layoutCopy)
        {
          [v15 setFrame:{0.0, v13, v16, v20}];
        }

        v30.origin.x = 0.0;
        v30.origin.y = v13;
        v30.size.width = v18;
        v30.size.height = v20;
        MaxY = CGRectGetMaxY(v30);
        if (v19 <= v8)
        {
          v13 = MaxY;
        }

        else
        {
          v13 = MaxY + 6.0;
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  v22 = width;
  v23 = v13;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(COSFeatureHighlightView *)self _sizeThatFits:0 doLayout:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (COSFeatureHighlightDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end