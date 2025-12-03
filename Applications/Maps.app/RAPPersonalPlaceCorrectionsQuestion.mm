@interface RAPPersonalPlaceCorrectionsQuestion
- (BOOL)isAdjustedCoordinateBeyondThreshold;
- (CLLocationCoordinate2D)correctedCoordinate;
- (CLLocationCoordinate2D)currentCoordinate;
- (CLLocationCoordinate2D)originalCoordinate;
- (NSString)localizedTitle;
- (RAPPersonalPlaceCorrectionsQuestion)initWithReport:(id)report parentQuestion:(id)question shortcut:(id)shortcut;
- (id)_geoCoordinateFromUserCorrections;
- (int64_t)questionCategory;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)addUserPathItem:(int)item;
- (void)rapCompleted:(BOOL)completed privacyShown:(BOOL)shown analyticsEvent:(id)event;
- (void)setCorrectedCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)submitRAPWithWillSubmitBlock:(id)block didSubmitBlock:(id)submitBlock;
@end

@implementation RAPPersonalPlaceCorrectionsQuestion

- (CLLocationCoordinate2D)correctedCoordinate
{
  latitude = self->_correctedCoordinate.latitude;
  longitude = self->_correctedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)originalCoordinate
{
  latitude = self->_originalCoordinate.latitude;
  longitude = self->_originalCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSString)localizedTitle
{
  type = [(MapsSuggestionsShortcut *)self->_shortcut type];
  if (type == 2)
  {
    v3 = @"Home Details";
    goto LABEL_7;
  }

  if (type == 5)
  {
    v3 = @"School Details";
    goto LABEL_7;
  }

  if (type == 3)
  {
    v3 = @"Work Details";
LABEL_7:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];

    goto LABEL_9;
  }

  v5 = &stru_1016631F0;
LABEL_9:

  return v5;
}

- (int64_t)questionCategory
{
  shortcutType = [(RAPPersonalPlaceCorrectionsQuestion *)self shortcutType];
  if ((shortcutType - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_101215FF0[shortcutType - 2];
  }
}

- (void)addUserPathItem:(int)item
{
  v3 = *&item;
  userPaths = self->_userPaths;
  if (!userPaths)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_userPaths;
    self->_userPaths = v6;

    userPaths = self->_userPaths;
  }

  v8 = [NSNumber numberWithInt:v3];
  [(NSMutableArray *)userPaths addObject:v8];
}

- (void)submitRAPWithWillSubmitBlock:(id)block didSubmitBlock:(id)submitBlock
{
  blockCopy = block;
  submitBlockCopy = submitBlock;
  report = [(RAPQuestion *)self report];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EC57CC;
  v15[3] = &unk_101658540;
  v15[4] = self;
  v12 = submitBlockCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EC5870;
  v13[3] = &unk_101658568;
  v14 = blockCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EC5888;
  v11[3] = &unk_101658590;
  v9 = submitBlockCopy;
  v10 = blockCopy;
  [report submitWithPrivacyRequestHandler:v15 willStartSubmitting:v13 didFinishSubmitting:v11];
}

- (void)rapCompleted:(BOOL)completed privacyShown:(BOOL)shown analyticsEvent:(id)event
{
  if (completed)
  {
    v5 = 10112;
  }

  else
  {
    v5 = 10113;
  }

  if (shown)
  {
    v6 = 1313;
  }

  else
  {
    v6 = 1305;
  }

  [GEOAPPortal captureUserAction:v5 target:v6 value:event];
}

- (void)setCorrectedCoordinate:(CLLocationCoordinate2D)coordinate
{
  if (vabdd_f64(coordinate.latitude, self->_correctedCoordinate.latitude) >= 0.00000000999999994 || vabdd_f64(coordinate.longitude, self->_correctedCoordinate.longitude) >= 0.00000000999999994)
  {
    self->_correctedCoordinate = coordinate;
    [(RAPQuestion *)self _didChange];
  }
}

- (BOOL)isAdjustedCoordinateBeyondThreshold
{
  [(RAPPersonalPlaceCorrectionsQuestion *)self originalCoordinate];
  v4 = v3;
  v6 = v5;
  [(RAPPersonalPlaceCorrectionsQuestion *)self correctedCoordinate];
  if (CLLocationCoordinate2DIsValid(v14) && (v15.latitude = v4, v15.longitude = v6, CLLocationCoordinate2DIsValid(v15)))
  {
    [(RAPPersonalPlaceCorrectionsQuestion *)self correctedCoordinate];
    GEOCalculateDistance();
    v8 = v7;
    GEOConfigGetDouble();
    return v8 >= v9;
  }

  else
  {
    [(RAPPersonalPlaceCorrectionsQuestion *)self correctedCoordinate];

    return CLLocationCoordinate2DIsValid(*&v11);
  }
}

- (id)_geoCoordinateFromUserCorrections
{
  v3 = objc_alloc_init(GEORPCorrectedCoordinate);
  [(RAPPersonalPlaceCorrectionsQuestion *)self originalCoordinate];
  v6 = [[GEOLatLng alloc] initWithLatitude:v4 longitude:v5];
  [v3 setOriginalCoordinate:v6];

  [(RAPPersonalPlaceCorrectionsQuestion *)self correctedCoordinate];
  if (CLLocationCoordinate2DIsValid(v13))
  {
    v7 = [GEOLatLng alloc];
    [(RAPPersonalPlaceCorrectionsQuestion *)self correctedCoordinate];
    v9 = v8;
    [(RAPPersonalPlaceCorrectionsQuestion *)self correctedCoordinate];
    v10 = [v7 initWithLatitude:v9 longitude:?];
    [v3 setCorrectedCoordinate:v10];
  }

  return v3;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v6];
  }

  parentQuestion = [(RAPQuestion *)self parentQuestion];

  if (parentQuestion)
  {
    commonContext2 = [parametersCopy commonContext];
    [commonContext2 addUserPath:48];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = self->_userPaths;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    do
    {
      v13 = 0;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v9);
        }

        integerValue = [*(*(&v48 + 1) + 8 * v13) integerValue];
        commonContext3 = [parametersCopy commonContext];
        [commonContext3 addUserPath:integerValue];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_userPaths removeAllObjects];
  [parametersCopy setType:4];
  details = [parametersCopy details];

  if (!details)
  {
    v17 = objc_alloc_init(GEORPFeedbackDetails);
    [parametersCopy setDetails:v17];
  }

  details2 = [parametersCopy details];
  addressPointFeedback = [details2 addressPointFeedback];

  if (!addressPointFeedback)
  {
    v20 = objc_alloc_init(GEORPAddressFeedback);
    details3 = [parametersCopy details];
    [details3 setAddressPointFeedback:v20];
  }

  geoMapItem = [(MapsSuggestionsShortcut *)self->_shortcut geoMapItem];
  _placeData = [geoMapItem _placeData];
  details4 = [parametersCopy details];
  addressPointFeedback2 = [details4 addressPointFeedback];
  [addressPointFeedback2 setPlace:_placeData];

  details5 = [parametersCopy details];
  addressPointFeedback3 = [details5 addressPointFeedback];
  [addressPointFeedback3 setType:2];

  details6 = [parametersCopy details];
  addressPointFeedback4 = [details6 addressPointFeedback];
  personalizedMaps = [addressPointFeedback4 personalizedMaps];

  if (!personalizedMaps)
  {
    personalizedMaps = objc_alloc_init(GEORPPersonalizedMapsContext);
    details7 = [parametersCopy details];
    addressPointFeedback5 = [details7 addressPointFeedback];
    [addressPointFeedback5 setPersonalizedMaps:personalizedMaps];
  }

  [personalizedMaps setAddressType:9];
  type = [(MapsSuggestionsShortcut *)self->_shortcut type];
  if (type > 6)
  {
    v34 = 0;
  }

  else
  {
    v34 = dword_101215FD0[type];
  }

  [personalizedMaps setPlaceType:v34];
  details8 = [parametersCopy details];
  addressPointFeedback6 = [details8 addressPointFeedback];
  address = [addressPointFeedback6 address];

  if (!address)
  {
    address = objc_alloc_init(GEORPAddressCorrections);
    details9 = [parametersCopy details];
    addressPointFeedback7 = [details9 addressPointFeedback];
    [addressPointFeedback7 setAddress:address];
  }

  addressFields = [address addressFields];

  if (!addressFields)
  {
    v41 = objc_alloc_init(GEORPFeedbackAddressFields);
    [address setAddressFields:v41];
  }

  _geoCoordinateFromUserCorrections = [(RAPPersonalPlaceCorrectionsQuestion *)self _geoCoordinateFromUserCorrections];
  [address setCoordinate:_geoCoordinateFromUserCorrections];

  details10 = [parametersCopy details];
  addressPointFeedback8 = [details10 addressPointFeedback];
  [addressPointFeedback8 setAddress:address];

  commonContext4 = [parametersCopy commonContext];
  searchCommon = [commonContext4 searchCommon];

  if (!searchCommon)
  {
    searchCommon = objc_opt_new();
    commonContext5 = [parametersCopy commonContext];
    [commonContext5 setSearchCommon:searchCommon];
  }

  [(RAPCommentQuestion *)self->_commentQuestion _fillSubmissionParameters:parametersCopy];
}

- (CLLocationCoordinate2D)currentCoordinate
{
  p_correctedCoordinate = &self->_correctedCoordinate;
  if (CLLocationCoordinate2DIsValid(self->_correctedCoordinate))
  {
    latitude = p_correctedCoordinate->latitude;
    longitude = p_correctedCoordinate->longitude;
  }

  else
  {
    [(RAPPersonalPlaceCorrectionsQuestion *)self originalCoordinate];
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (RAPPersonalPlaceCorrectionsQuestion)initWithReport:(id)report parentQuestion:(id)question shortcut:(id)shortcut
{
  reportCopy = report;
  questionCopy = question;
  shortcutCopy = shortcut;
  v29.receiver = self;
  v29.super_class = RAPPersonalPlaceCorrectionsQuestion;
  v11 = [(RAPQuestion *)&v29 initWithReport:reportCopy parentQuestion:questionCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_shortcut, shortcut);
    shortcut = v12->_shortcut;
    p_latitude = &v12->_correctedCoordinate.latitude;
    if (shortcut)
    {
      geoMapItem = [(MapsSuggestionsShortcut *)shortcut geoMapItem];
      [geoMapItem coordinate];
      v17 = v16;
      geoMapItem2 = [(MapsSuggestionsShortcut *)v12->_shortcut geoMapItem];
      [geoMapItem2 coordinate];
      v20 = CLLocationCoordinate2DMake(v17, v19);
      *p_latitude = v20.latitude;
      v12->_correctedCoordinate.longitude = v20.longitude;

      v12->_originalCoordinate = CLLocationCoordinate2DMake(*p_latitude, v12->_correctedCoordinate.longitude);
    }

    else
    {
      v21 = *MKCoordinateInvalid;
      *p_latitude = *MKCoordinateInvalid;
      v12->_originalCoordinate = v21;
    }

    v22 = [[RAPCommentQuestion alloc] initWithReport:reportCopy parentQuestion:questionCopy];
    commentQuestion = v12->_commentQuestion;
    v12->_commentQuestion = v22;

    [(RAPCommentQuestion *)v12->_commentQuestion setEmphasis:5];
    v24 = v12->_commentQuestion;
    v25 = +[RAPCommentQuestion _localizedOptionalInformationTitle];
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"[RAP] Tell us more about this correction" value:@"localized string not found" table:0];
    [(RAPCommentQuestion *)v24 _setCommentsTitle:v25 placeholderText:v27];
  }

  return v12;
}

@end