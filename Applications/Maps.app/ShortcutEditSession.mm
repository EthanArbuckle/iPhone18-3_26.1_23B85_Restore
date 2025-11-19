@interface ShortcutEditSession
+ (ShortcutEditSession)editSessionWithMapItem:(id)a3;
+ (ShortcutEditSession)editSessionWithShortcut:(id)a3;
+ (ShortcutEditSession)editSessionWithSuggestion:(id)a3;
+ (id)addSession;
+ (id)addSessionWithShortcut:(id)a3;
+ (id)addSessionWithType:(int64_t)a3 mapItem:(id)a4;
+ (void)captureCreateFavoriteAction;
- (BOOL)shortcutsContainItem:(id)a3;
- (NSArray)contacts;
- (NSString)titleForAddressPicker;
- (ShortcutEditSession)init;
- (id)shortcutManager;
- (void)_saveFavorite:(id)a3 completion:(id)a4;
- (void)_touchMapsSuggestionsEngine;
- (void)addSharing:(id)a3;
- (void)removeFromShortcutsWithCompletion:(id)a3;
- (void)removeSharing:(id)a3;
- (void)saveWithCompletion:(id)a3;
- (void)setAdjustedCoordinate:(CLLocationCoordinate2D)a3;
- (void)setMapItem:(id)a3;
- (void)setName:(id)a3;
- (void)setOriginalShortcut:(id)a3;
- (void)setOriginalSuggestionsEntry:(id)a3;
@end

@implementation ShortcutEditSession

- (void)_touchMapsSuggestionsEngine
{
  v2 = MapsSuggestionsEngineForMapsProcess();
  [v2 hintRefreshOfType:18];
}

- (id)shortcutManager
{
  v2 = MapsSuggestionsResourceDepotForMapsProcess();
  v3 = [v2 oneFavorites];

  return v3;
}

- (void)removeFromShortcutsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shortcut)
  {
    self->_removing = 1;
    objc_initWeak(&location, self);
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v6 = self->_shortcut;
      if (v6)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100FEE4E8;
        v12[3] = &unk_1016610B8;
        v13 = v5;
        [(MapsSuggestionsShortcutLike *)v6 deleteWithCompletionHandler:v12];
      }

      else if (v5)
      {
        v5[2](v5, 0);
      }
    }

    else
    {
      v7 = [(ShortcutEditSession *)self shortcutManager];
      shortcut = self->_shortcut;
      v8 = [NSArray arrayWithObjects:&shortcut count:1];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100FEE594;
      v9[3] = &unk_101661108;
      objc_copyWeak(&v11, &location);
      v10 = v5;
      [v7 removeShortcuts:v8 handler:v9];

      objc_destroyWeak(&v11);
    }

    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)_saveFavorite:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100FEE7A4;
  v10[3] = &unk_101660FD8;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [v8 saveWithCompletionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)saveWithCompletion:(id)a3
{
  v4 = a3;
  shortcut = self->_shortcut;
  if (shortcut && !self->_removing)
  {
    [(MapsSuggestionsShortcutLike *)shortcut setIsHidden:0];
    v8 = 0;
    if (!self->_alreadySaved)
    {
      v8 = [(MapsSuggestionsEntry *)self->_originalSuggestionsEntry isShortcutForSetup]^ 1;
    }

    objc_initWeak(&location, self);
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v9 = self->_shortcut;
      if (v9)
      {
        if ([(ShortcutEditSession *)self moveToPreferredIndexInFavorites])
        {
          v10 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100FEED1C;
          v22[3] = &unk_101660FD8;
          objc_copyWeak(&v25, &location);
          v23 = v9;
          v24 = v4;
          [v10 loadAllShortcutsWithCompletionHandler:v22];

          objc_destroyWeak(&v25);
        }

        else
        {
          [(ShortcutEditSession *)self _saveFavorite:v9 completion:v4];
        }
      }

      else
      {
        if (v4)
        {
          (*(v4 + 2))(v4, 0);
        }

        v14 = [(ShortcutEditSession *)self completionHandler];

        if (v14)
        {
          v15 = [(ShortcutEditSession *)self completionHandler];
          v15[2]();
        }
      }
    }

    else
    {
      v11 = [(ShortcutEditSession *)self shortcutManager];
      objc_initWeak(&from, v11);

      v12 = objc_loadWeakRetained(&from);
      v27 = self->_shortcut;
      v13 = [NSArray arrayWithObjects:&v27 count:1];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100FEED6C;
      v16[3] = &unk_101661000;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      v17 = v4;
      v20 = v8;
      [v12 addOrUpdateShortcuts:v13 handler:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }

    v6 = [(ShortcutEditSession *)self completionHandler];

    if (v6)
    {
      v7 = [(ShortcutEditSession *)self completionHandler];
      v7[2]();
    }
  }
}

- (BOOL)shortcutsContainItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 geoCompletionItem];
    v6 = [v5 geoMapItem];

    if (!v6)
    {
LABEL_16:
      LOBYTE(v8) = 0;
      goto LABEL_19;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_16;
    }

    v6 = [v4 _geoMapItem];
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_cachedShortcuts;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 geoMapItem];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 geoMapItem];
          IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

          if (IsEqualToMapItemForPurpose)
          {
            LOBYTE(v8) = 1;
            goto LABEL_18;
          }
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

LABEL_19:
  return v8;
}

- (NSArray)contacts
{
  contacts = self->_contacts;
  if (!contacts)
  {
    v4 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v5 = [(MapsSuggestionsShortcutLike *)self->_shortcut contacts];
    if (v4)
    {
      [MSPSharedTripContact contactsFromHandles:v5];
    }

    else
    {
      [MSPSharedTripContact contactValuesFromSuggestionsContacts:v5];
    }
    v6 = ;
    v7 = self->_contacts;
    self->_contacts = v6;

    contacts = self->_contacts;
  }

  return contacts;
}

- (void)removeSharing:(id)a3
{
  v10 = a3;
  v4 = [v10 suggestionContactValue];
  v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v6 = [(ShortcutEditSession *)self shortcut];
  v7 = v6;
  if (v5)
  {
    v8 = [v10 stringValue];
    [v7 removeContact:v8];
  }

  else
  {
    [v6 removeContact:v4];
  }

  self->_modified = 1;
  contacts = self->_contacts;
  self->_contacts = 0;
}

- (void)addSharing:(id)a3
{
  v10 = a3;
  v4 = [v10 suggestionContactValue];
  v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v6 = [(ShortcutEditSession *)self shortcut];
  v7 = v6;
  if (v5)
  {
    v8 = [v10 stringValue];
    [v7 addContact:v8];
  }

  else
  {
    [v6 addContact:v4];
  }

  self->_modified = 1;
  contacts = self->_contacts;
  self->_contacts = 0;
}

- (void)setAdjustedCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v16 = self->_shortcut;
  v6 = [(MapsSuggestionsShortcutLike *)v16 geoMapItem];

  if (v6)
  {
    v7 = objc_alloc_init(GEOMapItemCorrectedLocationAttributes);
    v8 = objc_alloc_init(GEOLatLng);
    [v8 setLat:latitude];
    [v8 setLng:longitude];
    [v7 setCorrectedCoordinate:v8];
    v9 = [(MapsSuggestionsShortcutLike *)v16 geoMapItem];
    v10 = [v9 clientAttributes];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(GEOMapItemClientAttributes);
    }

    v13 = v12;

    [v13 setCorrectedLocationAttributes:v7];
    v14 = [(MapsSuggestionsShortcutLike *)v16 geoMapItem];
    v15 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v14 clientAttributes:v13];
    [(MapsSuggestionsShortcutLike *)v16 setGeoMapItem:v15];

    self->_modified = 1;
  }
}

- (void)setMapItem:(id)a3
{
  v4 = [a3 _geoMapItem];
  v5 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v4];

  [(MapsSuggestionsShortcutLike *)self->_shortcut setGeoMapItem:v5];
  self->_modified = 1;
}

- (void)setName:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(MapsSuggestionsShortcutLike *)self->_shortcut setCustomName:v4];
    self->_modified = 1;
  }
}

- (NSString)titleForAddressPicker
{
  v3 = [(MapsSuggestionsShortcutLike *)self->_shortcut type];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 5)
      {
        v8 = +[NSBundle mainBundle];
        v6 = v8;
        v7 = @"[Shortcut] Add School";
      }

      else
      {
        if (v3 != 6)
        {
          goto LABEL_20;
        }

        v8 = +[NSBundle mainBundle];
        v6 = v8;
        v7 = @"[Shortcut] Add Favorite Button";
      }

      goto LABEL_19;
    }

    v10 = [(MapsSuggestionsShortcutLike *)self->_shortcut isSetupPlaceholder];
    v6 = +[NSBundle mainBundle];
    if (v10)
    {
      v7 = @"[Shortcut] Set up Work";
    }

    else
    {
      v7 = @"[Shortcut] Change Work Address";
    }
  }

  else if (v3 >= 2)
  {
    if (v3 != 2)
    {
      goto LABEL_20;
    }

    v9 = [(MapsSuggestionsShortcutLike *)self->_shortcut isSetupPlaceholder];
    v6 = +[NSBundle mainBundle];
    if (v9)
    {
      v7 = @"[Shortcut] Set up Home";
    }

    else
    {
      v7 = @"[Shortcut] Change Home Address";
    }
  }

  else
  {
    v5 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v6 = +[NSBundle mainBundle];
    if (v5)
    {
      v7 = @"[Shortcut] Add Pin";
    }

    else
    {
      v7 = @"[Shortcut] Add Favorite";
    }
  }

  v8 = v6;
LABEL_19:
  v4 = [v8 localizedStringForKey:v7 value:@"localized string not found" table:0];

LABEL_20:

  return v4;
}

- (void)setOriginalShortcut:(id)a3
{
  v5 = a3;
  if (self->_originalShortcut != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_originalShortcut, a3);
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      objc_storeStrong(&self->_shortcut, a3);
      v6 = [(MapsSuggestionsShortcutLike *)v9 type];
      v5 = v9;
      self->_originalShortcutType = v6;
    }

    else
    {
      v7 = [(MapsSuggestionsShortcutLike *)v9 copy];
      shortcut = self->_shortcut;
      self->_shortcut = v7;

      v5 = v9;
    }
  }
}

- (void)setOriginalSuggestionsEntry:(id)a3
{
  v5 = a3;
  if (self->_originalSuggestionsEntry != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->_originalSuggestionsEntry, a3);
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v6 = objc_alloc_init(MSFavoriteItem);
      [(MapsSuggestionsShortcutLike *)v6 setType:1];
      v7 = [[_TtC4Maps16MapsFavoriteItem alloc] initWithFavoriteItem:v6];
      originalShortcut = self->_originalShortcut;
      self->_originalShortcut = v7;
      v9 = v7;

      self->_originalShortcutType = [(MapsSuggestionsShortcutLike *)v9 type];
      v10 = [(MapsSuggestionsShortcutLike *)v9 copy];
      shortcut = self->_shortcut;
      self->_shortcut = v10;
    }

    else
    {
      v12 = [MapsSuggestionsShortcut alloc];
      [(MapsSuggestionsEntry *)v16 type];
      v13 = [v12 initSetupPlaceholderOfType:MapsSuggestionsShortcutTypeFromEntryType()];
      v14 = self->_originalShortcut;
      self->_originalShortcut = v13;
      v6 = v13;

      v15 = [(MapsSuggestionsShortcutLike *)v6 copy];
      v9 = self->_shortcut;
      self->_shortcut = v15;
    }

    v5 = v16;
  }
}

- (ShortcutEditSession)init
{
  v10.receiver = self;
  v10.super_class = ShortcutEditSession;
  v2 = [(ShortcutEditSession *)&v10 init];
  if (v2)
  {
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100FEFBE4;
      block[3] = &unk_101661B18;
      v3 = &v9;
      v9 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v4 = [(ShortcutEditSession *)v2 shortcutManager];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100FEFC58;
      v6[3] = &unk_101660FB0;
      v3 = &v7;
      v7 = v2;
      [v4 loadAllShortcutsWithHandler:v6];
    }
  }

  return v2;
}

+ (void)captureCreateFavoriteAction
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v3 = [v2 shortcuts];

    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v15;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) type];
          if (v9 == 6 || v9 == 1)
          {
            ++v6;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);

      if (v6 > 4)
      {
        if (v6 >= 0xA)
        {
          if (v6 >= 0xF)
          {
            v6 = 15;
          }

          else
          {
            v6 = 10;
          }
        }

        else
        {
          v6 = 5;
        }
      }
    }

    else
    {

      v6 = 0;
    }

    v12 = [NSString stringWithFormat:@"%d", v6];
    [GEOAPPortal captureUserAction:2052 target:0 value:v12];
  }

  else
  {
    v13 = MapsSuggestionsResourceDepotForMapsProcess();
    v11 = [v13 oneFavorites];
    [v11 loadAllShortcutsWithHandler:&stru_101661148];
  }
}

+ (ShortcutEditSession)editSessionWithMapItem:(id)a3
{
  v4 = a3;
  v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  v6 = [v5 shortcutForMapItem:v4];

  v7 = [a1 editSessionWithShortcut:v6];
  [v7 setAlreadySaved:1];

  return v7;
}

+ (ShortcutEditSession)editSessionWithShortcut:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ShortcutEditSession);
  [(ShortcutEditSession *)v4 setAlreadySaved:1];
  if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = [v3 copy];

    v3 = v5;
  }

  [(ShortcutEditSession *)v4 setOriginalShortcut:v3];

  return v4;
}

+ (id)addSessionWithShortcut:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ShortcutEditSession);
  [(ShortcutEditSession *)v4 setAlreadySaved:0];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    [(ShortcutEditSession *)v4 setMoveToPreferredIndexInFavorites:1];
  }

  [(ShortcutEditSession *)v4 setOriginalShortcut:v3];

  return v4;
}

+ (ShortcutEditSession)editSessionWithSuggestion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ShortcutEditSession);
  [(ShortcutEditSession *)v4 setAlreadySaved:0];
  [(ShortcutEditSession *)v4 setOriginalSuggestionsEntry:v3];

  return v4;
}

+ (id)addSessionWithType:(int64_t)a3 mapItem:(id)a4
{
  v6 = a4;
  v7 = [v6 _geoMapItem];
  if (v7)
  {
    v8 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v7];
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v9 = objc_alloc_init(MSFavoriteItem);
      [v9 setMapItemStorage:v8];
      v10 = [v6 _geoMapItemStorageForPersistence];
      v11 = [v10 userValues];
      v12 = [v11 name];
      [v9 setCustomName:v12];

      v13 = [[_TtC4Maps16MapsFavoriteItem alloc] initWithFavoriteItem:v9];
      [(MapsFavoriteItem *)v13 setType:a3];
      v14 = [a1 addSessionWithShortcut:v13];
    }

    else
    {
      v9 = [[MapsSuggestionsShortcut alloc] initWithType:a3 geoMapItem:v8 customName:0];
      v14 = [a1 addSessionWithShortcut:v9];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)addSession
{
  v2 = objc_alloc_init(ShortcutEditSession);
  [(ShortcutEditSession *)v2 setAlreadySaved:0];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = objc_alloc_init(_TtC4Maps16MapsFavoriteItem);
    [(MapsFavoriteItem *)v3 setType:1];
    [(ShortcutEditSession *)v2 setMoveToPreferredIndexInFavorites:1];
  }

  else
  {
    v3 = [[MapsSuggestionsShortcut alloc] initSetupPlaceholderOfType:1];
  }

  [(ShortcutEditSession *)v2 setOriginalShortcut:v3];

  return v2;
}

@end