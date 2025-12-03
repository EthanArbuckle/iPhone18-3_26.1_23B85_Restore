@interface RoutePlanningOutlineSection
- (RoutePlanningOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier;
- (RoutePlanningOutlineSectionHosting)host;
- (id)cellForItemAtIndexPath:(id)path;
- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment;
@end

@implementation RoutePlanningOutlineSection

- (RoutePlanningOutlineSectionHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (id)cellForItemAtIndexPath:(id)path
{
  [(RoutePlanningOutlineSection *)self doesNotRecognizeSelector:a2];
  v3 = [[UICollectionViewCell alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  return v3;
}

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  v6 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:0 layoutEnvironment:environmentCopy];

  [(RoutePlanningOutlineSection *)self estimatedItemHeight];
  [v6 setEstimatedRowHeight:?];
  [v6 setSeparatorStyle:_UISolariumEnabled() ^ 1];

  return v6;
}

- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  v7 = [(RoutePlanningOutlineSection *)self listLayoutSectionConfigurationAtIndex:index layoutEnvironment:environmentCopy];
  if (sub_10000FA08(self->_collectionView) == 5)
  {
    [v7 setSeparatorStyle:0];
  }

  else
  {
    _separatorConfiguration = [v7 _separatorConfiguration];
    v9 = [_separatorConfiguration copy];

    theme = [(UICollectionView *)self->_collectionView theme];
    dynamicHairlineColor = [theme dynamicHairlineColor];
    [v9 _setColor:dynamicHairlineColor];

    [v7 _setSeparatorConfiguration:v9];
  }

  v12 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v7 layoutEnvironment:environmentCopy];

  return v12;
}

- (RoutePlanningOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = RoutePlanningOutlineSection;
  v9 = [(RoutePlanningOutlineSection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_active = 1;
    v11 = [identifierCopy copy];
    sectionIdentifier = v10->_sectionIdentifier;
    v10->_sectionIdentifier = v11;

    objc_storeStrong(&v10->_collectionView, view);
  }

  return v10;
}

@end