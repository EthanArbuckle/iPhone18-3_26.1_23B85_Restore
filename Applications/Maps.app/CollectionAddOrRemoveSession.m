@interface CollectionAddOrRemoveSession
- (void)_instrumentSaveOrRemoveFromCollectionWithMapItem:(id)a3 instrumentSave:(BOOL)a4;
- (void)applyToCollection:(id)a3 completion:(id)a4;
@end

@implementation CollectionAddOrRemoveSession

- (void)_instrumentSaveOrRemoveFromCollectionWithMapItem:(id)a3 instrumentSave:(BOOL)a4
{
  if (a4)
  {
    v5 = 2073;
  }

  else
  {
    v5 = 476;
  }

  v6 = a3;
  v7 = [(CollectionEditSession *)self analyticsTarget];
  v8 = [v6 _identifier];

  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 muid]);
  v12 = [v9 stringValue];

  v10 = [(CollectionEditSession *)self analyticsHandler];

  if (v10)
  {
    v11 = [(CollectionEditSession *)self analyticsHandler];
    (v11)[2](v11, v5, v7, v12);
  }

  else
  {
    [GEOAPPortal captureUserAction:v5 target:v7 value:v12];
  }
}

- (void)applyToCollection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(CollectionSaveSession *)self transitLine];
  if ((v9 || ([(CollectionSaveSession *)self mapItem], (v9 = objc_claimAutoreleasedReturnValue()) != 0)) && (v9, v8))
  {
    v10 = [(CollectionSaveSession *)self mapItem];
    v11 = [v8 containsItem:v10];

    if (v11)
    {
      v12 = [(CollectionEditSession *)self selectedObjectSet];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100D1882C;
      v29[3] = &unk_10165E240;
      v29[4] = self;
      v30 = v7;
      [v8 removeObjects:v12 completion:v29];

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
        v17 = [(CollectionEditSession *)self selectedObjectSet];
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
                objc_enumerationMutation(v17);
              }

              [(CollectionAddOrRemoveSession *)self _instrumentSaveOrRemoveFromCollectionWithMapItem:*(*(&v25 + 1) + 8 * i) instrumentSave:1];
            }

            v19 = [v17 countByEnumeratingWithState:&v25 objects:v31 count:16];
          }

          while (v19);
        }
      }

      v22 = [(CollectionEditSession *)self selectedObjectSet];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100D189C4;
      v23[3] = &unk_10165E240;
      v23[4] = self;
      v24 = v7;
      [v8 addObjects:v22 completion:v23];

      v13 = v24;
    }
  }

  else
  {
    v14 = [NSError GEOErrorWithCode:0 reason:@"Nil map item or collection"];
    if (v7)
    {
      (*(v7 + 2))(v7, v14);
    }

    v15 = [(CollectionEditSession *)self resultBlock];

    if (v15)
    {
      v16 = [(CollectionEditSession *)self resultBlock];
      (v16)[2](v16, v14);
    }
  }
}

@end