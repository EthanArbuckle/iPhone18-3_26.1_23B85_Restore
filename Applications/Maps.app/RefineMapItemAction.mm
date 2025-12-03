@interface RefineMapItemAction
- (RefineMapItemAction)initWithMapItem:(id)item;
- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion;
@end

@implementation RefineMapItemAction

- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion
{
  completionCopy = completion;
  traitsCopy = traits;
  originalMapItem = [(RefineMapItemAction *)self originalMapItem];
  v9 = +[MKMapService sharedService];
  v10 = [v9 ticketForMapItemToRefine:originalMapItem traits:traitsCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100FC370C;
  v13[3] = &unk_1016601F0;
  v14 = originalMapItem;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = originalMapItem;
  [v10 submitWithHandler:v13 networkActivity:0];
}

- (RefineMapItemAction)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = RefineMapItemAction;
  v6 = [(RefineMapItemAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMapItem, item);
  }

  return v7;
}

@end