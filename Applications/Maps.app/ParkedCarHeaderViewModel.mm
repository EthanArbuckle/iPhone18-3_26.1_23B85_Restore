@interface ParkedCarHeaderViewModel
- (ParkedCarHeaderViewModel)initWithParkedCar:(id)car subtitleText:(id)text;
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

- (ParkedCarHeaderViewModel)initWithParkedCar:(id)car subtitleText:(id)text
{
  carCopy = car;
  textCopy = text;
  mapItem = [carCopy mapItem];
  v14.receiver = self;
  v14.super_class = ParkedCarHeaderViewModel;
  v10 = [(ParkedCarHeaderViewModel *)&v14 initWithMapItem:mapItem];

  if (v10)
  {
    objc_storeStrong(&v10->_parkedCar, car);
    v11 = [textCopy copy];
    subtitleText = v10->_subtitleText;
    v10->_subtitleText = v11;
  }

  return v10;
}

@end