@interface ShowExploreGuidesAction
- (ShowExploreGuidesAction)initWithExploreGuides:(id)a3 cityName:(id)a4;
- (void)performExploreGuidesLookup:(id)a3;
- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4;
@end

@implementation ShowExploreGuidesAction

- (void)resolveMapItemWithTraits:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_exploreGuides)
  {
    v8 = [[GEOExploreGuides alloc] initWithExploreGuides:self->_exploreGuides];
    v9 = [v8 guideLocation];
    v10 = [v9 guideLocationIdentifier];

    if (v10)
    {
      v11 = +[MKMapService sharedService];
      v21 = v10;
      v12 = [NSArray arrayWithObjects:&v21 count:1];
      v13 = MKMapItemIdentifiersArrayFromGEOMapItemIdentifiersArray();
      v14 = [v11 ticketForIdentifiers:v13 traits:v6];
    }

    else
    {
      v11 = sub_100005610();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "ShowExploreGuidesAction resolveMapItem - no identifier available", buf, 2u);
      }

      v14 = 0;
    }

    if (v14)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (![(NSString *)self->_cityName length])
  {
    v16 = sub_100005610();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ShowExploreGuidesAction resolveMapItem - no info available", buf, 2u);
    }

    goto LABEL_15;
  }

  v15 = +[MKMapService sharedService];
  v14 = [v15 ticketForSearchQuery:self->_cityName filters:0 maxResults:1 traits:v6];

  if (!v14)
  {
LABEL_15:
    v7[2](v7, 0);
    goto LABEL_16;
  }

LABEL_11:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B6841C;
  v17[3] = &unk_1016601F0;
  v18 = 0;
  v19 = v7;
  [v14 submitWithHandler:v17 networkActivity:0];

LABEL_16:
}

- (void)performExploreGuidesLookup:(id)a3
{
  v4 = a3;
  v5 = [MKExploreGuidesRequest alloc];
  v6 = [v5 initWithReferenceLocation:0 airportCode:self->_cityName cityName:3 supportedPunchoutType:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B6861C;
  v8[3] = &unk_10163AFF8;
  v9 = v4;
  v7 = v4;
  [v6 getResponseWithCompletionHandler:v8];
}

- (ShowExploreGuidesAction)initWithExploreGuides:(id)a3 cityName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ShowExploreGuidesAction;
  v9 = [(ShowExploreGuidesAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exploreGuides, a3);
    objc_storeStrong(&v10->_cityName, a4);
  }

  return v10;
}

@end