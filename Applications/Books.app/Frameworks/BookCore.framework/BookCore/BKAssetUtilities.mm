@interface BKAssetUtilities
+ (BOOL)filenameForAsset:(id)asset matches:(id)matches;
+ (id)aggregateIdentifierFromAsset:(id)asset;
+ (id)aggregateIdentifierFromAssetID:(id)d assetURL:(id)l contentType:(signed __int16)type;
+ (id)descriptionForAsset:(id)asset;
+ (id)dictionaryRepresentationForAsset:(id)asset;
+ (id)localizedAssetKindForContentType:(signed __int16)type;
+ (id)pathExtensionForContentType:(signed __int16)type;
+ (id)utiTypeForContentType:(signed __int16)type;
+ (signed)assetContentTypeForBKAssetContentType:(id)type;
+ (signed)assetContentTypeForContentType:(signed __int16)type;
+ (signed)contentTypeForBKAssetContentType:(signed __int16)type;
+ (signed)contentTypeForExtension:(id)extension;
+ (signed)contentTypeForPath:(id)path;
@end

@implementation BKAssetUtilities

+ (signed)contentTypeForBKAssetContentType:(signed __int16)type
{
  if ((type - 1) > 0x12)
  {
    return -1;
  }

  else
  {
    return word_2A3D20[(type - 1)];
  }
}

+ (signed)assetContentTypeForContentType:(signed __int16)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return word_2A3D46[type];
  }
}

+ (signed)assetContentTypeForBKAssetContentType:(id)type
{
  typeCopy = type;
  if (typeCopy && ([&off_2EBE78 objectForKeyedSubscript:typeCopy], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (signed)contentTypeForExtension:(id)extension
{
  lowercaseString = [extension lowercaseString];
  if ([lowercaseString isEqualToString:@"epub"])
  {
    v4 = 1;
  }

  else if ([lowercaseString isEqualToString:@"pdf"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"ibooks"])
  {
    v4 = 4;
  }

  else if ([lowercaseString isEqualToString:@"m4a"])
  {
    v4 = 7;
  }

  else if ([lowercaseString isEqualToString:@"m4b"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"m4p"))
  {
    v4 = 8;
  }

  else if ([lowercaseString isEqualToString:@"aa"])
  {
    v4 = 9;
  }

  else if ([lowercaseString isEqualToString:@"aax"])
  {
    v4 = 10;
  }

  else if ([lowercaseString isEqualToString:@"mp3"])
  {
    v4 = 11;
  }

  else if ([lowercaseString isEqualToString:@"mp4"])
  {
    v4 = 19;
  }

  else if ([lowercaseString isEqualToString:@"aac"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"adts"))
  {
    v4 = 12;
  }

  else if ([lowercaseString isEqualToString:@"ac3"])
  {
    v4 = 13;
  }

  else if ([lowercaseString isEqualToString:@"aif"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"aiff") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"aifc"))
  {
    v4 = 14;
  }

  else if ([lowercaseString isEqualToString:@"caf"])
  {
    v4 = 15;
  }

  else if ([lowercaseString isEqualToString:@"snd"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"au"))
  {
    v4 = 17;
  }

  else if ([lowercaseString isEqualToString:@"sd2"])
  {
    v4 = 16;
  }

  else if ([lowercaseString isEqualToString:@"wav"])
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)pathExtensionForContentType:(signed __int16)type
{
  if ((type - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return *(&off_2CC080 + (type - 1));
  }
}

+ (id)utiTypeForContentType:(signed __int16)type
{
  identifier = 0;
  switch(type)
  {
    case 1:
      v4 = &UTTypeEPUB;
      goto LABEL_12;
    case 2:
      v4 = &UTTypeText;
      goto LABEL_12;
    case 3:
      v4 = &UTTypePDF;
      goto LABEL_12;
    case 4:
      identifier = @"com.apple.ibooks-container";
      break;
    case 6:
      v4 = &UTTypeDirectory;
LABEL_12:
      identifier = [*v4 identifier];
      break;
    case 7:
      identifier = @"com.apple.m4a-audio";
      break;
    case 8:
      identifier = @"com.apple.protected-mpeg-4-audio";
      break;
    case 9:
      identifier = @"com.audible.aa-audiobook";
      break;
    case 10:
      identifier = @"com.audible.aax-audiobook";
      break;
    case 11:
      identifier = @"public.mp3";
      break;
    case 12:
      identifier = @"public.aac-audio";
      break;
    case 13:
      identifier = @"public.ac3-audio";
      break;
    case 14:
      identifier = @"public.aiff-audio";
      break;
    case 15:
      identifier = @"com.apple.coreaudio-format";
      break;
    case 16:
      identifier = @"com.digidesign.sd2-audio";
      break;
    case 17:
      identifier = @"public.au-audio";
      break;
    case 18:
      identifier = @"com.microsoft.waveform-audio";
      break;
    case 19:
      identifier = @"public.mpeg-4";
      break;
    default:
      break;
  }

  return identifier;
}

+ (id)aggregateIdentifierFromAsset:(id)asset
{
  assetCopy = asset;
  assetID = [assetCopy assetID];
  v5 = [assetCopy url];
  contentType = [assetCopy contentType];

  v7 = [BKAssetUtilities aggregateIdentifierFromAssetID:assetID assetURL:v5 contentType:contentType];

  return v7;
}

+ (id)aggregateIdentifierFromAssetID:(id)d assetURL:(id)l contentType:(signed __int16)type
{
  typeCopy = type;
  lCopy = l;
  v8 = [d copy];
  if ([BKAssetUtilities requiresAggregateContentType:typeCopy])
  {
    lastPathComponent = [lCopy lastPathComponent];
    if ([lastPathComponent length])
    {
      v10 = [NSString stringWithFormat:@"%@-%@", v8, lastPathComponent];

      v8 = v10;
    }
  }

  return v8;
}

+ (BOOL)filenameForAsset:(id)asset matches:(id)matches
{
  matchesCopy = matches;
  assetCopy = asset;
  if (objc_opt_respondsToSelector())
  {
    v7 = [assetCopy filenameMatches:matchesCopy];
  }

  else
  {
    v8 = [assetCopy url];

    lastPathComponent = [v8 lastPathComponent];
    v7 = [lastPathComponent isEqualToString:matchesCopy];

    assetCopy = v8;
  }

  return v7;
}

+ (signed)contentTypeForPath:(id)path
{
  pathCopy = path;
  pathExtension = [pathCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if ([lowercaseString length])
  {
    v7 = [self contentTypeForExtension:lowercaseString];
  }

  else if ([pathCopy length])
  {
    v8 = [NSURL fileURLWithPath:pathCopy];
    if ([v8 bu_isFolder])
    {
      v9 = +[NSFileManager defaultManager];
      v10 = [v9 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:4 error:0];

      if ([v10 count])
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v19 = v10;
          v14 = *v21;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              pathExtension2 = [*(*(&v20 + 1) + 8 * i) pathExtension];
              lowercaseString2 = [pathExtension2 lowercaseString];

              LODWORD(pathExtension2) = [self isAudiobookTrackContentType:{objc_msgSend(self, "contentTypeForExtension:", lowercaseString2)}];
              if (!pathExtension2)
              {
                v7 = 0;
                goto LABEL_18;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v7 = 6;
LABEL_18:
          v10 = v19;
        }

        else
        {
          v7 = 6;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)localizedAssetKindForContentType:(signed __int16)type
{
  v3 = 0;
  if (type <= 4)
  {
    if (type <= 1)
    {
      if (!type)
      {
LABEL_18:
        v3 = &stru_2D2930;
        goto LABEL_5;
      }

      if (type != 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (type == 2)
      {
        v4 = IMCommonCoreBundle();
        v5 = v4;
        v6 = @"Text";
        goto LABEL_4;
      }

      if (type == 3)
      {
        v4 = IMCommonCoreBundle();
        v5 = v4;
        v6 = @"PDF document";
        goto LABEL_4;
      }
    }

    v4 = IMCommonCoreBundle();
    v5 = v4;
    v6 = @"Book";
    goto LABEL_4;
  }

  if ((type - 7) < 0xD)
  {
    v4 = IMCommonCoreBundle();
    v5 = v4;
    v6 = @"Audiobook Track";
LABEL_4:
    v3 = [v4 localizedStringForKey:v6 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    goto LABEL_5;
  }

  if (type == 5)
  {
    goto LABEL_18;
  }

  if (type == 6)
  {
    v4 = IMCommonCoreBundle();
    v5 = v4;
    v6 = @"Audiobook";
    goto LABEL_4;
  }

LABEL_5:

  return v3;
}

+ (id)dictionaryRepresentationForAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_alloc_init(NSMutableDictionary);
  accountID = [assetCopy accountID];

  if (accountID)
  {
    accountID2 = [assetCopy accountID];
    [v4 setObject:accountID2 forKeyedSubscript:@"accountID"];
  }

  assetID = [assetCopy assetID];

  if (assetID)
  {
    assetID2 = [assetCopy assetID];
    [v4 setObject:assetID2 forKeyedSubscript:@"assetID"];
  }

  temporaryAssetID = [assetCopy temporaryAssetID];

  if (temporaryAssetID)
  {
    temporaryAssetID2 = [assetCopy temporaryAssetID];
    [v4 setObject:temporaryAssetID2 forKeyedSubscript:@"temporaryAssetID"];
  }

  storeID = [assetCopy storeID];

  if (storeID)
  {
    storeID2 = [assetCopy storeID];
    [v4 setObject:storeID2 forKeyedSubscript:@"storeID"];
  }

  author = [assetCopy author];

  if (author)
  {
    author2 = [assetCopy author];
    [v4 setObject:author2 forKeyedSubscript:@"author"];
  }

  if (objc_opt_respondsToSelector())
  {
    authorCount = [assetCopy authorCount];

    if (authorCount)
    {
      authorCount2 = [assetCopy authorCount];
      [v4 setObject:authorCount2 forKeyedSubscript:@"authorCount"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    authorNames = [assetCopy authorNames];

    if (authorNames)
    {
      authorNames2 = [assetCopy authorNames];
      [v4 setObject:authorNames2 forKeyedSubscript:@"authorNames"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    hasTooManyAuthors = [assetCopy hasTooManyAuthors];

    if (hasTooManyAuthors)
    {
      hasTooManyAuthors2 = [assetCopy hasTooManyAuthors];
      [v4 setObject:hasTooManyAuthors2 forKeyedSubscript:@"hasTooManyAuthors"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    narratorCount = [assetCopy narratorCount];

    if (narratorCount)
    {
      narratorCount2 = [assetCopy narratorCount];
      [v4 setObject:narratorCount2 forKeyedSubscript:@"narratorCount"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    narratorNames = [assetCopy narratorNames];

    if (narratorNames)
    {
      narratorNames2 = [assetCopy narratorNames];
      [v4 setObject:narratorNames2 forKeyedSubscript:@"narratorNames"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    hasTooManyNarrators = [assetCopy hasTooManyNarrators];

    if (hasTooManyNarrators)
    {
      hasTooManyNarrators2 = [assetCopy hasTooManyNarrators];
      [v4 setObject:hasTooManyNarrators2 forKeyedSubscript:@"hasTooManyNarrators"];
    }
  }

  title = [assetCopy title];

  if (title)
  {
    title2 = [assetCopy title];
    [v4 setObject:title2 forKeyedSubscript:@"title"];
  }

  sortTitle = [assetCopy sortTitle];

  if (sortTitle)
  {
    sortTitle2 = [assetCopy sortTitle];
    [v4 setObject:sortTitle2 forKeyedSubscript:@"sortTitle"];
  }

  v31 = [assetCopy url];

  if (v31)
  {
    v32 = [assetCopy url];
    absoluteString = [v32 absoluteString];
    [v4 setObject:absoluteString forKeyedSubscript:@"url"];
  }

  genre = [assetCopy genre];

  if (genre)
  {
    genre2 = [assetCopy genre];
    [v4 setObject:genre2 forKeyedSubscript:@"genre"];
  }

  if (objc_opt_respondsToSelector())
  {
    genres = [assetCopy genres];

    if (genres)
    {
      genres2 = [assetCopy genres];
      [v4 setObject:genres2 forKeyedSubscript:@"genres"];
    }
  }

  dataSourceIdentifier = [assetCopy dataSourceIdentifier];

  if (dataSourceIdentifier)
  {
    dataSourceIdentifier2 = [assetCopy dataSourceIdentifier];
    [v4 setObject:dataSourceIdentifier2 forKeyedSubscript:@"dataSourceIdentifier"];
  }

  v40 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [assetCopy generation]);
  [v4 setObject:v40 forKeyedSubscript:@"generation"];

  v41 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [assetCopy fileSize]);
  [v4 setObject:v41 forKeyedSubscript:@"fileSize"];

  v42 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [assetCopy contentType]);
  [v4 setObject:v42 forKeyedSubscript:@"contentType"];

  v43 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [assetCopy state]);
  [v4 setObject:v43 forKeyedSubscript:@"state"];

  dataSourceInsertionDate = [assetCopy dataSourceInsertionDate];

  if (dataSourceInsertionDate)
  {
    dataSourceInsertionDate2 = [assetCopy dataSourceInsertionDate];
    [v4 setObject:dataSourceInsertionDate2 forKeyedSubscript:@"dataSourceInsertionDate"];
  }

  releaseDate = [assetCopy releaseDate];

  if (releaseDate)
  {
    releaseDate2 = [assetCopy releaseDate];
    [v4 setObject:releaseDate2 forKeyedSubscript:@"releaseDate"];
  }

  purchaseDate = [assetCopy purchaseDate];

  if (purchaseDate)
  {
    purchaseDate2 = [assetCopy purchaseDate];
    [v4 setObject:purchaseDate2 forKeyedSubscript:@"purchaseDate"];
  }

  expectedDate = [assetCopy expectedDate];

  if (expectedDate)
  {
    expectedDate2 = [assetCopy expectedDate];
    [v4 setObject:expectedDate2 forKeyedSubscript:@"expectedDate"];
  }

  v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy shouldDisableOptimizeSpeed]);
  [v4 setObject:v52 forKeyedSubscript:@"shouldDisableOptimizeSpeed"];

  v53 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy shouldDisableTouchEmulation]);
  [v4 setObject:v53 forKeyedSubscript:@"shouldDisableTouchEmulation"];

  v54 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [assetCopy desktopSupportLevel]);
  [v4 setObject:v54 forKeyedSubscript:@"desktopSupportLevel"];

  scrollDirection = [assetCopy scrollDirection];

  if (scrollDirection)
  {
    scrollDirection2 = [assetCopy scrollDirection];
    [v4 setObject:scrollDirection2 forKeyedSubscript:@"scrollDirection"];
  }

  v57 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [assetCopy pageCount]);
  [v4 setObject:v57 forKeyedSubscript:@"pageCount"];

  v58 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [assetCopy rating]);
  [v4 setObject:v58 forKeyedSubscript:@"rating"];

  updateDate = [assetCopy updateDate];

  if (updateDate)
  {
    updateDate2 = [assetCopy updateDate];
    [v4 setObject:updateDate2 forKeyedSubscript:@"updateDate"];
  }

  versionNumber = [assetCopy versionNumber];

  if (versionNumber)
  {
    versionNumber2 = [assetCopy versionNumber];
    [v4 setObject:versionNumber2 forKeyedSubscript:@"versionNumber"];
  }

  bookDescription = [assetCopy bookDescription];

  if (bookDescription)
  {
    bookDescription2 = [assetCopy bookDescription];
    [v4 setObject:bookDescription2 forKeyedSubscript:@"bookDescription"];
  }

  comments = [assetCopy comments];

  if (comments)
  {
    comments2 = [assetCopy comments];
    [v4 setObject:comments2 forKeyedSubscript:@"comments"];
  }

  kind = [assetCopy kind];

  if (kind)
  {
    kind2 = [assetCopy kind];
    [v4 setObject:kind2 forKeyedSubscript:@"kind"];
  }

  year = [assetCopy year];

  if (year)
  {
    year2 = [assetCopy year];
    [v4 setObject:year2 forKeyedSubscript:@"year"];
  }

  grouping = [assetCopy grouping];

  if (grouping)
  {
    grouping2 = [assetCopy grouping];
    [v4 setObject:grouping2 forKeyedSubscript:@"grouping"];
  }

  v73 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy computedRating]);
  [v4 setObject:v73 forKeyedSubscript:@"computedRating"];

  v74 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [assetCopy metadataMigrationVersion]);
  [v4 setObject:v74 forKeyedSubscript:@"metadataMigrationVersion"];

  if (objc_opt_respondsToSelector())
  {
    assetIsHidden = [assetCopy assetIsHidden];

    if (assetIsHidden)
    {
      assetIsHidden2 = [assetCopy assetIsHidden];
      [v4 setObject:assetIsHidden2 forKeyedSubscript:@"assetIsHidden"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v77 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [assetCopy storeFrontID]);
    [v4 setObject:v77 forKeyedSubscript:@"storeFrontID"];
  }

  if (objc_opt_respondsToSelector())
  {
    coverAspectRatio = [assetCopy coverAspectRatio];

    if (coverAspectRatio)
    {
      coverAspectRatio2 = [assetCopy coverAspectRatio];
      [v4 setObject:coverAspectRatio2 forKeyedSubscript:@"coverAspectRatio"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesIsHidden = [assetCopy seriesIsHidden];

    if (seriesIsHidden)
    {
      seriesIsHidden2 = [assetCopy seriesIsHidden];
      [v4 setObject:seriesIsHidden2 forKeyedSubscript:@"seriesIsHidden"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesIsCloudOnly = [assetCopy seriesIsCloudOnly];

    if (seriesIsCloudOnly)
    {
      seriesIsCloudOnly2 = [assetCopy seriesIsCloudOnly];
      [v4 setObject:seriesIsCloudOnly2 forKeyedSubscript:@"seriesIsCloudOnly"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesIsOrdered = [assetCopy seriesIsOrdered];

    if (seriesIsOrdered)
    {
      seriesIsOrdered2 = [assetCopy seriesIsOrdered];
      [v4 setObject:seriesIsOrdered2 forKeyedSubscript:@"seriesIsOrdered"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    sequenceDisplayName = [assetCopy sequenceDisplayName];

    if (sequenceDisplayName)
    {
      sequenceDisplayName2 = [assetCopy sequenceDisplayName];
      [v4 setObject:sequenceDisplayName2 forKeyedSubscript:@"sequenceDisplayName"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    sequenceNumber = [assetCopy sequenceNumber];

    if (sequenceNumber)
    {
      sequenceNumber2 = [assetCopy sequenceNumber];
      [v4 setObject:sequenceNumber2 forKeyedSubscript:@"sequenceNumber"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesID = [assetCopy seriesID];

    if (seriesID)
    {
      seriesID2 = [assetCopy seriesID];
      [v4 setObject:seriesID2 forKeyedSubscript:@"seriesID"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    isStoreAudiobook = [assetCopy isStoreAudiobook];

    if (isStoreAudiobook)
    {
      isStoreAudiobook2 = [assetCopy isStoreAudiobook];
      [v4 setObject:isStoreAudiobook2 forKeyedSubscript:@"isStoreAudiobook"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    mappedAssetID = [assetCopy mappedAssetID];

    if (mappedAssetID)
    {
      mappedAssetID2 = [assetCopy mappedAssetID];
      [v4 setObject:mappedAssetID2 forKeyedSubscript:@"mappedAssetID"];
    }
  }

  v96 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [assetCopy mappedAssetContentType]);
  [v4 setObject:v96 forKeyedSubscript:@"mappedAssetContentType"];

  if (objc_opt_respondsToSelector())
  {
    hasRACSupport = [assetCopy hasRACSupport];

    if (hasRACSupport)
    {
      hasRACSupport2 = [assetCopy hasRACSupport];
      [v4 setObject:hasRACSupport2 forKeyedSubscript:@"hasRACSupport"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v99 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [assetCopy isSupplementalContent]);
    [v4 setObject:v99 forKeyedSubscript:@"isSupplementalContent"];
  }

  if (objc_opt_respondsToSelector())
  {
    storePlaylistID = [assetCopy storePlaylistID];

    if (storePlaylistID)
    {
      storePlaylistID2 = [assetCopy storePlaylistID];
      [v4 setObject:storePlaylistID2 forKeyedSubscript:@"storePlaylistID"];
    }
  }

  v102 = v4;

  return v4;
}

+ (id)descriptionForAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  assetCopy = [NSMutableString stringWithFormat:@"\n%@: <%p>", v5, assetCopy];

  assetID = [assetCopy assetID];
  v8 = assetID;
  if (assetID)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"assetID", assetID];
  }

  title = [assetCopy title];
  v10 = title;
  if (title)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"title", title];
  }

  sortTitle = [assetCopy sortTitle];
  v12 = sortTitle;
  if (sortTitle)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"sortTitle", sortTitle];
  }

  author = [assetCopy author];
  v14 = author;
  if (author)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"author", author];
  }

  sortAuthor = [assetCopy sortAuthor];
  v16 = sortAuthor;
  if (sortAuthor)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"sortAuthor", sortAuthor];
  }

  storeID = [assetCopy storeID];
  v18 = storeID;
  if (storeID)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"storeID", storeID];
  }

  temporaryAssetID = [assetCopy temporaryAssetID];
  v20 = temporaryAssetID;
  if (temporaryAssetID)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"temporaryAssetID", temporaryAssetID];
  }

  accountID = [assetCopy accountID];
  v22 = accountID;
  if (accountID)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"accountID", accountID];
  }

  if ([assetCopy contentType])
  {
    v23 = BKStringFromAssetContentType([assetCopy contentType]);
    [assetCopy appendFormat:@"\n\tcontentType :  %@", v23];
  }

  if ([assetCopy state])
  {
    v24 = BKStringFromAssetState([assetCopy state]);
    [assetCopy appendFormat:@"\n\tstate :  %@", v24];
  }

  genre = [assetCopy genre];
  v26 = genre;
  if (genre)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"genre", genre];
  }

  dataSourceIdentifier = [assetCopy dataSourceIdentifier];
  v28 = dataSourceIdentifier;
  if (dataSourceIdentifier)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"dataSourceIdentifier", dataSourceIdentifier];
  }

  bookDescription = [assetCopy bookDescription];
  v30 = bookDescription;
  if (bookDescription)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"bookDescription", bookDescription];
  }

  comments = [assetCopy comments];
  v32 = comments;
  if (comments)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"comments", comments];
  }

  kind = [assetCopy kind];
  v34 = kind;
  if (kind)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"kind", kind];
  }

  isExplicit = [assetCopy isExplicit];
  v36 = isExplicit;
  if (isExplicit)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"isExplicit", isExplicit];
  }

  year = [assetCopy year];
  v38 = year;
  if (year)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"year", year];
  }

  versionNumber = [assetCopy versionNumber];
  v40 = versionNumber;
  if (versionNumber)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"versionNumber", versionNumber];
  }

  versionNumberHumanReadable = [assetCopy versionNumberHumanReadable];
  v42 = versionNumberHumanReadable;
  if (versionNumberHumanReadable)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"versionNumberHumanReadable", versionNumberHumanReadable];
  }

  dataSourceInsertionDate = [assetCopy dataSourceInsertionDate];
  v44 = dataSourceInsertionDate;
  if (dataSourceInsertionDate)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"dataSourceInsertionDate", dataSourceInsertionDate];
  }

  releaseDate = [assetCopy releaseDate];
  v46 = releaseDate;
  if (releaseDate)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"releaseDate", releaseDate];
  }

  purchaseDate = [assetCopy purchaseDate];
  v48 = purchaseDate;
  if (purchaseDate)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"purchaseDate", purchaseDate];
  }

  expectedDate = [assetCopy expectedDate];
  v50 = expectedDate;
  if (expectedDate)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"expectedDate", expectedDate];
  }

  lastOpenDate = [assetCopy lastOpenDate];
  v52 = lastOpenDate;
  if (lastOpenDate)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"lastOpenDate", lastOpenDate];
  }

  updateDate = [assetCopy updateDate];
  v54 = updateDate;
  if (updateDate)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"updateDate", updateDate];
  }

  generation = [assetCopy generation];
  sub_9D99C(generation, assetCopy, generation, @"generation");
  fileSize = [assetCopy fileSize];
  sub_9D99C(fileSize, assetCopy, fileSize, @"fileSize");
  pageCount = [assetCopy pageCount];
  sub_9D99C(pageCount, assetCopy, pageCount, @"pageCount");
  rating = [assetCopy rating];
  sub_9D99C(rating, assetCopy, rating, @"rating");
  if ([assetCopy isSample])
  {
    [assetCopy appendFormat:@"\n\t%@ :  YES", @"sample"];
  }

  if ([assetCopy isProof])
  {
    [assetCopy appendFormat:@"\n\t%@ :  YES", @"proof"];
  }

  if ([assetCopy isCompressed])
  {
    [assetCopy appendFormat:@"\n\t%@ :  YES", @"compressed"];
  }

  if ([assetCopy isLocked])
  {
    [assetCopy appendFormat:@"\n\t%@ :  YES", @"locked"];
  }

  if ([assetCopy isEphemeral])
  {
    [assetCopy appendFormat:@"\n\t%@ :  YES", @"ephemeral"];
  }

  if (objc_opt_respondsToSelector())
  {
    storeFrontID = [assetCopy storeFrontID];
    sub_9D99C(storeFrontID, assetCopy, storeFrontID, @"storeFrontID");
  }

  if (objc_opt_respondsToSelector())
  {
    assetIsHidden = [assetCopy assetIsHidden];
    v61 = assetIsHidden;
    if (assetIsHidden)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"assetIsHidden", assetIsHidden];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    coverAspectRatio = [assetCopy coverAspectRatio];
    v63 = coverAspectRatio;
    if (coverAspectRatio)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"coverAspectRatio", coverAspectRatio];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesIsHidden = [assetCopy seriesIsHidden];
    v65 = seriesIsHidden;
    if (seriesIsHidden)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"seriesIsHidden", seriesIsHidden];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesIsCloudOnly = [assetCopy seriesIsCloudOnly];
    v67 = seriesIsCloudOnly;
    if (seriesIsCloudOnly)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"seriesIsCloudOnly", seriesIsCloudOnly];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesIsOrdered = [assetCopy seriesIsOrdered];
    v69 = seriesIsOrdered;
    if (seriesIsOrdered)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"seriesIsOrdered", seriesIsOrdered];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesSortKey = [assetCopy seriesSortKey];
    v71 = seriesSortKey;
    if (seriesSortKey)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"seriesSortKey", seriesSortKey];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    sequenceDisplayName = [assetCopy sequenceDisplayName];
    v73 = sequenceDisplayName;
    if (sequenceDisplayName)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"sequenceDisplayName", sequenceDisplayName];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    seriesID = [assetCopy seriesID];
    v75 = seriesID;
    if (seriesID)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"seriesID", seriesID];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    permlink = [assetCopy permlink];
    v77 = permlink;
    if (permlink)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"permlink", permlink];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    isStoreAudiobook = [assetCopy isStoreAudiobook];
    v79 = isStoreAudiobook;
    if (isStoreAudiobook)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"isStoreAudiobook", isStoreAudiobook];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [assetCopy isSupplementalContent])
  {
    [assetCopy appendFormat:@"\n\t%@ :  YES", @"supplementalContent"];
  }

  if (objc_opt_respondsToSelector())
  {
    storePlaylistID = [assetCopy storePlaylistID];
    v81 = storePlaylistID;
    if (storePlaylistID)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"storePlaylistID", storePlaylistID];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    hasRACSupport = [assetCopy hasRACSupport];
    v83 = hasRACSupport;
    if (hasRACSupport)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"hasRACSupport", hasRACSupport];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    genres = [assetCopy genres];
    v85 = genres;
    if (genres)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"genres", genres];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    authorCount = [assetCopy authorCount];
    v87 = authorCount;
    if (authorCount)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"authorCount", authorCount];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    authorNames = [assetCopy authorNames];
    v89 = authorNames;
    if (authorNames)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"authorNames", authorNames];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    hasTooManyAuthors = [assetCopy hasTooManyAuthors];
    v91 = hasTooManyAuthors;
    if (hasTooManyAuthors)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"hasTooManyAuthors", hasTooManyAuthors];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    narratorCount = [assetCopy narratorCount];
    v93 = narratorCount;
    if (narratorCount)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"narratorCount", narratorCount];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    narratorNames = [assetCopy narratorNames];
    v95 = narratorNames;
    if (narratorNames)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"narratorNames", narratorNames];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    hasTooManyNarrators = [assetCopy hasTooManyNarrators];
    v97 = hasTooManyNarrators;
    if (hasTooManyNarrators)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"hasTooManyNarrators", hasTooManyNarrators];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    mappedAssetID = [assetCopy mappedAssetID];
    v99 = mappedAssetID;
    if (mappedAssetID)
    {
      [assetCopy appendFormat:@"\n\t%@ :  %@", @"mappedAssetID", mappedAssetID];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v100 = BKStringFromAssetContentType([assetCopy mappedAssetContentType]);
    [assetCopy appendFormat:@"\n\tmappedAssetContentType :  %@", v100];
  }

  v101 = [assetCopy url];
  v102 = v101;
  if (v101)
  {
    [assetCopy appendFormat:@"\n\t%@ :  %@", @"url", v101];
  }

  v103 = [assetCopy url];
  isFileURL = [v103 isFileURL];

  if (isFileURL)
  {
    v105 = [assetCopy url];
    v106 = [assetCopy url];
    v107 = +[BCUbiquityMetadataHelper ubiquityMetadataForURL:options:needsCoordination:](BCUbiquityMetadataHelper, "ubiquityMetadataForURL:options:needsCoordination:", v105, -262145, [v106 bc_isUbiquitous]);

    if ([v107 count])
    {
      [assetCopy appendFormat:@"\n\txattr metadata : "];
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      allKeys = [v107 allKeys];
      v109 = [allKeys countByEnumeratingWithState:&v116 objects:v120 count:16];
      if (v109)
      {
        v110 = v109;
        v111 = *v117;
        do
        {
          for (i = 0; i != v110; i = i + 1)
          {
            if (*v117 != v111)
            {
              objc_enumerationMutation(allKeys);
            }

            v113 = *(*(&v116 + 1) + 8 * i);
            v114 = [v107 objectForKey:v113];
            [assetCopy appendFormat:@"\n\t\t\t%@: %@", v113, v114];
          }

          v110 = [allKeys countByEnumeratingWithState:&v116 objects:v120 count:16];
        }

        while (v110);
      }
    }
  }

  [assetCopy appendFormat:@"\n"];

  return assetCopy;
}

@end