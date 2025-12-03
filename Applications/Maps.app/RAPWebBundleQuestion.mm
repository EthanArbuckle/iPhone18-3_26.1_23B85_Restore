@interface RAPWebBundleQuestion
- (BOOL)isAnonymous;
- (RAPCommentQuestion)geotaggedPhotoCommentQuestion;
- (RAPWebBundleQuestion)initWithReport:(id)report directionsRecording:(id)recording;
- (RAPWebBundleQuestion)initWithReport:(id)report place:(id)place poiCorrectionType:(int)type questionType:(int64_t)questionType;
- (RAPWebBundleQuestion)initWithReport:(id)report place:(id)place questionType:(int64_t)type;
- (RAPWebBundleQuestion)initWithReport:(id)report questionType:(int64_t)type;
- (id)questionTypeAsString;
- (void)_fetchChildContainmentWithCompletion:(id)completion;
- (void)_fetchContainmentItems:(id)items withCompletion:(id)completion;
- (void)_fetchParentContainmentWithCompletion:(id)completion;
- (void)_fetchTransitInfoFromReportedLine:(id)line withCompletion:(id)completion;
- (void)_fetchTransitInfoFromStation:(id)station withCompletion:(id)completion;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)retrieveContextwithLocales:(id)locales contextCompletion:(id)completion;
- (void)setDirectionsRecording:(id)recording;
- (void)setReportedUserPath:(id)path;
@end

@implementation RAPWebBundleQuestion

- (void)_fetchContainmentItems:(id)items withCompletion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = +[GEOMapService sharedService];
  v11 = +[GEOMapService sharedService];
  defaultTraits = [v11 defaultTraits];
  v13 = [v10 ticketForMUIDs:itemsCopy traits:defaultTraits];

  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10087B720;
  v18[3] = &unk_10162C7A8;
  objc_copyWeak(&v22, &location);
  v14 = completionCopy;
  v21 = v14;
  v15 = v9;
  v19 = v15;
  v16 = v8;
  v20 = v16;
  v17 = &_dispatch_main_q;
  [v13 submitWithHandler:v18 networkActivity:0 queue:&_dispatch_main_q];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_fetchParentContainmentWithCompletion:(id)completion
{
  completionCopy = completion;
  reportedPlace = [(RAPWebBundleQuestion *)self reportedPlace];
  mapItem = [reportedPlace mapItem];

  _geoMapItem = [mapItem _geoMapItem];
  _containedPlace = [_geoMapItem _containedPlace];
  parent = [_containedPlace parent];

  v9 = objc_alloc_init(NSMutableArray);
  if ([parent _hasMUID])
  {
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [parent _muid]);
    [v9 addObject:v10];
  }

  reportedPlace2 = [(RAPWebBundleQuestion *)self reportedPlace];
  mapItem2 = [reportedPlace2 mapItem];
  _geoMapItem2 = [mapItem2 _geoMapItem];
  _venueInfo = [_geoMapItem2 _venueInfo];

  parent2 = [_venueInfo parent];
  if ([parent2 businessID])
  {
    parent3 = [_venueInfo parent];
    businessID = [parent3 businessID];
    _muid = [parent _muid];

    if (businessID == _muid)
    {
      goto LABEL_7;
    }

    parent2 = [_venueInfo parent];
    v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [parent2 businessID]);
    [v9 addObject:v19];
  }

LABEL_7:
  if ([v9 count])
  {
    [(RAPWebBundleQuestion *)self _fetchContainmentItems:v9 withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_fetchChildContainmentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NSMutableArray);
  reportedPlace = [(RAPWebBundleQuestion *)self reportedPlace];
  mapItem = [reportedPlace mapItem];
  v8 = [mapItem _firstRelatedPlaceListForType:3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  mapIdentifiers = [v8 mapIdentifiers];
  v10 = [mapIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(mapIdentifiers);
        }

        v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v15 + 1) + 8 * v13) muid]);
        [v5 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [mapIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if ([v5 count])
  {
    [(RAPWebBundleQuestion *)self _fetchContainmentItems:v5 withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_fetchTransitInfoFromReportedLine:(id)line withCompletion:(id)completion
{
  completionCopy = completion;
  lineCopy = line;
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = v8;

  artwork = [lineCopy artwork];
  v11 = [UIImage _mapkit_transitArtworkImageWithDataSource:artwork size:6 scale:v9];

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [lineCopy lineFeatureID]);
  v13 = objc_alloc_init(RAPWebBundleImageContext);
  v14 = UIImagePNGRepresentation(v11);
  [(RAPWebBundleImageContext *)v13 setImage:v14];

  [(RAPWebBundleImageContext *)v13 setIdentifier:v12];
  v15 = objc_alloc_init(RAPWebBundleTransitLineContext);
  displayName = [lineCopy displayName];

  [(RAPWebBundleTransitLineContext *)v15 setName:displayName];
  [(RAPWebBundleTransitLineContext *)v15 setIdentifier:v12];
  [(RAPWebBundleTransitLineContext *)v15 setImageContext:v13];
  if (completionCopy)
  {
    v20 = v15;
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    v19 = v13;
    v18 = [NSArray arrayWithObjects:&v19 count:1];
    completionCopy[2](completionCopy, v17, v18);
  }
}

- (void)_fetchTransitInfoFromStation:(id)station withCompletion:(id)completion
{
  stationCopy = station;
  completionCopy = completion;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  mapItem = [stationCopy mapItem];
  _transitInfo = [mapItem _transitInfo];
  lines = [_transitInfo lines];

  v13 = [lines countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(lines);
        }

        v17 = MKMapItemIdentifierFromGEOTransitLine();
        [v9 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [lines countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v18 = +[MKMapService sharedService];
  allObjects = [v9 allObjects];
  v20 = +[MKMapService sharedService];
  mapsDefaultTraits = [v20 mapsDefaultTraits];
  v22 = [v18 ticketForTransitLines:allObjects traits:mapsDefaultTraits];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10087C2EC;
  v26[3] = &unk_10165FB28;
  v27 = v8;
  v28 = v7;
  v29 = completionCopy;
  v23 = completionCopy;
  v24 = v7;
  v25 = v8;
  [v22 submitWithHandler:v26 networkActivity:0];
}

- (void)retrieveContextwithLocales:(id)locales contextCompletion:(id)completion
{
  localesCopy = locales;
  completionCopy = completion;
  group = dispatch_group_create();
  v134 = 0;
  v135 = &v134;
  v136 = 0x3032000000;
  v137 = sub_10087D344;
  v138 = sub_10087D354;
  v139 = 0;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x3032000000;
  v132[3] = sub_10087D344;
  v132[4] = sub_10087D354;
  v133 = objc_alloc_init(NSMutableArray);
  questionType = [(RAPWebBundleQuestion *)self questionType];
  if (questionType <= 10)
  {
    if ((questionType - 1) >= 8)
    {
      if (questionType == 9)
      {
        goto LABEL_20;
      }

      if (questionType != 10)
      {
        goto LABEL_65;
      }
    }

    v13 = [RAPWebBundleAddToMapContext alloc];
    questionTypeAsString = [(RAPWebBundleQuestion *)self questionTypeAsString];
    v15 = [(RAPWebBundleBaseContext *)v13 initWithType:questionTypeAsString locales:localesCopy];

    v16 = [RAPPlaceCorrectableAddress alloc];
    reportedPlace = [(RAPWebBundleQuestion *)self reportedPlace];
    mapItem = [reportedPlace mapItem];
    v12 = [(RAPPlaceCorrectableAddress *)v16 _initWithMapItem:mapItem];

    freeformAddress = [v12 freeformAddress];
    value = [freeformAddress value];
    [(RAPWebBundleAddToMapContext *)v15 setAddress:value];

    v21 = v135[5];
    v135[5] = v15;

    goto LABEL_64;
  }

  if (questionType > 22)
  {
    if (questionType > 26)
    {
      if (questionType == 27)
      {
        v76 = [RAPWebBundlePOIContext alloc];
        questionTypeAsString2 = [(RAPWebBundleQuestion *)self questionTypeAsString];
        v78 = [(RAPWebBundleBaseContext *)v76 initWithType:questionTypeAsString2 locales:localesCopy];

        report = [(RAPQuestion *)self report];
        _context = [report _context];
        reportedLine = [_context reportedLine];

        v127[0] = _NSConcreteStackBlock;
        v127[1] = 3221225472;
        v127[2] = sub_10087D35C;
        v127[3] = &unk_10162C730;
        v82 = reportedLine;
        v128 = v82;
        v130 = v132;
        v83 = v78;
        v129 = v83;
        v131 = &v134;
        [(RAPWebBundleQuestion *)self _fetchTransitInfoFromReportedLine:v82 withCompletion:v127];

        v12 = v83;
        goto LABEL_64;
      }

      if (questionType == 28)
      {
        v71 = [RAPWebBundleAddToMapContext alloc];
        questionTypeAsString3 = [(RAPWebBundleQuestion *)self questionTypeAsString];
        v73 = [(RAPWebBundleBaseContext *)v71 initWithType:questionTypeAsString3 locales:localesCopy];

        reportedPlace2 = [(RAPWebBundleQuestion *)self reportedPlace];
        userVisibleTitle = [reportedPlace2 userVisibleTitle];
        [(RAPWebBundleAddToMapContext *)v73 setEntityName:userVisibleTitle];

        v12 = v135[5];
        v135[5] = v73;
        goto LABEL_64;
      }

      if (questionType != 29)
      {
        goto LABEL_65;
      }
    }

    else if ((questionType - 24) >= 3)
    {
      if (questionType == 23)
      {
        v12 = sub_100798874();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, ".context called on RAPWebBundleQuestion.directions. This is not supported.", buf, 2u);
        }

        goto LABEL_64;
      }

      goto LABEL_65;
    }

LABEL_20:
    selfCopy = self;
    v22 = [RAPWebBundlePOIContext alloc];
    questionTypeAsString4 = [(RAPWebBundleQuestion *)self questionTypeAsString];
    v91 = [(RAPWebBundleBaseContext *)v22 initWithType:questionTypeAsString4 locales:localesCopy];

    reportedPlace3 = [(RAPWebBundleQuestion *)self reportedPlace];
    mapItem2 = [reportedPlace3 mapItem];

    v84 = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:mapItem2 localizedHoursStringOptions:0];
    operatingHours = [v84 operatingHours];
    pdHours = [operatingHours pdHours];
    v94 = objc_alloc_init(NSMutableArray);
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = pdHours;
    v95 = [obj countByEnumeratingWithState:&v140 objects:buf count:16];
    if (v95)
    {
      v93 = *v141;
      do
      {
        for (i = 0; i != v95; i = i + 1)
        {
          if (*v141 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v140 + 1) + 8 * i);
          v4 = objc_alloc_init(NSMutableArray);
          v27 = [v26 copy];
          [v27 clearTimeRanges];
          if ([v26 timeRangesCount])
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v99 = 0;
            v100 = 0;
            v97 = 0;
            while (1)
            {
              v31 = [v26 timeRangeAtIndex:v28];
              v32 = v31;
              v34 = v33;
              v35 = HIDWORD(v31);
              if (!v31 && v35 == 86400)
              {
                break;
              }

              if (v31)
              {
                if (v35 == 86400)
                {
                  v97 = v31;
                  v99 = 86400;
                  v100 = 3;
                }

                else
                {
                  v36 = [v27 copy];
                  v5 = v5 & 0xFFFFFFFF00000000 | v34;
                  [v36 addTimeRange:{v32, v5}];
                  [v4 addObject:v36];
                }
              }

              else
              {
                v30 = HIDWORD(v31);
                v29 = 3;
              }

              if (++v28 >= [v26 timeRangesCount])
              {
                goto LABEL_38;
              }
            }

            [v4 addObject:v26];
LABEL_38:
            v38 = [v27 copy];
            v37 = v38;
            if ((~v29 & 3) == 0)
            {
              [v38 addTimeRange:{v30 << 32, v29}];
            }

            if ((~v100 & 3) == 0)
            {
              [v37 addTimeRange:v97 | (v99 << 32)];
            }
          }

          else
          {
            v37 = [v27 copy];
          }

          if ([v37 timeRangesCount])
          {
            [v4 addObject:v37];
          }

          v39 = [v4 copy];

          [v94 addObjectsFromArray:v39];
        }

        v95 = [obj countByEnumeratingWithState:&v140 objects:buf count:16];
      }

      while (v95);
    }

    v40 = objc_alloc_init(NSMutableArray);
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v98 = v94;
    v41 = [v98 countByEnumeratingWithState:&v123 objects:v144 count:16];
    if (v41)
    {
      v101 = *v124;
      do
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v124 != v101)
          {
            objc_enumerationMutation(v98);
          }

          v43 = *(*(&v123 + 1) + 8 * j);
          v44 = objc_alloc_init(NSMutableArray);
          for (k = 0; k < [v43 daysCount]; ++k)
          {
            v46 = [v43 daysAsString:{objc_msgSend(v43, "dayAtIndex:", k)}];
            [v44 addObject:v46];
          }

          if ([v44 count])
          {
            v121[0] = _NSConcreteStackBlock;
            v121[1] = 3221225472;
            v121[2] = sub_10087D480;
            v121[3] = &unk_10162C6E0;
            v122 = v44;
            v47 = objc_retainBlock(v121);
            for (m = 0; m < [v43 timeRangesCount]; ++m)
            {
              v49 = [v43 timeRangeAtIndex:m];
              v4 = v4 & 0xFFFFFFFF00000000 | v50;
              v51 = (v47[2])(v47, v49, v4);
              [v40 addObject:v51];
            }
          }
        }

        v41 = [v98 countByEnumeratingWithState:&v123 objects:v144 count:16];
      }

      while (v41);
    }

    v52 = [RAPPlaceCorrectableAddress alloc];
    reportedPlace4 = [(RAPWebBundleQuestion *)selfCopy reportedPlace];
    mapItem3 = [reportedPlace4 mapItem];
    v55 = [(RAPPlaceCorrectableAddress *)v52 _initWithMapItem:mapItem3];

    freeformAddress2 = [v55 freeformAddress];
    value2 = [freeformAddress2 value];
    [(RAPWebBundleAddToMapContext *)v91 setAddress:value2];

    [(RAPWebBundlePOIContext *)v91 setBusinessHours:v40];
    name = [mapItem2 name];
    [(RAPWebBundlePOIContext *)v91 setName:name];

    phoneNumber = [mapItem2 phoneNumber];
    [(RAPWebBundlePOIContext *)v91 setPhoneNumber:phoneNumber];

    v60 = [mapItem2 url];
    absoluteString = [v60 absoluteString];
    [(RAPWebBundlePOIContext *)v91 setUrl:absoluteString];

    v62 = [mapItem2 _localizedCategoryNamesForType:0];
    [(RAPWebBundlePOIContext *)v91 setCategories:v62];

    -[RAPWebBundlePOIContext setPermanentClosed:](v91, "setPermanentClosed:", [operatingHours hoursType] == 4);
    -[RAPWebBundlePOIContext setTemporaryClosed:](v91, "setTemporaryClosed:", [operatingHours hoursType] == 3);
    [(RAPWebBundlePOIContext *)v91 setAcceptsApplePay:[mapItem2 _acceptsApplePay]];
    _transitInfo = [mapItem2 _transitInfo];
    LOBYTE(absoluteString) = [_transitInfo linesCount] == 0;

    if ((absoluteString & 1) == 0)
    {
      dispatch_group_enter(group);
      reportedPlace5 = [(RAPWebBundleQuestion *)selfCopy reportedPlace];
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_10087D530;
      v116[3] = &unk_10162C708;
      v116[4] = selfCopy;
      v119 = v132;
      v117 = v91;
      v120 = &v134;
      v118 = group;
      [(RAPWebBundleQuestion *)selfCopy _fetchTransitInfoFromStation:reportedPlace5 withCompletion:v116];
    }

    dispatch_group_enter(group);
    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = sub_10087D684;
    v111[3] = &unk_10162C730;
    v65 = v91;
    v112 = v65;
    v114 = v132;
    v115 = &v134;
    v66 = group;
    v113 = v66;
    [(RAPWebBundleQuestion *)selfCopy _fetchChildContainmentWithCompletion:v111];
    dispatch_group_enter(v66);
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_10087D720;
    v106[3] = &unk_10162C730;
    v67 = v65;
    v107 = v67;
    v109 = v132;
    v110 = &v134;
    v108 = v66;
    [(RAPWebBundleQuestion *)selfCopy _fetchParentContainmentWithCompletion:v106];
    v68 = v135[5];
    v135[5] = v67;
    v69 = v67;

    v12 = mapItem2;
    goto LABEL_64;
  }

  if ((questionType - 11) < 0xA)
  {
    goto LABEL_20;
  }

  if ((questionType - 21) < 2)
  {
    v9 = [RAPWebBundleBaseContext alloc];
    questionTypeAsString5 = [(RAPWebBundleQuestion *)self questionTypeAsString];
    v11 = [(RAPWebBundleBaseContext *)v9 initWithType:questionTypeAsString5 locales:localesCopy];

    v12 = v135[5];
    v135[5] = v11;
LABEL_64:
  }

LABEL_65:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10087D7BC;
  block[3] = &unk_101661430;
  v103 = completionCopy;
  v104 = &v134;
  v105 = v132;
  v70 = completionCopy;
  dispatch_group_notify(group, &_dispatch_main_q, block);

  _Block_object_dispose(v132, 8);
  _Block_object_dispose(&v134, 8);
}

- (RAPCommentQuestion)geotaggedPhotoCommentQuestion
{
  geotaggedPhotoCommentQuestion = self->_geotaggedPhotoCommentQuestion;
  if (!geotaggedPhotoCommentQuestion)
  {
    v4 = [RAPCommentQuestion alloc];
    report = [(RAPQuestion *)self report];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Details [Report a Problem photos]" value:@"localized string not found" table:0];
    v8 = [(RAPCommentQuestion *)v4 initWithReport:report parentQuestion:self title:v7 placeholderText:0 emphasis:4];
    v9 = self->_geotaggedPhotoCommentQuestion;
    self->_geotaggedPhotoCommentQuestion = v8;

    geotaggedPhotoCommentQuestion = self->_geotaggedPhotoCommentQuestion;
  }

  return geotaggedPhotoCommentQuestion;
}

- (id)questionTypeAsString
{
  questionType = [(RAPWebBundleQuestion *)self questionType];
  if (questionType > 0x1D)
  {
    return @"poi";
  }

  else
  {
    return off_10162C7C8[questionType];
  }
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  details = [parametersCopy details];

  if (!details)
  {
    v6 = objc_opt_new();
    [parametersCopy setDetails:v6];
  }

  dynamicForm = [(RAPWebBundleQuestion *)self dynamicForm];
  [parametersCopy setDynamicForm:dynamicForm];

  switch(self->_questionType)
  {
    case 1:
    case 0xALL:
      details2 = [parametersCopy details];
      addressPointFeedback = [details2 addressPointFeedback];

      if (!addressPointFeedback)
      {
        addressPointFeedback = objc_alloc_init(GEORPAddressFeedback);
        details3 = [parametersCopy details];
        [details3 setAddressPointFeedback:addressPointFeedback];
      }

      place = [addressPointFeedback place];

      if (!place)
      {
        mapItem = [(RAPPlace *)self->_reportedPlace mapItem];
        _geoMapItem = [mapItem _geoMapItem];
        _placeData = [_geoMapItem _placeData];
        [addressPointFeedback setPlace:_placeData];
      }

      placeInfo = [(RAPPlace *)self->_reportedPlace placeInfo];

      if (placeInfo)
      {
        placeInfo2 = [(RAPPlace *)self->_reportedPlace placeInfo];
        placeRequest = [placeInfo2 placeRequest];
        [addressPointFeedback setPlaceRequest:placeRequest];
      }

      mapItem2 = [(RAPPlace *)self->_reportedPlace mapItem];
      _maps_isHomeWorkOrSchool = [mapItem2 _maps_isHomeWorkOrSchool];

      if (!_maps_isHomeWorkOrSchool)
      {
        goto LABEL_80;
      }

      personalizedMaps = [addressPointFeedback personalizedMaps];
      if (!personalizedMaps)
      {
        personalizedMaps = objc_alloc_init(GEORPPersonalizedMapsContext);
        [addressPointFeedback setPersonalizedMaps:personalizedMaps];
      }

      [personalizedMaps setAddressType:9];
      mapItem3 = [(RAPPlace *)self->_reportedPlace mapItem];
      _maps_isHome = [mapItem3 _maps_isHome];

      if (_maps_isHome)
      {
        v29 = 1;
      }

      else
      {
        mapItem4 = [(RAPPlace *)self->_reportedPlace mapItem];
        _maps_isWork = [mapItem4 _maps_isWork];

        if (_maps_isWork)
        {
          v29 = 2;
        }

        else
        {
          mapItem5 = [(RAPPlace *)self->_reportedPlace mapItem];
          _maps_isSchool = [mapItem5 _maps_isSchool];

          if (_maps_isSchool)
          {
            v29 = 3;
          }

          else
          {
            v29 = 0;
          }
        }
      }

      [personalizedMaps setPlaceType:v29];
      goto LABEL_79;
    case 2:
    case 9:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x18:
    case 0x19:
    case 0x1DLL:
      details4 = [parametersCopy details];
      addressPointFeedback = [details4 poiFeedback];

      if (!addressPointFeedback)
      {
        addressPointFeedback = objc_alloc_init(GEORPPoiFeedback);
        details5 = [parametersCopy details];
        [details5 setPoiFeedback:addressPointFeedback];
      }

      [addressPointFeedback setCorrectionType:self->_poiCorrectionType];
      place2 = [addressPointFeedback place];

      if (place2)
      {
        goto LABEL_80;
      }

      personalizedMaps = [(RAPPlace *)self->_reportedPlace mapItem];
      _geoMapItem2 = [personalizedMaps _geoMapItem];
      _placeData2 = [_geoMapItem2 _placeData];
      [addressPointFeedback setPlace:_placeData2];
      goto LABEL_8;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 0x1CLL:
      details6 = [parametersCopy details];
      addressPointFeedback = [details6 addMapFeedback];

      if (addressPointFeedback)
      {
        goto LABEL_80;
      }

      addressPointFeedback = objc_alloc_init(GEORPAddToMapFeedback);
      [addressPointFeedback setIsEntrypointReportSomethingMissing:GEOConfigGetBOOL()];
      personalizedMaps = [parametersCopy details];
      [personalizedMaps setAddMapFeedback:addressPointFeedback];
      goto LABEL_79;
    case 0xBLL:
      details7 = [parametersCopy details];
      addressPointFeedback = [details7 localityFeedback];

      if (!addressPointFeedback)
      {
        addressPointFeedback = objc_alloc_init(GEORPLocalityFeedback);
        details8 = [parametersCopy details];
        [details8 setLocalityFeedback:addressPointFeedback];
      }

      place3 = [addressPointFeedback place];

      if (!place3)
      {
        reportedPlace = [(RAPWebBundleQuestion *)self reportedPlace];
        mapItem6 = [reportedPlace mapItem];
        _geoMapItem3 = [mapItem6 _geoMapItem];
        _placeData3 = [_geoMapItem3 _placeData];
        [addressPointFeedback setPlace:_placeData3];
      }

      placeInfo3 = [(RAPPlace *)self->_reportedPlace placeInfo];

      if (!placeInfo3)
      {
        goto LABEL_80;
      }

      personalizedMaps = [(RAPWebBundleQuestion *)self reportedPlace];
      _geoMapItem2 = [personalizedMaps placeInfo];
      _placeData2 = [_geoMapItem2 placeRequest];
      [addressPointFeedback setPlaceRequest:_placeData2];
      goto LABEL_8;
    case 0x15:
    case 0x16:
      details9 = [parametersCopy details];
      addressPointFeedback = [details9 streetFeedback];

      if (addressPointFeedback)
      {
        goto LABEL_80;
      }

      addressPointFeedback = objc_alloc_init(GEORPStreetFeedback);
      personalizedMaps = [parametersCopy details];
      [personalizedMaps setStreetFeedback:addressPointFeedback];
      goto LABEL_79;
    case 0x17:
      details10 = [parametersCopy details];
      directionsFeedback = [details10 directionsFeedback];

      if (!directionsFeedback)
      {
        directionsFeedback = objc_alloc_init(GEORPDirectionsFeedback);
        details11 = [parametersCopy details];
        [details11 setDirectionsFeedback:directionsFeedback];
      }

      v50 = self->_directionsRecording;
      v51 = objc_alloc_init(GEORPDirectionsFeedbackContext);
      reportedUserPath = self->_reportedUserPath;
      if (reportedUserPath && (v53 = -[RAPUserPathEntry routeIndex](reportedUserPath, "routeIndex"), -[RAPDirectionsRecording routes](v50, "routes"), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v54 count], v54, v55 > v53))
      {
        routes = [(RAPDirectionsRecording *)v50 routes];
        v57 = [routes objectAtIndexedSubscript:{-[RAPUserPathEntry routeIndex](self->_reportedUserPath, "routeIndex")}];

        v58 = [[NSMutableArray alloc] initWithObjects:{v57, 0}];
        [v51 setRoutes:v58];

        v59 = sub_100798874();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = self->_reportedUserPath;
          *buf = 138412546;
          v148 = v60;
          v149 = 2112;
          v150 = v57;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "updating RAPWebBundleQuestion with reportedUserPath: %@ and singleRoute: %@", buf, 0x16u);
        }
      }

      else
      {
        routes2 = [(RAPDirectionsRecording *)v50 routes];
        v62 = [routes2 mutableCopy];
        [v51 setRoutes:v62];

        v59 = sub_100798874();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v63 = v51;
          v64 = self->_reportedUserPath;
          routes3 = [(RAPDirectionsRecording *)v50 routes];
          *buf = 138412546;
          v148 = v64;
          v51 = v63;
          v149 = 2048;
          v150 = [routes3 count];
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "updating RAPWebBundleQuestion with reportedUserPath: %@ and multiple routes (count: %ld)", buf, 0x16u);
        }

        v57 = 0;
      }

      v135 = v57;
      v136 = directionsFeedback;

      rerouteLocation = [(RAPUserPathEntry *)self->_reportedUserPath rerouteLocation];
      if (rerouteLocation)
      {
        v67 = rerouteLocation;
        traversal = [(RAPUserPathEntry *)self->_reportedUserPath traversal];

        if (traversal == 2)
        {
          v69 = [NSMutableArray alloc];
          rerouteLocation2 = [(RAPUserPathEntry *)self->_reportedUserPath rerouteLocation];
          v71 = [v69 initWithObjects:{rerouteLocation2, 0}];
          [v51 setRerouteLocations:v71];
        }
      }

      v72 = [GEORPPlaceInfo alloc];
      startWaypointCorrectedSearchTemplate = [(RAPDirectionsRecording *)v50 startWaypointCorrectedSearchTemplate];
      v74 = [v72 initWithCorrectedSearch:startWaypointCorrectedSearchTemplate];

      [v74 clearSessionId];
      v75 = objc_alloc_init(GEORPPlaceRequestResponse);
      placeRequest2 = [v74 placeRequest];
      [v75 setPlaceRequest:placeRequest2];

      v134 = v74;
      placeResponse = [v74 placeResponse];
      [v75 setPlaceResponse:placeResponse];

      v78 = [GEORPPlaceInfo alloc];
      endWaypointCorrectedSearchTemplate = [(RAPDirectionsRecording *)v50 endWaypointCorrectedSearchTemplate];
      v80 = [v78 initWithCorrectedSearch:endWaypointCorrectedSearchTemplate];

      [v80 clearSessionId];
      v81 = objc_alloc_init(GEORPPlaceRequestResponse);
      placeRequest3 = [v80 placeRequest];
      [v81 setPlaceRequest:placeRequest3];

      v133 = v80;
      placeResponse2 = [v80 placeResponse];
      [v81 setPlaceResponse:placeResponse2];

      v84 = [NSMutableArray arrayWithObjects:v75, v81, 0];
      [v51 setDirectionsWaypointPlaceInfos:v84];

      startWaypoint = [(RAPDirectionsRecording *)v50 startWaypoint];
      if (startWaypoint)
      {
        v86 = [GEORPUserSearchInput alloc];
        startWaypoint2 = [(RAPDirectionsRecording *)v50 startWaypoint];
        v88 = [v86 initWithRAPUserSearchInput:startWaypoint2];
        [v51 setStartWaypoint:v88];
      }

      else
      {
        [v51 setStartWaypoint:0];
      }

      endWaypoint = [(RAPDirectionsRecording *)v50 endWaypoint];
      if (endWaypoint)
      {
        v92 = [GEORPUserSearchInput alloc];
        endWaypoint2 = [(RAPDirectionsRecording *)v50 endWaypoint];
        v94 = [v92 initWithRAPUserSearchInput:endWaypoint2];
        [v51 setEndWaypoint:v94];
      }

      else
      {
        [v51 setEndWaypoint:0];
      }

      v95 = v135;

      endWaypoint3 = [(RAPDirectionsRecording *)v50 endWaypoint];
      findMyHandleID = [endWaypoint3 findMyHandleID];

      if (findMyHandleID)
      {
        [v51 setIsRouteToPerson:1];
      }

      if (!v135)
      {
        goto LABEL_88;
      }

      v98 = self->_reportedUserPath;
      if (!v98)
      {
        goto LABEL_88;
      }

      stepIndex = [(RAPUserPathEntry *)v98 stepIndex];
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      routeLegs = [v135 routeLegs];
      v101 = [routeLegs countByEnumeratingWithState:&v141 objects:v146 count:16];
      if (!v101)
      {
        goto LABEL_73;
      }

      v102 = 0;
      v131 = stepIndex;
      v132 = 0;
      v103 = *v142;
      v129 = routeLegs;
      v130 = v51;
      v128 = v75;
      v126 = *v142;
      break;
    case 0x1ALL:
    case 0x1BLL:
      details12 = [parametersCopy details];
      addressPointFeedback = [details12 transitPoiFeedback];

      if (!addressPointFeedback)
      {
        addressPointFeedback = objc_alloc_init(GEORPTransitPoiFeedback);
        details13 = [parametersCopy details];
        [details13 setTransitPoiFeedback:addressPointFeedback];
      }

      details14 = [parametersCopy details];
      transitPoiFeedback = [details14 transitPoiFeedback];
      place4 = [transitPoiFeedback place];

      if (place4)
      {
        goto LABEL_80;
      }

      personalizedMaps = [(RAPWebBundleQuestion *)self reportedPlace];
      _geoMapItem2 = [personalizedMaps mapItem];
      _placeData2 = [_geoMapItem2 _geoMapItem];
      v14_placeData = [_placeData2 _placeData];
      details15 = [parametersCopy details];
      transitPoiFeedback2 = [details15 transitPoiFeedback];
      [transitPoiFeedback2 setPlace:v14_placeData];

LABEL_8:
LABEL_79:

LABEL_80:
      goto LABEL_81;
    default:
      goto LABEL_81;
  }

  do
  {
    v104 = 0;
    v105 = v102;
    v125 = &v101[v102];
    v127 = v101;
    do
    {
      if (*v142 != v103)
      {
        objc_enumerationMutation(routeLegs);
      }

      v106 = *(*(&v141 + 1) + 8 * v104);
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      steps = [v106 steps];
      v108 = [steps countByEnumeratingWithState:&v137 objects:v145 count:16];
      if (v108)
      {
        v109 = v108;
        v110 = *v138;
        while (2)
        {
          v111 = v131 - v132;
          v132 += v109;
          do
          {
            if (*v138 != v110)
            {
              objc_enumerationMutation(steps);
            }

            if (!v111)
            {

              v117 = (v105 + 1);
              waypoints = [(RAPDirectionsRecording *)v50 waypoints];
              v119 = [waypoints count];

              if (v117 >= v119)
              {
                waypoints3 = sub_100798874();
                directionsFeedback = v136;
                v51 = v130;
                v75 = v128;
                if (os_log_type_enabled(waypoints3, OS_LOG_TYPE_ERROR))
                {
                  waypoints2 = [(RAPDirectionsRecording *)v50 waypoints];
                  v124 = [waypoints2 count];
                  *buf = 134218240;
                  v148 = v117;
                  v149 = 2048;
                  v150 = v124;
                  _os_log_impl(&_mh_execute_header, waypoints3, OS_LOG_TYPE_ERROR, "found waypointIndex: %lu but recorded waypoints did not match: %lu", buf, 0x16u);
                }

                v95 = v135;
              }

              else
              {
                v120 = [GEORPUserSearchInput alloc];
                waypoints3 = [(RAPDirectionsRecording *)v50 waypoints];
                v121 = [waypoints3 objectAtIndexedSubscript:v117];
                v122 = [v120 initWithRAPUserSearchInput:v121];
                v51 = v130;
                [v130 setEndWaypoint:v122];

                v95 = v135;
                directionsFeedback = v136;
                v75 = v128;
              }

              goto LABEL_87;
            }

            --v111;
            v109 = v109 - 1;
          }

          while (v109);
          v109 = [steps countByEnumeratingWithState:&v137 objects:v145 count:16];
          if (v109)
          {
            continue;
          }

          break;
        }
      }

      ++v105;
      ++v104;
      v103 = v126;
      directionsFeedback = v136;
      routeLegs = v129;
      v51 = v130;
    }

    while (v104 != v127);
    v101 = [v129 countByEnumeratingWithState:&v141 objects:v146 count:16];
    v95 = v135;
    v75 = v128;
    v102 = v125;
  }

  while (v101);
LABEL_73:

  waypoints3 = sub_100798874();
  if (os_log_type_enabled(waypoints3, OS_LOG_TYPE_ERROR))
  {
    v113 = self->_reportedUserPath;
    *buf = 138412546;
    v148 = v113;
    v149 = 2112;
    v150 = v95;
    _os_log_impl(&_mh_execute_header, waypoints3, OS_LOG_TYPE_ERROR, "Did not find waypointIndex for path: %@ in route: %@", buf, 0x16u);
  }

LABEL_87:

LABEL_88:
  [directionsFeedback setDirectionsContext:v51];

LABEL_81:
  geotaggedPhotoCommentQuestion = [(RAPWebBundleQuestion *)self geotaggedPhotoCommentQuestion];
  [geotaggedPhotoCommentQuestion _fillSubmissionParameters:parametersCopy];
}

- (BOOL)isAnonymous
{
  v5.receiver = self;
  v5.super_class = RAPWebBundleQuestion;
  isAnonymous = [(RAPQuestion *)&v5 isAnonymous];
  if (isAnonymous)
  {
    LOBYTE(isAnonymous) = self->_questionType != 10;
  }

  return isAnonymous;
}

- (void)setDirectionsRecording:(id)recording
{
  recordingCopy = recording;
  if (![(RAPDirectionsRecording *)self->_directionsRecording isEqual:?])
  {
    objc_storeStrong(&self->_directionsRecording, recording);
  }
}

- (void)setReportedUserPath:(id)path
{
  pathCopy = path;
  if (![(RAPUserPathEntry *)self->_reportedUserPath isEqual:?])
  {
    objc_storeStrong(&self->_reportedUserPath, path);
  }
}

- (RAPWebBundleQuestion)initWithReport:(id)report directionsRecording:(id)recording
{
  recordingCopy = recording;
  v11.receiver = self;
  v11.super_class = RAPWebBundleQuestion;
  v8 = [(RAPQuestion *)&v11 initWithReport:report parentQuestion:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_directionsRecording, recording);
    v9->_questionType = 23;
  }

  return v9;
}

- (RAPWebBundleQuestion)initWithReport:(id)report place:(id)place poiCorrectionType:(int)type questionType:(int64_t)questionType
{
  result = [(RAPWebBundleQuestion *)self initWithReport:report place:place questionType:questionType];
  if (result)
  {
    result->_poiCorrectionType = type;
  }

  return result;
}

- (RAPWebBundleQuestion)initWithReport:(id)report place:(id)place questionType:(int64_t)type
{
  placeCopy = place;
  v13.receiver = self;
  v13.super_class = RAPWebBundleQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:report parentQuestion:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reportedPlace, place);
    v11->_questionType = type;
  }

  return v11;
}

- (RAPWebBundleQuestion)initWithReport:(id)report questionType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = RAPWebBundleQuestion;
  result = [(RAPQuestion *)&v6 initWithReport:report parentQuestion:0];
  if (result)
  {
    result->_questionType = type;
  }

  return result;
}

@end