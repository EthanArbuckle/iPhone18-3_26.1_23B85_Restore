@interface CuratedCollectionsListFetcher
- (CuratedCollectionsListFetcher)initWithTraits:(id)traits;
- (void)fetchGuidesWithIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation CuratedCollectionsListFetcher

- (void)fetchGuidesWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = +[MKMapService sharedService];
  traits = [(CuratedCollectionsListFetcher *)self traits];
  v10 = [v8 ticketForCuratedCollections:identifiersCopy isBatchLookup:1 traits:traits];

  objc_initWeak(&location, self);
  v11 = sub_1005B0E0C();
  v12 = os_signpost_id_generate(v11);

  v13 = sub_1005B0E0C();
  v14 = v13;
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FetchingCollectionsListViewBatch", "", buf, 2u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1005B0E60;
  v16[3] = &unk_10163C080;
  v18[1] = v12;
  objc_copyWeak(v18, &location);
  v15 = completionCopy;
  v17 = v15;
  [v10 submitWithHandler:v16 networkActivity:&stru_101622BD8];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

- (CuratedCollectionsListFetcher)initWithTraits:(id)traits
{
  traitsCopy = traits;
  v9.receiver = self;
  v9.super_class = CuratedCollectionsListFetcher;
  v6 = [(CuratedCollectionsListFetcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traits, traits);
  }

  return v7;
}

@end