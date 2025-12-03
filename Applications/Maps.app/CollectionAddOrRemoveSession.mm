@interface CollectionAddOrRemoveSession
- (void)_instrumentSaveOrRemoveFromCollectionWithMapItem:(id)item instrumentSave:(BOOL)save;
- (void)applyToCollection:(id)collection completion:(id)completion;
@end

@implementation CollectionAddOrRemoveSession

- (void)_instrumentSaveOrRemoveFromCollectionWithMapItem:(id)item instrumentSave:(BOOL)save
{
  if (save)
  {
    v5 = 2073;
  }

  else
  {
    v5 = 476;
  }

  itemCopy = item;
  analyticsTarget = [(CollectionEditSession *)self analyticsTarget];
  _identifier = [itemCopy _identifier];

  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [_identifier muid]);
  stringValue = [v9 stringValue];

  analyticsHandler = [(CollectionEditSession *)self analyticsHandler];

  if (analyticsHandler)
  {
    analyticsHandler2 = [(CollectionEditSession *)self analyticsHandler];
    (analyticsHandler2)[2](analyticsHandler2, v5, analyticsTarget, stringValue);
  }

  else
  {
    [GEOAPPortal captureUserAction:v5 target:analyticsTarget value:stringValue];
  }
}

- (void)applyToCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  v8 = collectionCopy;
  transitLine = [(CollectionSaveSession *)self transitLine];
  if ((transitLine || ([(CollectionSaveSession *)self mapItem], (transitLine = objc_claimAutoreleasedReturnValue()) != 0)) && (transitLine, v8))
  {
    mapItem = [(CollectionSaveSession *)self mapItem];
    v11 = [v8 containsItem:mapItem];

    if (v11)
    {
      selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100D1882C;
      v29[3] = &unk_10165E240;
      v29[4] = self;
      v30 = completionCopy;
      [v8 removeObjects:selectedObjectSet completion:v29];

      v13 = v30;
    }

    else
    {
      if (![(CollectionEditSession *)self suppressAnalytics])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        selectedObjectSet2 = [(CollectionEditSession *)self selectedObjectSet];
        v18 = [selectedObjectSet2 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v26;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v26 != v20)
              {
                objc_enumerationMutation(selectedObjectSet2);
              }

              [(CollectionAddOrRemoveSession *)self _instrumentSaveOrRemoveFromCollectionWithMapItem:*(*(&v25 + 1) + 8 * i) instrumentSave:1];
            }

            v19 = [selectedObjectSet2 countByEnumeratingWithState:&v25 objects:v31 count:16];
          }

          while (v19);
        }
      }

      selectedObjectSet3 = [(CollectionEditSession *)self selectedObjectSet];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100D189C4;
      v23[3] = &unk_10165E240;
      v23[4] = self;
      v24 = completionCopy;
      [v8 addObjects:selectedObjectSet3 completion:v23];

      v13 = v24;
    }
  }

  else
  {
    v14 = [NSError GEOErrorWithCode:0 reason:@"Nil map item or collection"];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v14);
    }

    resultBlock = [(CollectionEditSession *)self resultBlock];

    if (resultBlock)
    {
      resultBlock2 = [(CollectionEditSession *)self resultBlock];
      (resultBlock2)[2](resultBlock2, v14);
    }
  }
}

@end