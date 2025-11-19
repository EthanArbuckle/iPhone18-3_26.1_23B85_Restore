@interface BKAssetUtilities
+ (BOOL)filenameForAsset:(id)a3 matches:(id)a4;
+ (id)aggregateIdentifierFromAsset:(id)a3;
+ (id)aggregateIdentifierFromAssetID:(id)a3 assetURL:(id)a4 contentType:(signed __int16)a5;
+ (id)descriptionForAsset:(id)a3;
+ (id)dictionaryRepresentationForAsset:(id)a3;
+ (id)localizedAssetKindForContentType:(signed __int16)a3;
+ (id)pathExtensionForContentType:(signed __int16)a3;
+ (id)utiTypeForContentType:(signed __int16)a3;
+ (signed)assetContentTypeForBKAssetContentType:(id)a3;
+ (signed)assetContentTypeForContentType:(signed __int16)a3;
+ (signed)contentTypeForBKAssetContentType:(signed __int16)a3;
+ (signed)contentTypeForExtension:(id)a3;
+ (signed)contentTypeForPath:(id)a3;
@end

@implementation BKAssetUtilities

+ (signed)contentTypeForBKAssetContentType:(signed __int16)a3
{
  if ((a3 - 1) > 0x12)
  {
    return -1;
  }

  else
  {
    return word_2A3D20[(a3 - 1)];
  }
}

+ (signed)assetContentTypeForContentType:(signed __int16)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return word_2A3D46[a3];
  }
}

+ (signed)assetContentTypeForBKAssetContentType:(id)a3
{
  v3 = a3;
  if (v3 && ([&off_2EBE78 objectForKeyedSubscript:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (signed)contentTypeForExtension:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 isEqualToString:@"epub"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"pdf"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ibooks"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"m4a"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"m4b"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"m4p"))
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"aa"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"aax"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"mp3"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"mp4"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"aac"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"adts"))
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"ac3"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"aif"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"aiff") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"aifc"))
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"caf"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"snd"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"au"))
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"sd2"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"wav"])
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)pathExtensionForContentType:(signed __int16)a3
{
  if ((a3 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return *(&off_2CC080 + (a3 - 1));
  }
}

+ (id)utiTypeForContentType:(signed __int16)a3
{
  v3 = 0;
  switch(a3)
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
      v3 = @"com.apple.ibooks-container";
      break;
    case 6:
      v4 = &UTTypeDirectory;
LABEL_12:
      v3 = [*v4 identifier];
      break;
    case 7:
      v3 = @"com.apple.m4a-audio";
      break;
    case 8:
      v3 = @"com.apple.protected-mpeg-4-audio";
      break;
    case 9:
      v3 = @"com.audible.aa-audiobook";
      break;
    case 10:
      v3 = @"com.audible.aax-audiobook";
      break;
    case 11:
      v3 = @"public.mp3";
      break;
    case 12:
      v3 = @"public.aac-audio";
      break;
    case 13:
      v3 = @"public.ac3-audio";
      break;
    case 14:
      v3 = @"public.aiff-audio";
      break;
    case 15:
      v3 = @"com.apple.coreaudio-format";
      break;
    case 16:
      v3 = @"com.digidesign.sd2-audio";
      break;
    case 17:
      v3 = @"public.au-audio";
      break;
    case 18:
      v3 = @"com.microsoft.waveform-audio";
      break;
    case 19:
      v3 = @"public.mpeg-4";
      break;
    default:
      break;
  }

  return v3;
}

+ (id)aggregateIdentifierFromAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 assetID];
  v5 = [v3 url];
  v6 = [v3 contentType];

  v7 = [BKAssetUtilities aggregateIdentifierFromAssetID:v4 assetURL:v5 contentType:v6];

  return v7;
}

+ (id)aggregateIdentifierFromAssetID:(id)a3 assetURL:(id)a4 contentType:(signed __int16)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [a3 copy];
  if ([BKAssetUtilities requiresAggregateContentType:v5])
  {
    v9 = [v7 lastPathComponent];
    if ([v9 length])
    {
      v10 = [NSString stringWithFormat:@"%@-%@", v8, v9];

      v8 = v10;
    }
  }

  return v8;
}

+ (BOOL)filenameForAsset:(id)a3 matches:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 filenameMatches:v5];
  }

  else
  {
    v8 = [v6 url];

    v9 = [v8 lastPathComponent];
    v7 = [v9 isEqualToString:v5];

    v6 = v8;
  }

  return v7;
}

+ (signed)contentTypeForPath:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  v6 = [v5 lowercaseString];

  if ([v6 length])
  {
    v7 = [a1 contentTypeForExtension:v6];
  }

  else if ([v4 length])
  {
    v8 = [NSURL fileURLWithPath:v4];
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

              v16 = [*(*(&v20 + 1) + 8 * i) pathExtension];
              v17 = [v16 lowercaseString];

              LODWORD(v16) = [a1 isAudiobookTrackContentType:{objc_msgSend(a1, "contentTypeForExtension:", v17)}];
              if (!v16)
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

+ (id)localizedAssetKindForContentType:(signed __int16)a3
{
  v3 = 0;
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
LABEL_18:
        v3 = &stru_2D2930;
        goto LABEL_5;
      }

      if (a3 != 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (a3 == 2)
      {
        v4 = IMCommonCoreBundle();
        v5 = v4;
        v6 = @"Text";
        goto LABEL_4;
      }

      if (a3 == 3)
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

  if ((a3 - 7) < 0xD)
  {
    v4 = IMCommonCoreBundle();
    v5 = v4;
    v6 = @"Audiobook Track";
LABEL_4:
    v3 = [v4 localizedStringForKey:v6 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    goto LABEL_5;
  }

  if (a3 == 5)
  {
    goto LABEL_18;
  }

  if (a3 == 6)
  {
    v4 = IMCommonCoreBundle();
    v5 = v4;
    v6 = @"Audiobook";
    goto LABEL_4;
  }

LABEL_5:

  return v3;
}

+ (id)dictionaryRepresentationForAsset:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 accountID];

  if (v5)
  {
    v6 = [v3 accountID];
    [v4 setObject:v6 forKeyedSubscript:@"accountID"];
  }

  v7 = [v3 assetID];

  if (v7)
  {
    v8 = [v3 assetID];
    [v4 setObject:v8 forKeyedSubscript:@"assetID"];
  }

  v9 = [v3 temporaryAssetID];

  if (v9)
  {
    v10 = [v3 temporaryAssetID];
    [v4 setObject:v10 forKeyedSubscript:@"temporaryAssetID"];
  }

  v11 = [v3 storeID];

  if (v11)
  {
    v12 = [v3 storeID];
    [v4 setObject:v12 forKeyedSubscript:@"storeID"];
  }

  v13 = [v3 author];

  if (v13)
  {
    v14 = [v3 author];
    [v4 setObject:v14 forKeyedSubscript:@"author"];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v3 authorCount];

    if (v15)
    {
      v16 = [v3 authorCount];
      [v4 setObject:v16 forKeyedSubscript:@"authorCount"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v3 authorNames];

    if (v17)
    {
      v18 = [v3 authorNames];
      [v4 setObject:v18 forKeyedSubscript:@"authorNames"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v3 hasTooManyAuthors];

    if (v19)
    {
      v20 = [v3 hasTooManyAuthors];
      [v4 setObject:v20 forKeyedSubscript:@"hasTooManyAuthors"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [v3 narratorCount];

    if (v21)
    {
      v22 = [v3 narratorCount];
      [v4 setObject:v22 forKeyedSubscript:@"narratorCount"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v3 narratorNames];

    if (v23)
    {
      v24 = [v3 narratorNames];
      [v4 setObject:v24 forKeyedSubscript:@"narratorNames"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [v3 hasTooManyNarrators];

    if (v25)
    {
      v26 = [v3 hasTooManyNarrators];
      [v4 setObject:v26 forKeyedSubscript:@"hasTooManyNarrators"];
    }
  }

  v27 = [v3 title];

  if (v27)
  {
    v28 = [v3 title];
    [v4 setObject:v28 forKeyedSubscript:@"title"];
  }

  v29 = [v3 sortTitle];

  if (v29)
  {
    v30 = [v3 sortTitle];
    [v4 setObject:v30 forKeyedSubscript:@"sortTitle"];
  }

  v31 = [v3 url];

  if (v31)
  {
    v32 = [v3 url];
    v33 = [v32 absoluteString];
    [v4 setObject:v33 forKeyedSubscript:@"url"];
  }

  v34 = [v3 genre];

  if (v34)
  {
    v35 = [v3 genre];
    [v4 setObject:v35 forKeyedSubscript:@"genre"];
  }

  if (objc_opt_respondsToSelector())
  {
    v36 = [v3 genres];

    if (v36)
    {
      v37 = [v3 genres];
      [v4 setObject:v37 forKeyedSubscript:@"genres"];
    }
  }

  v38 = [v3 dataSourceIdentifier];

  if (v38)
  {
    v39 = [v3 dataSourceIdentifier];
    [v4 setObject:v39 forKeyedSubscript:@"dataSourceIdentifier"];
  }

  v40 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 generation]);
  [v4 setObject:v40 forKeyedSubscript:@"generation"];

  v41 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 fileSize]);
  [v4 setObject:v41 forKeyedSubscript:@"fileSize"];

  v42 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 contentType]);
  [v4 setObject:v42 forKeyedSubscript:@"contentType"];

  v43 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 state]);
  [v4 setObject:v43 forKeyedSubscript:@"state"];

  v44 = [v3 dataSourceInsertionDate];

  if (v44)
  {
    v45 = [v3 dataSourceInsertionDate];
    [v4 setObject:v45 forKeyedSubscript:@"dataSourceInsertionDate"];
  }

  v46 = [v3 releaseDate];

  if (v46)
  {
    v47 = [v3 releaseDate];
    [v4 setObject:v47 forKeyedSubscript:@"releaseDate"];
  }

  v48 = [v3 purchaseDate];

  if (v48)
  {
    v49 = [v3 purchaseDate];
    [v4 setObject:v49 forKeyedSubscript:@"purchaseDate"];
  }

  v50 = [v3 expectedDate];

  if (v50)
  {
    v51 = [v3 expectedDate];
    [v4 setObject:v51 forKeyedSubscript:@"expectedDate"];
  }

  v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 shouldDisableOptimizeSpeed]);
  [v4 setObject:v52 forKeyedSubscript:@"shouldDisableOptimizeSpeed"];

  v53 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 shouldDisableTouchEmulation]);
  [v4 setObject:v53 forKeyedSubscript:@"shouldDisableTouchEmulation"];

  v54 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 desktopSupportLevel]);
  [v4 setObject:v54 forKeyedSubscript:@"desktopSupportLevel"];

  v55 = [v3 scrollDirection];

  if (v55)
  {
    v56 = [v3 scrollDirection];
    [v4 setObject:v56 forKeyedSubscript:@"scrollDirection"];
  }

  v57 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 pageCount]);
  [v4 setObject:v57 forKeyedSubscript:@"pageCount"];

  v58 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 rating]);
  [v4 setObject:v58 forKeyedSubscript:@"rating"];

  v59 = [v3 updateDate];

  if (v59)
  {
    v60 = [v3 updateDate];
    [v4 setObject:v60 forKeyedSubscript:@"updateDate"];
  }

  v61 = [v3 versionNumber];

  if (v61)
  {
    v62 = [v3 versionNumber];
    [v4 setObject:v62 forKeyedSubscript:@"versionNumber"];
  }

  v63 = [v3 bookDescription];

  if (v63)
  {
    v64 = [v3 bookDescription];
    [v4 setObject:v64 forKeyedSubscript:@"bookDescription"];
  }

  v65 = [v3 comments];

  if (v65)
  {
    v66 = [v3 comments];
    [v4 setObject:v66 forKeyedSubscript:@"comments"];
  }

  v67 = [v3 kind];

  if (v67)
  {
    v68 = [v3 kind];
    [v4 setObject:v68 forKeyedSubscript:@"kind"];
  }

  v69 = [v3 year];

  if (v69)
  {
    v70 = [v3 year];
    [v4 setObject:v70 forKeyedSubscript:@"year"];
  }

  v71 = [v3 grouping];

  if (v71)
  {
    v72 = [v3 grouping];
    [v4 setObject:v72 forKeyedSubscript:@"grouping"];
  }

  v73 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 computedRating]);
  [v4 setObject:v73 forKeyedSubscript:@"computedRating"];

  v74 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 metadataMigrationVersion]);
  [v4 setObject:v74 forKeyedSubscript:@"metadataMigrationVersion"];

  if (objc_opt_respondsToSelector())
  {
    v75 = [v3 assetIsHidden];

    if (v75)
    {
      v76 = [v3 assetIsHidden];
      [v4 setObject:v76 forKeyedSubscript:@"assetIsHidden"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v77 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 storeFrontID]);
    [v4 setObject:v77 forKeyedSubscript:@"storeFrontID"];
  }

  if (objc_opt_respondsToSelector())
  {
    v78 = [v3 coverAspectRatio];

    if (v78)
    {
      v79 = [v3 coverAspectRatio];
      [v4 setObject:v79 forKeyedSubscript:@"coverAspectRatio"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v80 = [v3 seriesIsHidden];

    if (v80)
    {
      v81 = [v3 seriesIsHidden];
      [v4 setObject:v81 forKeyedSubscript:@"seriesIsHidden"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v82 = [v3 seriesIsCloudOnly];

    if (v82)
    {
      v83 = [v3 seriesIsCloudOnly];
      [v4 setObject:v83 forKeyedSubscript:@"seriesIsCloudOnly"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v84 = [v3 seriesIsOrdered];

    if (v84)
    {
      v85 = [v3 seriesIsOrdered];
      [v4 setObject:v85 forKeyedSubscript:@"seriesIsOrdered"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v86 = [v3 sequenceDisplayName];

    if (v86)
    {
      v87 = [v3 sequenceDisplayName];
      [v4 setObject:v87 forKeyedSubscript:@"sequenceDisplayName"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v88 = [v3 sequenceNumber];

    if (v88)
    {
      v89 = [v3 sequenceNumber];
      [v4 setObject:v89 forKeyedSubscript:@"sequenceNumber"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v90 = [v3 seriesID];

    if (v90)
    {
      v91 = [v3 seriesID];
      [v4 setObject:v91 forKeyedSubscript:@"seriesID"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v92 = [v3 isStoreAudiobook];

    if (v92)
    {
      v93 = [v3 isStoreAudiobook];
      [v4 setObject:v93 forKeyedSubscript:@"isStoreAudiobook"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v94 = [v3 mappedAssetID];

    if (v94)
    {
      v95 = [v3 mappedAssetID];
      [v4 setObject:v95 forKeyedSubscript:@"mappedAssetID"];
    }
  }

  v96 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v3 mappedAssetContentType]);
  [v4 setObject:v96 forKeyedSubscript:@"mappedAssetContentType"];

  if (objc_opt_respondsToSelector())
  {
    v97 = [v3 hasRACSupport];

    if (v97)
    {
      v98 = [v3 hasRACSupport];
      [v4 setObject:v98 forKeyedSubscript:@"hasRACSupport"];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v99 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isSupplementalContent]);
    [v4 setObject:v99 forKeyedSubscript:@"isSupplementalContent"];
  }

  if (objc_opt_respondsToSelector())
  {
    v100 = [v3 storePlaylistID];

    if (v100)
    {
      v101 = [v3 storePlaylistID];
      [v4 setObject:v101 forKeyedSubscript:@"storePlaylistID"];
    }
  }

  v102 = v4;

  return v4;
}

+ (id)descriptionForAsset:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSMutableString stringWithFormat:@"\n%@: <%p>", v5, v3];

  v7 = [v3 assetID];
  v8 = v7;
  if (v7)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"assetID", v7];
  }

  v9 = [v3 title];
  v10 = v9;
  if (v9)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"title", v9];
  }

  v11 = [v3 sortTitle];
  v12 = v11;
  if (v11)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"sortTitle", v11];
  }

  v13 = [v3 author];
  v14 = v13;
  if (v13)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"author", v13];
  }

  v15 = [v3 sortAuthor];
  v16 = v15;
  if (v15)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"sortAuthor", v15];
  }

  v17 = [v3 storeID];
  v18 = v17;
  if (v17)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"storeID", v17];
  }

  v19 = [v3 temporaryAssetID];
  v20 = v19;
  if (v19)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"temporaryAssetID", v19];
  }

  v21 = [v3 accountID];
  v22 = v21;
  if (v21)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"accountID", v21];
  }

  if ([v3 contentType])
  {
    v23 = BKStringFromAssetContentType([v3 contentType]);
    [v6 appendFormat:@"\n\tcontentType :  %@", v23];
  }

  if ([v3 state])
  {
    v24 = BKStringFromAssetState([v3 state]);
    [v6 appendFormat:@"\n\tstate :  %@", v24];
  }

  v25 = [v3 genre];
  v26 = v25;
  if (v25)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"genre", v25];
  }

  v27 = [v3 dataSourceIdentifier];
  v28 = v27;
  if (v27)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"dataSourceIdentifier", v27];
  }

  v29 = [v3 bookDescription];
  v30 = v29;
  if (v29)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"bookDescription", v29];
  }

  v31 = [v3 comments];
  v32 = v31;
  if (v31)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"comments", v31];
  }

  v33 = [v3 kind];
  v34 = v33;
  if (v33)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"kind", v33];
  }

  v35 = [v3 isExplicit];
  v36 = v35;
  if (v35)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"isExplicit", v35];
  }

  v37 = [v3 year];
  v38 = v37;
  if (v37)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"year", v37];
  }

  v39 = [v3 versionNumber];
  v40 = v39;
  if (v39)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"versionNumber", v39];
  }

  v41 = [v3 versionNumberHumanReadable];
  v42 = v41;
  if (v41)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"versionNumberHumanReadable", v41];
  }

  v43 = [v3 dataSourceInsertionDate];
  v44 = v43;
  if (v43)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"dataSourceInsertionDate", v43];
  }

  v45 = [v3 releaseDate];
  v46 = v45;
  if (v45)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"releaseDate", v45];
  }

  v47 = [v3 purchaseDate];
  v48 = v47;
  if (v47)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"purchaseDate", v47];
  }

  v49 = [v3 expectedDate];
  v50 = v49;
  if (v49)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"expectedDate", v49];
  }

  v51 = [v3 lastOpenDate];
  v52 = v51;
  if (v51)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"lastOpenDate", v51];
  }

  v53 = [v3 updateDate];
  v54 = v53;
  if (v53)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"updateDate", v53];
  }

  v55 = [v3 generation];
  sub_9D99C(v55, v6, v55, @"generation");
  v56 = [v3 fileSize];
  sub_9D99C(v56, v6, v56, @"fileSize");
  v57 = [v3 pageCount];
  sub_9D99C(v57, v6, v57, @"pageCount");
  v58 = [v3 rating];
  sub_9D99C(v58, v6, v58, @"rating");
  if ([v3 isSample])
  {
    [v6 appendFormat:@"\n\t%@ :  YES", @"sample"];
  }

  if ([v3 isProof])
  {
    [v6 appendFormat:@"\n\t%@ :  YES", @"proof"];
  }

  if ([v3 isCompressed])
  {
    [v6 appendFormat:@"\n\t%@ :  YES", @"compressed"];
  }

  if ([v3 isLocked])
  {
    [v6 appendFormat:@"\n\t%@ :  YES", @"locked"];
  }

  if ([v3 isEphemeral])
  {
    [v6 appendFormat:@"\n\t%@ :  YES", @"ephemeral"];
  }

  if (objc_opt_respondsToSelector())
  {
    v59 = [v3 storeFrontID];
    sub_9D99C(v59, v6, v59, @"storeFrontID");
  }

  if (objc_opt_respondsToSelector())
  {
    v60 = [v3 assetIsHidden];
    v61 = v60;
    if (v60)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"assetIsHidden", v60];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v62 = [v3 coverAspectRatio];
    v63 = v62;
    if (v62)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"coverAspectRatio", v62];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v64 = [v3 seriesIsHidden];
    v65 = v64;
    if (v64)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"seriesIsHidden", v64];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v66 = [v3 seriesIsCloudOnly];
    v67 = v66;
    if (v66)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"seriesIsCloudOnly", v66];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v68 = [v3 seriesIsOrdered];
    v69 = v68;
    if (v68)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"seriesIsOrdered", v68];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v70 = [v3 seriesSortKey];
    v71 = v70;
    if (v70)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"seriesSortKey", v70];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v72 = [v3 sequenceDisplayName];
    v73 = v72;
    if (v72)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"sequenceDisplayName", v72];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v74 = [v3 seriesID];
    v75 = v74;
    if (v74)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"seriesID", v74];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v76 = [v3 permlink];
    v77 = v76;
    if (v76)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"permlink", v76];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v78 = [v3 isStoreAudiobook];
    v79 = v78;
    if (v78)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"isStoreAudiobook", v78];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isSupplementalContent])
  {
    [v6 appendFormat:@"\n\t%@ :  YES", @"supplementalContent"];
  }

  if (objc_opt_respondsToSelector())
  {
    v80 = [v3 storePlaylistID];
    v81 = v80;
    if (v80)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"storePlaylistID", v80];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v82 = [v3 hasRACSupport];
    v83 = v82;
    if (v82)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"hasRACSupport", v82];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v84 = [v3 genres];
    v85 = v84;
    if (v84)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"genres", v84];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v86 = [v3 authorCount];
    v87 = v86;
    if (v86)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"authorCount", v86];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v88 = [v3 authorNames];
    v89 = v88;
    if (v88)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"authorNames", v88];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v90 = [v3 hasTooManyAuthors];
    v91 = v90;
    if (v90)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"hasTooManyAuthors", v90];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v92 = [v3 narratorCount];
    v93 = v92;
    if (v92)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"narratorCount", v92];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v94 = [v3 narratorNames];
    v95 = v94;
    if (v94)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"narratorNames", v94];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v96 = [v3 hasTooManyNarrators];
    v97 = v96;
    if (v96)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"hasTooManyNarrators", v96];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v98 = [v3 mappedAssetID];
    v99 = v98;
    if (v98)
    {
      [v6 appendFormat:@"\n\t%@ :  %@", @"mappedAssetID", v98];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v100 = BKStringFromAssetContentType([v3 mappedAssetContentType]);
    [v6 appendFormat:@"\n\tmappedAssetContentType :  %@", v100];
  }

  v101 = [v3 url];
  v102 = v101;
  if (v101)
  {
    [v6 appendFormat:@"\n\t%@ :  %@", @"url", v101];
  }

  v103 = [v3 url];
  v104 = [v103 isFileURL];

  if (v104)
  {
    v105 = [v3 url];
    v106 = [v3 url];
    v107 = +[BCUbiquityMetadataHelper ubiquityMetadataForURL:options:needsCoordination:](BCUbiquityMetadataHelper, "ubiquityMetadataForURL:options:needsCoordination:", v105, -262145, [v106 bc_isUbiquitous]);

    if ([v107 count])
    {
      [v6 appendFormat:@"\n\txattr metadata : "];
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v108 = [v107 allKeys];
      v109 = [v108 countByEnumeratingWithState:&v116 objects:v120 count:16];
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
              objc_enumerationMutation(v108);
            }

            v113 = *(*(&v116 + 1) + 8 * i);
            v114 = [v107 objectForKey:v113];
            [v6 appendFormat:@"\n\t\t\t%@: %@", v113, v114];
          }

          v110 = [v108 countByEnumeratingWithState:&v116 objects:v120 count:16];
        }

        while (v110);
      }
    }
  }

  [v6 appendFormat:@"\n"];

  return v6;
}

@end