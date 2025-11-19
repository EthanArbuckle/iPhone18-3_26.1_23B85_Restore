@interface AEUserPublishingProductProfile
+ (BOOL)_isContentRatingExplicitForInfo:(id)a3;
- (AEUserPublishingProductProfile)initWithProfileDictionary:(id)a3;
- (BOOL)hasSupplementalContent;
- (BOOL)isAudiobook;
- (BOOL)isExplicit;
- (BOOL)isPreorder;
- (BOOL)isSeries;
- (BOOL)isStoreAudiobook;
- (BOOL)stringNeedsHTMLParsing:(id)a3;
- (NSArray)children;
- (NSArray)childrenIDs;
- (NSArray)series_genres;
- (NSDate)expectedDate;
- (NSDate)releaseDate;
- (NSDictionary)ebookInfo;
- (NSDictionary)offer;
- (NSDictionary)seriesInfo;
- (NSNumber)series_isAudiobook;
- (NSNumber)series_isExplicit;
- (NSNumber)series_position;
- (NSString)adamId;
- (NSString)author;
- (NSString)buyParameters;
- (NSString)genre;
- (NSString)kind;
- (NSString)priceString;
- (NSString)seriesID;
- (NSString)series_displayLabel;
- (NSString)series_genre;
- (NSString)series_seriesId;
- (NSString)series_seriesTitle;
- (NSString)series_title;
- (NSString)standardDescription;
- (NSString)standardNotes;
- (NSString)title;
- (NSString)trimmedStandardDescription;
- (NSString)trimmedStandardNotes;
- (NSURL)audiobookSampleURL;
- (NSURL)bookSampleDownloadURL;
- (NSURL)productShortURL;
- (NSURL)productURL;
- (double)averageRating;
- (id)actionTextWithType:(int64_t)a3;
- (id)artworkURLTemplateAspect:(double *)a3;
- (id)objectForKey:(id)a3;
- (id)urlForCoverImageOfSize:(CGSize)a3 aspect:(double *)a4;
- (int64_t)fileSize;
- (int64_t)offerType;
- (unint64_t)ratingCount;
@end

@implementation AEUserPublishingProductProfile

- (NSArray)series_genres
{
  v2 = self;
  v3 = [(AEUserPublishingProductProfile *)self children];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AEUserPublishingProductProfile *)v2 children];
    v6 = [v5 firstObject];
    v7 = [v6 series_genres];

    v8 = +[NSMutableOrderedSet orderedSet];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v7;
    v27 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v27)
    {
      v26 = *v33;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v11 = v2;
          v12 = [(AEUserPublishingProductProfile *)v2 children];
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v29;
LABEL_9:
            v16 = 0;
            while (1)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v28 + 1) + 8 * v16) series_genres];
              v18 = [v17 containsObject:v10];

              if (!v18)
              {
                break;
              }

              if (v14 == ++v16)
              {
                v14 = [v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
                if (v14)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }

          [v8 addObject:v10];
          v2 = v11;
        }

        v27 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v27);
    }

    if ([v8 count])
    {
      v19 = [v8 array];
    }

    else
    {
      v22 = IMCommonCoreBundle();
      v23 = [v22 localizedStringForKey:@"Multiple" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
      v36 = v23;
      v19 = [NSArray arrayWithObjects:&v36 count:1];
    }
  }

  else
  {
    objc_opt_class();
    v20 = [(AEUserPublishingProductProfile *)v2 objectForKey:@"genres"];
    v21 = BUDynamicCast();

    v19 = sub_12B4C(v21);
  }

  return v19;
}

- (NSString)series_genre
{
  v2 = [(AEUserPublishingProductProfile *)self series_genres];
  v3 = [v2 firstObject];

  return v3;
}

- (NSString)series_title
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"nameRaw"];
  v4 = BUDynamicCast();

  return v4;
}

- (NSNumber)series_isExplicit
{
  v2 = [(AEUserPublishingProductProfile *)self isExplicit];

  return [NSNumber numberWithBool:v2];
}

- (NSNumber)series_isAudiobook
{
  v3 = [NSNumber numberWithBool:[(AEUserPublishingProductProfile *)self isAudiobook]];
  [(AEUserPublishingProductProfile *)self series_genres];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:{@"Audiobooks", v10}])
        {

          v3 = &__kCFBooleanTrue;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSString)series_seriesId
{
  if ([(AEUserPublishingProductProfile *)self series_isContainer])
  {
    [(AEUserPublishingProductProfile *)self series_adamId];
  }

  else
  {
    [(AEUserPublishingProductProfile *)self seriesID];
  }
  v3 = ;

  return v3;
}

- (NSString)series_seriesTitle
{
  if ([(AEUserPublishingProductProfile *)self series_isContainer])
  {
    v3 = [(AEUserPublishingProductProfile *)self series_title];
  }

  else
  {
    objc_opt_class();
    v4 = [(AEUserPublishingProductProfile *)self series_seriesInfo];
    v5 = [v4 objectForKeyedSubscript:@"seriesName"];
    v3 = BUDynamicCast();
  }

  return v3;
}

- (NSNumber)series_position
{
  v2 = [(AEUserPublishingProductProfile *)self series_seriesInfo];
  v3 = v2;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v4 = [v2 objectForKeyedSubscript:@"sequenceNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integerValue]);
  }

  v6 = v5;
LABEL_9:

LABEL_10:

  return v6;
}

- (NSString)series_displayLabel
{
  v3 = [(AEUserPublishingProductProfile *)self series_seriesInfo];
  if (v3)
  {
    objc_opt_class();
    v4 = [v3 objectForKeyedSubscript:@"sequenceDisplayLabel"];
    v5 = BUDynamicCast();

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [(AEUserPublishingProductProfile *)self series_position];

      if (v7)
      {
        v8 = [(AEUserPublishingProductProfile *)self series_position];
        v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v8 longValue]);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AEUserPublishingProductProfile)initWithProfileDictionary:(id)a3
{
  v5 = a3;
  v6 = [(AEUserPublishingProductProfile *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileDictionary, a3);
  }

  return v7;
}

- (id)artworkURLTemplateAspect:(double *)a3
{
  objc_opt_class();
  v5 = [(AEUserPublishingProductProfile *)self profileDictionary];
  v6 = [v5 objectForKeyedSubscript:@"artwork"];
  v7 = BUDynamicCast();

  if (v7)
  {
    objc_opt_class();
    v8 = [v7 objectForKeyedSubscript:@"url"];
    v9 = BUDynamicCast();

    if (a3)
    {
      v10 = [v7 objectForKeyedSubscript:@"width"];
      [v10 floatValue];
      v12 = v11;

      v13 = [v7 objectForKeyedSubscript:@"height"];
      [v13 floatValue];
      v15 = v14;

      v16 = 1.0;
      if (v12 > 0.0)
      {
        v16 = v15 / v12;
      }

      *a3 = v16;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)urlForCoverImageOfSize:(CGSize)a3 aspect:(double *)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(AEUserPublishingProductProfile *)self profileDictionary];
  v8 = [v7 objectForKeyedSubscript:@"artwork"];

  v67.origin.x = CGPointZero.x;
  v67.origin.y = CGPointZero.y;
  v67.size.width = width;
  v67.size.height = height;
  IsEmpty = CGRectIsEmpty(v67);
  objc_opt_class();
  v10 = BUDynamicCast();
  v11 = v10;
  if (v10)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = v10;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v63;
      v17 = 0.0;
      v18 = 0.0;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v63 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v62 + 1) + 8 * v19);
        v21 = [v20 objectForKeyedSubscript:@"width"];
        [v21 floatValue];
        v23 = v22;

        v24 = [v20 objectForKeyedSubscript:@"height"];
        [v24 floatValue];
        v26 = v25;

        if (v17 <= v23 || v18 <= v26)
        {
          v28 = v20;

          v17 = v23;
          v18 = v26;
          v15 = v28;
        }

        if (!IsEmpty && (width <= v23 || height <= v26))
        {
          break;
        }

        if (v14 == ++v19)
        {
          v14 = [v12 countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    objc_opt_class();
    v41 = [v15 objectForKeyedSubscript:@"url"];
    v40 = BUDynamicCast();

    v11 = v61;
  }

  else
  {
    objc_opt_class();
    v30 = BUDynamicCast();
    v15 = v30;
    if (v30 && ((v31 = v30, [v31 objectForKeyedSubscript:@"width"], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "floatValue"), v34 = v33, v35 = v33, v32, objc_msgSend(v31, "objectForKeyedSubscript:", @"height"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "floatValue"), v38 = v37, v36, width < v35) ? (v39 = height < v38) : (v39 = 0), v39))
    {
      objc_opt_class();
      v42 = [v31 objectForKeyedSubscript:@"url"];
      v43 = BUDynamicCast();
      v44 = [v43 mutableCopy];

      v40 = 0;
      if ([v44 length] && v34 > 0.0)
      {
        CGSizeScaledToFillInSize();
        v46 = v45;
        *&v47 = v47;
        v48 = [NSString stringWithFormat:@"%d", llroundf(*&v47)];
        [v44 replaceOccurrencesOfString:@"{w}" withString:v48 options:2 range:{0, objc_msgSend(v44, "length")}];

        v49 = v46;
        v50 = [NSString stringWithFormat:@"%d", llroundf(v49)];
        [v44 replaceOccurrencesOfString:@"{h}" withString:v50 options:2 range:{0, objc_msgSend(v44, "length")}];

        [v44 replaceOccurrencesOfString:@"{f}" withString:@"jpeg" options:2 range:{0, objc_msgSend(v44, "length")}];
        v40 = [v44 copy];
      }
    }

    else
    {
      v40 = 0;
    }
  }

  if ([v40 length])
  {
    v51 = [[NSURL alloc] initWithString:v40];
    if (!a4)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v51 = 0;
    if (!a4)
    {
      goto LABEL_41;
    }
  }

  v52 = [v15 objectForKeyedSubscript:@"width"];
  [v52 floatValue];
  v54 = v53;

  v55 = [v15 objectForKeyedSubscript:@"height"];
  [v55 floatValue];
  v57 = v56;

  v58 = 1.0;
  if (v54 > 0.0)
  {
    v58 = v57 / v54;
  }

  *a4 = v58;
LABEL_41:
  v59 = v51;

  return v51;
}

+ (BOOL)_isContentRatingExplicitForInfo:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"contentRatingsBySystem"];

  v5 = BUDynamicCast();

  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:@"ebooksApple"];
  if (v6)
  {
    v7 = BUDynamicCast();
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:@"riaa"];
    v7 = BUDynamicCast();
  }

  objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"name"];
  v10 = BUDynamicCast();

  LOBYTE(v9) = [v10 isEqualToString:@"Explicit"];
  return v9;
}

- (BOOL)isExplicit
{
  v3 = objc_opt_class();
  v4 = [(AEUserPublishingProductProfile *)self profileDictionary];
  LOBYTE(v3) = [v3 _isContentRatingExplicitForInfo:v4];

  if (v3)
  {
    return 1;
  }

  if (![(AEUserPublishingProductProfile *)self isSeries])
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  objc_opt_class();
  v6 = [(AEUserPublishingProductProfile *)self profileDictionary];
  v7 = [v6 objectForKeyedSubscript:@"children"];
  v8 = BUDynamicCast();
  v9 = [v8 objectEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = objc_opt_class();
        objc_opt_class();
        v15 = BUDynamicCast();
        LODWORD(v14) = [v14 _isContentRatingExplicitForInfo:v15];

        if (!v14)
        {
          v5 = 0;
          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v5 = 1;
LABEL_15:

  return v5;
}

- (NSDictionary)offer
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"offers"];
  v4 = BUDynamicCast();

  if ([v4 count])
  {
    objc_opt_class();
    v5 = [v4 lastObject];
    v6 = BUDynamicCast();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)buyParameters
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self offer];
  v4 = [v3 objectForKeyedSubscript:@"buyParams"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)priceString
{
  v2 = [(AEUserPublishingProductProfile *)self offer];
  if (v2)
  {
    objc_opt_class();
    v3 = [v2 objectForKeyedSubscript:@"price"];
    v4 = BUDynamicCast();

    if ([v4 isEqualToNumber:&off_2E5888])
    {
      v5 = 0;
    }

    else
    {
      objc_opt_class();
      v6 = [v2 objectForKeyedSubscript:@"priceFormatted"];
      v5 = BUDynamicCast();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)fileSize
{
  v2 = [(AEUserPublishingProductProfile *)self offer];
  if (v2)
  {
    objc_opt_class();
    v3 = [v2 objectForKeyedSubscript:@"assets"];
    v4 = BUDynamicCast();

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:@"size"];
          objc_opt_class();
          v11 = BUDynamicCast();
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            objc_opt_class();
            v14 = BUDynamicCast();
            v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 integerValue]);
          }

          v7 += [v13 integerValue];
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
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

- (id)actionTextWithType:(int64_t)a3
{
  if ([(AEUserPublishingProductProfile *)self isPreorder])
  {
    if (a3 < 3)
    {
      v5 = off_2C9550;
LABEL_11:
      v10 = v5[a3];
      v11 = IMCommonCoreBundle();
      v8 = [v11 localizedStringForKey:v10 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v6 = [(AEUserPublishingProductProfile *)self priceString];
  v7 = [v6 length];

  if (v7)
  {
    if (a3 < 3)
    {
      v5 = off_2C9568;
      goto LABEL_11;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_12;
  }

  v9 = [(AEUserPublishingProductProfile *)self offer];

  v8 = 0;
  if (v9 && a3 <= 2)
  {
    v5 = off_2C9580;
    goto LABEL_11;
  }

LABEL_12:

  return v8;
}

- (int64_t)offerType
{
  v3 = [(AEUserPublishingProductProfile *)self offer];

  if (!v3)
  {
    return 0;
  }

  v4 = [(AEUserPublishingProductProfile *)self offer];
  v5 = [v4 objectForKeyedSubscript:@"type"];
  v6 = [v5 isEqualToString:@"get"];

  if (v6)
  {
    return 2;
  }

  v8 = [(AEUserPublishingProductProfile *)self offer];
  v9 = [v8 objectForKeyedSubscript:@"type"];
  v10 = [v9 isEqualToString:@"buy"];

  if (v10)
  {
    return 1;
  }

  v11 = [(AEUserPublishingProductProfile *)self offer];
  v12 = [v11 objectForKeyedSubscript:@"type"];
  v13 = [v12 isEqualToString:@"preorder"];

  if (v13)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPreorder
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self offer];
  v4 = [v3 objectForKeyedSubscript:@"type"];
  v5 = BUDynamicCast();

  LOBYTE(v3) = [v5 isEqualToString:@"preorder"];
  return v3;
}

- (NSDate)expectedDate
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self offer];
  v4 = [v3 objectForKeyedSubscript:@"expectedReleaseDate"];
  v5 = BUDynamicCast();

  if ([v5 length])
  {
    v6 = objc_opt_new();
    [v6 setFormatOptions:275];
    v7 = [v6 dateFromString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDate)releaseDate
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"releaseDate"];
  v4 = BUDynamicCast();

  if ([v4 length])
  {
    v5 = objc_opt_new();
    [v5 setFormatOptions:275];
    v6 = [v5 dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(AEUserPublishingProductProfile *)self profileDictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (NSString)adamId
{
  v2 = [(AEUserPublishingProductProfile *)self objectForKey:@"id"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 stringValue];

    v2 = v3;
  }

  objc_opt_class();
  v4 = BUDynamicCast();

  return v4;
}

- (NSString)author
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"artistName"];
  v4 = BUDynamicCast();

  return v4;
}

- (NSString)title
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"name"];
  v4 = BUDynamicCast();

  return v4;
}

- (NSString)genre
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"genreNames"];
  v4 = BUDynamicCast();

  v5 = [v4 firstObject];

  return v5;
}

- (NSString)standardDescription
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"description"];
  v4 = BUDynamicCast();

  objc_opt_class();
  v5 = [v4 objectForKey:@"standard"];
  v6 = BUDynamicCast();

  return v6;
}

- (NSString)trimmedStandardDescription
{
  trimmedStandardDescription = self->_trimmedStandardDescription;
  if (!trimmedStandardDescription)
  {
    v4 = [(AEUserPublishingProductProfile *)self standardDescription];
    if (v4 && [(AEUserPublishingProductProfile *)self stringNeedsHTMLParsing:v4])
    {
      v5 = [v4 im_stringByStrippingHTML];
    }

    else
    {
      v5 = v4;
    }

    v6 = self->_trimmedStandardDescription;
    self->_trimmedStandardDescription = v5;

    trimmedStandardDescription = self->_trimmedStandardDescription;
  }

  return trimmedStandardDescription;
}

- (NSString)trimmedStandardNotes
{
  trimmedStandardNotes = self->_trimmedStandardNotes;
  if (!trimmedStandardNotes)
  {
    v4 = [(AEUserPublishingProductProfile *)self standardNotes];
    if (v4 && [(AEUserPublishingProductProfile *)self stringNeedsHTMLParsing:v4])
    {
      v5 = [v4 im_stringByStrippingHTML];
    }

    else
    {
      v5 = v4;
    }

    v6 = self->_trimmedStandardNotes;
    self->_trimmedStandardNotes = v5;

    trimmedStandardNotes = self->_trimmedStandardNotes;
  }

  return trimmedStandardNotes;
}

- (NSString)standardNotes
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"itunesNotes"];
  v4 = BUDynamicCast();

  objc_opt_class();
  v5 = [v4 objectForKey:@"standard"];
  v6 = BUDynamicCast();

  return v6;
}

- (NSDictionary)ebookInfo
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"ebookInfo"];
  v4 = BUDynamicCast();

  return v4;
}

- (double)averageRating
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"userRating"];
  v4 = BUDynamicCast();

  objc_opt_class();
  v5 = [v4 objectForKey:@"value"];
  v6 = BUDynamicCast();
  [v6 floatValue];
  v8 = v7 / 5.0;

  return v8;
}

- (unint64_t)ratingCount
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"userRating"];
  v4 = BUDynamicCast();

  objc_opt_class();
  v5 = [v4 objectForKey:@"ratingCount"];
  v6 = BUDynamicCast();
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (NSURL)productURL
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"url"];
  v4 = BUDynamicCast();

  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)productShortURL
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"shortUrl"];
  v4 = BUDynamicCast();

  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)bookSampleDownloadURL
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"bookSampleDownloadUrl"];
  v4 = BUDynamicCast();

  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)audiobookSampleURL
{
  objc_opt_class();
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self offer];
  v4 = [v3 objectForKeyedSubscript:@"assets"];
  v5 = BUDynamicCast();
  v6 = [v5 lastObject];
  v7 = BUDynamicCast();

  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:@"preview"];
  v9 = BUDynamicCast();

  objc_opt_class();
  v10 = [v9 objectForKeyedSubscript:@"url"];
  v11 = BUDynamicCast();

  if ([v11 length])
  {
    v12 = [NSURL URLWithString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)kind
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"kind"];
  v4 = BUDynamicCast();

  return v4;
}

- (BOOL)isSeries
{
  v2 = [(AEUserPublishingProductProfile *)self kind];
  v3 = [v2 isEqualToString:@"epubEbookSeries"];

  return v3;
}

- (BOOL)isAudiobook
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"isAudiobook"];
  v4 = BUDynamicCast();
  if ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(AEUserPublishingProductProfile *)self objectForKey:@"audioLocale"];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [(AEUserPublishingProductProfile *)self objectForKey:@"audiobookTrackIds"];
      v5 = v7 != 0;
    }
  }

  return v5;
}

- (BOOL)isStoreAudiobook
{
  if ([(AEUserPublishingProductProfile *)self isAudiobook])
  {
    return 0;
  }

  v4 = [(AEUserPublishingProductProfile *)self ebookInfo];
  v3 = v4 == 0;

  return v3;
}

- (BOOL)hasSupplementalContent
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"hasSupplementalContent"];
  v4 = BUDynamicCast();
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)stringNeedsHTMLParsing:(id)a3
{
  v3 = qword_3421C8;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1E5CF8();
  }

  v5 = [v4 rangeOfCharacterFromSet:qword_3421C0];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (NSArray)children
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"children"];
  v4 = BUDynamicCast();

  v5 = [v4 allValues];

  return v5;
}

- (NSArray)childrenIDs
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self objectForKey:@"childrenIds"];
  v4 = BUDynamicCast();

  v5 = [v4 valueForKey:@"stringValue"];

  return v5;
}

- (NSDictionary)seriesInfo
{
  objc_opt_class();
  v3 = [(AEUserPublishingProductProfile *)self ebookInfo];
  v4 = [v3 objectForKeyedSubscript:@"seriesInfo"];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)seriesID
{
  v2 = [(AEUserPublishingProductProfile *)self seriesInfo];
  v3 = [v2 objectForKeyedSubscript:@"seriesId"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 stringValue];

    v3 = v4;
  }

  objc_opt_class();
  v5 = BUDynamicCast();

  return v5;
}

@end