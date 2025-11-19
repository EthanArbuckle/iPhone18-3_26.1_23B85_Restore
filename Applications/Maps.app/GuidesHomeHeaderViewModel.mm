@interface GuidesHomeHeaderViewModel
- (CGSize)photoSize;
- (GuidesHomeHeaderViewModel)initWithGuideLocation:(id)a3 featuredGuide:(id)a4 sectionTitle:(id)a5;
- (NSAttributedString)collectionLongTitle;
- (NSAttributedString)collectionTitle;
- (NSString)guideLocationTitle;
- (UIColor)backgroundColor;
- (void)collectionImageForSize:(CGSize)a3 onCompletion:(id)a4;
- (void)publisherLogoImageWithCompletion:(id)a3;
@end

@implementation GuidesHomeHeaderViewModel

- (CGSize)photoSize
{
  width = self->_photoSize.width;
  height = self->_photoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)publisherLogoImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GuidesHomeHeaderViewModel *)self viewModel];
  [v5 publisherLogoImageWithCompletion:v4];
}

- (NSString)guideLocationTitle
{
  guideLocationTitle = self->_guideLocationTitle;
  if (!guideLocationTitle)
  {
    v4 = [(GuidesHomeHeaderViewModel *)self guideLocation];
    v5 = [v4 title];
    v6 = self->_guideLocationTitle;
    self->_guideLocationTitle = v5;

    guideLocationTitle = self->_guideLocationTitle;
  }

  v7 = guideLocationTitle;

  return v7;
}

- (NSAttributedString)collectionLongTitle
{
  collectionLongTitle = self->_collectionLongTitle;
  if (!collectionLongTitle)
  {
    v4 = [(GuidesHomeHeaderViewModel *)self viewModel];
    v5 = [v4 collectionLongTitle];
    v6 = self->_collectionLongTitle;
    self->_collectionLongTitle = v5;

    collectionLongTitle = self->_collectionLongTitle;
  }

  v7 = collectionLongTitle;

  return v7;
}

- (NSAttributedString)collectionTitle
{
  collectionTitle = self->_collectionTitle;
  if (!collectionTitle)
  {
    v4 = [(GuidesHomeHeaderViewModel *)self viewModel];
    v5 = [v4 collectionTitle];
    v6 = self->_collectionTitle;
    self->_collectionTitle = v5;

    collectionTitle = self->_collectionTitle;
  }

  v7 = collectionTitle;

  return v7;
}

- (UIColor)backgroundColor
{
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor)
  {
    v4 = [(GuidesHomeHeaderViewModel *)self viewModel];
    v5 = [v4 backgroundColor];
    v6 = self->_backgroundColor;
    self->_backgroundColor = v5;

    v7 = +[MKPlaceCollectionImageProvider sharedInstance];
    v8 = [(GuidesHomeHeaderViewModel *)self featuredGuide];
    v9 = [v7 isJoeColorManuallyCuratedForCuratedCollection:v8];

    if ((v9 & 1) == 0)
    {
      v10 = self->_backgroundColor;
      v11 = +[UIColor blackColor];
      v12 = [v11 colorWithAlphaComponent:0.3];
      v13 = [(UIColor *)v10 _colorBlendedWithColor:v12 compositingFilter:kCAFilterDarkenBlendMode];
      v14 = self->_backgroundColor;
      self->_backgroundColor = v13;
    }

    backgroundColor = self->_backgroundColor;
  }

  v15 = backgroundColor;

  return v15;
}

- (GuidesHomeHeaderViewModel)initWithGuideLocation:(id)a3 featuredGuide:(id)a4 sectionTitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = GuidesHomeHeaderViewModel;
  v12 = [(GuidesHomeHeaderViewModel *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_featuredGuide, a4);
    objc_storeStrong(&v13->_guideLocation, a3);
    v14 = [NSAttributedString alloc];
    v27[0] = NSFontAttributeName;
    v15 = [UIFont systemFontOfSize:11.0];
    v28[0] = v15;
    v27[1] = NSForegroundColorAttributeName;
    v16 = +[UIColor whiteColor];
    v17 = [v16 colorWithAlphaComponent:0.6];
    v28[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v19 = [v14 initWithString:v11 attributes:v18];
    sectionTitle = v13->_sectionTitle;
    v13->_sectionTitle = v19;

    v21 = [MKPlaceCollectionViewModel alloc];
    v22 = +[UIFont system28Bold];
    v23 = [v21 initWithGEOPlaceCollection:v10 usingSyncCoordinator:0 inContext:9 usingTitleFont:v22];
    viewModel = v13->_viewModel;
    v13->_viewModel = v23;
  }

  return v13;
}

- (void)collectionImageForSize:(CGSize)a3 onCompletion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(GuidesHomeHeaderViewModel *)self viewModel];
  [v8 collectionImageForSize:v7 onCompletion:{width, height}];
}

@end