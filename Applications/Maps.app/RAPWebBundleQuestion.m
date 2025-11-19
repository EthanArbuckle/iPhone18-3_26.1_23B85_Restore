@interface RAPWebBundleQuestion
- (BOOL)isAnonymous;
- (RAPCommentQuestion)geotaggedPhotoCommentQuestion;
- (RAPWebBundleQuestion)initWithReport:(id)a3 directionsRecording:(id)a4;
- (RAPWebBundleQuestion)initWithReport:(id)a3 place:(id)a4 poiCorrectionType:(int)a5 questionType:(int64_t)a6;
- (RAPWebBundleQuestion)initWithReport:(id)a3 place:(id)a4 questionType:(int64_t)a5;
- (RAPWebBundleQuestion)initWithReport:(id)a3 questionType:(int64_t)a4;
- (id)questionTypeAsString;
- (void)_fetchChildContainmentWithCompletion:(id)a3;
- (void)_fetchContainmentItems:(id)a3 withCompletion:(id)a4;
- (void)_fetchParentContainmentWithCompletion:(id)a3;
- (void)_fetchTransitInfoFromReportedLine:(id)a3 withCompletion:(id)a4;
- (void)_fetchTransitInfoFromStation:(id)a3 withCompletion:(id)a4;
- (void)_fillSubmissionParameters:(id)a3;
- (void)retrieveContextwithLocales:(id)a3 contextCompletion:(id)a4;
- (void)setDirectionsRecording:(id)a3;
- (void)setReportedUserPath:(id)a3;
@end

@implementation RAPWebBundleQuestion

- (void)_fetchContainmentItems:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = +[GEOMapService sharedService];
  v11 = +[GEOMapService sharedService];
  v12 = [v11 defaultTraits];
  v13 = [v10 ticketForMUIDs:v6 traits:v12];

  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10087B720;
  v18[3] = &unk_10162C7A8;
  objc_copyWeak(&v22, &location);
  v14 = v7;
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

- (void)_fetchParentContainmentWithCompletion:(id)a3
{
  v20 = a3;
  v4 = [(RAPWebBundleQuestion *)self reportedPlace];
  v5 = [v4 mapItem];

  v6 = [v5 _geoMapItem];
  v7 = [v6 _containedPlace];
  v8 = [v7 parent];

  v9 = objc_alloc_init(NSMutableArray);
  if ([v8 _hasMUID])
  {
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 _muid]);
    [v9 addObject:v10];
  }

  v11 = [(RAPWebBundleQuestion *)self reportedPlace];
  v12 = [v11 mapItem];
  v13 = [v12 _geoMapItem];
  v14 = [v13 _venueInfo];

  v15 = [v14 parent];
  if ([v15 businessID])
  {
    v16 = [v14 parent];
    v17 = [v16 businessID];
    v18 = [v8 _muid];

    if (v17 == v18)
    {
      goto LABEL_7;
    }

    v15 = [v14 parent];
    v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 businessID]);
    [v9 addObject:v19];
  }

LABEL_7:
  if ([v9 count])
  {
    [(RAPWebBundleQuestion *)self _fetchContainmentItems:v9 withCompletion:v20];
  }

  else if (v20)
  {
    (*(v20 + 2))(v20, 0, 0);
  }
}

- (void)_fetchChildContainmentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(RAPWebBundleQuestion *)self reportedPlace];
  v7 = [v6 mapItem];
  v8 = [v7 _firstRelatedPlaceListForType:3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 mapIdentifiers];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v15 + 1) + 8 * v13) muid]);
        [v5 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if ([v5 count])
  {
    [(RAPWebBundleQuestion *)self _fetchContainmentItems:v5 withCompletion:v4];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)_fetchTransitInfoFromReportedLine:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v6 artwork];
  v11 = [UIImage _mapkit_transitArtworkImageWithDataSource:v10 size:6 scale:v9];

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v6 lineFeatureID]);
  v13 = objc_alloc_init(RAPWebBundleImageContext);
  v14 = UIImagePNGRepresentation(v11);
  [(RAPWebBundleImageContext *)v13 setImage:v14];

  [(RAPWebBundleImageContext *)v13 setIdentifier:v12];
  v15 = objc_alloc_init(RAPWebBundleTransitLineContext);
  v16 = [v6 displayName];

  [(RAPWebBundleTransitLineContext *)v15 setName:v16];
  [(RAPWebBundleTransitLineContext *)v15 setIdentifier:v12];
  [(RAPWebBundleTransitLineContext *)v15 setImageContext:v13];
  if (v5)
  {
    v20 = v15;
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    v19 = v13;
    v18 = [NSArray arrayWithObjects:&v19 count:1];
    v5[2](v5, v17, v18);
  }
}

- (void)_fetchTransitInfoFromStation:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = [v5 mapItem];
  v11 = [v10 _transitInfo];
  v12 = [v11 lines];

  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = MKMapItemIdentifierFromGEOTransitLine();
        [v9 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v18 = +[MKMapService sharedService];
  v19 = [v9 allObjects];
  v20 = +[MKMapService sharedService];
  v21 = [v20 mapsDefaultTraits];
  v22 = [v18 ticketForTransitLines:v19 traits:v21];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10087C2EC;
  v26[3] = &unk_10165FB28;
  v27 = v8;
  v28 = v7;
  v29 = v6;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  [v22 submitWithHandler:v26 networkActivity:0];
}

- (void)retrieveContextwithLocales:(id)a3 contextCompletion:(id)a4
{
  v87 = a3;
  v86 = a4;
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
  v8 = [(RAPWebBundleQuestion *)self questionType];
  if (v8 <= 10)
  {
    if ((v8 - 1) >= 8)
    {
      if (v8 == 9)
      {
        goto LABEL_20;
      }

      if (v8 != 10)
      {
        goto LABEL_65;
      }
    }

    v13 = [RAPWebBundleAddToMapContext alloc];
    v14 = [(RAPWebBundleQuestion *)self questionTypeAsString];
    v15 = [(RAPWebBundleBaseContext *)v13 initWithType:v14 locales:v87];

    v16 = [RAPPlaceCorrectableAddress alloc];
    v17 = [(RAPWebBundleQuestion *)self reportedPlace];
    v18 = [v17 mapItem];
    v12 = [(RAPPlaceCorrectableAddress *)v16 _initWithMapItem:v18];

    v19 = [v12 freeformAddress];
    v20 = [v19 value];
    [(RAPWebBundleAddToMapContext *)v15 setAddress:v20];

    v21 = v135[5];
    v135[5] = v15;

    goto LABEL_64;
  }

  if (v8 > 22)
  {
    if (v8 > 26)
    {
      if (v8 == 27)
      {
        v76 = [RAPWebBundlePOIContext alloc];
        v77 = [(RAPWebBundleQuestion *)self questionTypeAsString];
        v78 = [(RAPWebBundleBaseContext *)v76 initWithType:v77 locales:v87];

        v79 = [(RAPQuestion *)self report];
        v80 = [v79 _context];
        v81 = [v80 reportedLine];

        v127[0] = _NSConcreteStackBlock;
        v127[1] = 3221225472;
        v127[2] = sub_10087D35C;
        v127[3] = &unk_10162C730;
        v82 = v81;
        v128 = v82;
        v130 = v132;
        v83 = v78;
        v129 = v83;
        v131 = &v134;
        [(RAPWebBundleQuestion *)self _fetchTransitInfoFromReportedLine:v82 withCompletion:v127];

        v12 = v83;
        goto LABEL_64;
      }

      if (v8 == 28)
      {
        v71 = [RAPWebBundleAddToMapContext alloc];
        v72 = [(RAPWebBundleQuestion *)self questionTypeAsString];
        v73 = [(RAPWebBundleBaseContext *)v71 initWithType:v72 locales:v87];

        v74 = [(RAPWebBundleQuestion *)self reportedPlace];
        v75 = [v74 userVisibleTitle];
        [(RAPWebBundleAddToMapContext *)v73 setEntityName:v75];

        v12 = v135[5];
        v135[5] = v73;
        goto LABEL_64;
      }

      if (v8 != 29)
      {
        goto LABEL_65;
      }
    }

    else if ((v8 - 24) >= 3)
    {
      if (v8 == 23)
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
    v88 = self;
    v22 = [RAPWebBundlePOIContext alloc];
    v23 = [(RAPWebBundleQuestion *)self questionTypeAsString];
    v91 = [(RAPWebBundleBaseContext *)v22 initWithType:v23 locales:v87];

    v24 = [(RAPWebBundleQuestion *)self reportedPlace];
    v90 = [v24 mapItem];

    v84 = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:v90 localizedHoursStringOptions:0];
    v85 = [v84 operatingHours];
    v25 = [v85 pdHours];
    v94 = objc_alloc_init(NSMutableArray);
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v25;
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
    v53 = [(RAPWebBundleQuestion *)v88 reportedPlace];
    v54 = [v53 mapItem];
    v55 = [(RAPPlaceCorrectableAddress *)v52 _initWithMapItem:v54];

    v56 = [v55 freeformAddress];
    v57 = [v56 value];
    [(RAPWebBundleAddToMapContext *)v91 setAddress:v57];

    [(RAPWebBundlePOIContext *)v91 setBusinessHours:v40];
    v58 = [v90 name];
    [(RAPWebBundlePOIContext *)v91 setName:v58];

    v59 = [v90 phoneNumber];
    [(RAPWebBundlePOIContext *)v91 setPhoneNumber:v59];

    v60 = [v90 url];
    v61 = [v60 absoluteString];
    [(RAPWebBundlePOIContext *)v91 setUrl:v61];

    v62 = [v90 _localizedCategoryNamesForType:0];
    [(RAPWebBundlePOIContext *)v91 setCategories:v62];

    -[RAPWebBundlePOIContext setPermanentClosed:](v91, "setPermanentClosed:", [v85 hoursType] == 4);
    -[RAPWebBundlePOIContext setTemporaryClosed:](v91, "setTemporaryClosed:", [v85 hoursType] == 3);
    [(RAPWebBundlePOIContext *)v91 setAcceptsApplePay:[v90 _acceptsApplePay]];
    v63 = [v90 _transitInfo];
    LOBYTE(v61) = [v63 linesCount] == 0;

    if ((v61 & 1) == 0)
    {
      dispatch_group_enter(group);
      v64 = [(RAPWebBundleQuestion *)v88 reportedPlace];
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_10087D530;
      v116[3] = &unk_10162C708;
      v116[4] = v88;
      v119 = v132;
      v117 = v91;
      v120 = &v134;
      v118 = group;
      [(RAPWebBundleQuestion *)v88 _fetchTransitInfoFromStation:v64 withCompletion:v116];
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
    [(RAPWebBundleQuestion *)v88 _fetchChildContainmentWithCompletion:v111];
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
    [(RAPWebBundleQuestion *)v88 _fetchParentContainmentWithCompletion:v106];
    v68 = v135[5];
    v135[5] = v67;
    v69 = v67;

    v12 = v90;
    goto LABEL_64;
  }

  if ((v8 - 11) < 0xA)
  {
    goto LABEL_20;
  }

  if ((v8 - 21) < 2)
  {
    v9 = [RAPWebBundleBaseContext alloc];
    v10 = [(RAPWebBundleQuestion *)self questionTypeAsString];
    v11 = [(RAPWebBundleBaseContext *)v9 initWithType:v10 locales:v87];

    v12 = v135[5];
    v135[5] = v11;
LABEL_64:
  }

LABEL_65:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10087D7BC;
  block[3] = &unk_101661430;
  v103 = v86;
  v104 = &v134;
  v105 = v132;
  v70 = v86;
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
    v5 = [(RAPQuestion *)self report];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Details [Report a Problem photos]" value:@"localized string not found" table:0];
    v8 = [(RAPCommentQuestion *)v4 initWithReport:v5 parentQuestion:self title:v7 placeholderText:0 emphasis:4];
    v9 = self->_geotaggedPhotoCommentQuestion;
    self->_geotaggedPhotoCommentQuestion = v8;

    geotaggedPhotoCommentQuestion = self->_geotaggedPhotoCommentQuestion;
  }

  return geotaggedPhotoCommentQuestion;
}

- (id)questionTypeAsString
{
  v2 = [(RAPWebBundleQuestion *)self questionType];
  if (v2 > 0x1D)
  {
    return @"poi";
  }

  else
  {
    return off_10162C7C8[v2];
  }
}

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 details];

  if (!v5)
  {
    v6 = objc_opt_new();
    [v4 setDetails:v6];
  }

  v7 = [(RAPWebBundleQuestion *)self dynamicForm];
  [v4 setDynamicForm:v7];

  switch(self->_questionType)
  {
    case 1:
    case 0xALL:
      v16 = [v4 details];
      v9 = [v16 addressPointFeedback];

      if (!v9)
      {
        v9 = objc_alloc_init(GEORPAddressFeedback);
        v17 = [v4 details];
        [v17 setAddressPointFeedback:v9];
      }

      v18 = [v9 place];

      if (!v18)
      {
        v19 = [(RAPPlace *)self->_reportedPlace mapItem];
        v20 = [v19 _geoMapItem];
        v21 = [v20 _placeData];
        [v9 setPlace:v21];
      }

      v22 = [(RAPPlace *)self->_reportedPlace placeInfo];

      if (v22)
      {
        v23 = [(RAPPlace *)self->_reportedPlace placeInfo];
        v24 = [v23 placeRequest];
        [v9 setPlaceRequest:v24];
      }

      v25 = [(RAPPlace *)self->_reportedPlace mapItem];
      v26 = [v25 _maps_isHomeWorkOrSchool];

      if (!v26)
      {
        goto LABEL_80;
      }

      v12 = [v9 personalizedMaps];
      if (!v12)
      {
        v12 = objc_alloc_init(GEORPPersonalizedMapsContext);
        [v9 setPersonalizedMaps:v12];
      }

      [v12 setAddressType:9];
      v27 = [(RAPPlace *)self->_reportedPlace mapItem];
      v28 = [v27 _maps_isHome];

      if (v28)
      {
        v29 = 1;
      }

      else
      {
        v89 = [(RAPPlace *)self->_reportedPlace mapItem];
        v90 = [v89 _maps_isWork];

        if (v90)
        {
          v29 = 2;
        }

        else
        {
          v114 = [(RAPPlace *)self->_reportedPlace mapItem];
          v115 = [v114 _maps_isSchool];

          if (v115)
          {
            v29 = 3;
          }

          else
          {
            v29 = 0;
          }
        }
      }

      [v12 setPlaceType:v29];
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
      v8 = [v4 details];
      v9 = [v8 poiFeedback];

      if (!v9)
      {
        v9 = objc_alloc_init(GEORPPoiFeedback);
        v10 = [v4 details];
        [v10 setPoiFeedback:v9];
      }

      [v9 setCorrectionType:self->_poiCorrectionType];
      v11 = [v9 place];

      if (v11)
      {
        goto LABEL_80;
      }

      v12 = [(RAPPlace *)self->_reportedPlace mapItem];
      v13 = [v12 _geoMapItem];
      v14 = [v13 _placeData];
      [v9 setPlace:v14];
      goto LABEL_8;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 0x1CLL:
      v15 = [v4 details];
      v9 = [v15 addMapFeedback];

      if (v9)
      {
        goto LABEL_80;
      }

      v9 = objc_alloc_init(GEORPAddToMapFeedback);
      [v9 setIsEntrypointReportSomethingMissing:GEOConfigGetBOOL()];
      v12 = [v4 details];
      [v12 setAddMapFeedback:v9];
      goto LABEL_79;
    case 0xBLL:
      v39 = [v4 details];
      v9 = [v39 localityFeedback];

      if (!v9)
      {
        v9 = objc_alloc_init(GEORPLocalityFeedback);
        v40 = [v4 details];
        [v40 setLocalityFeedback:v9];
      }

      v41 = [v9 place];

      if (!v41)
      {
        v42 = [(RAPWebBundleQuestion *)self reportedPlace];
        v43 = [v42 mapItem];
        v44 = [v43 _geoMapItem];
        v45 = [v44 _placeData];
        [v9 setPlace:v45];
      }

      v46 = [(RAPPlace *)self->_reportedPlace placeInfo];

      if (!v46)
      {
        goto LABEL_80;
      }

      v12 = [(RAPWebBundleQuestion *)self reportedPlace];
      v13 = [v12 placeInfo];
      v14 = [v13 placeRequest];
      [v9 setPlaceRequest:v14];
      goto LABEL_8;
    case 0x15:
    case 0x16:
      v38 = [v4 details];
      v9 = [v38 streetFeedback];

      if (v9)
      {
        goto LABEL_80;
      }

      v9 = objc_alloc_init(GEORPStreetFeedback);
      v12 = [v4 details];
      [v12 setStreetFeedback:v9];
      goto LABEL_79;
    case 0x17:
      v47 = [v4 details];
      v48 = [v47 directionsFeedback];

      if (!v48)
      {
        v48 = objc_alloc_init(GEORPDirectionsFeedback);
        v49 = [v4 details];
        [v49 setDirectionsFeedback:v48];
      }

      v50 = self->_directionsRecording;
      v51 = objc_alloc_init(GEORPDirectionsFeedbackContext);
      reportedUserPath = self->_reportedUserPath;
      if (reportedUserPath && (v53 = -[RAPUserPathEntry routeIndex](reportedUserPath, "routeIndex"), -[RAPDirectionsRecording routes](v50, "routes"), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v54 count], v54, v55 > v53))
      {
        v56 = [(RAPDirectionsRecording *)v50 routes];
        v57 = [v56 objectAtIndexedSubscript:{-[RAPUserPathEntry routeIndex](self->_reportedUserPath, "routeIndex")}];

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
        v61 = [(RAPDirectionsRecording *)v50 routes];
        v62 = [v61 mutableCopy];
        [v51 setRoutes:v62];

        v59 = sub_100798874();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v63 = v51;
          v64 = self->_reportedUserPath;
          v65 = [(RAPDirectionsRecording *)v50 routes];
          *buf = 138412546;
          v148 = v64;
          v51 = v63;
          v149 = 2048;
          v150 = [v65 count];
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "updating RAPWebBundleQuestion with reportedUserPath: %@ and multiple routes (count: %ld)", buf, 0x16u);
        }

        v57 = 0;
      }

      v135 = v57;
      v136 = v48;

      v66 = [(RAPUserPathEntry *)self->_reportedUserPath rerouteLocation];
      if (v66)
      {
        v67 = v66;
        v68 = [(RAPUserPathEntry *)self->_reportedUserPath traversal];

        if (v68 == 2)
        {
          v69 = [NSMutableArray alloc];
          v70 = [(RAPUserPathEntry *)self->_reportedUserPath rerouteLocation];
          v71 = [v69 initWithObjects:{v70, 0}];
          [v51 setRerouteLocations:v71];
        }
      }

      v72 = [GEORPPlaceInfo alloc];
      v73 = [(RAPDirectionsRecording *)v50 startWaypointCorrectedSearchTemplate];
      v74 = [v72 initWithCorrectedSearch:v73];

      [v74 clearSessionId];
      v75 = objc_alloc_init(GEORPPlaceRequestResponse);
      v76 = [v74 placeRequest];
      [v75 setPlaceRequest:v76];

      v134 = v74;
      v77 = [v74 placeResponse];
      [v75 setPlaceResponse:v77];

      v78 = [GEORPPlaceInfo alloc];
      v79 = [(RAPDirectionsRecording *)v50 endWaypointCorrectedSearchTemplate];
      v80 = [v78 initWithCorrectedSearch:v79];

      [v80 clearSessionId];
      v81 = objc_alloc_init(GEORPPlaceRequestResponse);
      v82 = [v80 placeRequest];
      [v81 setPlaceRequest:v82];

      v133 = v80;
      v83 = [v80 placeResponse];
      [v81 setPlaceResponse:v83];

      v84 = [NSMutableArray arrayWithObjects:v75, v81, 0];
      [v51 setDirectionsWaypointPlaceInfos:v84];

      v85 = [(RAPDirectionsRecording *)v50 startWaypoint];
      if (v85)
      {
        v86 = [GEORPUserSearchInput alloc];
        v87 = [(RAPDirectionsRecording *)v50 startWaypoint];
        v88 = [v86 initWithRAPUserSearchInput:v87];
        [v51 setStartWaypoint:v88];
      }

      else
      {
        [v51 setStartWaypoint:0];
      }

      v91 = [(RAPDirectionsRecording *)v50 endWaypoint];
      if (v91)
      {
        v92 = [GEORPUserSearchInput alloc];
        v93 = [(RAPDirectionsRecording *)v50 endWaypoint];
        v94 = [v92 initWithRAPUserSearchInput:v93];
        [v51 setEndWaypoint:v94];
      }

      else
      {
        [v51 setEndWaypoint:0];
      }

      v95 = v135;

      v96 = [(RAPDirectionsRecording *)v50 endWaypoint];
      v97 = [v96 findMyHandleID];

      if (v97)
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

      v99 = [(RAPUserPathEntry *)v98 stepIndex];
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      v100 = [v135 routeLegs];
      v101 = [v100 countByEnumeratingWithState:&v141 objects:v146 count:16];
      if (!v101)
      {
        goto LABEL_73;
      }

      v102 = 0;
      v131 = v99;
      v132 = 0;
      v103 = *v142;
      v129 = v100;
      v130 = v51;
      v128 = v75;
      v126 = *v142;
      break;
    case 0x1ALL:
    case 0x1BLL:
      v30 = [v4 details];
      v9 = [v30 transitPoiFeedback];

      if (!v9)
      {
        v9 = objc_alloc_init(GEORPTransitPoiFeedback);
        v31 = [v4 details];
        [v31 setTransitPoiFeedback:v9];
      }

      v32 = [v4 details];
      v33 = [v32 transitPoiFeedback];
      v34 = [v33 place];

      if (v34)
      {
        goto LABEL_80;
      }

      v12 = [(RAPWebBundleQuestion *)self reportedPlace];
      v13 = [v12 mapItem];
      v14 = [v13 _geoMapItem];
      v35 = [v14 _placeData];
      v36 = [v4 details];
      v37 = [v36 transitPoiFeedback];
      [v37 setPlace:v35];

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
        objc_enumerationMutation(v100);
      }

      v106 = *(*(&v141 + 1) + 8 * v104);
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v107 = [v106 steps];
      v108 = [v107 countByEnumeratingWithState:&v137 objects:v145 count:16];
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
              objc_enumerationMutation(v107);
            }

            if (!v111)
            {

              v117 = (v105 + 1);
              v118 = [(RAPDirectionsRecording *)v50 waypoints];
              v119 = [v118 count];

              if (v117 >= v119)
              {
                v112 = sub_100798874();
                v48 = v136;
                v51 = v130;
                v75 = v128;
                if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                {
                  v123 = [(RAPDirectionsRecording *)v50 waypoints];
                  v124 = [v123 count];
                  *buf = 134218240;
                  v148 = v117;
                  v149 = 2048;
                  v150 = v124;
                  _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "found waypointIndex: %lu but recorded waypoints did not match: %lu", buf, 0x16u);
                }

                v95 = v135;
              }

              else
              {
                v120 = [GEORPUserSearchInput alloc];
                v112 = [(RAPDirectionsRecording *)v50 waypoints];
                v121 = [v112 objectAtIndexedSubscript:v117];
                v122 = [v120 initWithRAPUserSearchInput:v121];
                v51 = v130;
                [v130 setEndWaypoint:v122];

                v95 = v135;
                v48 = v136;
                v75 = v128;
              }

              goto LABEL_87;
            }

            --v111;
            v109 = v109 - 1;
          }

          while (v109);
          v109 = [v107 countByEnumeratingWithState:&v137 objects:v145 count:16];
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
      v48 = v136;
      v100 = v129;
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

  v112 = sub_100798874();
  if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
  {
    v113 = self->_reportedUserPath;
    *buf = 138412546;
    v148 = v113;
    v149 = 2112;
    v150 = v95;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_ERROR, "Did not find waypointIndex for path: %@ in route: %@", buf, 0x16u);
  }

LABEL_87:

LABEL_88:
  [v48 setDirectionsContext:v51];

LABEL_81:
  v116 = [(RAPWebBundleQuestion *)self geotaggedPhotoCommentQuestion];
  [v116 _fillSubmissionParameters:v4];
}

- (BOOL)isAnonymous
{
  v5.receiver = self;
  v5.super_class = RAPWebBundleQuestion;
  v3 = [(RAPQuestion *)&v5 isAnonymous];
  if (v3)
  {
    LOBYTE(v3) = self->_questionType != 10;
  }

  return v3;
}

- (void)setDirectionsRecording:(id)a3
{
  v5 = a3;
  if (![(RAPDirectionsRecording *)self->_directionsRecording isEqual:?])
  {
    objc_storeStrong(&self->_directionsRecording, a3);
  }
}

- (void)setReportedUserPath:(id)a3
{
  v5 = a3;
  if (![(RAPUserPathEntry *)self->_reportedUserPath isEqual:?])
  {
    objc_storeStrong(&self->_reportedUserPath, a3);
  }
}

- (RAPWebBundleQuestion)initWithReport:(id)a3 directionsRecording:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RAPWebBundleQuestion;
  v8 = [(RAPQuestion *)&v11 initWithReport:a3 parentQuestion:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_directionsRecording, a4);
    v9->_questionType = 23;
  }

  return v9;
}

- (RAPWebBundleQuestion)initWithReport:(id)a3 place:(id)a4 poiCorrectionType:(int)a5 questionType:(int64_t)a6
{
  result = [(RAPWebBundleQuestion *)self initWithReport:a3 place:a4 questionType:a6];
  if (result)
  {
    result->_poiCorrectionType = a5;
  }

  return result;
}

- (RAPWebBundleQuestion)initWithReport:(id)a3 place:(id)a4 questionType:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = RAPWebBundleQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:a3 parentQuestion:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reportedPlace, a4);
    v11->_questionType = a5;
  }

  return v11;
}

- (RAPWebBundleQuestion)initWithReport:(id)a3 questionType:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = RAPWebBundleQuestion;
  result = [(RAPQuestion *)&v6 initWithReport:a3 parentQuestion:0];
  if (result)
  {
    result->_questionType = a4;
  }

  return result;
}

@end