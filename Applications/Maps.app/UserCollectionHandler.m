@interface UserCollectionHandler
- (BOOL)beingModified;
- (BOOL)canDelete;
- (BOOL)canEditTitle;
- (BOOL)containsItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateImage:(id)a3;
- (BOOL)updateTitle:(id)a3;
- (MSCollection)collectionAsMapsSyncCollection;
- (UserCollectionHandler)initWithCollection:(id)a3;
- (id)identifier;
- (id)numberOfItems;
- (id)title;
- (int)showAction;
- (void)addObjects:(id)a3 completion:(id)a4;
- (void)endModification;
- (void)rebuildContent;
- (void)removeObjects:(id)a3 completion:(id)a4;
- (void)setCollection:(id)a3;
- (void)startModification;
- (void)updateCollection:(id)a3;
- (void)updateTitle:(id)a3 forMapItem:(id)a4 completion:(id)a5;
- (void)updateWithMapsSyncCollection:(id)a3;
@end

@implementation UserCollectionHandler

- (id)identifier
{
  v2 = [(CollectionHandler *)self collection];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)rebuildContent
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000263B0;
  v2[3] = &unk_10164F4D0;
  v2[4] = self;
  [(CollectionHandler *)self rebuildContent:v2];
}

- (int)showAction
{
  v2 = [(CollectionHandler *)self collection];
  v3 = [v2 isLegacyFavoritesCollection];

  if (v3)
  {
    return 2084;
  }

  else
  {
    return 2067;
  }
}

- (void)updateCollection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10086A730;
  v7[3] = &unk_10165DC78;
  v5 = v4;
  v8 = v5;
  objc_copyWeak(&v9, &location);
  v6.receiver = self;
  v6.super_class = UserCollectionHandler;
  [(CollectionHandler *)&v6 updateCollection:v7];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (BOOL)containsItem:(id)a3
{
  v6.receiver = self;
  v6.super_class = UserCollectionHandler;
  v3 = [(CollectionHandler *)&v6 itemForMapItem:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)updateTitle:(id)a3 forMapItem:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(CollectionHandler *)self itemForMapItem:a4];
  [v10 setCustomName:v9];

  v11 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v20 = v10;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  v19 = 0;
  [v11 saveWithObjects:v12 error:&v19];
  v13 = v19;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10086A9A8;
  block[3] = &unk_101661090;
  v17 = v13;
  v18 = v8;
  v14 = v13;
  v15 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateWithMapsSyncCollection:(id)a3
{
  [(UserCollectionHandler *)self setCollection:a3];

  [(UserCollectionHandler *)self rebuildContent];
}

- (void)removeObjects:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UserCollectionHandler *)self collectionAsMapsSyncCollection];
  v9 = v8;
  if (v8)
  {
    v27 = v8;
    v28 = v7;
    v10 = +[NSMutableArray array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = v6;
    obj = v6;
    v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    v13 = *v40;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v39 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [MKMapItem _itemWithGeoMapItem:v15];
          v38.receiver = self;
          v38.super_class = UserCollectionHandler;
          [(CollectionHandler *)&v38 itemForMapItem:v16];
          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = v15;
          if ([v18 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v16 = v19;

          if (v16)
          {
            v36.receiver = self;
            v36.super_class = UserCollectionHandler;
            [(CollectionHandler *)&v36 itemForTransitLine:v16];
            v17 = LABEL_17:;
          }

          else
          {
            v17 = 0;
          }

          if (!v17)
          {
            goto LABEL_20;
          }

LABEL_19:
          [v10 addObject:v17];
          goto LABEL_20;
        }

        v37.receiver = self;
        v37.super_class = UserCollectionHandler;
        v17 = [(CollectionHandler *)&v37 itemForMapItem:v15];
        if (v17)
        {
          goto LABEL_19;
        }

LABEL_20:

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v20 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      v12 = v20;
      if (!v20)
      {
LABEL_24:

        v21 = v10;
        if ([v10 count])
        {
          [(UserCollectionHandler *)self startModification];
          objc_initWeak(location, self);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10086AEB8;
          block[3] = &unk_101660C70;
          objc_copyWeak(&v35, location);
          v32 = v10;
          v9 = v27;
          v33 = v27;
          v7 = v28;
          v34 = v28;
          dispatch_async(&_dispatch_main_q, block);

          objc_destroyWeak(&v35);
          objc_destroyWeak(location);
        }

        else
        {
          v9 = v27;
          v7 = v28;
          if (v28)
          {
            v26 = [NSError GEOErrorWithCode:0 reason:@"No object to remove"];
            (v28)[2](v28, v26);
          }
        }

        v6 = v29;
        goto LABEL_37;
      }
    }
  }

  v22 = sub_10006D178();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = [NSString stringWithFormat:@"self.collection not a MapsSync Collection"];
    *location = 136315906;
    *&location[4] = "[UserCollectionHandler removeObjects:completion:]";
    v45 = 2080;
    v46 = "UserCollectionHandler.m";
    v47 = 1024;
    v48 = 281;
    v49 = 2112;
    v50 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", location, 0x26u);
  }

  if (sub_100E03634())
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = +[NSThread callStackSymbols];
      *location = 138412290;
      *&location[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
    }
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

LABEL_37:
}

- (void)addObjects:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(UserCollectionHandler *)self startModification];
  v8 = [(UserCollectionHandler *)self collectionAsMapsSyncCollection];
  if (v8)
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count") + 1}];
    objc_initWeak(location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10086B45C;
    v15[3] = &unk_10164CFB8;
    objc_copyWeak(&v21, location);
    v16 = v6;
    v17 = 0;
    v18 = v8;
    v19 = v9;
    v20 = v7;
    v10 = v9;
    dispatch_async(&_dispatch_main_q, v15);

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [NSString stringWithFormat:@"self.collection not a MapsSync Collection"];
      *location = 136315906;
      *&location[4] = "[UserCollectionHandler addObjects:completion:]";
      v23 = 2080;
      v24 = "UserCollectionHandler.m";
      v25 = 1024;
      v26 = 227;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", location, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *location = 138412290;
        *&location[4] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (BOOL)updateImage:(id)a3
{
  v4 = a3;
  [(CollectionHandler *)self setHasBeenModified:1];
  [(UIImage *)v4 size];
  if (v5 > 300.0)
  {
    v10.width = 300.0;
    v10.height = 300.0;
    UIGraphicsBeginImageContext(v10);
    [(UIImage *)v4 drawInRect:0.0, 0.0, 300.0, 300.0];
    v6 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v4 = v6;
  }

  v7 = UIImagePNGRepresentation(v4);
  v8 = [(CollectionHandler *)self collection];
  [v8 setImage:v7];

  [(CollectionHandler *)self setStagedImage:v4];
  if (!self->_needsToBePersisted)
  {
    [(UserCollectionHandler *)self updateCollection:&stru_10162C1C8];
  }

  [(CollectionHandler *)self loadImage];

  return 1;
}

- (BOOL)updateTitle:(id)a3
{
  v4 = a3;
  [(CollectionHandler *)self setHasBeenModified:1];
  v5 = [(CollectionHandler *)self collection];
  [v5 setTitle:v4];

  [(UserCollectionHandler *)self setStagedTitle:v4];
  [(CollectionHandler *)self notifyObserversInfoUpdated];
  [(UserCollectionHandler *)self updateCollection:&stru_10162C1A8];
  return 1;
}

- (BOOL)canEditTitle
{
  v2 = [(CollectionHandler *)self collection];
  v3 = [v2 isLegacyFavoritesCollection];

  return v3 ^ 1;
}

- (BOOL)canDelete
{
  v2 = [(CollectionHandler *)self collection];
  v3 = [v2 isLegacyFavoritesCollection];

  return v3 ^ 1;
}

- (id)numberOfItems
{
  v3 = [(CollectionHandler *)self collection];

  if (v3)
  {
    v4 = [(UserCollectionHandler *)self collectionAsMapsSyncCollection];
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 placesCount]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)title
{
  v3 = [(UserCollectionHandler *)self stagedTitle];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(CollectionHandler *)self collection];
    v5 = [v6 title];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(UserCollectionHandler *)self identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)beingModified
{
  os_unfair_lock_lock(&self->_modficationLock);
  v3 = self->_modificationCount != 0;
  os_unfair_lock_unlock(&self->_modficationLock);
  return v3;
}

- (void)endModification
{
  os_unfair_lock_lock(&self->_modficationLock);
  --self->_modificationCount;

  os_unfair_lock_unlock(&self->_modficationLock);
}

- (void)startModification
{
  os_unfair_lock_lock(&self->_modficationLock);
  ++self->_modificationCount;

  os_unfair_lock_unlock(&self->_modficationLock);
}

- (MSCollection)collectionAsMapsSyncCollection
{
  v3 = [(CollectionHandler *)self collection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CollectionHandler *)self collection];
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [NSString stringWithFormat:@"collection is not a MapsSync Collection"];
      v11 = 136315906;
      v12 = "[UserCollectionHandler collectionAsMapsSyncCollection]";
      v13 = 2080;
      v14 = "UserCollectionHandler.m";
      v15 = 1024;
      v16 = 80;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", &v11, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (void)setCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [NSString stringWithFormat:@"collection is not a MapsSync Collection"];
      *buf = 136315906;
      v11 = "[UserCollectionHandler setCollection:]";
      v12 = 2080;
      v13 = "UserCollectionHandler.m";
      v14 = 1024;
      v15 = 72;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v9.receiver = self;
  v9.super_class = UserCollectionHandler;
  [(CollectionHandler *)&v9 setCollection:v4];
}

- (UserCollectionHandler)initWithCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13.receiver = self;
    v13.super_class = UserCollectionHandler;
    v5 = [(CollectionHandler *)&v13 initWithCollection:v4];
    v6 = v5;
    if (v5)
    {
      v5->_modficationLock._os_unfair_lock_opaque = 0;
      [(UserCollectionHandler *)v5 rebuildContent];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v8 = sub_10006D178();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [NSString stringWithFormat:@"collection is not a MapsSync Collection"];
      *buf = 136315906;
      v15 = "[UserCollectionHandler initWithCollection:]";
      v16 = 2080;
      v17 = "UserCollectionHandler.m";
      v18 = 1024;
      v19 = 58;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v7 = 0;
  }

  return v7;
}

@end