@interface RidesharingFareLineItem
+ (id)_fareItemsFromRideOption:(id)option;
- (BOOL)isEqual:(id)equal;
- (RidesharingFareLineItem)init;
- (id)_initWithTitle:(id)title details:(id)details;
@end

@implementation RidesharingFareLineItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    title = [v6 title];
    title2 = [(RidesharingFareLineItem *)self title];
    if ([title isEqual:title2])
    {
      details = [v7 details];
      details2 = [(RidesharingFareLineItem *)self details];
      v12 = [details isEqual:details2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_initWithTitle:(id)title details:(id)details
{
  titleCopy = title;
  detailsCopy = details;
  v14.receiver = self;
  v14.super_class = RidesharingFareLineItem;
  v8 = [(RidesharingFareLineItem *)&v14 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [detailsCopy copy];
    details = v8->_details;
    v8->_details = v11;
  }

  return v8;
}

- (RidesharingFareLineItem)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

+ (id)_fareItemsFromRideOption:(id)option
{
  optionCopy = option;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  fareLineItems = [optionCopy fareLineItems];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CD0408;
  v11[3] = &unk_101650698;
  v12 = v5;
  v13 = v4;
  v7 = v4;
  v8 = v5;
  v9 = sub_100021DB0(fareLineItems, v11);

  return v9;
}

@end