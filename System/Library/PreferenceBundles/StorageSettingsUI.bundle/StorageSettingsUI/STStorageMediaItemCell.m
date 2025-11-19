@interface STStorageMediaItemCell
+ (id)specifierForMediaItem:(id)a3;
+ (id)specifierForMediaItemCollection:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STStorageMediaItemCell

+ (id)specifierForMediaItem:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  if (v3)
  {
    [v4 setProperty:v3 forKey:@"stMediaItem"];
  }

  return v4;
}

+ (id)specifierForMediaItemCollection:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  if (v3)
  {
    [v4 setProperty:v3 forKey:@"stMediaCollection"];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = STStorageMediaItemCell;
  [(STStorageMediaItemCell *)&v49 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"stMediaCollection"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 representativeItem];
    v8 = [v7 albumTitle];
    v9 = [v7 mediaType];
    if (v9 > 511)
    {
      if (v9 > 2047)
      {
        if (v9 == "oreMedia.dylib")
        {
          goto LABEL_23;
        }

        if (v9 == &stru_FF0.sdk)
        {
LABEL_33:
          v10 = @"LESSONS_FMT";
          goto LABEL_36;
        }

        if (v9 == &stru_7E8.segname[8])
        {
LABEL_23:
          v10 = @"VIDEOS_FMT";
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      if (v9 == &stru_1F8.sectname[8])
      {
LABEL_32:
        v10 = @"EPISODES_FMT";
        goto LABEL_36;
      }

      if (v9 != &stru_3D8.size)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v9 > 3)
      {
        if (v9 != &dword_4)
        {
          if (v9 != &dword_8)
          {
            if (v9 == &stru_B8.reserved2)
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
        [(STStorageMediaItemCell *)self setTitle:v8];
        v26 = STLocalizedString(v10);
        v27 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v26, [v6 count]);
        [(STStorageMediaItemCell *)self setInfo:v27];

        v12 = [v6 items];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v28 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v28)
        {
          v29 = v28;
          v36 = v6;
          v37 = v4;
          v24 = 0;
          v30 = *v46;
          v31 = MPMediaItemPropertyFileSize;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v46 != v30)
              {
                objc_enumerationMutation(v12);
              }

              v33 = [*(*(&v45 + 1) + 8 * i) valueForProperty:v31];
              v24 = &v24[[v33 unsignedLongLongValue]];
            }

            v29 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
          }

          while (v29);
          v6 = v36;
          v4 = v37;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_45;
      }

      if (v9 == &dword_0 + 1)
      {
        v10 = @"SONGS_FMT";
        goto LABEL_36;
      }

      if (v9 != &dword_0 + 2)
      {
LABEL_28:
        v10 = @"ITEMS_FMT";
        goto LABEL_36;
      }
    }

    v25 = [v7 podcastTitle];

    v8 = v25;
    goto LABEL_32;
  }

  v7 = [v4 propertyForKey:@"stMediaItem"];
  v11 = [v7 title];
  [(STStorageMediaItemCell *)self setTitle:v11];

  v8 = [v7 assetURL];
  v44 = 0;
  [v8 getResourceValue:&v44 forKey:NSURLCreationDateKey error:0];
  v12 = v44;
  v43 = 0;
  [v8 getResourceValue:&v43 forKey:NSURLContentAccessDateKey error:0];
  v13 = v43;
  if (v13)
  {
    v14 = [v12 laterDate:v13];

    v12 = v14;
  }

  v42 = 0;
  [v8 getResourceValue:&v42 forKey:NSURLAttributeModificationDateKey error:0];
  v15 = v42;

  if (v15)
  {
    v16 = [v12 laterDate:v15];

    v12 = v16;
  }

  v41 = 0;
  [v8 getResourceValue:&v41 forKey:NSURLAttributeModificationDateKey error:0];
  v17 = v41;

  if (v17)
  {
    v18 = [v12 laterDate:v17];

    v12 = v18;
  }

  if (!v12 || ([v12 timeIntervalSinceReferenceDate], v19 == 0.0))
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
  v23 = [v7 valueForProperty:MPMediaItemPropertyFileSize];
  v24 = [v23 unsignedLongLongValue];

LABEL_45:
  [(STStorageMediaItemCell *)self setSize:v24];
  v34 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10980;
  block[3] = &unk_AA650;
  v39 = v7;
  v40 = self;
  v35 = v7;
  dispatch_async(v34, block);
}

@end