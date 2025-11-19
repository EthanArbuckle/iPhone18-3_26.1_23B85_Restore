@interface MapsSuggestionsEntry
+ (id)archivedDestinationForUniqueID:(id)a3;
+ (id)entryFromLOI:(id)a3;
+ (id)iconForSuggestionType:(int64_t)a3 suggestionAttributes:(id)a4 mapItemAttributes:(id)a5 originBundleID:(id)a6 screenScale:(double)a7 showEVChargingIcon:(BOOL)a8 showOnboardingMultipleVehiclesIcon:(BOOL)a9 inverted:(BOOL)a10 isDashboardWidget:(BOOL)a11 nightMode:(BOOL)a12 isRTL:(BOOL)a13 contact:(id)a14;
+ (id)sharedDefaults;
+ (void)removeStaleArchivedDestinations;
- (BOOL)hasVibrantBackground;
- (GEOComposedWaypoint)findMyWaypoint;
- (GEOFeatureStyleAttributes)styleAttributes;
- (MKMapItem)MKMapItem;
- (NSArray)waypoints;
- (NSString)analyticsGrouping;
- (NSString)poiTitle;
- (UIImage)icon;
- (id)notificationDetailsWithTitle:(id)a3 message:(id)a4;
- (id)sharingContacts;
- (int)engineType;
- (int)proactiveItemType;
- (int)transportType;
- (void)archiveDestination;
- (void)setIcon:(id)a3;
- (void)updateModel:(id)a3;
@end

@implementation MapsSuggestionsEntry

- (NSString)analyticsGrouping
{
  v2 = [(MapsSuggestionsEntry *)self type];
  result = @"AppConnections";
  switch(v2)
  {
    case 0uLL:
    case 6uLL:
    case 9uLL:
    case 0xAuLL:
    case 0x11uLL:
    case 0x14uLL:
      result = @"Other";
      break;
    case 1uLL:
    case 2uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x16uLL:
      result = @"UserDefined";
      break;
    case 3uLL:
    case 8uLL:
      result = @"Strong Signals";
      break;
    case 4uLL:
      result = @"FrequentLocation";
      break;
    case 5uLL:
    case 0xBuLL:
      result = @"MapsAppActions";
      break;
    case 7uLL:
    case 0x15uLL:
      result = @"UserBehavior";
      break;
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x17uLL:
      result = @"Bookings";
      break;
    case 0x18uLL:
      if (isLikelyMeetupThroughMessages())
      {
        result = @"BehaviorPrediction_Directions_Messages";
      }

      else if (isLikelyMeetupThroughFindMy())
      {
        result = @"BehaviorPrediction_Directions_FindMy";
      }

      else if (isRecentlyShared())
      {
        result = @"BehaviorPrediction_RecentlyShared";
      }

      else
      {
        result = @"Other";
      }

      break;
    case 0x19uLL:
      result = @"CurrentLocationOfInterest";
      break;
    default:
      return result;
  }

  return result;
}

- (int)proactiveItemType
{
  v2 = [(MapsSuggestionsEntry *)self type];
  if (v2 > 0x19)
  {
    return 0;
  }

  else
  {
    return dword_1012133E0[v2];
  }
}

- (id)sharingContacts
{
  v3 = [(MapsSuggestionsEntry *)self dataForKey:@"MapsSuggestionsResumeRouteRouteSharedETAData"];
  if (v3 && (+[MSPSharedTripService sharedInstance](MSPSharedTripService, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 contactsFromArchivedTripSharingState:v3], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = v5;
    v7 = v6;
  }

  else
  {
    v8 = [(MapsSuggestionsEntry *)self arrayForKey:@"MapsSuggestionSharedETAHandlesFromFavorite"];
    if (v8)
    {
      v6 = [MSPSharedTripContact contactsFromHandles:v8];
    }

    else
    {
      v6 = 0;
    }

    v9 = &__NSArray0__struct;
    if (v6)
    {
      v9 = v6;
    }

    v7 = v9;
  }

  return v7;
}

- (void)updateModel:(id)a3
{
  v22 = a3;
  v4 = [NSSet setWithArray:&off_1016ECBD8];
  v5 = [NSNumber numberWithBool:0];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"__internal__CarMapsSuggestionsEntryDecoratedTitle"];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = [v9 BOOLValue];
  if (v10)
  {
    v11 = [NSSet setWithArray:&off_1016ECBF0];

    v4 = v11;
  }

  if ([(MapsSuggestionsEntry *)self wasEverOneOfTypes:v4])
  {
    v12 = [(MapsSuggestionsEntry *)self title];
  }

  else
  {
    v12 = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
    if (![v12 length])
    {
      v13 = [(MapsSuggestionsEntry *)self undecoratedTitle];

      v12 = v13;
    }
  }

  [v22 setFirstLine:v12];

  v14 = [(MapsSuggestionsEntry *)self MKMapItem];
  if (v14)
  {
    [v22 setMapItem:v14];
  }

  v15 = [NSSet setWithArray:&off_1016ECC08];
  [v22 observeObject:self forKeyPaths:v15];
  v16 = [v22 mapItem];
  v17 = [v16 _shortAddress];
  [v22 setSecondLine:v17];

  if ([(MapsSuggestionsEntry *)self type]== 11)
  {
    v18 = MapsSuggestionsLocalizedResumeRouteString();
    [v22 setSecondLine:v18];
  }

  if ([(MapsSuggestionsEntry *)self type]== 10)
  {
    v19 = [(MapsSuggestionsEntry *)self subtitle];
    [v22 setSecondLine:v19];
  }

  [(MapsSuggestionsEntry *)self type];
  v20 = NSStringFromMapsSuggestionsEntryType();
  v21 = [NSString stringWithFormat:@"[MSg %@]", v20];
  [v22 setDebugSubtitle:v21];
}

- (int)engineType
{
  if ([(MapsSuggestionsEntry *)self type]!= 10)
  {
    return 0;
  }

  v3 = [(MapsSuggestionsEntry *)self numberForKey:@"MapsSuggestionsCarPlayEnergyTypeKey"];
  v4 = [v3 intValue];

  return v4;
}

- (GEOComposedWaypoint)findMyWaypoint
{
  if ([(MapsSuggestionsEntry *)self type]== 24 && [(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsContactLikelyAppleIDKey"]&& [(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsLatitudeKey"]&& [(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsLongitudeKey"])
  {
    v3 = [(MapsSuggestionsEntry *)self numberForKey:@"MapsSuggestionsLatitudeKey"];
    [v3 doubleValue];
    v5 = v4;
    v6 = [(MapsSuggestionsEntry *)self numberForKey:@"MapsSuggestionsLongitudeKey"];
    [v6 doubleValue];
    v8 = v7;

    v9 = 0;
    if (fabs(v8) <= 180.0 && v5 >= -90.0 && v5 <= 90.0)
    {
      v10 = [(MapsSuggestionsEntry *)self dateForKey:@"MapsSuggestionsContactLocationTimestampKey"];
      v11 = [[GEOLocation alloc] initWithGEOCoordinate:{v5, v8}];
      [v10 timeIntervalSinceReferenceDate];
      [v11 setTimestamp:?];
      v12 = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsContactLikelyAppleIDKey"];
      v9 = [[GEOComposedWaypoint alloc] initWithLocation:v11 findMyHandleID:v12];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasVibrantBackground
{
  v3 = [(MapsSuggestionsEntry *)self isShortcutForSetup];
  if (v3)
  {
    LOBYTE(v3) = [(MapsSuggestionsEntry *)self type]!= 7;
  }

  return v3;
}

- (int)transportType
{
  v2 = [(MapsSuggestionsEntry *)self numberForKey:@"MapsSuggestionsTransportTypeKey"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

+ (id)iconForSuggestionType:(int64_t)a3 suggestionAttributes:(id)a4 mapItemAttributes:(id)a5 originBundleID:(id)a6 screenScale:(double)a7 showEVChargingIcon:(BOOL)a8 showOnboardingMultipleVehiclesIcon:(BOOL)a9 inverted:(BOOL)a10 isDashboardWidget:(BOOL)a11 nightMode:(BOOL)a12 isRTL:(BOOL)a13 contact:(id)a14
{
  v14 = a9;
  v15 = a8;
  v20 = a11;
  v111 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a14;
  v24 = v23;
  if (v15)
  {
    v25 = a11;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 101661;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Trying to show the EV Charging Icon %u", buf, 8u);
    }

    v30 = +[MKSystemController sharedInstance];
    [v30 screenScale];
    v31 = [MKIconManager imageForIconID:101661 contentScale:4 sizeGroup:0 nightMode:?];

    if (v31)
    {
      if (!a10)
      {
        v24 = v28;
        v22 = v27;
        v21 = v26;
        goto LABEL_36;
      }

      v32 = [v31 _maps_invertedImage];
      v24 = v28;
      v22 = v27;
      v21 = v26;
      goto LABEL_35;
    }

    v37 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Could not fetch the icon for resuming an EV route", buf, 2u);
    }

    v24 = v28;
    v22 = v27;
    v21 = v26;
    goto LABEL_16;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v25 = a11;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v31 = [UIImage imageNamed:@"greenEV"];
  v36 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Trying to show the EVOnboardingIconForTipKit", buf, 2u);
  }

  v24 = v35;
  v22 = v34;
  v21 = v33;
  if (!v31)
  {
    v37 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Could not fetch the icon for onboarding with multiple vehicles", buf, 2u);
    }

LABEL_16:
    v20 = v25;

LABEL_17:
    v114[0] = _NSConcreteStackBlock;
    v114[1] = 3221225472;
    v114[2] = sub_100CDB2FC;
    v114[3] = &unk_101650938;
    *&v114[4] = a7;
    v115 = a10;
    v116 = a12;
    v38 = objc_retainBlock(v114);
    v31 = v38;
    switch(a3)
    {
      case 0:
      case 4:
      case 5:
      case 6:
      case 10:
      case 17:
      case 18:
      case 21:
      case 25:
        v39 = v21;
        v40 = (v31)[2](v31, v39);
        if (v40)
        {
          goto LABEL_33;
        }

        v41 = v111;

        v42 = (v31)[2](v31, v41);
        if (v42)
        {
          v32 = v42;
          v39 = v41;
          goto LABEL_34;
        }

        v39 = v41;
        goto LABEL_31;
      case 1:
      case 2:
      case 7:
      case 13:
      case 14:
      case 15:
      case 16:
      case 19:
      case 22:
        goto LABEL_27;
      case 3:
        v100 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_INFO, "Will fetch image for calendar event (isDashboardWidget:%d)", buf, 8u);
        }

        v44 = v31[2];
        goto LABEL_28;
      case 8:
      case 12:
        if (v20)
        {
LABEL_27:
          v44 = v38[2];
LABEL_28:
          v45 = v44();
          if (v45)
          {
LABEL_29:
            v32 = v45;
            break;
          }

          goto LABEL_32;
        }

        v99 = v22;
        v39 = v99;
        if (!v99)
        {
          goto LABEL_61;
        }

        if ([v99 isEqualToString:@"com.apple.siri.homepod"])
        {
          (v31)[2](v31, v21);
        }

        else
        {
          v102 = +[UIScreen mainScreen];
          [v102 scale];
          [UIImage _applicationIconImageForBundleIdentifier:v39 format:2 scale:?];
          v104 = v103 = v24;

          v105 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
          v106 = [v105 imageConfiguration];
          v32 = [v104 imageWithConfiguration:v106];

          v24 = v103;
          if (v32)
          {
            goto LABEL_34;
          }

LABEL_61:
          (v31)[2](v31, v111);
        }
        v107 = ;
        if (v107)
        {
          v32 = v107;

          goto LABEL_34;
        }

LABEL_31:

LABEL_32:
        v39 = +[GEOFeatureStyleAttributes markerStyleAttributes];
        v40 = (v31)[2](v31, v39);
LABEL_33:
        v32 = v40;
LABEL_34:

        break;
      case 9:
      case 20:
        if (v20)
        {
          goto LABEL_32;
        }

        v39 = v22;
        if (!v39)
        {
          goto LABEL_31;
        }

        v43 = +[UIScreen mainScreen];
        [v43 scale];
        v32 = [UIImage _applicationIconImageForBundleIdentifier:v39 format:2 scale:?];

        if (!v32)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      case 11:
        v45 = [UIImage imageNamed:@"recentroute"];
        if (!v45)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      case 23:
        v78 = +[UIColor whiteColor];
        v119[0] = v78;
        +[UIColor blackColor];
        v80 = v79 = v24;
        v119[1] = v80;
        v81 = [NSArray arrayWithObjects:v119 count:2];
        v82 = [UIImageSymbolConfiguration configurationWithPaletteColors:v81];
        v83 = [UIImage systemImageNamed:@"shippingbox.circle.fill" withConfiguration:v82];

        v24 = v79;
        if (!v83)
        {
          goto LABEL_32;
        }

        BOOL = GEOConfigGetBOOL();
        if (v111 && BOOL && (+[GEOFeatureStyleAttributes addressMarkerStyleAttributes], v85 = objc_claimAutoreleasedReturnValue(), v85, v85 != v111) && ((v31)[2](v31, v111), (v86 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v87 = v86;
          [v83 size];
          v89 = v88 * 0.5;
          [v83 size];
          v91 = v90 * 0.5;
          v92 = v83;
          v93 = v87;
          v94 = [UIGraphicsImageRenderer alloc];
          [v92 size];
          v96 = v95;
          [v92 size];
          v97 = [v94 initWithSize:v96];
          *buf = _NSConcreteStackBlock;
          v121 = 3221225472;
          v122 = sub_100CDB644;
          v123 = &unk_101650988;
          v124 = v92;
          v125 = v93;
          v126 = v89;
          v127 = v91;
          v98 = v93;
          v39 = v92;
          v32 = [v97 imageWithActions:buf];

          v24 = v79;
        }

        else
        {
          v101 = [UIGraphicsImageRenderer alloc];
          [v83 size];
          v98 = [v101 initWithSize:?];
          v112[0] = _NSConcreteStackBlock;
          v112[1] = 3221225472;
          v112[2] = sub_100CDB6CC;
          v112[3] = &unk_101650960;
          v113 = v83;
          v39 = [v98 imageWithActions:v112];

          v32 = v39;
        }

        goto LABEL_34;
      case 24:
        v32 = [v24 avatarImageWithSize:a13 scale:128.0 rightToLeft:{128.0, a7}];
        if ((_UISolariumEnabled() & 1) == 0)
        {
          v47 = v32;
          v48 = +[UIColor systemWhiteColor];
          v129[0] = v48;
          +[UIColor systemGreenColor];
          v49 = v110 = v24;
          v129[1] = v49;
          v50 = [NSArray arrayWithObjects:v129 count:2];
          v109 = [UIImageSymbolConfiguration configurationWithPaletteColors:v50];

          v51 = [UIImage systemImageNamed:@"location.circle.fill" withConfiguration:v109];
          v52 = [[UIImageView alloc] initWithImage:v51];
          v53 = [v52 layer];
          [v53 setBorderWidth:1.0];

          v54 = +[UIColor tertiarySystemBackgroundColor];
          v55 = [v54 CGColor];
          v56 = [v52 layer];
          [v56 setBackgroundColor:v55];

          v57 = +[UIColor tertiarySystemBackgroundColor];
          v58 = [v57 CGColor];
          v59 = [v52 layer];
          [v59 setBorderColor:v58];

          [v51 size];
          v61 = v60 * 0.5;
          v62 = [v52 layer];
          [v62 setCornerRadius:v61];

          v63 = [v52 layer];
          [v63 setMasksToBounds:1];

          v64 = [UIGraphicsImageRenderer alloc];
          [v51 size];
          v65 = [v64 initWithSize:?];
          v117[0] = _NSConcreteStackBlock;
          v117[1] = 3221225472;
          v117[2] = sub_100CDB6E0;
          v117[3] = &unk_101650960;
          v118 = v52;
          v108 = v52;
          v66 = [v65 imageWithActions:v117];

          [v47 size];
          v68 = v67 * 0.5;
          [v47 size];
          v70 = v68 + v69 * 0.353553391;
          [v47 size];
          v72 = v71 * 0.5;
          [v47 size];
          v74 = v72 + v73 * 0.353553391;
          v75 = [[UIGraphicsImageRenderer alloc] initWithSize:{v70 + 40.0, v74 + 40.0}];
          *buf = _NSConcreteStackBlock;
          v121 = 3221225472;
          v122 = sub_100CDB750;
          v123 = &unk_1016509B0;
          v126 = v70 + -40.0;
          v127 = v74 + -40.0;
          v124 = v47;
          v125 = v66;
          v128 = 0x4054000000000000;
          v76 = v66;
          v77 = v47;
          v32 = [v75 imageWithActions:buf];

          v24 = v110;
        }

        if (v32)
        {
          break;
        }

        v39 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "Unable to get an image from the Monogrammer. Showing red pin. This should never happen.", buf, 2u);
        }

        goto LABEL_31;
      default:
        goto LABEL_32;
    }

LABEL_35:

    v31 = v32;
  }

LABEL_36:

  return v31;
}

- (NSArray)waypoints
{
  v2 = self;
  if (self)
  {
    if ([(MapsSuggestionsEntry *)self type]== 11)
    {
      v2 = [v2 routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
    }

    else
    {
      v2 = 0;
    }
  }

  v3 = [v2 waypoints];

  return v3;
}

- (NSString)poiTitle
{
  v3 = [(MapsSuggestionsEntry *)self type];
  if (v3 > 0x19)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << v3) & 0x27E96F7) != 0)
    {
      v4 = [(MapsSuggestionsEntry *)self undecoratedTitle];
LABEL_4:
      v5 = v4;
      goto LABEL_5;
    }

    if (((1 << v3) & 0x1816108) != 0 && ([(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsEntryTitleNameKey"]& 1) != 0)
    {
      v4 = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
      goto LABEL_4;
    }

    v7 = [(MapsSuggestionsEntry *)self MKMapItem];
    v5 = [v7 name];
  }

LABEL_5:

  return v5;
}

- (GEOFeatureStyleAttributes)styleAttributes
{
  v3 = [(MapsSuggestionsEntry *)self type];
  if (v3 > 0x18)
  {
    goto LABEL_8;
  }

  if (((1 << v3) & 0x8018E) == 0)
  {
    if (v3 == 24)
    {
      v7 = +[GEOFeatureStyleAttributes sharedLocationStyleAttributes];
      if (v7)
      {
        goto LABEL_24;
      }

      goto LABEL_3;
    }

LABEL_8:
    v9 = [(MapsSuggestionsEntry *)self MKMapItem];
    v7 = [v9 _styleAttributes];

    if (v7)
    {
      goto LABEL_24;
    }
  }

LABEL_3:
  v4 = [(MapsSuggestionsEntry *)self type];
  v5 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v6 = v5;
  v7 = 0;
  switch(v4)
  {
    case 0uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 0xBuLL:
      v8 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      goto LABEL_22;
    case 1uLL:
      v8 = +[GEOFeatureStyleAttributes homeStyleAttributes];
      goto LABEL_22;
    case 2uLL:
      v8 = +[GEOFeatureStyleAttributes workStyleAttributes];
      goto LABEL_22;
    case 3uLL:
      v8 = +[GEOFeatureStyleAttributes calendarEventStyleAttributes];
      goto LABEL_22;
    case 7uLL:
    case 0xAuLL:
      v8 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
      goto LABEL_22;
    case 8uLL:
      v8 = +[GEOFeatureStyleAttributes restaurantStyleAttributes];
      goto LABEL_22;
    case 0xDuLL:
      v8 = +[GEOFeatureStyleAttributes hotelStyleAttributes];
      goto LABEL_22;
    case 0xEuLL:
      v8 = +[GEOFeatureStyleAttributes carRentalStyleAttributes];
      goto LABEL_22;
    case 0xFuLL:
      v8 = +[GEOFeatureStyleAttributes airportStyleAttributes];
      goto LABEL_22;
    case 0x10uLL:
      v8 = +[GEOFeatureStyleAttributes ticketedEventStyleAttributes];
      goto LABEL_22;
    case 0x13uLL:
      v8 = +[GEOFeatureStyleAttributes schoolStyleAttributes];
      goto LABEL_22;
    case 0x16uLL:
      if ([v5 isEqualToString:@"NearbyTransit"])
      {
        v8 = +[GEOFeatureStyleAttributes nearbyTransitStyleAttributes];
LABEL_22:
        v7 = v8;
      }

      else
      {
        v7 = 0;
      }

LABEL_23:

      break;
    default:
      goto LABEL_23;
  }

LABEL_24:

  return v7;
}

- (void)setIcon:(id)a3
{
  image = a3;
  v4 = objc_getAssociatedObject(self, &unk_101215B9E);
  if (image)
  {
    if (([(UIImage *)image isEqual:v4]& 1) == 0)
    {
      v5 = UIImagePNGRepresentation(image);
      [(MapsSuggestionsEntry *)self setIconData:v5];

      objc_setAssociatedObject(self, &unk_101215B9E, image, 0x301);
      v6 = [(MapsSuggestionsEntry *)self iconData];
      objc_setAssociatedObject(self, &unk_101215B9F, v6, 0x301);
    }
  }

  else if (v4)
  {
    objc_setAssociatedObject(self, &unk_101215B9E, 0, 0x301);
    objc_setAssociatedObject(self, &unk_101215B9F, 0, 0x301);
    [(MapsSuggestionsEntry *)self setIconData:0];
  }
}

- (UIImage)icon
{
  v3 = [(MapsSuggestionsEntry *)self iconData];

  if (v3)
  {
    v4 = objc_getAssociatedObject(self, &unk_101215B9E);
    v5 = objc_getAssociatedObject(self, &unk_101215B9F);
    if (!v4 || (-[MapsSuggestionsEntry iconData](self, "iconData"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:v5], v6, (v7 & 1) == 0))
    {
      v8 = [(MapsSuggestionsEntry *)self iconData];
      v9 = [UIImage imageWithData:v8];

      objc_setAssociatedObject(self, &unk_101215B9E, v9, 0x301);
      v10 = [(MapsSuggestionsEntry *)self iconData];
      objc_setAssociatedObject(self, &unk_101215B9F, v10, 0x301);

      v4 = v9;
    }

    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (MKMapItem)MKMapItem
{
  v3 = [(MapsSuggestionsEntry *)self geoMapItem];

  if (v3)
  {
    v4 = objc_getAssociatedObject(self, &unk_101215B9C);
    v5 = objc_getAssociatedObject(self, &unk_101215B9D);
    if (v4 && (-[MapsSuggestionsEntry geoMapItem](self, "geoMapItem"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:v5], v6, v7))
    {
      v8 = v4;
    }

    else
    {
      v9 = [(MapsSuggestionsEntry *)self geoMapItem];
      if ([(MapsSuggestionsEntry *)self isShortcut])
      {
        v10 = [v9 copy];

        v11 = objc_alloc_init(GEOMapItemStorageUserValues);
        [v10 setUserValues:v11];

        v12 = [(MapsSuggestionsEntry *)self undecoratedTitle];
        v13 = [v10 userValues];
        [v13 setName:v12];

        v9 = v10;
      }

      v14 = [[MKMapItem alloc] initWithGeoMapItem:v9 isPlaceHolderPlace:0];

      objc_setAssociatedObject(self, &unk_101215B9C, v14, 0x301);
      objc_setAssociatedObject(self, &unk_101215B9D, v9, 0x301);
      v8 = v14;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)notificationDetailsWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  GEOConfigGetDouble();
  v9 = v8;
  v10 = [NSDate alloc];
  v11 = MapsSuggestionsNow();
  v12 = [v10 initWithTimeInterval:v11 sinceDate:v9];

  v13 = [GEOCommuteNotificationDetails alloc];
  v14 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v15 = [v13 initWithTitle:v7 message:v6 commuteDetailsIdentifier:v14 expirationDate:v12 score:1];

  return v15;
}

- (void)archiveDestination
{
  v3 = [(MapsSuggestionsEntry *)self uniqueIdentifier];

  if (v3)
  {
    v4 = [objc_opt_class() sharedDefaults];
    v5 = [v4 dataForKey:@"kSavedMapsCommuteDestinations"];
    *v18 = objc_opt_class();
    *&v18[8] = objc_opt_class();
    *&v18[16] = objc_opt_class();
    *&v18[24] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v18 count:4];
    v7 = [NSSet setWithArray:v6, *v18, *&v18[8], *&v18[16]];

    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v5 error:0];
    v9 = [v8 mutableCopy];

    v10 = [v9 objectForKeyedSubscript:@"kDatesKey"];
    v11 = [v9 objectForKeyedSubscript:@"kDestinationsKey"];
    if (!v9)
    {
      v9 = objc_opt_new();
      v12 = objc_opt_new();

      v13 = objc_opt_new();
      [v9 setObject:v12 forKeyedSubscript:@"kDatesKey"];
      [v9 setObject:v13 forKeyedSubscript:@"kDestinationsKey"];
      v10 = v12;
      v11 = v13;
    }

    v14 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
    [v11 setObject:self forKeyedSubscript:v14];

    v15 = MapsSuggestionsNow();
    v16 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
    [v10 setObject:v15 forKeyedSubscript:v16];

    v17 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    [v4 setObject:v17 forKey:@"kSavedMapsCommuteDestinations"];
    [v4 synchronize];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v18 = 136446978;
      *&v18[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsEntry+DoomExtras.m";
      *&v18[12] = 1024;
      *&v18[14] = 116;
      *&v18[18] = 2082;
      *&v18[20] = "[MapsSuggestionsEntry(DoomExtras) archiveDestination]";
      *&v18[28] = 2082;
      *&v18[30] = "nil == (self.uniqueIdentifier)";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Destination ID is nil", v18, 0x26u);
    }
  }
}

+ (id)sharedDefaults
{
  if (qword_10195F328 != -1)
  {
    dispatch_once(&qword_10195F328, &stru_101655A58);
  }

  v3 = qword_10195F320;

  return v3;
}

+ (void)removeStaleArchivedDestinations
{
  v21 = [a1 sharedDefaults];
  v2 = [v21 dataForKey:@"kSavedMapsCommuteDestinations"];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v27 count:4];
  v4 = [NSSet setWithArray:v3];

  v20 = v2;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"kDatesKey"];
  v8 = [v6 objectForKeyedSubscript:@"kDestinationsKey"];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v7 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        [v15 timeIntervalSinceNow];
        v17 = -v16;
        GEOConfigGetDouble();
        if (v18 < v17)
        {
          [v7 removeObjectForKey:v14];
          [v8 removeObjectForKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  [v21 setObject:v19 forKey:@"kSavedMapsCommuteDestinations"];
  [v21 synchronize];
}

+ (id)archivedDestinationForUniqueID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 sharedDefaults];
    v6 = [v5 dataForKey:@"kSavedMapsCommuteDestinations"];
    *v13 = objc_opt_class();
    *&v13[8] = objc_opt_class();
    *&v13[16] = objc_opt_class();
    *&v13[24] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v13 count:4];
    v8 = [NSSet setWithArray:v7, *v13, *&v13[8], *&v13[16]];

    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:0];
    v10 = [v9 objectForKeyedSubscript:@"kDestinationsKey"];

    v11 = [v10 objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v13 = 136446978;
      *&v13[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsEntry+DoomExtras.m";
      *&v13[12] = 1024;
      *&v13[14] = 81;
      *&v13[18] = 2082;
      *&v13[20] = "+[MapsSuggestionsEntry(DoomExtras) archivedDestinationForUniqueID:]";
      *&v13[28] = 2082;
      *&v13[30] = "0u == uniqueID.length";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Desintation ID is nil", v13, 0x26u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)entryFromLOI:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsEntry+DoomExtras.m";
      v26 = 1024;
      *v27 = 55;
      *&v27[4] = 2082;
      *&v27[6] = "+[MapsSuggestionsEntry(DoomExtras) entryFromLOI:]";
      v28 = 2082;
      v29 = "nil == (loi)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. LOI cannot be nil";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v12, buf, 0x26u);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_19;
  }

  v5 = [v3 identifierString];

  if (!v5)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsEntry+DoomExtras.m";
      v26 = 1024;
      *v27 = 56;
      *&v27[4] = 2082;
      *&v27[6] = "+[MapsSuggestionsEntry(DoomExtras) entryFromLOI:]";
      v28 = 2082;
      v29 = "nil == (loi.identifierString)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. LOI's identifier cannot be nil";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v6 = [v4 customLabel];
  v7 = v6;
  if (!v6)
  {
    v7 = [v4 preferredName];
  }

  v23[0] = v7;
  v22[1] = @"MapsSuggestionsCoreRoutinePK";
  v8 = [v4 identifierString];
  v22[2] = @"MapsSuggestionsPrimaryKey";
  v23[1] = v8;
  v23[2] = @"MapsSuggestionsCoreRoutinePK";
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (!v6)
  {
  }

  v10 = [v4 type];
  if (v10 > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_101215DA0[v10];
  }

  v14 = [MapsSuggestionsEntry alloc];
  v15 = [v4 predictedEndDate];
  v16 = [v4 mapItem];
  v13 = [v14 initWithType:v11 title:&stru_1016631F0 subtitle:&stru_1016631F0 weight:v15 expires:v16 geoMapItem:v9 sourceSpecificInfo:0.5];

  v17 = objc_alloc_init(MapsSuggestionsHomeWorkImprover);
  [v17 improveEntry:v13];
  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v13 title];
    v20 = [v13 subtitle];
    *buf = 138412546;
    v25 = v19;
    v26 = 2112;
    *v27 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Title/Subtitle after improving: {%@}, {%@}", buf, 0x16u);
  }

LABEL_19:

  return v13;
}

@end