@interface RidesharingFareLineItem
+ (id)_fareItemsFromRideOption:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RidesharingFareLineItem)init;
- (id)_initWithTitle:(id)a3 details:(id)a4;
@end

@implementation RidesharingFareLineItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 title];
    v9 = [(RidesharingFareLineItem *)self title];
    if ([v8 isEqual:v9])
    {
      v10 = [v7 details];
      v11 = [(RidesharingFareLineItem *)self details];
      v12 = [v10 isEqual:v11];
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

- (id)_initWithTitle:(id)a3 details:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RidesharingFareLineItem;
  v8 = [(RidesharingFareLineItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
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

+ (id)_fareItemsFromRideOption:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [v3 fareLineItems];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CD0408;
  v11[3] = &unk_101650698;
  v12 = v5;
  v13 = v4;
  v7 = v4;
  v8 = v5;
  v9 = sub_100021DB0(v6, v11);

  return v9;
}

@end