@interface CollectionSaveSession
- (BOOL)canRenameSelectedObjectInCollection:(id)a3;
- (CollectionSaveSession)initWithMapItem:(id)a3 showsAddToLibrarySection:(BOOL)a4;
- (GEOTransitLine)transitLine;
- (MKMapItem)mapItem;
- (void)applyToCollection:(id)a3 completion:(id)a4;
@end

@implementation CollectionSaveSession

- (void)applyToCollection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(CollectionEditSession *)self collection];
  }

  v9 = v8;
  v10 = [(CollectionSaveSession *)self mapItem];

  if (v10 && v9)
  {
    if (![(CollectionEditSession *)self suppressAnalytics])
    {
      v11 = [(CollectionEditSession *)self analyticsTarget];
      v12 = [(CollectionEditSession *)self collection];

      v26 = v7;
      v25 = v9;
      if (v12 != v6)
      {
        v13 = [(CollectionEditSession *)self collection];
        if ([v13 handlerType] == 3)
        {
          v11 = 256;
        }

        else
        {
          v11 = 252;
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

            v18 = [*(*(&v30 + 1) + 8 * i) _identifier];
            v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 muid]);
            v20 = [v19 stringValue];
            [GEOAPPortal captureUserAction:2073 target:v11 value:v20];
          }

          v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }

      v7 = v26;
      v9 = v25;
    }

    v21 = [(CollectionEditSession *)self selectedObjectSet];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100D18060;
    v28[3] = &unk_10165E240;
    v28[4] = self;
    v29 = v7;
    [v9 addObjects:v21 completion:v28];
  }

  else
  {
    v22 = [NSError GEOErrorWithCode:0 reason:@"Nil map item or collection"];
    if (v7)
    {
      (*(v7 + 2))(v7, v22);
    }

    v23 = [(CollectionEditSession *)self resultBlock];

    if (v23)
    {
      v24 = [(CollectionEditSession *)self resultBlock];
      (v24)[2](v24, v22);
    }
  }
}

- (BOOL)canRenameSelectedObjectInCollection:(id)a3
{
  v4 = a3;
  v5 = [(CollectionEditSession *)self selectedObjectSet];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(CollectionSaveSession *)self mapItem];
    if ([v7 _maps_canRenameCollectionItem])
    {
      v8 = [v4 containsItem:v7] ^ 1;
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
  v2 = [(CollectionEditSession *)self selectedObjectSet];
  v3 = [v2 anyObject];

  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MKMapItem)mapItem
{
  v2 = [(CollectionEditSession *)self selectedObjectSet];
  v3 = [v2 anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MKMapItem _itemWithGeoMapItem:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (CollectionSaveSession)initWithMapItem:(id)a3 showsAddToLibrarySection:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CollectionSaveSession;
  v7 = [(CollectionEditSession *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CollectionEditSession *)v7 addSelectedObject:v6];
    v8->_showsAddToLibrarySection = a4;
  }

  return v8;
}

@end