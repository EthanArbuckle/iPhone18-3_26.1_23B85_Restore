@interface NSString
+ (id)_maps_ridesharingETA:(id)a3 partySize:(id)a4;
+ (id)_maps_ridesharingPairDetailString:(id)a3 withPartySize:(id)a4;
+ (id)_maps_ridesharingPartySizeString:(id)a3;
+ (id)_maps_ridesharingScheduledPickupWindowStart:(id)a3 partySize:(id)a4;
+ (id)distanceStringFromLocation:(id)a3 toCoordinate:(CLLocationCoordinate2D)a4 withMapItem:(id)a5 showsDistance:(BOOL *)a6 onlyUseThreshold:(BOOL)a7 maximumDistance:(id)a8 useShortThreshold:(BOOL)a9;
+ (id)distanceStringFromLocation:(id)a3 toMapItem:(id)a4 showsDistance:(BOOL *)a5;
- (BOOL)_maps_containsExcessiveHeightCharacters;
- (BOOL)_maps_isEmailAddress;
- (BOOL)_maps_isEqualToSearchStringForCurrentLocationSearchResult;
- (BOOL)maps_isSubstringStartingAtRangeEscaped:(_NSRange)a3;
- (CGSize)_maps_sizeWithFont:(id)a3;
- (CGSize)_maps_sizeWithFont:(id)a3 constrainedToSize:(CGSize)a4;
- (CGSize)_maps_sizeWithFont:(id)a3 constrainedToSize:(CGSize)a4 options:(int64_t)a5;
- (NSString)_maps_sha1Hash;
- (NSString)_maps_stringByTrimmingLeadingWhitespace;
- (NSString)sha1Hash;
- (id)_maps_dataFromDataDescription;
- (id)_maps_debugPanelShortcutRepresentation;
- (id)_maps_prefixMatchesForSearchString:(id)a3;
- (id)_rap_substringWithNumberOfCharacters:(unint64_t)a3;
- (id)stringByRemovingPunctuation;
- (int64_t)fileCreationDateDescendingSort:(id)a3;
- (unint64_t)_rap_charactersCount;
- (void)_maps_drawAtPoint:(CGPoint)a3 withFont:(id)a4;
- (void)_maps_drawInRect:(CGRect)a3 withFont:(id)a4;
@end

@implementation NSString

- (NSString)_maps_stringByTrimmingLeadingWhitespace
{
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  if ([(NSString *)self length])
  {
    v4 = 0;
    while ([v3 characterIsMember:{-[NSString characterAtIndex:](self, "characterAtIndex:", v4)}])
    {
      if (++v4 >= [(NSString *)self length])
      {
        goto LABEL_7;
      }
    }

    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    v5 = [(NSString *)self substringFromIndex:v4];
  }

  else
  {
LABEL_8:
    v5 = self;
  }

  v6 = v5;

  return v6;
}

- (BOOL)_maps_containsExcessiveHeightCharacters
{
  if (![(NSString *)self length])
  {
    return 0;
  }

  v3 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  v4 = [(NSString *)self rangeOfCharacterFromSet:v3]!= 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)_maps_drawInRect:(CGRect)a3 withFont:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    v11 = NSFontAttributeName;
    v12 = a4;
    v9 = a4;
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v10 = 0;
  }

  [(NSString *)self drawInRect:v10 withAttributes:x, y, width, height];
}

- (void)_maps_drawAtPoint:(CGPoint)a3 withFont:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    v9 = NSFontAttributeName;
    v10 = a4;
    v7 = a4;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v8 = 0;
  }

  [(NSString *)self drawAtPoint:v8 withAttributes:x, y];
}

- (CGSize)_maps_sizeWithFont:(id)a3 constrainedToSize:(CGSize)a4 options:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  if (a3)
  {
    v17 = NSFontAttributeName;
    v18 = a3;
    v9 = a3;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

  else
  {
    v10 = 0;
  }

  [(NSString *)self boundingRectWithSize:a5 options:v10 attributes:0 context:width, height];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)_maps_sizeWithFont:(id)a3 constrainedToSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if (a3)
  {
    v15 = NSFontAttributeName;
    v16 = a3;
    v7 = a3;
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  else
  {
    v8 = 0;
  }

  [(NSString *)self boundingRectWithSize:0 options:v8 attributes:0 context:width, height];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)_maps_sizeWithFont:(id)a3
{
  if (a3)
  {
    v12 = NSFontAttributeName;
    v13 = a3;
    v4 = a3;
    v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v5 = 0;
  }

  [(NSString *)self sizeWithAttributes:v5];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (id)_maps_ridesharingPartySizeString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[ridesharing] max party size" value:@"localized string not found" table:0];

    v6 = [v3 unsignedLongLongValue];
    v7 = [NSString localizedStringWithFormat:v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_maps_ridesharingPairDetailString:(id)a3 withPartySize:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSString string];
  v8 = [NSString _maps_ridesharingPartySizeString:v6];

  if (v5 && v8)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"detail • party size [ridesharing]" value:@"localized string not found" table:0];
    v11 = [NSString localizedStringWithFormat:v10, v5, v8];

    v7 = v9;
  }

  else
  {
    if (v5)
    {
      v12 = v5;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v12 = v8;
    }

    v11 = v12;
  }

  v7 = v11;
LABEL_10:

  return v7;
}

+ (id)_maps_ridesharingScheduledPickupWindowStart:(id)a3 partySize:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    if (qword_10195CDF8 != -1)
    {
      dispatch_once(&qword_10195CDF8, &stru_101625408);
    }

    [qword_10195CDF0 setTimeStyle:1];
    v7 = +[NSLocale autoupdatingCurrentLocale];
    [qword_10195CDF0 setLocale:v7];

    v8 = [v5 timeZone];
    [qword_10195CDF0 setTimeZone:v8];

    v9 = +[NSCalendar autoupdatingCurrentCalendar];
    v10 = [v9 dateFromComponents:v5];

    v11 = [qword_10195CDF0 stringFromDate:v10];
    v12 = [v5 timeZone];
    v13 = [v12 abbreviation];

    v14 = +[NSCalendar autoupdatingCurrentCalendar];
    v15 = [v14 timeZone];
    v16 = [v5 timeZone];
    v17 = [v15 isEqualToTimeZone:v16];

    if (v17)
    {

      v13 = 0;
    }

    v32 = 0;
    v18 = +[NSCalendar autoupdatingCurrentCalendar];
    v19 = [v5 timeZone];
    v20 = [v18 _navigation_transitRelativeDateStringForDate:v10 context:4 inTimeZone:v19 outUsedFormat:&v32];

    v21 = [v5 hour];
    if (v13)
    {
      if (v21 == 1 || [v5 hour] == 13)
      {
        v22 = +[NSBundle mainBundle];
        v23 = v22;
        v24 = @"Pickup date and time with TimeZone [Ridesharing] at 1";
LABEL_14:
        v26 = [v22 localizedStringForKey:v24 value:@"localized string not found" table:0];

        v17 = [NSString localizedStringWithFormat:v26, v20, v11];
        v27 = 0;
        v25 = 0;
        goto LABEL_18;
      }

      v28 = +[NSBundle mainBundle];
      v29 = v28;
      v30 = @"Pickup date and time with timezone [Ridesharing] not at 1";
    }

    else
    {
      if (v21 == 1 || [v5 hour] == 13)
      {
        v22 = +[NSBundle mainBundle];
        v23 = v22;
        v24 = @"Pickup date and time [Ridesharing] at 1";
        goto LABEL_14;
      }

      v28 = +[NSBundle mainBundle];
      v29 = v28;
      v30 = @"Pickup date and time [Ridesharing] not at 1";
    }

    v26 = [v28 localizedStringForKey:v30 value:@"localized string not found" table:0];

    v25 = [NSString localizedStringWithFormat:v26, v20, v11];
    v27 = 1;
LABEL_18:

    if (!v27)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v25 = 0;
LABEL_19:
  v17 = [NSString _maps_ridesharingPairDetailString:v25 withPartySize:v6];
LABEL_20:

  return v17;
}

+ (id)_maps_ridesharingETA:(id)a3 partySize:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = +[NSString _navigation_stringWithSeconds:abbreviated:](NSString, "_navigation_stringWithSeconds:abbreviated:", 60 * [a3 unsignedIntegerValue], 1);
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"%@ wait [ridesharing]" value:@"localized string not found" table:0];
    a3 = [NSString localizedStringWithFormat:v8, v6];
  }

  v9 = [NSString _maps_ridesharingPairDetailString:a3 withPartySize:v5];

  return v9;
}

- (id)_maps_prefixMatchesForSearchString:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableArray array];
  v8 = [v4 length];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1006F716C;
  v44[3] = &unk_101627088;
  v9 = v7;
  v45 = v9;
  [v4 enumerateSubstringsInRange:0 options:v8 usingBlock:{1027, v44}];
  v10 = +[NSMutableArray array];
  v11 = [(NSString *)self length];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1006F7178;
  v42[3] = &unk_101627088;
  v12 = v10;
  v43 = v12;
  [(NSString *)self enumerateSubstringsInRange:0 options:v11 usingBlock:1027, v42];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v9;
  v33 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v33)
  {
    v31 = v5;
    v32 = *v39;
    context = v6;
    v28 = v4;
    v30 = v12;
    while (1)
    {
      v13 = 0;
LABEL_4:
      if (*v39 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v38 + 1) + 8 * v13);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = [v12 copy];
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = *v35;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * v19);
        v21 = [v20 objectAtIndexedSubscript:0];
        v22 = [v20 objectAtIndexedSubscript:1];
        v23 = [v22 rangeValue];

        if (![v21 localizedStandardRangeOfString:v14])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      v24 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", v23, [v14 length]);
      v5 = v31;
      [v31 addObject:v24];

      v12 = v30;
      [v30 removeObject:v20];

      if (++v13 != v33)
      {
        goto LABEL_4;
      }

      v6 = context;
      v4 = v28;
      v33 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (!v33)
      {
        goto LABEL_17;
      }
    }

LABEL_18:

    objc_autoreleasePoolPop(context);
    v25 = 0;
    v4 = v28;
    v5 = v31;
  }

  else
  {
LABEL_17:

    objc_autoreleasePoolPop(v6);
    v25 = v5;
  }

  return v25;
}

- (NSString)sha1Hash
{
  v2 = [(NSString *)self dataUsingEncoding:4];
  CC_SHA1([v2 bytes], objc_msgSend(v2, "length"), md);
  v3 = objc_alloc_init(NSMutableString);
  for (i = 0; i != 20; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  return v3;
}

- (id)_maps_debugPanelShortcutRepresentation
{
  v2 = [[NSData alloc] initWithBase64EncodedString:self options:0];
  v3 = [v2 _maps_debugPanelShortcutRepresentation];

  return v3;
}

- (id)_rap_substringWithNumberOfCharacters:(unint64_t)a3
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1009873A8;
  v15 = sub_1009873B8;
  v16 = 0;
  objc_initWeak(&location, self);
  v5 = [(NSString *)self length];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009873C0;
  v8[3] = &unk_1016304F8;
  v8[4] = v17;
  v9[1] = a3;
  objc_copyWeak(v9, &location);
  v8[5] = &v11;
  [(NSString *)self enumerateSubstringsInRange:0 options:v5 usingBlock:2, v8];
  v6 = v12[5];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);

  return v6;
}

- (unint64_t)_rap_charactersCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100987538;
  v4[3] = &unk_10164FDD0;
  v4[4] = &v5;
  [(NSString *)self enumerateSubstringsInRange:0 options:[(NSString *)self length] usingBlock:2, v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)_maps_dataFromDataDescription
{
  v3 = [(NSString *)self length];
  v4 = objc_opt_new();
  v5 = [NSScanner scannerWithString:self];
  if (([v5 isAtEnd] & 1) == 0)
  {
    do
    {
      v6 = [v5 scanLocation];
      v11 = 0;
      [v5 scanHexInt:&v11];
      if (v3 - v6 < 5)
      {
        if (v3 - v6 != 2)
        {
          v7 = &v6[2 - v3];
          v8 = (&v11 + v3 - 3 - v6);
          do
          {
            [v4 appendBytes:v8-- length:1];
          }

          while (!__CFADD__(v7++, 1));
        }
      }

      else
      {
        [v4 appendBytes:&v11 + 3 length:1];
        [v4 appendBytes:&v11 + 2 length:1];
        [v4 appendBytes:&v11 + 1 length:1];
        [v4 appendBytes:&v11 length:1];
      }
    }

    while (![v5 isAtEnd]);
  }

  return v4;
}

- (id)stringByRemovingPunctuation
{
  if (!qword_10195EC60)
  {
    v3 = +[NSCharacterSet punctuationCharacterSet];
    v4 = qword_10195EC60;
    qword_10195EC60 = v3;
  }

  v5 = [(NSString *)self length];
  v6 = &v13 - ((2 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(NSString *)self getCharacters:&v13];
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if (([qword_10195EC60 characterIsMember:*&v6[2 * v7]] & 1) == 0)
    {
      *&v6[2 * v8++] = *&v6[2 * v7];
    }

    v7 = v9;
  }

  while (v5 > v9++);
  if (v8)
  {
    v11 = [NSString stringWithCharacters:v6 length:v8];
  }

  else
  {
LABEL_10:
    v11 = self;
  }

  return v11;
}

- (int64_t)fileCreationDateDescendingSort:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 attributesOfItemAtPath:self error:0];
  v7 = [v6 fileModificationDate];

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 attributesOfItemAtPath:v4 error:0];
  v10 = [v9 fileModificationDate];

  if ([v7 isEqualToDate:v10])
  {
    v11 = [(NSString *)self compare:v4];
  }

  else
  {
    [v7 timeIntervalSinceDate:v10];
    if (v12 <= 0.0)
    {
      v11 = NSOrderedDescending;
    }

    else
    {
      v11 = NSOrderedAscending;
    }
  }

  return v11;
}

- (BOOL)_maps_isEmailAddress
{
  v3 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @".+@.+\\..+"];
  LOBYTE(self) = [v3 evaluateWithObject:self];

  return self;
}

+ (id)distanceStringFromLocation:(id)a3 toCoordinate:(CLLocationCoordinate2D)a4 withMapItem:(id)a5 showsDistance:(BOOL *)a6 onlyUseThreshold:(BOOL)a7 maximumDistance:(id)a8 useShortThreshold:(BOOL)a9
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v16 = a3;
  v17 = a5;
  v18 = a8;
  if (!v16)
  {
    goto LABEL_7;
  }

  v19 = 0;
  if (fabs(longitude) <= 180.0 && latitude >= -90.0 && latitude <= 90.0)
  {
    [v16 coordinate];
    GEOCalculateDistance();
    v21 = v20;
    if (v18)
    {
      [v18 doubleValue];
      if (v21 > v22)
      {
LABEL_7:
        v19 = 0;
        goto LABEL_8;
      }
    }

    v24 = [v17 _geoMapItem];
    v25 = [v24 _resultSnippetDistanceDisplayThreshold];

    if (v21 < v25 || ([v17 _geoMapItem], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "_resultSnippetLocationString"), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v19 = 0, !v27) && !a7)
    {
      if (v21 <= 50.0 && a9)
      {
        v28 = +[NSBundle mainBundle];
        v29 = [v28 localizedStringForKey:@"Less than %@" value:@"localized string not found" table:0];
        v30 = [NSString _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:50.0];
        v19 = [NSString stringWithFormat:v29, v30];
      }

      else
      {
        *a6 = 1;
        v19 = [NSString _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:v21];
      }
    }
  }

LABEL_8:

  return v19;
}

+ (id)distanceStringFromLocation:(id)a3 toMapItem:(id)a4 showsDistance:(BOOL *)a5
{
  v8 = a4;
  v9 = a3;
  [v8 _coordinate];
  v10 = [a1 distanceStringFromLocation:v9 toCoordinate:v8 withMapItem:a5 showsDistance:0 onlyUseThreshold:0 maximumDistance:1 useShortThreshold:?];

  return v10;
}

- (BOOL)_maps_isEqualToSearchStringForCurrentLocationSearchResult
{
  v3 = MKLocalizedStringForCurrentLocation();
  LOBYTE(self) = [(NSString *)self localizedCaseInsensitiveCompare:v3]== NSOrderedSame;

  return self;
}

- (BOOL)maps_isSubstringStartingAtRangeEscaped:(_NSRange)a3
{
  if (!a3.location)
  {
    return 0;
  }

  v3 = [(NSString *)self substringWithRange:a3.location - 1, 1];
  v4 = [v3 isEqualToString:@"\\""];

  return v4;
}

- (NSString)_maps_sha1Hash
{
  v2 = [(NSString *)self dataUsingEncoding:4];
  CC_SHA1([v2 bytes], objc_msgSend(v2, "length"), md);
  v3 = objc_alloc_init(NSMutableString);
  for (i = 0; i != 20; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  return v3;
}

@end