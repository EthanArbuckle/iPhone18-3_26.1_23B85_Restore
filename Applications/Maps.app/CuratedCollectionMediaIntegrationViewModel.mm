@interface CuratedCollectionMediaIntegrationViewModel
+ (double)logoToTitlePaddingWithMediaType:(int64_t)a3;
+ (id)actionTextForResult:(id)a3 hasChildLinks:(BOOL)a4;
+ (id)bundleIdentifierForResult:(id)a3;
+ (id)formatterForDurationString;
+ (id)localizedSystemFirstPartyNameForResult:(id)a3;
+ (id)realmIconForResult:(id)a3;
+ (id)subtitleForResult:(id)a3;
+ (id)systemFirstPartyIconForResult:(id)a3;
- (CuratedCollectionMediaIntegrationViewModel)initWithAdamID:(id)a3 title:(id)a4 subtitle:(id)a5 actionText:(id)a6 url:(id)a7 artworkURL:(id)a8 systemFirstPartyIcon:(id)a9 localizedSystemFirstPartyName:(id)a10 realmIcon:(id)a11 childViewModels:(id)a12 targetAppIdentifier:(id)a13 mediaType:(int64_t)a14 logoToTitlePadding:(double)a15;
- (CuratedCollectionMediaIntegrationViewModel)initWithAppleMediaServicesResult:(id)a3 thirdPartyLinks:(id)a4;
- (CuratedCollectionMediaIntegrationViewModel)initWithResolvedThirdPartyLink:(id)a3 mediaType:(int64_t)a4;
- (void)cancelImageDownload;
- (void)loadImageForSize:(CGSize)a3 completion:(id)a4;
@end

@implementation CuratedCollectionMediaIntegrationViewModel

- (void)cancelImageDownload
{
  v3 = +[MKAppImageManager sharedImageManager];
  [v3 cancelLoadAppImageAtURL:self->_artworkURL];
}

- (void)loadImageForSize:(CGSize)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[MKAppImageManager sharedImageManager];
  artworkURL = self->_artworkURL;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006C0C84;
  v9[3] = &unk_101650190;
  v10 = v5;
  v8 = v5;
  [v6 loadAppImageAtURL:artworkURL completionHandler:v9];
}

- (CuratedCollectionMediaIntegrationViewModel)initWithAdamID:(id)a3 title:(id)a4 subtitle:(id)a5 actionText:(id)a6 url:(id)a7 artworkURL:(id)a8 systemFirstPartyIcon:(id)a9 localizedSystemFirstPartyName:(id)a10 realmIcon:(id)a11 childViewModels:(id)a12 targetAppIdentifier:(id)a13 mediaType:(int64_t)a14 logoToTitlePadding:(double)a15
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v51 = a7;
  v25 = a8;
  v50 = a8;
  v49 = a9;
  v26 = a10;
  v27 = v24;
  v48 = a11;
  v28 = v23;
  v29 = a12;
  v30 = a13;
  v52.receiver = self;
  v52.super_class = CuratedCollectionMediaIntegrationViewModel;
  v31 = [(CuratedCollectionMediaIntegrationViewModel *)&v52 init];
  if (v31)
  {
    v32 = [v21 copy];
    identifier = v31->_identifier;
    v31->_identifier = v32;

    v34 = [v22 copy];
    title = v31->_title;
    v31->_title = v34;

    v36 = [v28 copy];
    subtitle = v31->_subtitle;
    v31->_subtitle = v36;

    v38 = [v27 copy];
    actionText = v31->_actionText;
    v31->_actionText = v38;

    objc_storeStrong(&v31->_url, a7);
    objc_storeStrong(&v31->_artworkURL, v25);
    objc_storeStrong(&v31->_systemFirstPartyIcon, a9);
    v40 = [v26 copy];
    localizedSystemFirstPartyName = v31->_localizedSystemFirstPartyName;
    v31->_localizedSystemFirstPartyName = v40;

    objc_storeStrong(&v31->_realmIcon, a11);
    v42 = [v29 copy];
    childViewModels = v31->_childViewModels;
    v31->_childViewModels = v42;

    v44 = [v30 copy];
    targetAppIdentifier = v31->_targetAppIdentifier;
    v31->_targetAppIdentifier = v44;

    v31->_mediaType = a14;
    v31->_logoToTitlePadding = a15;
  }

  return v31;
}

- (CuratedCollectionMediaIntegrationViewModel)initWithResolvedThirdPartyLink:(id)a3 mediaType:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 adamID];
  v8 = [v6 appName];
  v9 = [v6 url];
  v10 = [v6 appIconURL];
  v11 = [v6 adamID];

  [objc_opt_class() logoToTitlePaddingWithMediaType:a4];
  v12 = [(CuratedCollectionMediaIntegrationViewModel *)self initWithAdamID:v7 title:v8 subtitle:0 actionText:0 url:v9 artworkURL:v10 systemFirstPartyIcon:0 localizedSystemFirstPartyName:0 realmIcon:0 childViewModels:0 targetAppIdentifier:v11 mediaType:a4 logoToTitlePadding:?];

  return v12;
}

- (CuratedCollectionMediaIntegrationViewModel)initWithAppleMediaServicesResult:(id)a3 thirdPartyLinks:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 copy];

  v10 = [v6 displayName];
  v11 = [v10 copy];

  v12 = [v6 url];
  v13 = [v6 artworkURL];
  v14 = 0;
  if (v9 && v11 && v12 && v13)
  {
    v28 = v13;
    v27 = v9;
    v15 = [v6 mediaType];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1006C1254;
    v29[3] = &unk_1016264E0;
    v16 = self;
    v30 = v16;
    v31 = v15;
    v17 = [v7 _maps_map:v29];
    v25 = [objc_opt_class() subtitleForResult:v6];
    v24 = [objc_opt_class() actionTextForResult:v6 hasChildLinks:{objc_msgSend(v17, "count") != 0}];
    v23 = [objc_opt_class() systemFirstPartyIconForResult:v6];
    v18 = [objc_opt_class() localizedSystemFirstPartyNameForResult:v6];
    v19 = [objc_opt_class() realmIconForResult:v6];
    [objc_opt_class() bundleIdentifierForResult:v6];
    v20 = v26 = v7;
    [objc_opt_class() logoToTitlePaddingWithMediaType:v15];
    v22 = v15;
    v9 = v27;
    self = [(CuratedCollectionMediaIntegrationViewModel *)v16 initWithAdamID:v27 title:v11 subtitle:v25 actionText:v24 url:v12 artworkURL:v28 systemFirstPartyIcon:v23 localizedSystemFirstPartyName:v18 realmIcon:v19 childViewModels:v17 targetAppIdentifier:v20 mediaType:v22 logoToTitlePadding:?];

    v7 = v26;
    v13 = v28;
    v14 = self;
  }

  return v14;
}

+ (double)logoToTitlePaddingWithMediaType:(int64_t)a3
{
  result = 6.0;
  if ((a3 - 1) < 3)
  {
    return 4.0;
  }

  return result;
}

+ (id)bundleIdentifierForResult:(id)a3
{
  v3 = [a3 mediaType];
  if ((v3 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return off_101626660[(v3 - 1)];
  }
}

+ (id)localizedSystemFirstPartyNameForResult:(id)a3
{
  v3 = [a3 mediaType];
  if ((v3 - 1) > 0x13)
  {
    v7 = 0;
  }

  else
  {
    v4 = off_1016265C0[(v3 - 1)];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
    v7 = [NSString localizedStringWithFormat:v6];
  }

  return v7;
}

+ (id)systemFirstPartyIconForResult:(id)a3
{
  v3 = [a1 bundleIdentifierForResult:a3];
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v5 = [UIImage _applicationIconImageForBundleIdentifier:v3 format:1 scale:?];

  return v5;
}

+ (id)realmIconForResult:(id)a3
{
  v3 = [a3 mediaType];
  if ((v3 - 1) > 0x13)
  {
    v4 = 0;
  }

  else
  {
    v4 = [UIImage imageNamed:off_101626520[(v3 - 1)]];
  }

  return v4;
}

+ (id)actionTextForResult:(id)a3 hasChildLinks:(BOOL)a4
{
  v5 = [a3 mediaType];
  v6 = 0;
  if (v5 > 10)
  {
    if (v5 > 15)
    {
      if ((v5 - 18) < 3)
      {
        v9 = +[NSBundle mainBundle];
        v7 = v9;
        v8 = @"[Curated Guides] Try on Apple Fitness+";
LABEL_30:
        v6 = [v9 localizedStringForKey:v8 value:@"localized string not found" table:0];

        goto LABEL_31;
      }

      if (v5 != 16)
      {
        if (v5 != 17)
        {
          goto LABEL_31;
        }

        v7 = +[NSBundle mainBundle];
        if (a4)
        {
          v8 = @"[Curated Guides] View Now";
        }

        else
        {
          v8 = @"[Curated Guides] View on Apple Books";
        }

        goto LABEL_29;
      }

      v7 = +[NSBundle mainBundle];
      if (!a4)
      {
        v8 = @"[Curated Guides] Listen on Apple Books";
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ((v5 - 12) < 3)
    {
      v7 = +[NSBundle mainBundle];
      if (!a4)
      {
        v8 = @"[Curated Guides] Listen on Apple Podcasts";
        goto LABEL_29;
      }

LABEL_28:
      v8 = @"[Curated Guides] Listen Now";
      goto LABEL_29;
    }

    if (v5 != 11)
    {
      if (v5 != 15)
      {
        goto LABEL_31;
      }

      v7 = +[NSBundle mainBundle];
      if (a4)
      {
        v8 = @"[Curated Guides] Read Now";
      }

      else
      {
        v8 = @"[Curated Guides] Read on Apple Books";
      }

      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (v5 <= 3)
  {
    if ((v5 - 1) >= 3)
    {
      goto LABEL_31;
    }

    v9 = +[NSBundle mainBundle];
    v7 = v9;
    v8 = @"[Curated Guides] View on App Store";
    goto LABEL_30;
  }

  if ((v5 - 4) < 5)
  {
LABEL_4:
    v7 = +[NSBundle mainBundle];
    if (!a4)
    {
      v8 = @"[Curated Guides] Listen on Apple Music";
LABEL_29:
      v9 = v7;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v5 == 9)
  {
LABEL_25:
    v7 = +[NSBundle mainBundle];
    if (a4)
    {
      v8 = @"[Curated Guides] Watch Now";
    }

    else
    {
      v8 = @"[Curated Guides] Watch on Apple Music";
    }

    goto LABEL_29;
  }

  if (v5 == 10)
  {
    goto LABEL_4;
  }

LABEL_31:

  return v6;
}

+ (id)subtitleForResult:(id)a3
{
  v4 = a3;
  switch([v4 mediaType])
  {
    case 1uLL:
    case 2uLL:
      v5 = [v4 subtitle];
      goto LABEL_12;
    case 3uLL:
      v5 = [v4 editorialSubtitle];
      goto LABEL_12;
    case 4uLL:
    case 5uLL:
    case 9uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xFuLL:
    case 0x10uLL:
      v5 = [v4 artistName];
LABEL_12:
      v9 = v5;
      break;
    case 6uLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Music Artist";
      goto LABEL_17;
    case 7uLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Music Playlist";
      goto LABEL_17;
    case 8uLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Music Radio Station";
      goto LABEL_17;
    case 0xAuLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Music Spotlight";
      goto LABEL_17;
    case 0xBuLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Music Artist Interview";
      goto LABEL_17;
    case 0xEuLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Podcast Channel";
      goto LABEL_17;
    case 0x11uLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Book Author";
      goto LABEL_17;
    case 0x12uLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Fitness+ Trainer";
      goto LABEL_17;
    case 0x13uLL:
      v10 = +[NSBundle mainBundle];
      v7 = [v10 localizedStringForKey:@"[Curated Guides] Media Integration Subtitle Fitness+ Class" value:@"localized string not found" table:0];

      v11 = [v4 classType];
      v12 = [a1 formatterForDurationString];
      [v4 duration];
      v14 = [v12 stringFromTimeInterval:v13 * 0.001];
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 episodeNumber]);
      v16 = [NSNumberFormatter localizedStringFromNumber:v15 numberStyle:1];
      v9 = [NSString localizedStringWithFormat:v7, v11, v14, v16];

      goto LABEL_18;
    case 0x14uLL:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"[Curated Guides] Media Integration Subtitle Fitness+ Class Type";
LABEL_17:
      v9 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
LABEL_18:

      break;
    default:
      v9 = 0;
      break;
  }

  return v9;
}

+ (id)formatterForDurationString
{
  if (qword_10195CF20 != -1)
  {
    dispatch_once(&qword_10195CF20, &stru_101626500);
  }

  v3 = qword_10195CF18;

  return v3;
}

@end