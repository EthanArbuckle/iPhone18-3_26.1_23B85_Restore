@interface GuidesHomeHeaderViewModel
- (CGSize)photoSize;
- (GuidesHomeHeaderViewModel)initWithGuideLocation:(id)location featuredGuide:(id)guide sectionTitle:(id)title;
- (NSAttributedString)collectionLongTitle;
- (NSAttributedString)collectionTitle;
- (NSString)guideLocationTitle;
- (UIColor)backgroundColor;
- (void)collectionImageForSize:(CGSize)size onCompletion:(id)completion;
- (void)publisherLogoImageWithCompletion:(id)completion;
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

- (void)publisherLogoImageWithCompletion:(id)completion
{
  completionCopy = completion;
  viewModel = [(GuidesHomeHeaderViewModel *)self viewModel];
  [viewModel publisherLogoImageWithCompletion:completionCopy];
}

- (NSString)guideLocationTitle
{
  guideLocationTitle = self->_guideLocationTitle;
  if (!guideLocationTitle)
  {
    guideLocation = [(GuidesHomeHeaderViewModel *)self guideLocation];
    title = [guideLocation title];
    v6 = self->_guideLocationTitle;
    self->_guideLocationTitle = title;

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
    viewModel = [(GuidesHomeHeaderViewModel *)self viewModel];
    collectionLongTitle = [viewModel collectionLongTitle];
    v6 = self->_collectionLongTitle;
    self->_collectionLongTitle = collectionLongTitle;

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
    viewModel = [(GuidesHomeHeaderViewModel *)self viewModel];
    collectionTitle = [viewModel collectionTitle];
    v6 = self->_collectionTitle;
    self->_collectionTitle = collectionTitle;

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
    viewModel = [(GuidesHomeHeaderViewModel *)self viewModel];
    backgroundColor = [viewModel backgroundColor];
    v6 = self->_backgroundColor;
    self->_backgroundColor = backgroundColor;

    v7 = +[MKPlaceCollectionImageProvider sharedInstance];
    featuredGuide = [(GuidesHomeHeaderViewModel *)self featuredGuide];
    v9 = [v7 isJoeColorManuallyCuratedForCuratedCollection:featuredGuide];

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

- (GuidesHomeHeaderViewModel)initWithGuideLocation:(id)location featuredGuide:(id)guide sectionTitle:(id)title
{
  locationCopy = location;
  guideCopy = guide;
  titleCopy = title;
  v26.receiver = self;
  v26.super_class = GuidesHomeHeaderViewModel;
  v12 = [(GuidesHomeHeaderViewModel *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_featuredGuide, guide);
    objc_storeStrong(&v13->_guideLocation, location);
    v14 = [NSAttributedString alloc];
    v27[0] = NSFontAttributeName;
    v15 = [UIFont systemFontOfSize:11.0];
    v28[0] = v15;
    v27[1] = NSForegroundColorAttributeName;
    v16 = +[UIColor whiteColor];
    v17 = [v16 colorWithAlphaComponent:0.6];
    v28[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v19 = [v14 initWithString:titleCopy attributes:v18];
    sectionTitle = v13->_sectionTitle;
    v13->_sectionTitle = v19;

    v21 = [MKPlaceCollectionViewModel alloc];
    v22 = +[UIFont system28Bold];
    v23 = [v21 initWithGEOPlaceCollection:guideCopy usingSyncCoordinator:0 inContext:9 usingTitleFont:v22];
    viewModel = v13->_viewModel;
    v13->_viewModel = v23;
  }

  return v13;
}

- (void)collectionImageForSize:(CGSize)size onCompletion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  viewModel = [(GuidesHomeHeaderViewModel *)self viewModel];
  [viewModel collectionImageForSize:completionCopy onCompletion:{width, height}];
}

@end