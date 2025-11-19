@interface NBAudiobookRecommendation
+ (id)_missingArtImage;
+ (void)_fillArtworkMutableArray:(id)a3 toCount:(unint64_t)a4;
- (MPArtworkCatalog)artworkCatalog;
- (NBAudiobookRecommendation)initWithAdamIDs:(id)a3 type:(unint64_t)a4;
- (NSString)subtitle;
- (NSString)title;
- (id)_artworkCatalogsForAdamIDs:(id)a3;
- (id)_debugStringForType:(unint64_t)a3;
- (id)_tiledArtworkRequestForAdamIDs:(id)a3;
- (id)description;
@end

@implementation NBAudiobookRecommendation

- (NBAudiobookRecommendation)initWithAdamIDs:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = NBAudiobookRecommendation;
  v7 = [(NBAudiobookRecommendation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a4;
    v7->_selected = 1;
    v9 = [v6 copy];
    adamIDs = v8->_adamIDs;
    v8->_adamIDs = v9;
  }

  return v8;
}

- (NSString)title
{
  type = self->_type;
  if (!type)
  {
    v3 = @"Continue";
    goto LABEL_5;
  }

  if (type == 1)
  {
    v3 = @"Want to Read";
LABEL_5:
    v4 = NBBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_20DE8 table:0];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (NSString)subtitle
{
  type = self->_type;
  if (!type)
  {
    v3 = @"Audiobooks you\\U2019re listening to";
    goto LABEL_5;
  }

  if (type == 1)
  {
    v3 = @"Audiobooks to listen to next";
LABEL_5:
    v4 = NBBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_20DE8 table:0];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (MPArtworkCatalog)artworkCatalog
{
  if (!self->_artworkCatalog)
  {
    v3 = [(NBAudiobookRecommendation *)self adamIDs];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [(NBAudiobookRecommendation *)self adamIDs];
      v6 = [v5 count];

      v7 = [(NBAudiobookRecommendation *)self adamIDs];
      v8 = v7;
      if (v6 < 4)
      {
        v14 = [v7 firstObject];
        v22 = v14;
        v15 = [NSArray arrayWithObjects:&v22 count:1];
        v16 = [(NBAudiobookRecommendation *)self _artworkCatalogsForAdamIDs:v15];
        v17 = [v16 firstObject];
        artworkCatalog = self->_artworkCatalog;
        self->_artworkCatalog = v17;
      }

      else
      {
        v9 = [(NBAudiobookRecommendation *)self _tiledArtworkRequestForAdamIDs:v7];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_5F94;
        v21[3] = &unk_209E8;
        v21[4] = self;
        [v9 setArtworkCatalogsBlock:v21];
        v10 = [MPArtworkCatalog alloc];
        v11 = +[MPTiledArtworkDataSource sharedDataSource];
        v12 = [v10 initWithToken:v9 dataSource:v11];
        v13 = self->_artworkCatalog;
        self->_artworkCatalog = v12;

        v8 = v9;
      }
    }
  }

  v19 = self->_artworkCatalog;

  return v19;
}

+ (id)_missingArtImage
{
  v2 = +[UIColor systemGrayColor];
  v6.width = 1.0;
  v6.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v6, 1, 0.0);
  [v2 setFill];
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 1.0;
  v7.size.height = 1.0;
  UIRectFill(v7);
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v3;
}

+ (void)_fillArtworkMutableArray:(id)a3 toCount:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count] < a4)
  {
    v6 = [objc_opt_class() _missingArtImage];
    v7 = [MPArtworkCatalog staticArtworkCatalogWithImage:v6];

    v8 = NBRecommendationsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 134218240;
      v10 = [v5 count];
      v11 = 2048;
      v12 = a4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Filling tiled artwork catalog %tu -> %tu", &v9, 0x16u);
    }

    while ([v5 count] < a4)
    {
      [v5 addObject:v7];
    }
  }
}

- (id)_artworkCatalogsForAdamIDs:(id)a3
{
  v3 = a3;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_62AC;
  v4 = v6[3] = &unk_20A10;
  v7 = v4;
  [v3 enumerateAdamIDsUsingBlock:v6];

  return v4;
}

- (id)_tiledArtworkRequestForAdamIDs:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPTiledArtworkRequest);
  [v5 setTileSpacing:2.0];
  if ([v4 count] <= 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [v5 setNumberOfRows:v6];
  [v5 setNumberOfColumns:v6];
  v7 = [NSNumber numberWithUnsignedInteger:[(NBAudiobookRecommendation *)self type]];
  [v5 setEntityIdentifier:v7];

  [v5 setNamespaceIdentifier:NBRecommendationTiledArtworkNamespace];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 += [*(*(&v16 + 1) + 8 * i) hash];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = [NSNumber numberWithUnsignedInteger:v11];
  [v5 setRevisionIdentifier:v14];

  return v5;
}

- (id)_debugStringForType:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Want to Read";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Reading Now";
  }
}

- (id)description
{
  v3 = [(NBAudiobookRecommendation *)self title];
  v4 = [(NBAudiobookRecommendation *)self subtitle];
  v5 = [(NBAudiobookRecommendation *)self _debugStringForType:[(NBAudiobookRecommendation *)self type]];
  v6 = [NSString stringWithFormat:@"%@ - %@ (type = %@, count = %lu, selected = %ld)", v3, v4, v5, [(NSArray *)self->_adamIDs count], self->_selected];

  return v6;
}

@end