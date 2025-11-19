@interface MapsBannerContent
- (MapsBannerContent)initWithHeaderView:(id)a3 iconView:(id)a4 leadingTopView:(id)a5 trailingTopView:(id)a6 bottomView:(id)a7 footerView:(id)a8;
- (NSArray)allViews;
- (NSObject)visibilityFingerprint;
@end

@implementation MapsBannerContent

- (NSObject)visibilityFingerprint
{
  v3 = [NSNumber numberWithBool:[(UIView *)self->_headerView isHidden]];
  v11[0] = v3;
  v4 = [NSNumber numberWithBool:[(UIView *)self->_iconView isHidden]];
  v11[1] = v4;
  v5 = [NSNumber numberWithBool:[(UIView *)self->_leadingTopView isHidden]];
  v11[2] = v5;
  v6 = [NSNumber numberWithBool:[(UIView *)self->_trailingTopView isHidden]];
  v11[3] = v6;
  v7 = [NSNumber numberWithBool:[(UIView *)self->_bottomView isHidden]];
  v11[4] = v7;
  v8 = [NSNumber numberWithBool:[(UIView *)self->_footerView isHidden]];
  v11[5] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:6];

  return v9;
}

- (NSArray)allViews
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_headerView)
  {
    [v3 addObject:?];
  }

  if (self->_iconView)
  {
    [v4 addObject:?];
  }

  [v4 addObject:self->_leadingTopView];
  if (self->_trailingTopView)
  {
    [v4 addObject:?];
  }

  if (self->_bottomView)
  {
    [v4 addObject:?];
  }

  if (self->_footerView)
  {
    [v4 addObject:?];
  }

  v5 = [v4 copy];

  return v5;
}

- (MapsBannerContent)initWithHeaderView:(id)a3 iconView:(id)a4 leadingTopView:(id)a5 trailingTopView:(id)a6 bottomView:(id)a7 footerView:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = MapsBannerContent;
  v18 = [(MapsBannerContent *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_headerView, a3);
    objc_storeStrong(&v19->_iconView, a4);
    objc_storeStrong(&v19->_leadingTopView, a5);
    objc_storeStrong(&v19->_trailingTopView, a6);
    objc_storeStrong(&v19->_bottomView, a7);
    objc_storeStrong(&v19->_footerView, a8);
  }

  return v19;
}

@end