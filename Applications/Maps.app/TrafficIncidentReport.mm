@interface TrafficIncidentReport
+ (int)actionForVoteType:(int)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)descriptionText;
- (NSString)displayText;
- (TrafficIncidentReport)initWithCoder:(id)a3;
- (TrafficIncidentReport)initWithIncidentLocation:(id)a3 type:(int)a4 userPath:(int)a5;
- (TrafficIncidentReport)initWithType:(int)a3 countryCodeUponCreation:(id)a4;
- (TrafficIncidentReport)initWithUserLocation:(id)a3 type:(int)a4 userPath:(int)a5;
- (double)timestamp;
- (id)_incidentUserPath;
- (id)_processLocations:(id)a3;
- (id)description;
- (id)mapItemLocation;
- (void)_commonInit;
- (void)_displayInternalErrorAlert;
- (void)_submitFeedbackRequestParameters:(id)a3 attachedImages:(id)a4 comments:(id)a5 requireAuthenication:(BOOL)a6 completionHandler:(id)a7;
- (void)_submitFeedbackRequestParameters:(id)a3 attachedImages:(id)a4 comments:(id)a5 userInfo:(id)a6;
- (void)_updateForUserIncidentReport:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)submitFeedbackForType:(int)a3 incidentId:(id)a4 completionHandler:(id)a5;
- (void)submitWithAttachedImages:(id)a3 comments:(id)a4 completionHandler:(id)a5;
- (void)submitWithCompletionHandler:(id)a3;
@end

@implementation TrafficIncidentReport

- (id)_incidentUserPath
{
  v3 = objc_alloc_init(GEORPIncidentUserPath);
  [v3 addUserPath:self->_userPath];
  [v3 setReportedFromCarplay:self->_reportedFromCarplay];
  v4 = +[MNNavigationService sharedService];
  v5 = [v4 isInNavigatingState];

  if (v5)
  {
    [v3 setNavigationActive:1];
    v6 = +[MNNavigationService sharedService];
    [v3 setTransportType:{objc_msgSend(v6, "navigationTransportType")}];
  }

  return v3;
}

- (id)_processLocations:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 count];
    if ([v3 count] <= 0x78)
    {
      v5 = [v3 count];
    }

    else
    {
      v5 = 120;
    }

    v7 = [v3 subarrayWithRange:{&v4[-v5], objc_msgSend(v3, "count") - &v4[-v5]}];
    v6 = sub_100021DB0(v7, &stru_10163BA60);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_displayInternalErrorAlert
{
  v3 = +[GEOPlatform sharedPlatform];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v5 = [(TrafficIncidentReport *)self submissionCount];
    if (v5 >= GEOConfigGetUInteger())
    {

      dispatch_async(&_dispatch_main_q, &stru_10163BA00);
    }
  }
}

- (void)_updateForUserIncidentReport:(id)a3
{
  v3 = a3;
  v4 = [v3 submissionParameters];
  v5 = [v4 details];
  v6 = [v5 incidentFeedback];
  v7 = [v6 newIncidentDetails];

  v8 = +[MNNavigationService sharedService];
  LODWORD(v5) = [v8 isInNavigatingState];

  if (v5 && v7)
  {
    v9 = objc_alloc_init(GEOUserIncidentReport);
    -[NSObject setType:](v9, "setType:", [v7 type]);
    v10 = [v3 submissionParameters];
    v11 = [v10 clientSubmissionUuid];
    [v9 setClientSubmissionUuid:v11];

    v12 = objc_alloc_init(GEOUserReportLocationDetails);
    [v9 setUserLocation:v12];

    v13 = [v7 userLocation];
    v14 = [v13 currentUserLocation];
    v15 = [v9 userLocation];
    [v15 setCurrentUserLocation:v14];

    v16 = [v7 userLocation];
    v17 = [v16 deviceHistoricalLocations];
    v18 = [v9 userLocation];
    [v18 setDeviceHistoricalLocations:v17];

    v19 = [MNRouteProximitySensor alloc];
    v20 = +[MNNavigationService sharedService];
    v21 = [v20 route];
    v22 = [v19 initWithRoute:v21];

    v23 = [v9 userLocation];
    v24 = [v23 currentUserLocation];
    [v22 updateForLocation:v24];

    v25 = [v22 closestPointOnRoute];
    v26 = [v9 userLocation];
    [v26 setLastKnownRoadLocation:v25];

    v27 = +[MNNavigationService sharedService];
    [v27 updateForUserIncidentReport:v9];
  }

  else
  {
    v9 = sub_10002171C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will skip updateForUserIncidentReport", v28, 2u);
    }
  }
}

- (void)_submitFeedbackRequestParameters:(id)a3 attachedImages:(id)a4 comments:(id)a5 userInfo:(id)a6
{
  v10 = a3;
  v46 = a4;
  v11 = a5;
  v45 = a6;
  if (_GEOConfigHasValue())
  {
    BOOL = GEOConfigGetBOOL();
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = [NSNumber numberWithUnsignedInt:168];
    v54 = v13;
    v57 = &off_1016EE650;
    v14 = [NSNumber numberWithUnsignedInt:170];
    v55 = v14;
    v58 = &off_1016EE678;
    v15 = [NSNumber numberWithUnsignedInt:167];
    v56 = v15;
    v59 = &off_1016EE6A0;
    v16 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v54 count:3];

    v17 = [NSNumber numberWithUnsignedInt:168];
    v18 = [v16 objectForKeyedSubscript:v17];

    v19 = +[GEOCountryConfiguration sharedConfiguration];
    v20 = [v19 countryCode];
    v21 = [v18 objectForKey:v20];

    if (v21)
    {
      v22 = [v21 BOOLValue];
    }

    else
    {
      v22 = GEOConfigGetBOOL();
    }

    BOOL = v22;

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  if (BOOL)
  {
    v23 = [v10 submissionParameters];
    v24 = [v23 commonCorrections];

    if (!v24)
    {
      v25 = objc_alloc_init(GEORPFeedbackCommonCorrections);
      v26 = [v10 submissionParameters];
      [v26 setCommonCorrections:v25];
    }

    v27 = [v10 submissionParameters];
    v28 = [v27 commonCorrections];
    [v28 setComments:v11];
  }

LABEL_12:
  [(TrafficIncidentReport *)self _updateForUserIncidentReport:v10];
  if (!_GEOConfigHasValue())
  {
    v30 = [NSNumber numberWithUnsignedInt:168];
    v54 = v30;
    v57 = &off_1016EE650;
    v31 = [NSNumber numberWithUnsignedInt:170];
    v55 = v31;
    v58 = &off_1016EE678;
    v32 = [NSNumber numberWithUnsignedInt:167];
    v56 = v32;
    v59 = &off_1016EE6A0;
    v33 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v54 count:3];

    v34 = [NSNumber numberWithUnsignedInt:169];
    v35 = [v33 objectForKeyedSubscript:v34];

    v36 = +[GEOCountryConfiguration sharedConfiguration];
    v37 = [v36 countryCode];
    v38 = [v35 objectForKey:v37];

    if (v38)
    {
      v39 = [v38 BOOLValue];

      if (v39)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v44 = GEOConfigGetBOOL();

      if (v44)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v29 = 0;
    goto LABEL_18;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v29 = +[GEORPFeedbackRequest clientTestingDebugSettings];
LABEL_18:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B8A464;
  block[3] = &unk_10163B9E0;
  v53 = BOOL;
  v48 = v10;
  v49 = v46;
  v50 = v45;
  v51 = v29;
  v52 = self;
  v40 = v29;
  v41 = v45;
  v42 = v46;
  v43 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_submitFeedbackRequestParameters:(id)a3 attachedImages:(id)a4 comments:(id)a5 requireAuthenication:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15);
  }

  if (v8)
  {
    v17 = +[TrafficIncidentAuthenticationManager sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100B8A7D0;
    v18[3] = &unk_10163B990;
    v18[4] = self;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    [v17 generateAuthenticationInfoWithCompletionHandler:v18];
  }

  else
  {
    [(TrafficIncidentReport *)self _submitFeedbackRequestParameters:v12 attachedImages:v13 comments:v14 userInfo:0];
  }
}

- (void)submitFeedbackForType:(int)a3 incidentId:(id)a4 completionHandler:(id)a5
{
  v7 = *&a3;
  v9 = a4;
  v10 = a5;
  if (v7 != 4)
  {
    goto LABEL_4;
  }

  if (_GEOConfigHasValue())
  {
    if (GEOConfigGetBOOL())
    {
LABEL_4:
      v11 = +[MKLocationManager sharedLocationManager];
      v12 = [v11 currentLocation];

      v13 = objc_alloc_init(GEORPIncidentAnnotationDetails);
      v14 = objc_alloc_init(GEORPUserLocationDetails);
      [v13 setUserLocation:v14];

      v15 = [v13 userLocation];
      [v15 setCurrentUserLocation:v12];

      [v13 setAnnotationType:v7];
      [v13 setIncidentId:v9];
      [v13 setIncidentType:self->_incidentType];
      v16 = [(GEOLocation *)self->_incidentLocation latLng];
      [v13 setIncidentLocation:v16];

      self->_annotationType = v7;
      objc_storeStrong(&self->_incidentId, a4);
      objc_storeStrong(&self->_userLocation, v12);
      self->_hidden = 1;
      v17 = +[TrafficIncidentsStorageManager sharedInstance];
      [v17 addReport:self];

      if (v7 == 3 || v9)
      {
        v18 = +[TrafficIncidentsStorageManager sharedInstance];
        [v18 hideReport:self];
      }

      objc_initWeak(location, self);
      v19 = [GEORPFeedbackRequestParameters alloc];
      v20 = [(TrafficIncidentReport *)self _incidentUserPath];
      v21 = [v19 initWithIncidentAnnotationDetails:v13 userPath:v20];

      v22 = sub_100F35DC4();
      if (v7 == 4)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      v24 = sub_10002171C();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        incidentType = self->_incidentType;
        if ((v7 - 1) >= 4)
        {
          v26 = [NSString stringWithFormat:@"(unknown: %i)", v7];
        }

        else
        {
          v26 = *(&off_10163BB58 + (v7 - 1));
        }

        *buf = 67109378;
        *&buf[4] = incidentType;
        LOWORD(v43) = 2112;
        *(&v43 + 2) = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Submitting incident feedback: %d annotationType %@", buf, 0x12u);
      }

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100B8ADF0;
      v38[3] = &unk_101660648;
      objc_copyWeak(&v40, location);
      v39 = v10;
      [(TrafficIncidentReport *)self _submitFeedbackRequestParameters:v21 attachedImages:0 comments:0 requireAuthenication:v23 completionHandler:v38];

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);

      goto LABEL_18;
    }
  }

  else
  {
    v27 = [NSNumber numberWithUnsignedInt:168];
    location[0] = v27;
    *buf = &off_1016EE650;
    v28 = [NSNumber numberWithUnsignedInt:170];
    location[1] = v28;
    *&v43 = &off_1016EE678;
    v29 = [NSNumber numberWithUnsignedInt:167];
    location[2] = v29;
    *(&v43 + 1) = &off_1016EE6A0;
    v30 = [NSDictionary dictionaryWithObjects:buf forKeys:location count:3];

    v31 = [NSNumber numberWithUnsignedInt:167];
    v32 = [v30 objectForKeyedSubscript:v31];

    v33 = +[GEOCountryConfiguration sharedConfiguration];
    v34 = [v33 countryCode];
    v35 = [v32 objectForKey:v34];

    if (v35)
    {
      BOOL = [v35 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    if (BOOL)
    {
      goto LABEL_4;
    }
  }

  v37 = sub_10002171C();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Submitting Feedback for AUTO_UP_VOTE is disabled", buf, 2u);
  }

  if (v10)
  {
    v10[2](v10);
  }

LABEL_18:
}

- (void)submitWithAttachedImages:(id)a3 comments:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[TrafficIncidentsStorageManager sharedInstance];
  [v11 addReport:self];

  v12 = +[DeviceRecentLocations sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100B8AF98;
  v16[3] = &unk_10163B968;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 updateLocationsWithCompletionHandler:v16];
}

- (void)submitWithCompletionHandler:(id)a3
{
  annotationType = self->_annotationType;
  v5 = a3;
  v6 = sub_10002171C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (annotationType)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Submitting feedback", buf, 2u);
    }

    [(TrafficIncidentReport *)self submitFeedbackForType:self->_annotationType incidentId:self->_incidentId completionHandler:v5];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Submitting new report", v8, 2u);
    }

    [(TrafficIncidentReport *)self submitWithAttachedImages:0 comments:0 completionHandler:v5];
  }
}

- (NSString)descriptionText
{
  v3 = +[MKTrafficSupport sharedTrafficSupport];
  v4 = [v3 localizedReportedByYouForGEOTrafficIncidentType:{-[TrafficIncidentReport incidentType](self, "incidentType")}];

  return v4;
}

- (NSString)displayText
{
  v2 = [(TrafficIncidentReport *)self incidentType];

  return [TrafficIncidentLayoutItem defaultDisplayTextForType:v2];
}

- (double)timestamp
{
  [(GEOLocation *)self->_incidentLocation timestamp];
  v3 = 64;
  if (v4 != 0.0)
  {
    v3 = 56;
  }

  v5 = *(&self->super.isa + v3);

  [v5 timestamp];
  return result;
}

- (id)mapItemLocation
{
  incidentLocation = self->_incidentLocation;
  if (!incidentLocation)
  {
    incidentLocation = self->_userLocation;
  }

  return incidentLocation;
}

- (id)description
{
  uniqueID = self->_uniqueID;
  incidentType = self->_incidentType;
  if (incidentType >= 0x14)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_incidentType];
  }

  else
  {
    v5 = *(&off_10163BAB8 + incidentType);
  }

  incidentLocation = self->_incidentLocation;
  userLocation = self->_userLocation;
  userPath = self->_userPath;
  if (userPath >= 7)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_userPath];
  }

  else
  {
    v9 = *(&off_10163BA80 + userPath);
  }

  submissionCount = self->_submissionCount;
  incidentId = self->_incidentId;
  v12 = self->_annotationType - 1;
  if (v12 >= 4)
  {
    v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_annotationType];
  }

  else
  {
    v13 = *(&off_10163BB58 + v12);
  }

  if (self->_hidden)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [NSString stringWithFormat:@"uniqueID: %@ incidentType: %@ incidentLocation: %@ userLocation: %@ userPath:%@, TransitPassManager submissionCount: %lu, incidentId :%@, annotationType:%@, hidden:%@", uniqueID, v5, incidentLocation, userLocation, v9, submissionCount, incidentId, v13, v14];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(TrafficIncidentReport *)v4 uniqueID];
      v6 = [v5 UUIDString];
      v7 = [(TrafficIncidentReport *)self uniqueID];
      v8 = [v7 UUIDString];
      v9 = [v6 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(TrafficIncidentReport *)self incidentLocation];
  [v9 encodeObject:v4 forKey:@"incidentLocation"];

  v5 = [(TrafficIncidentReport *)self userLocation];
  [v9 encodeObject:v5 forKey:@"userLocation"];

  [v9 encodeInt32:-[TrafficIncidentReport incidentType](self forKey:{"incidentType"), @"incidentType"}];
  v6 = [(TrafficIncidentReport *)self incidentId];
  [v9 encodeObject:v6 forKey:@"incidentId"];

  [v9 encodeInt32:-[TrafficIncidentReport annotationType](self forKey:{"annotationType"), @"annotationType"}];
  [v9 encodeInt32:-[TrafficIncidentReport userPath](self forKey:{"userPath"), @"userPath"}];
  v7 = [(TrafficIncidentReport *)self uniqueID];
  [v9 encodeObject:v7 forKey:@"uniqueID"];

  v8 = [(TrafficIncidentReport *)self incidentUpdateTime];
  [v9 encodeObject:v8 forKey:@"incidentUpdateTime"];

  [v9 encodeBool:-[TrafficIncidentReport isSiriContext](self forKey:{"isSiriContext"), @"siriContext"}];
  [v9 encodeBool:-[TrafficIncidentReport isHidden](self forKey:{"isHidden"), @"hidden"}];
  [v9 encodeBool:-[TrafficIncidentReport isReportedFromCarplay](self forKey:{"isReportedFromCarplay"), @"reportedFromCarplay"}];
  [v9 encodeBool:-[TrafficIncidentReport submissionFailed](self forKey:{"submissionFailed"), @"submissionFailed"}];
  [v9 encodeInteger:-[TrafficIncidentReport submissionCount](self forKey:{"submissionCount"), @"submissionCount"}];
}

- (TrafficIncidentReport)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TrafficIncidentReport;
  v5 = [(TrafficIncidentReport *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"incidentLocation"];
    [(TrafficIncidentReport *)v5 setIncidentLocation:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userLocation"];
    [(TrafficIncidentReport *)v5 setUserLocation:v7];

    -[TrafficIncidentReport setIncidentType:](v5, "setIncidentType:", [v4 decodeInt32ForKey:@"incidentType"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"incidentId"];
    [(TrafficIncidentReport *)v5 setIncidentId:v8];

    -[TrafficIncidentReport setAnnotationType:](v5, "setAnnotationType:", [v4 decodeInt32ForKey:@"annotationType"]);
    -[TrafficIncidentReport setUserPath:](v5, "setUserPath:", [v4 decodeInt32ForKey:@"userPath"]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
    [(TrafficIncidentReport *)v5 setUniqueID:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"incidentUpdateTime"];
    [(TrafficIncidentReport *)v5 setIncidentUpdateTime:v10];

    -[TrafficIncidentReport setSiriContext:](v5, "setSiriContext:", [v4 decodeBoolForKey:@"siriContext"]);
    -[TrafficIncidentReport setHidden:](v5, "setHidden:", [v4 decodeBoolForKey:@"hidden"]);
    -[TrafficIncidentReport setReportedFromCarplay:](v5, "setReportedFromCarplay:", [v4 decodeBoolForKey:@"reportedFromCarplay"]);
    -[TrafficIncidentReport setSubmissionFailed:](v5, "setSubmissionFailed:", [v4 decodeBoolForKey:@"submissionFailed"]);
    -[TrafficIncidentReport setSubmissionCount:](v5, "setSubmissionCount:", [v4 decodeIntegerForKey:@"submissionCount"]);
  }

  return v5;
}

- (void)_commonInit
{
  v3 = +[NSUUID UUID];
  uniqueID = self->_uniqueID;
  self->_uniqueID = v3;

  v5 = +[NSDate date];
  incidentUpdateTime = self->_incidentUpdateTime;
  self->_incidentUpdateTime = v5;

  self->_submissionCount = 0;
  [(GEOLocation *)self->_incidentLocation clearSensitiveFields:0];
  userLocation = self->_userLocation;

  [(GEOLocation *)userLocation clearSensitiveFields:0];
}

- (TrafficIncidentReport)initWithUserLocation:(id)a3 type:(int)a4 userPath:(int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TrafficIncidentReport;
  v10 = [(TrafficIncidentReport *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userLocation, a3);
    v11->_incidentType = a4;
    v11->_userPath = a5;
    [(TrafficIncidentReport *)v11 _commonInit];
  }

  return v11;
}

- (TrafficIncidentReport)initWithIncidentLocation:(id)a3 type:(int)a4 userPath:(int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TrafficIncidentReport;
  v10 = [(TrafficIncidentReport *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_incidentLocation, a3);
    v11->_incidentType = a4;
    v11->_userPath = a5;
    [(TrafficIncidentReport *)v11 _commonInit];
  }

  return v11;
}

- (TrafficIncidentReport)initWithType:(int)a3 countryCodeUponCreation:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TrafficIncidentReport;
  v8 = [(TrafficIncidentReport *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_incidentType = a3;
    objc_storeStrong(&v8->_countryCodeUponCreation, a4);
    [(TrafficIncidentReport *)v9 _commonInit];
  }

  return v9;
}

+ (int)actionForVoteType:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return 107;
  }

  else
  {
    return dword_101212C60[a3 - 1];
  }
}

@end