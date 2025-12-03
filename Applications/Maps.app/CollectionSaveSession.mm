@interface CollectionSaveSession
- (BOOL)canRenameSelectedObjectInCollection:(id)collection;
- (CollectionSaveSession)initWithMapItem:(id)item showsAddToLibrarySection:(BOOL)section;
- (GEOTransitLine)transitLine;
- (MKMapItem)mapItem;
- (void)applyToCollection:(id)collection completion:(id)completion;
@end

@implementation CollectionSaveSession

- (void)applyToCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  if (collectionCopy)
  {
    collection = collectionCopy;
  }

  else
  {
    collection = [(CollectionEditSession *)self collection];
  }

  v9 = collection;
  mapItem = [(CollectionSaveSession *)self mapItem];

  if (mapItem && v9)
  {
    if (![(CollectionEditSession *)self suppressAnalytics])
    {
      analyticsTarget = [(CollectionEditSession *)self analyticsTarget];
      collection2 = [(CollectionEditSession *)self collection];

      v26 = completionCopy;
      v25 = v9;
      if (collection2 != collectionCopy)
      {
        collection3 = [(CollectionEditSession *)self collection];
        if ([collection3 handlerType] == 3)
        {
          analyticsTarget = 256;
        }

        else
        {
          analyticsTarget = 252;
        }
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = [(CollectionEditSession *)self selectedObjectSet];
      v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(obj);
            }

            _identifier = [*(*(&v30 + 1) + 8 * i) _identifier];
            v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [_identifier muid]);
            stringValue = [v19 stringValue];
            [GEOAPPortal captureUserAction:2073 target:analyticsTarget value:stringValue];
          }

          v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }

      completionCopy = v26;
      v9 = v25;
    }

    selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100D18060;
    v28[3] = &unk_10165E240;
    v28[4] = self;
    v29 = completionCopy;
    [v9 addObjects:selectedObjectSet completion:v28];
  }

  else
  {
    v22 = [NSError GEOErrorWithCode:0 reason:@"Nil map item or collection"];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v22);
    }

    resultBlock = [(CollectionEditSession *)self resultBlock];

    if (resultBlock)
    {
      resultBlock2 = [(CollectionEditSession *)self resultBlock];
      (resultBlock2)[2](resultBlock2, v22);
    }
  }
}

- (BOOL)canRenameSelectedObjectInCollection:(id)collection
{
  collectionCopy = collection;
  selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
  v6 = [selectedObjectSet count];

  if (v6 == 1)
  {
    mapItem = [(CollectionSaveSession *)self mapItem];
    if ([mapItem _maps_canRenameCollectionItem])
    {
      v8 = [collectionCopy containsItem:mapItem] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (GEOTransitLine)transitLine
{
  selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
  anyObject = [selectedObjectSet anyObject];

  if ([anyObject conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
  {
    v4 = anyObject;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MKMapItem)mapItem
{
  selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
  anyObject = [selectedObjectSet anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MKMapItem _itemWithGeoMapItem:anyObject];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = anyObject;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (CollectionSaveSession)initWithMapItem:(id)item showsAddToLibrarySection:(BOOL)section
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = CollectionSaveSession;
  v7 = [(CollectionEditSession *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CollectionEditSession *)v7 addSelectedObject:itemCopy];
    v8->_showsAddToLibrarySection = section;
  }

  return v8;
}

@end