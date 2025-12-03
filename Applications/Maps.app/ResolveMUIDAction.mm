@interface ResolveMUIDAction
- (ResolveMUIDAction)initWithBusinessID:(id)d contentProvider:(id)provider;
- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion;
@end

@implementation ResolveMUIDAction

- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion
{
  traitsCopy = traits;
  completionCopy = completion;
  businessID = [(ResolveMUIDAction *)self businessID];

  if (businessID)
  {
    v9 = [MKMapItemIdentifier alloc];
    businessID2 = [(ResolveMUIDAction *)self businessID];
    longLongValue = [businessID2 longLongValue];
    v12 = [v9 initWithMUID:longLongValue resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

    if (v12)
    {
      v13 = +[MKMapService sharedService];
      v19 = v12;
      v14 = [NSArray arrayWithObjects:&v19 count:1];
      contentProvider = [(ResolveMUIDAction *)self contentProvider];
      v16 = [v13 ticketForIdentifiers:v14 resultProviderID:0 contentProvider:contentProvider traits:traitsCopy];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100F75024;
      v17[3] = &unk_10165EB78;
      v18 = completionCopy;
      [v16 submitWithHandler:v17 networkActivity:0];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (ResolveMUIDAction)initWithBusinessID:(id)d contentProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = ResolveMUIDAction;
  v9 = [(ResolveMUIDAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_businessID, d);
    objc_storeStrong(&v10->_contentProvider, provider);
  }

  return v10;
}

@end