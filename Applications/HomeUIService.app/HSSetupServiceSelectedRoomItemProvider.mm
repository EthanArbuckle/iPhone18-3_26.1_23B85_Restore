@interface HSSetupServiceSelectedRoomItemProvider
- (HSSetupServiceSelectedRoomItemProvider)init;
- (HSSetupServiceSelectedRoomItemProvider)initWithServiceLikeBuilder:(id)builder;
- (id)copyWithZone:(_NSZone *)zone;
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

- (HSSetupServiceSelectedRoomItemProvider)initWithServiceLikeBuilder:(id)builder
{
  builderCopy = builder;
  v8.receiver = self;
  v8.super_class = HSSetupServiceSelectedRoomItemProvider;
  v5 = [(HSSetupServiceSelectedRoomItemProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HSSetupServiceSelectedRoomItemProvider *)v5 setServiceLikeBuilder:builderCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  serviceLikeBuilder = [(HSSetupServiceSelectedRoomItemProvider *)self serviceLikeBuilder];
  v6 = [v4 initWithServiceLikeBuilder:serviceLikeBuilder];

  return v6;
}

- (id)reloadItems
{
  roomBuilderItem = [(HSSetupServiceSelectedRoomItemProvider *)self roomBuilderItem];
  roomBuilder = [roomBuilderItem roomBuilder];
  serviceLikeBuilder = [(HSSetupServiceSelectedRoomItemProvider *)self serviceLikeBuilder];
  room = [serviceLikeBuilder room];

  filter = [(HSSetupServiceSelectedRoomItemProvider *)self filter];

  if (filter)
  {
    filter2 = [(HSSetupServiceSelectedRoomItemProvider *)self filter];
    if ((filter2)[2](filter2, room))
    {
      v9 = room;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    room = v10;
  }

  if (roomBuilder == room)
  {
    v11 = [roomBuilder isEqual:room] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = +[NSMutableSet set];
  v13 = +[NSMutableSet set];
  v14 = +[NSMutableSet set];
  if (room && (roomBuilderItem == 0) | v11 & 1)
  {
    v15 = [[HFRoomBuilderItem alloc] initWithRoomBuilder:room];
    [v12 addObject:v15];
    [(HSSetupServiceSelectedRoomItemProvider *)self setRoomBuilderItem:v15];
  }

  if (roomBuilderItem && ((v11 ^ 1) & 1) == 0)
  {
    [v14 addObject:roomBuilderItem];
  }

  if (!((roomBuilderItem == 0) | v11 & 1))
  {
    [v13 addObject:roomBuilderItem];
  }

  v16 = [[HFItemProviderReloadResults alloc] initWithAddedItems:v12 removedItems:v14 existingItems:v13];
  v17 = [NAFuture futureWithResult:v16];

  return v17;
}

- (id)items
{
  roomBuilderItem = [(HSSetupServiceSelectedRoomItemProvider *)self roomBuilderItem];
  v3 = [NSSet na_setWithSafeObject:roomBuilderItem];

  return v3;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HSSetupServiceSelectedRoomItemProvider;
  invalidationReasons = [(HSSetupServiceSelectedRoomItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:HFItemProviderInvalidationReasonRoom];

  return v3;
}

@end