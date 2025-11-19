@interface RAPPersonalPlaceCorrectionsQuestion
- (BOOL)isAdjustedCoordinateBeyondThreshold;
- (CLLocationCoordinate2D)correctedCoordinate;
- (CLLocationCoordinate2D)currentCoordinate;
- (CLLocationCoordinate2D)originalCoordinate;
- (NSString)localizedTitle;
- (RAPPersonalPlaceCorrectionsQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 shortcut:(id)a5;
- (id)_geoCoordinateFromUserCorrections;
- (int64_t)questionCategory;
- (void)_fillSubmissionParameters:(id)a3;
- (void)addUserPathItem:(int)a3;
- (void)rapCompleted:(BOOL)a3 privacyShown:(BOOL)a4 analyticsEvent:(id)a5;
- (void)setCorrectedCoordinate:(CLLocationCoordinate2D)a3;
- (void)submitRAPWithWillSubmitBlock:(id)a3 didSubmitBlock:(id)a4;
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
  v2 = [(MapsSuggestionsShortcut *)self->_shortcut type];
  if (v2 == 2)
  {
    v3 = @"Home Details";
    goto LABEL_7;
  }

  if (v2 == 5)
  {
    v3 = @"School Details";
    goto LABEL_7;
  }

  if (v2 == 3)
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
  v2 = [(RAPPersonalPlaceCorrectionsQuestion *)self shortcutType];
  if ((v2 - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_101215FF0[v2 - 2];
  }
}

- (void)addUserPathItem:(int)a3
{
  v3 = *&a3;
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

- (void)submitRAPWithWillSubmitBlock:(id)a3 didSubmitBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RAPQuestion *)self report];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100EC57CC;
  v15[3] = &unk_101658540;
  v15[4] = self;
  v12 = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100EC5870;
  v13[3] = &unk_101658568;
  v14 = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100EC5888;
  v11[3] = &unk_101658590;
  v9 = v7;
  v10 = v6;
  [v8 submitWithPrivacyRequestHandler:v15 willStartSubmitting:v13 didFinishSubmitting:v11];
}

- (void)rapCompleted:(BOOL)a3 privacyShown:(BOOL)a4 analyticsEvent:(id)a5
{
  if (a3)
  {
    v5 = 10112;
  }

  else
  {
    v5 = 10113;
  }

  if (a4)
  {
    v6 = 1313;
  }

  else
  {
    v6 = 1305;
  }

  [GEOAPPortal captureUserAction:v5 target:v6 value:a5];
}

- (void)setCorrectedCoordinate:(CLLocationCoordinate2D)a3
{
  if (vabdd_f64(a3.latitude, self->_correctedCoordinate.latitude) >= 0.00000000999999994 || vabdd_f64(a3.longitude, self->_correctedCoordinate.longitude) >= 0.00000000999999994)
  {
    self->_correctedCoordinate = a3;
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

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 commonContext];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v4 setCommonContext:v6];
  }

  v7 = [(RAPQuestion *)self parentQuestion];

  if (v7)
  {
    v8 = [v4 commonContext];
    [v8 addUserPath:48];
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

        v14 = [*(*(&v48 + 1) + 8 * v13) integerValue];
        v15 = [v4 commonContext];
        [v15 addUserPath:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_userPaths removeAllObjects];
  [v4 setType:4];
  v16 = [v4 details];

  if (!v16)
  {
    v17 = objc_alloc_init(GEORPFeedbackDetails);
    [v4 setDetails:v17];
  }

  v18 = [v4 details];
  v19 = [v18 addressPointFeedback];

  if (!v19)
  {
    v20 = objc_alloc_init(GEORPAddressFeedback);
    v21 = [v4 details];
    [v21 setAddressPointFeedback:v20];
  }

  v22 = [(MapsSuggestionsShortcut *)self->_shortcut geoMapItem];
  v23 = [v22 _placeData];
  v24 = [v4 details];
  v25 = [v24 addressPointFeedback];
  [v25 setPlace:v23];

  v26 = [v4 details];
  v27 = [v26 addressPointFeedback];
  [v27 setType:2];

  v28 = [v4 details];
  v29 = [v28 addressPointFeedback];
  v30 = [v29 personalizedMaps];

  if (!v30)
  {
    v30 = objc_alloc_init(GEORPPersonalizedMapsContext);
    v31 = [v4 details];
    v32 = [v31 addressPointFeedback];
    [v32 setPersonalizedMaps:v30];
  }

  [v30 setAddressType:9];
  v33 = [(MapsSuggestionsShortcut *)self->_shortcut type];
  if (v33 > 6)
  {
    v34 = 0;
  }

  else
  {
    v34 = dword_101215FD0[v33];
  }

  [v30 setPlaceType:v34];
  v35 = [v4 details];
  v36 = [v35 addressPointFeedback];
  v37 = [v36 address];

  if (!v37)
  {
    v37 = objc_alloc_init(GEORPAddressCorrections);
    v38 = [v4 details];
    v39 = [v38 addressPointFeedback];
    [v39 setAddress:v37];
  }

  v40 = [v37 addressFields];

  if (!v40)
  {
    v41 = objc_alloc_init(GEORPFeedbackAddressFields);
    [v37 setAddressFields:v41];
  }

  v42 = [(RAPPersonalPlaceCorrectionsQuestion *)self _geoCoordinateFromUserCorrections];
  [v37 setCoordinate:v42];

  v43 = [v4 details];
  v44 = [v43 addressPointFeedback];
  [v44 setAddress:v37];

  v45 = [v4 commonContext];
  v46 = [v45 searchCommon];

  if (!v46)
  {
    v46 = objc_opt_new();
    v47 = [v4 commonContext];
    [v47 setSearchCommon:v46];
  }

  [(RAPCommentQuestion *)self->_commentQuestion _fillSubmissionParameters:v4];
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

- (RAPPersonalPlaceCorrectionsQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 shortcut:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = RAPPersonalPlaceCorrectionsQuestion;
  v11 = [(RAPQuestion *)&v29 initWithReport:v8 parentQuestion:v9];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_shortcut, a5);
    shortcut = v12->_shortcut;
    p_latitude = &v12->_correctedCoordinate.latitude;
    if (shortcut)
    {
      v15 = [(MapsSuggestionsShortcut *)shortcut geoMapItem];
      [v15 coordinate];
      v17 = v16;
      v18 = [(MapsSuggestionsShortcut *)v12->_shortcut geoMapItem];
      [v18 coordinate];
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

    v22 = [[RAPCommentQuestion alloc] initWithReport:v8 parentQuestion:v9];
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