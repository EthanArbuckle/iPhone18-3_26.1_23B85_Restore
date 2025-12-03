@interface CuratedCollectionMediaIntegrationViewModel
+ (double)logoToTitlePaddingWithMediaType:(int64_t)type;
+ (id)actionTextForResult:(id)result hasChildLinks:(BOOL)links;
+ (id)bundleIdentifierForResult:(id)result;
+ (id)formatterForDurationString;
+ (id)localizedSystemFirstPartyNameForResult:(id)result;
+ (id)realmIconForResult:(id)result;
+ (id)subtitleForResult:(id)result;
+ (id)systemFirstPartyIconForResult:(id)result;
- (CuratedCollectionMediaIntegrationViewModel)initWithAdamID:(id)d title:(id)title subtitle:(id)subtitle actionText:(id)text url:(id)url artworkURL:(id)l systemFirstPartyIcon:(id)icon localizedSystemFirstPartyName:(id)self0 realmIcon:(id)self1 childViewModels:(id)self2 targetAppIdentifier:(id)self3 mediaType:(int64_t)self4 logoToTitlePadding:(double)self5;
- (CuratedCollectionMediaIntegrationViewModel)initWithAppleMediaServicesResult:(id)result thirdPartyLinks:(id)links;
- (CuratedCollectionMediaIntegrationViewModel)initWithResolvedThirdPartyLink:(id)link mediaType:(int64_t)type;
- (void)cancelImageDownload;
- (void)loadImageForSize:(CGSize)size completion:(id)completion;
@end

@implementation CuratedCollectionMediaIntegrationViewModel

- (void)cancelImageDownload
{
  v3 = +[MKAppImageManager sharedImageManager];
  [v3 cancelLoadAppImageAtURL:self->_artworkURL];
}

- (void)loadImageForSize:(CGSize)size completion:(id)completion
{
  completionCopy = completion;
  v6 = +[MKAppImageManager sharedImageManager];
  artworkURL = self->_artworkURL;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006C0C84;
  v9[3] = &unk_101650190;
  v10 = completionCopy;
  v8 = completionCopy;
  [v6 loadAppImageAtURL:artworkURL completionHandler:v9];
}

- (CuratedCollectionMediaIntegrationViewModel)initWithAdamID:(id)d title:(id)title subtitle:(id)subtitle actionText:(id)text url:(id)url artworkURL:(id)l systemFirstPartyIcon:(id)icon localizedSystemFirstPartyName:(id)self0 realmIcon:(id)self1 childViewModels:(id)self2 targetAppIdentifier:(id)self3 mediaType:(int64_t)self4 logoToTitlePadding:(double)self5
{
  dCopy = d;
  titleCopy = title;
  subtitleCopy = subtitle;
  textCopy = text;
  urlCopy = url;
  lCopy = l;
  lCopy2 = l;
  iconCopy = icon;
  nameCopy = name;
  v27 = textCopy;
  realmIconCopy = realmIcon;
  v28 = subtitleCopy;
  modelsCopy = models;
  identifierCopy = identifier;
  v52.receiver = self;
  v52.super_class = CuratedCollectionMediaIntegrationViewModel;
  v31 = [(CuratedCollectionMediaIntegrationViewModel *)&v52 init];
  if (v31)
  {
    v32 = [dCopy copy];
    identifier = v31->_identifier;
    v31->_identifier = v32;

    v34 = [titleCopy copy];
    title = v31->_title;
    v31->_title = v34;

    v36 = [v28 copy];
    subtitle = v31->_subtitle;
    v31->_subtitle = v36;

    v38 = [v27 copy];
    actionText = v31->_actionText;
    v31->_actionText = v38;

    objc_storeStrong(&v31->_url, url);
    objc_storeStrong(&v31->_artworkURL, lCopy);
    objc_storeStrong(&v31->_systemFirstPartyIcon, icon);
    v40 = [nameCopy copy];
    localizedSystemFirstPartyName = v31->_localizedSystemFirstPartyName;
    v31->_localizedSystemFirstPartyName = v40;

    objc_storeStrong(&v31->_realmIcon, realmIcon);
    v42 = [modelsCopy copy];
    childViewModels = v31->_childViewModels;
    v31->_childViewModels = v42;

    v44 = [identifierCopy copy];
    targetAppIdentifier = v31->_targetAppIdentifier;
    v31->_targetAppIdentifier = v44;

    v31->_mediaType = type;
    v31->_logoToTitlePadding = padding;
  }

  return v31;
}

- (CuratedCollectionMediaIntegrationViewModel)initWithResolvedThirdPartyLink:(id)link mediaType:(int64_t)type
{
  linkCopy = link;
  adamID = [linkCopy adamID];
  appName = [linkCopy appName];
  v9 = [linkCopy url];
  appIconURL = [linkCopy appIconURL];
  adamID2 = [linkCopy adamID];

  [objc_opt_class() logoToTitlePaddingWithMediaType:type];
  v12 = [(CuratedCollectionMediaIntegrationViewModel *)self initWithAdamID:adamID title:appName subtitle:0 actionText:0 url:v9 artworkURL:appIconURL systemFirstPartyIcon:0 localizedSystemFirstPartyName:0 realmIcon:0 childViewModels:0 targetAppIdentifier:adamID2 mediaType:type logoToTitlePadding:?];

  return v12;
}

- (CuratedCollectionMediaIntegrationViewModel)initWithAppleMediaServicesResult:(id)result thirdPartyLinks:(id)links
{
  resultCopy = result;
  linksCopy = links;
  identifier = [resultCopy identifier];
  v9 = [identifier copy];

  displayName = [resultCopy displayName];
  v11 = [displayName copy];

  v12 = [resultCopy url];
  artworkURL = [resultCopy artworkURL];
  selfCopy2 = 0;
  if (v9 && v11 && v12 && artworkURL)
  {
    v28 = artworkURL;
    v27 = v9;
    mediaType = [resultCopy mediaType];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1006C1254;
    v29[3] = &unk_1016264E0;
    selfCopy = self;
    v30 = selfCopy;
    v31 = mediaType;
    v17 = [linksCopy _maps_map:v29];
    v25 = [objc_opt_class() subtitleForResult:resultCopy];
    v24 = [objc_opt_class() actionTextForResult:resultCopy hasChildLinks:{objc_msgSend(v17, "count") != 0}];
    v23 = [objc_opt_class() systemFirstPartyIconForResult:resultCopy];
    v18 = [objc_opt_class() localizedSystemFirstPartyNameForResult:resultCopy];
    v19 = [objc_opt_class() realmIconForResult:resultCopy];
    [objc_opt_class() bundleIdentifierForResult:resultCopy];
    v20 = v26 = linksCopy;
    [objc_opt_class() logoToTitlePaddingWithMediaType:mediaType];
    v22 = mediaType;
    v9 = v27;
    self = [(CuratedCollectionMediaIntegrationViewModel *)selfCopy initWithAdamID:v27 title:v11 subtitle:v25 actionText:v24 url:v12 artworkURL:v28 systemFirstPartyIcon:v23 localizedSystemFirstPartyName:v18 realmIcon:v19 childViewModels:v17 targetAppIdentifier:v20 mediaType:v22 logoToTitlePadding:?];

    linksCopy = v26;
    artworkURL = v28;
    selfCopy2 = self;
  }

  return selfCopy2;
}

+ (double)logoToTitlePaddingWithMediaType:(int64_t)type
{
  result = 6.0;
  if ((type - 1) < 3)
  {
    return 4.0;
  }

  return result;
}

+ (id)bundleIdentifierForResult:(id)result
{
  mediaType = [result mediaType];
  if ((mediaType - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return off_101626660[(mediaType - 1)];
  }
}

+ (id)localizedSystemFirstPartyNameForResult:(id)result
{
  mediaType = [result mediaType];
  if ((mediaType - 1) > 0x13)
  {
    v7 = 0;
  }

  else
  {
    v4 = off_1016265C0[(mediaType - 1)];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
    v7 = [NSString localizedStringWithFormat:v6];
  }

  return v7;
}

+ (id)systemFirstPartyIconForResult:(id)result
{
  v3 = [self bundleIdentifierForResult:result];
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v5 = [UIImage _applicationIconImageForBundleIdentifier:v3 format:1 scale:?];

  return v5;
}

+ (id)realmIconForResult:(id)result
{
  mediaType = [result mediaType];
  if ((mediaType - 1) > 0x13)
  {
    v4 = 0;
  }

  else
  {
    v4 = [UIImage imageNamed:off_101626520[(mediaType - 1)]];
  }

  return v4;
}

+ (id)actionTextForResult:(id)result hasChildLinks:(BOOL)links
{
  mediaType = [result mediaType];
  v6 = 0;
  if (mediaType > 10)
  {
    if (mediaType > 15)
    {
      if ((mediaType - 18) < 3)
      {
        v9 = +[NSBundle mainBundle];
        v7 = v9;
        v8 = @"[Curated Guides] Try on Apple Fitness+";
LABEL_30:
        v6 = [v9 localizedStringForKey:v8 value:@"localized string not found" table:0];

        goto LABEL_31;
      }

      if (mediaType != 16)
      {
        if (mediaType != 17)
        {
          goto LABEL_31;
        }

        v7 = +[NSBundle mainBundle];
        if (links)
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
      if (!links)
      {
        v8 = @"[Curated Guides] Listen on Apple Books";
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ((mediaType - 12) < 3)
    {
      v7 = +[NSBundle mainBundle];
      if (!links)
      {
        v8 = @"[Curated Guides] Listen on Apple Podcasts";
        goto LABEL_29;
      }

LABEL_28:
      v8 = @"[Curated Guides] Listen Now";
      goto LABEL_29;
    }

    if (mediaType != 11)
    {
      if (mediaType != 15)
      {
        goto LABEL_31;
      }

      v7 = +[NSBundle mainBundle];
      if (links)
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

  if (mediaType <= 3)
  {
    if ((mediaType - 1) >= 3)
    {
      goto LABEL_31;
    }

    v9 = +[NSBundle mainBundle];
    v7 = v9;
    v8 = @"[Curated Guides] View on App Store";
    goto LABEL_30;
  }

  if ((mediaType - 4) < 5)
  {
LABEL_4:
    v7 = +[NSBundle mainBundle];
    if (!links)
    {
      v8 = @"[Curated Guides] Listen on Apple Music";
LABEL_29:
      v9 = v7;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (mediaType == 9)
  {
LABEL_25:
    v7 = +[NSBundle mainBundle];
    if (links)
    {
      v8 = @"[Curated Guides] Watch Now";
    }

    else
    {
      v8 = @"[Curated Guides] Watch on Apple Music";
    }

    goto LABEL_29;
  }

  if (mediaType == 10)
  {
    goto LABEL_4;
  }

LABEL_31:

  return v6;
}

+ (id)subtitleForResult:(id)result
{
  resultCopy = result;
  switch([resultCopy mediaType])
  {
    case 1uLL:
    case 2uLL:
      subtitle = [resultCopy subtitle];
      goto LABEL_12;
    case 3uLL:
      subtitle = [resultCopy editorialSubtitle];
      goto LABEL_12;
    case 4uLL:
    case 5uLL:
    case 9uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xFuLL:
    case 0x10uLL:
      subtitle = [resultCopy artistName];
LABEL_12:
      v9 = subtitle;
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

      classType = [resultCopy classType];
      formatterForDurationString = [self formatterForDurationString];
      [resultCopy duration];
      v14 = [formatterForDurationString stringFromTimeInterval:v13 * 0.001];
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [resultCopy episodeNumber]);
      v16 = [NSNumberFormatter localizedStringFromNumber:v15 numberStyle:1];
      v9 = [NSString localizedStringWithFormat:v7, classType, v14, v16];

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