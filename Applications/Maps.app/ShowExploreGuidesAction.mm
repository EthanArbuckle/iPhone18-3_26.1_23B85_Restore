@interface ShowExploreGuidesAction
- (ShowExploreGuidesAction)initWithExploreGuides:(id)guides cityName:(id)name;
- (void)performExploreGuidesLookup:(id)lookup;
- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion;
@end

@implementation ShowExploreGuidesAction

- (void)resolveMapItemWithTraits:(id)traits completion:(id)completion
{
  traitsCopy = traits;
  completionCopy = completion;
  if (self->_exploreGuides)
  {
    v8 = [[GEOExploreGuides alloc] initWithExploreGuides:self->_exploreGuides];
    guideLocation = [v8 guideLocation];
    guideLocationIdentifier = [guideLocation guideLocationIdentifier];

    if (guideLocationIdentifier)
    {
      v11 = +[MKMapService sharedService];
      v21 = guideLocationIdentifier;
      v12 = [NSArray arrayWithObjects:&v21 count:1];
      v13 = MKMapItemIdentifiersArrayFromGEOMapItemIdentifiersArray();
      v14 = [v11 ticketForIdentifiers:v13 traits:traitsCopy];
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
  v14 = [v15 ticketForSearchQuery:self->_cityName filters:0 maxResults:1 traits:traitsCopy];

  if (!v14)
  {
LABEL_15:
    completionCopy[2](completionCopy, 0);
    goto LABEL_16;
  }

LABEL_11:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B6841C;
  v17[3] = &unk_1016601F0;
  v18 = 0;
  v19 = completionCopy;
  [v14 submitWithHandler:v17 networkActivity:0];

LABEL_16:
}

- (void)performExploreGuidesLookup:(id)lookup
{
  lookupCopy = lookup;
  v5 = [MKExploreGuidesRequest alloc];
  v6 = [v5 initWithReferenceLocation:0 airportCode:self->_cityName cityName:3 supportedPunchoutType:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B6861C;
  v8[3] = &unk_10163AFF8;
  v9 = lookupCopy;
  v7 = lookupCopy;
  [v6 getResponseWithCompletionHandler:v8];
}

- (ShowExploreGuidesAction)initWithExploreGuides:(id)guides cityName:(id)name
{
  guidesCopy = guides;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = ShowExploreGuidesAction;
  v9 = [(ShowExploreGuidesAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_exploreGuides, guides);
    objc_storeStrong(&v10->_cityName, name);
  }

  return v10;
}

@end