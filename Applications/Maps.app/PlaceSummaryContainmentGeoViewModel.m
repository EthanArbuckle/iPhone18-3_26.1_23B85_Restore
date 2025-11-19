@interface PlaceSummaryContainmentGeoViewModel
- (PlaceSummaryContainmentGeoViewModel)initWithMapItem:(id)a3;
@end

@implementation PlaceSummaryContainmentGeoViewModel

- (PlaceSummaryContainmentGeoViewModel)initWithMapItem:(id)a3
{
  v4 = a3;
  v5 = [[MUPlaceHeaderViewModel alloc] initWithMapItem:v4];

  v6 = [v5 enclosingPlaceViewModel];

  v7 = [v6 labelValue];
  if ([v7 length])
  {
  }

  else
  {
    v8 = [v6 tokenValue];
    v9 = [v8 length];

    if (!v9)
    {
      v15 = 0;
      goto LABEL_7;
    }
  }

  v17.receiver = self;
  v17.super_class = PlaceSummaryContainmentGeoViewModel;
  v10 = [(PlaceSummaryContainmentGeoViewModel *)&v17 init];
  if (v10)
  {
    v11 = [v6 labelValue];
    prefix = v10->_prefix;
    v10->_prefix = v11;

    v13 = [v6 tokenValue];
    containment = v10->_containment;
    v10->_containment = v13;
  }

  self = v10;
  v15 = self;
LABEL_7:

  return v15;
}

@end