@interface ResolveMUIDAction
- (ResolveMUIDAction)initWithBusinessID:(id)a3 contentProvider:(id)a4;
- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4;
@end

@implementation ResolveMUIDAction

- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ResolveMUIDAction *)self businessID];

  if (v8)
  {
    v9 = [MKMapItemIdentifier alloc];
    v10 = [(ResolveMUIDAction *)self businessID];
    v11 = [v10 longLongValue];
    v12 = [v9 initWithMUID:v11 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

    if (v12)
    {
      v13 = +[MKMapService sharedService];
      v19 = v12;
      v14 = [NSArray arrayWithObjects:&v19 count:1];
      v15 = [(ResolveMUIDAction *)self contentProvider];
      v16 = [v13 ticketForIdentifiers:v14 resultProviderID:0 contentProvider:v15 traits:v6];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100F75024;
      v17[3] = &unk_10165EB78;
      v18 = v7;
      [v16 submitWithHandler:v17 networkActivity:0];
    }

    else if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (ResolveMUIDAction)initWithBusinessID:(id)a3 contentProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ResolveMUIDAction;
  v9 = [(ResolveMUIDAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_businessID, a3);
    objc_storeStrong(&v10->_contentProvider, a4);
  }

  return v10;
}

@end