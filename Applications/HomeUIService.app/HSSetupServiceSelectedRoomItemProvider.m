@interface HSSetupServiceSelectedRoomItemProvider
- (HSSetupServiceSelectedRoomItemProvider)init;
- (HSSetupServiceSelectedRoomItemProvider)initWithServiceLikeBuilder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
@end

@implementation HSSetupServiceSelectedRoomItemProvider

- (HSSetupServiceSelectedRoomItemProvider)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("initWithServiceLikeBuilder:");
  [v4 handleFailureInMethod:a2 object:self file:@"HSSetupServiceSelectedRoomItemProvider.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HSSetupServiceSelectedRoomItemProvider init]", v5}];

  return 0;
}

- (HSSetupServiceSelectedRoomItemProvider)initWithServiceLikeBuilder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HSSetupServiceSelectedRoomItemProvider;
  v5 = [(HSSetupServiceSelectedRoomItemProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HSSetupServiceSelectedRoomItemProvider *)v5 setServiceLikeBuilder:v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HSSetupServiceSelectedRoomItemProvider *)self serviceLikeBuilder];
  v6 = [v4 initWithServiceLikeBuilder:v5];

  return v6;
}

- (id)reloadItems
{
  v3 = [(HSSetupServiceSelectedRoomItemProvider *)self roomBuilderItem];
  v4 = [v3 roomBuilder];
  v5 = [(HSSetupServiceSelectedRoomItemProvider *)self serviceLikeBuilder];
  v6 = [v5 room];

  v7 = [(HSSetupServiceSelectedRoomItemProvider *)self filter];

  if (v7)
  {
    v8 = [(HSSetupServiceSelectedRoomItemProvider *)self filter];
    if ((v8)[2](v8, v6))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v6 = v10;
  }

  if (v4 == v6)
  {
    v11 = [v4 isEqual:v6] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = +[NSMutableSet set];
  v13 = +[NSMutableSet set];
  v14 = +[NSMutableSet set];
  if (v6 && (v3 == 0) | v11 & 1)
  {
    v15 = [[HFRoomBuilderItem alloc] initWithRoomBuilder:v6];
    [v12 addObject:v15];
    [(HSSetupServiceSelectedRoomItemProvider *)self setRoomBuilderItem:v15];
  }

  if (v3 && ((v11 ^ 1) & 1) == 0)
  {
    [v14 addObject:v3];
  }

  if (!((v3 == 0) | v11 & 1))
  {
    [v13 addObject:v3];
  }

  v16 = [[HFItemProviderReloadResults alloc] initWithAddedItems:v12 removedItems:v14 existingItems:v13];
  v17 = [NAFuture futureWithResult:v16];

  return v17;
}

- (id)items
{
  v2 = [(HSSetupServiceSelectedRoomItemProvider *)self roomBuilderItem];
  v3 = [NSSet na_setWithSafeObject:v2];

  return v3;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HSSetupServiceSelectedRoomItemProvider;
  v2 = [(HSSetupServiceSelectedRoomItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:HFItemProviderInvalidationReasonRoom];

  return v3;
}

@end