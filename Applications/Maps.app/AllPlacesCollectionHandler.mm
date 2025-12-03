@interface AllPlacesCollectionHandler
- (AllPlacesCollectionHandler)init;
- (id)title;
- (void)rebuildContent;
- (void)removeObjects:(id)objects completion:(id)completion;
- (void)storeDidChange:(id)change;
@end

@implementation AllPlacesCollectionHandler

- (AllPlacesCollectionHandler)init
{
  v8.receiver = self;
  v8.super_class = AllPlacesCollectionHandler;
  v2 = [(CollectionHandler *)&v8 init];
  if (v2)
  {
    v3 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v3 subscribe:v2];

    v9 = objc_opt_class();
    v4 = [NSArray arrayWithObjects:&v9 count:1];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v4;

    queryContents = v2->_queryContents;
    v2->_queryContents = &__NSArray0__struct;

    [(AllPlacesCollectionHandler *)v2 storeDidChange:&__NSArray0__struct];
  }

  return v2;
}

- (void)rebuildContent
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100C6F7DC;
  v2[3] = &unk_10164F4D0;
  v2[4] = self;
  [(CollectionHandler *)self rebuildContent:v2];
}

- (void)storeDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MSCollectionPlaceItemRequest);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C6F498;
  v6[3] = &unk_10165F290;
  objc_copyWeak(&v7, &location);
  [v5 fetchWithCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)removeObjects:(id)objects completion:(id)completion
{
  objectsCopy = objects;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [objectsCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18.receiver = self;
          v18.super_class = AllPlacesCollectionHandler;
          v11 = [(CollectionHandler *)&v18 itemForMapItem:v10];
          if (v11)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v12 = v10;
          if ([v12 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            v17.receiver = self;
            v17.super_class = AllPlacesCollectionHandler;
            v11 = [(CollectionHandler *)&v17 itemForTransitLine:v14];
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
LABEL_16:
            v15 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
            v23 = v11;
            v16 = [NSArray arrayWithObjects:&v23 count:1];
            [v15 deleteWithObjects:v16 error:0];
          }
        }
      }

      v7 = [objectsCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Collection] All Places" value:@"localized string not found" table:0];

  return v3;
}

@end