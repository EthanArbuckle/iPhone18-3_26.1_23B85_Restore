@interface SuggestionShortcutsRowCellModel
- (BOOL)_shouldFetchMissingImage;
- (BOOL)isEqual:(id)equal;
- (BOOL)vibrantBackground;
- (SuggestionShortcutsRowCellModel)initWithMapsFavoriteItem:(id)item;
- (SuggestionShortcutsRowCellModel)initWithMapsSuggestionsEntry:(id)entry;
- (id)_maps_diffableDataSourceIdentifier;
- (id)image;
- (id)subtitleColor;
- (unint64_t)hash;
- (void)_fetchImageWithImageCount:(unint64_t)count retryCount:(unint64_t)retryCount;
- (void)_setFetchedImage:(id)image;
- (void)_updateTitlesFromEntry;
- (void)dealloc;
- (void)fetchImageIfMissing;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SuggestionShortcutsRowCellModel

- (void)_updateTitlesFromEntry
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entryLegacy;
  if (v3)
  {
    v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entry;
  }

  v5 = *v4;
  title = [*(&self->super.super.isa + v5) title];
  v7 = [title copy];
  title = self->_title;
  self->_title = v7;

  subtitle = [*(&self->super.super.isa + v5) subtitle];
  v9 = [subtitle copy];
  subtitle = self->_subtitle;
  self->_subtitle = v9;
}

- (id)subtitleColor
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    if (![(MapsFavoriteItem *)self->_entry isShortcutForSetup])
    {
      goto LABEL_7;
    }
  }

  else if (![(MapsSuggestionsEntry *)self->_entryLegacy isShortcutForSetup])
  {
    goto LABEL_7;
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[UIColor linkColor];
    goto LABEL_8;
  }

LABEL_7:
  v3 = +[UIColor secondaryLabelColor];
LABEL_8:

  return v3;
}

- (id)image
{
  image = self->_image;
  if (!image)
  {
    [(SuggestionShortcutsRowCellModel *)self fetchImage];
    image = self->_image;
  }

  return image;
}

- (BOOL)vibrantBackground
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entryLegacy;
  if (v3)
  {
    v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entry;
  }

  v5 = *(&self->super.super.isa + *v4);

  return [v5 hasVibrantBackground];
}

- (unint64_t)hash
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entryLegacy;
  if (v3)
  {
    v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entry;
  }

  v5 = *(&self->super.super.isa + *v4);

  return [v5 hash];
}

- (id)_maps_diffableDataSourceIdentifier
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entryLegacy;
  if (v3)
  {
    v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entry;
  }

  uniqueIdentifier = [*(&self->super.super.isa + *v4) uniqueIdentifier];

  return uniqueIdentifier;
}

- (void)dealloc
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entryLegacy;
  if (v3)
  {
    v4 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entry;
  }

  v5 = *v4;
  [*(&self->super.super.isa + v5) removeObserver:self forKeyPath:@"title" context:off_1019289B8];
  [*(&self->super.super.isa + v5) removeObserver:self forKeyPath:@"subtitle" context:off_1019289B8];
  v6 = +[GEOResourceManifestManager modernManager];
  [v6 removeTileGroupObserver:self];

  v7.receiver = self;
  v7.super_class = SuggestionShortcutsRowCellModel;
  [(SuggestionShortcutsRowCellModel *)&v7 dealloc];
}

- (BOOL)_shouldFetchMissingImage
{
  if (self->_image)
  {
    return 0;
  }

  observers = [(ShortcutsRowCellModel *)self observers];
  allObservers = [observers allObservers];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = allObservers;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v11 shortcutsRowCellModelShouldFetchMissingImage:{self, v13}])
        {
          v2 = 1;
          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v2 = 0;
LABEL_14:

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_1019289B8 == context)
  {
    if ([NSThread isMainThread:path])
    {
      [(SuggestionShortcutsRowCellModel *)self _updateTitlesFromEntry];
      observers = [(ShortcutsRowCellModel *)self observers];
      [observers shortcutsRowCellModelDidUpdate:self];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005E6B34;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SuggestionShortcutsRowCellModel;
    [(SuggestionShortcutsRowCellModel *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_setFetchedImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (self->_image != imageCopy)
  {
    v9 = imageCopy;
    v7 = [(UIImage *)imageCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_image, image);
      observers = [(ShortcutsRowCellModel *)self observers];
      [observers shortcutsRowCellModelDidUpdate:self];

      v6 = v9;
    }
  }
}

- (void)_fetchImageWithImageCount:(unint64_t)count retryCount:(unint64_t)retryCount
{
  if (retryCount <= 4 && self->_imageCount == count)
  {
    objc_initWeak(&location, self);
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v7 = +[MapsUIImageCache sharedCache];
      entry = self->_entry;
      vibrantBackground = [(SuggestionShortcutsRowCellModel *)self vibrantBackground];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1005E6E9C;
      v18[3] = &unk_101623478;
      v10 = v19;
      objc_copyWeak(v19, &location);
      v19[1] = count;
      [v7 getImageForRowFavorite:entry inverted:vibrantBackground completion:v18];
    }

    else
    {
      v7 = +[MapsUIImageCache sharedCache];
      entryLegacy = self->_entryLegacy;
      vibrantBackground2 = [(SuggestionShortcutsRowCellModel *)self vibrantBackground];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1005E6F9C;
      v16[3] = &unk_101623478;
      v10 = v17;
      objc_copyWeak(v17, &location);
      v17[1] = count;
      [v7 getImageForRowSuggestion:entryLegacy inverted:vibrantBackground2 completion:v16];
    }

    objc_destroyWeak(v10);
    v13 = dispatch_time(0, 5000000000);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1005E709C;
    v14[3] = &unk_10164CBF8;
    objc_copyWeak(v15, &location);
    v15[1] = count;
    v15[2] = retryCount;
    dispatch_after(v13, &_dispatch_main_q, v14);
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }
}

- (void)fetchImageIfMissing
{
  if ([(SuggestionShortcutsRowCellModel *)self _shouldFetchMissingImage])
  {
    v3 = sub_1000410AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      title = self->_title;
      v5 = 138412290;
      v6 = title;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Fetching missing icon for favorite '%@'", &v5, 0xCu);
    }

    [(SuggestionShortcutsRowCellModel *)self fetchImage];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v8 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entryLegacy;
    if (v7)
    {
      v8 = &OBJC_IVAR___SuggestionShortcutsRowCellModel__entry;
    }

    v9 = *(&self->super.super.isa + *v8);
    entry = [(SuggestionShortcutsRowCellModel *)v6 entry];
    if (v9 == entry)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v9 isEqual:entry];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SuggestionShortcutsRowCellModel)initWithMapsFavoriteItem:(id)item
{
  itemCopy = item;
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v7 = [uniqueIdentifier length];

  if (v7)
  {
    v14.receiver = self;
    v14.super_class = SuggestionShortcutsRowCellModel;
    v8 = [(SuggestionShortcutsRowCellModel *)&v14 init];
    p_isa = &v8->super.super.isa;
    if (v8)
    {
      objc_storeStrong(&v8->_entry, item);
      [p_isa[8] addObserver:p_isa forKeyPath:@"title" options:0 context:off_1019289B8];
      [p_isa[8] addObserver:p_isa forKeyPath:@"subtitle" options:0 context:off_1019289B8];
      [p_isa _updateTitlesFromEntry];
      v10 = +[GEOResourceManifestManager modernManager];
      [v10 addTileGroupObserver:p_isa queue:&_dispatch_main_q];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 addObserver:p_isa selector:"_sceneDidActivate:" name:UISceneDidActivateNotification object:0];
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SuggestionShortcutsRowCellModel)initWithMapsSuggestionsEntry:(id)entry
{
  entryCopy = entry;
  uniqueIdentifier = [entryCopy uniqueIdentifier];
  v7 = [uniqueIdentifier length];

  if (v7)
  {
    v14.receiver = self;
    v14.super_class = SuggestionShortcutsRowCellModel;
    v8 = [(SuggestionShortcutsRowCellModel *)&v14 init];
    p_isa = &v8->super.super.isa;
    if (v8)
    {
      objc_storeStrong(&v8->_entryLegacy, entry);
      [p_isa[7] addObserver:p_isa forKeyPath:@"title" options:0 context:off_1019289B8];
      [p_isa[7] addObserver:p_isa forKeyPath:@"subtitle" options:0 context:off_1019289B8];
      [p_isa _updateTitlesFromEntry];
      v10 = +[GEOResourceManifestManager modernManager];
      [v10 addTileGroupObserver:p_isa queue:&_dispatch_main_q];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 addObserver:p_isa selector:"_sceneDidActivate:" name:UISceneDidActivateNotification object:0];
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end