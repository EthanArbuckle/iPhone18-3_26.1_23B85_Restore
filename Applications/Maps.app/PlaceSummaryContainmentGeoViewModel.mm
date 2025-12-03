@interface PlaceSummaryContainmentGeoViewModel
- (PlaceSummaryContainmentGeoViewModel)initWithMapItem:(id)item;
@end

@implementation PlaceSummaryContainmentGeoViewModel

- (PlaceSummaryContainmentGeoViewModel)initWithMapItem:(id)item
{
  itemCopy = item;
  v5 = [[MUPlaceHeaderViewModel alloc] initWithMapItem:itemCopy];

  enclosingPlaceViewModel = [v5 enclosingPlaceViewModel];

  labelValue = [enclosingPlaceViewModel labelValue];
  if ([labelValue length])
  {
  }

  else
  {
    tokenValue = [enclosingPlaceViewModel tokenValue];
    v9 = [tokenValue length];

    if (!v9)
    {
      selfCopy = 0;
      goto LABEL_7;
    }
  }

  v17.receiver = self;
  v17.super_class = PlaceSummaryContainmentGeoViewModel;
  v10 = [(PlaceSummaryContainmentGeoViewModel *)&v17 init];
  if (v10)
  {
    labelValue2 = [enclosingPlaceViewModel labelValue];
    prefix = v10->_prefix;
    v10->_prefix = labelValue2;

    tokenValue2 = [enclosingPlaceViewModel tokenValue];
    containment = v10->_containment;
    v10->_containment = tokenValue2;
  }

  self = v10;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

@end