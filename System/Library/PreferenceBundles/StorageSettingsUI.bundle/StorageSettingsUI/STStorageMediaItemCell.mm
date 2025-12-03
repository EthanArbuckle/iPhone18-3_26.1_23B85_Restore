@interface STStorageMediaItemCell
+ (id)specifierForMediaItem:(id)item;
+ (id)specifierForMediaItemCollection:(id)collection;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STStorageMediaItemCell

+ (id)specifierForMediaItem:(id)item
{
  itemCopy = item;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  if (itemCopy)
  {
    [v4 setProperty:itemCopy forKey:@"stMediaItem"];
  }

  return v4;
}

+ (id)specifierForMediaItemCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  if (collectionCopy)
  {
    [v4 setProperty:collectionCopy forKey:@"stMediaCollection"];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v49.receiver = self;
  v49.super_class = STStorageMediaItemCell;
  [(STStorageMediaItemCell *)&v49 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"stMediaCollection"];
  v6 = v5;
  if (v5)
  {
    representativeItem = [v5 representativeItem];
    albumTitle = [representativeItem albumTitle];
    mediaType = [representativeItem mediaType];
    if (mediaType > 511)
    {
      if (mediaType > 2047)
      {
        if (mediaType == "oreMedia.dylib")
        {
          goto LABEL_23;
        }

        if (mediaType == &stru_FF0.sdk)
        {
LABEL_33:
          v10 = @"LESSONS_FMT";
          goto LABEL_36;
        }

        if (mediaType == &stru_7E8.segname[8])
        {
LABEL_23:
          v10 = @"VIDEOS_FMT";
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      if (mediaType == &stru_1F8.sectname[8])
      {
LABEL_32:
        v10 = @"EPISODES_FMT";
        goto LABEL_36;
      }

      if (mediaType != &stru_3D8.size)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (mediaType > 3)
      {
        if (mediaType != &dword_4)
        {
          if (mediaType != &dword_8)
          {
            if (mediaType == &stru_B8.reserved2)
            {
              v10 = @"MOVIES_FMT";
              goto LABEL_36;
            }

            goto LABEL_28;
          }

          goto LABEL_33;
        }

        v10 = @"BOOKS_FMT";
LABEL_36:
        [(STStorageMediaItemCell *)self setTitle:albumTitle];
        v26 = STLocalizedString(v10);
        v27 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v26, [v6 count]);
        [(STStorageMediaItemCell *)self setInfo:v27];

        items = [v6 items];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v28 = [items countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v28)
        {
          v29 = v28;
          v36 = v6;
          v37 = specifierCopy;
          unsignedLongLongValue = 0;
          v30 = *v46;
          v31 = MPMediaItemPropertyFileSize;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v46 != v30)
              {
                objc_enumerationMutation(items);
              }

              v33 = [*(*(&v45 + 1) + 8 * i) valueForProperty:v31];
              unsignedLongLongValue = &unsignedLongLongValue[[v33 unsignedLongLongValue]];
            }

            v29 = [items countByEnumeratingWithState:&v45 objects:v50 count:16];
          }

          while (v29);
          v6 = v36;
          specifierCopy = v37;
        }

        else
        {
          unsignedLongLongValue = 0;
        }

        goto LABEL_45;
      }

      if (mediaType == &dword_0 + 1)
      {
        v10 = @"SONGS_FMT";
        goto LABEL_36;
      }

      if (mediaType != &dword_0 + 2)
      {
LABEL_28:
        v10 = @"ITEMS_FMT";
        goto LABEL_36;
      }
    }

    podcastTitle = [representativeItem podcastTitle];

    albumTitle = podcastTitle;
    goto LABEL_32;
  }

  representativeItem = [specifierCopy propertyForKey:@"stMediaItem"];
  title = [representativeItem title];
  [(STStorageMediaItemCell *)self setTitle:title];

  albumTitle = [representativeItem assetURL];
  v44 = 0;
  [albumTitle getResourceValue:&v44 forKey:NSURLCreationDateKey error:0];
  items = v44;
  v43 = 0;
  [albumTitle getResourceValue:&v43 forKey:NSURLContentAccessDateKey error:0];
  v13 = v43;
  if (v13)
  {
    v14 = [items laterDate:v13];

    items = v14;
  }

  v42 = 0;
  [albumTitle getResourceValue:&v42 forKey:NSURLAttributeModificationDateKey error:0];
  v15 = v42;

  if (v15)
  {
    v16 = [items laterDate:v15];

    items = v16;
  }

  v41 = 0;
  [albumTitle getResourceValue:&v41 forKey:NSURLAttributeModificationDateKey error:0];
  v17 = v41;

  if (v17)
  {
    v18 = [items laterDate:v17];

    items = v18;
  }

  if (!items || ([items timeIntervalSinceReferenceDate], v19 == 0.0))
  {
    v22 = 0;
  }

  else
  {
    if (qword_BA578 != -1)
    {
      sub_8079C();
    }

    v20 = qword_BA570;
    v21 = STFormattedShortDate();
    v22 = [NSString stringWithFormat:v20, v21];
  }

  [(STStorageMediaItemCell *)self setInfo:v22];
  v23 = [representativeItem valueForProperty:MPMediaItemPropertyFileSize];
  unsignedLongLongValue = [v23 unsignedLongLongValue];

LABEL_45:
  [(STStorageMediaItemCell *)self setSize:unsignedLongLongValue];
  v34 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10980;
  block[3] = &unk_AA650;
  v39 = representativeItem;
  selfCopy = self;
  v35 = representativeItem;
  dispatch_async(v34, block);
}

@end