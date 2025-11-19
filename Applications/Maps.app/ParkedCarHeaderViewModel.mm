@interface ParkedCarHeaderViewModel
- (ParkedCarHeaderViewModel)initWithParkedCar:(id)a3 subtitleText:(id)a4;
- (id)placeSecondaryName;
@end

@implementation ParkedCarHeaderViewModel

- (id)placeSecondaryName
{
  if (self->_subtitleText)
  {
    return self->_subtitleText;
  }

  else
  {
    return @" ";
  }
}

- (ParkedCarHeaderViewModel)initWithParkedCar:(id)a3 subtitleText:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 mapItem];
  v14.receiver = self;
  v14.super_class = ParkedCarHeaderViewModel;
  v10 = [(ParkedCarHeaderViewModel *)&v14 initWithMapItem:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_parkedCar, a3);
    v11 = [v8 copy];
    subtitleText = v10->_subtitleText;
    v10->_subtitleText = v11;
  }

  return v10;
}

@end