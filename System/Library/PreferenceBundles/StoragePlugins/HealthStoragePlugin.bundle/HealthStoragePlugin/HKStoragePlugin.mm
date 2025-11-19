@interface HKStoragePlugin
- (HKStoragePlugin)init;
- (id)_assembleSpecifiersList;
- (id)_buildConfiguration;
- (id)_getSectionBy:(id)a3;
- (id)documentAppIdentifiers;
- (void)_assembleBySourceSection:(id)a3;
- (void)_buildDataSourceSection:(id)a3;
- (void)_buildDataTypesSection:(id)a3;
- (void)_callBuilderBlock:(id)a3;
- (void)_callBuilderCompletionBlock:(id)a3;
- (void)_hkTypeCountsQueryOperation:(id)a3;
- (void)_updateDisplayCache:(id)a3 forSection:(id)a4;
@end

@implementation HKStoragePlugin

- (id)_buildConfiguration
{
  v48[0] = @"_TYPE_COUNT_QUERY_";
  v47[0] = @"sectionName";
  v47[1] = @"builder";
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_13F8;
  v37[3] = &unk_82A0;
  v37[4] = self;
  v33 = objc_retainBlock(v37);
  v48[1] = v33;
  v47[2] = @"builderComp";
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1404;
  v36[3] = &unk_82C8;
  v36[4] = self;
  v32 = objc_retainBlock(v36);
  v48[2] = v32;
  v48[3] = &off_88C0;
  v47[3] = @"interval";
  v47[4] = @"next";
  v31 = [NSDate dateWithTimeIntervalSince1970:0.0];
  v48[4] = v31;
  v30 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:5];
  v49[0] = v30;
  v46[0] = @"DATA_TYPES_GROUP";
  v45[0] = @"sectionName";
  v45[1] = @"groupSpecifier";
  v29 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [v29 localizedStringForKey:@"DATA_TYPES_GROUP_NAME" value:&stru_8778 table:@"Localizable"];
  v28 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v28 localizedStringForKey:@"DATA_TYPES_GROUP_DESCRIPTION" value:&stru_8778 table:@"Localizable"];
  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = [v27 localizedStringForKey:@"DATA_TYPES_GROUP_LINK" value:&stru_8778 table:@"Localizable"];
  v23 = [NSURL URLWithString:@"https://health.apple.com"];
  v22 = [PSSpecifier _hkGroupSpecifier:v26 footerText:v25 linkText:v24 actionURL:v23];
  v46[1] = v22;
  v45[2] = @"itemSpecifiers";
  v21 = +[PSSpecifier _hkPreferenceSpinner];
  v44 = v21;
  v20 = [NSArray arrayWithObjects:&v44 count:1];
  v46[2] = v20;
  v46[3] = &off_88D0;
  v45[3] = @"count";
  v45[4] = @"include-group";
  v46[4] = &stru_8308;
  v19 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
  v49[1] = v19;
  v43[0] = @"DATA_TYPES_GROUP";
  v42[0] = @"sectionName";
  v42[1] = @"groupSpecifier";
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v18 localizedStringForKey:@"DATA_TYPES_GROUP_NAME" value:&stru_8778 table:@"Localizable"];
  v16 = [PSSpecifier _hkGroupSpecifier:v17];
  v43[1] = v16;
  v42[2] = @"itemSpecifiers";
  v3 = +[PSSpecifier _hkPreferenceSpinner];
  v41 = v3;
  v4 = [NSArray arrayWithObjects:&v41 count:1];
  v43[2] = v4;
  v43[3] = &off_88D0;
  v42[3] = @"count";
  v42[4] = @"include-group";
  v43[4] = &stru_8328;
  v5 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:5];
  v49[2] = v5;
  v40[0] = @"DATA_SOURCES_GROUP";
  v39[0] = @"sectionName";
  v39[1] = @"groupSpecifier";
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DATA_SOURCES_GROUP_NAME" value:&stru_8778 table:@"Localizable"];
  v8 = [PSSpecifier _hkGroupSpecifier:v7];
  v40[1] = v8;
  v39[2] = @"itemSpecifiers";
  v9 = +[PSSpecifier _hkPreferenceSpinner];
  v38 = v9;
  v10 = [NSArray arrayWithObjects:&v38 count:1];
  v39[3] = @"count";
  v40[2] = v10;
  v40[3] = &off_88D0;
  v11 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
  v49[3] = v11;
  v12 = [NSArray arrayWithObjects:v49 count:4];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_151C;
  v34[3] = &unk_8350;
  v35 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
  v13 = v35;
  [v12 enumerateObjectsUsingBlock:v34];
  v14 = [NSArray arrayWithArray:v13];

  return v14;
}

- (id)_assembleSpecifiersList
{
  v3 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_lock);
  configuration = self->_configuration;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_169C;
  v8[3] = &unk_83A0;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [(NSArray *)configuration enumerateObjectsUsingBlock:v8];
  os_unfair_lock_unlock(&self->_lock);
  v6 = v5;

  return v5;
}

- (void)_callBuilderBlock:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"builder"];
  v6 = v5;
  if (v5)
  {
    opQueue = self->_opQueue;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1A30;
    v12 = &unk_8378;
    v14 = v5;
    v13 = v4;
    v8 = [NSBlockOperation blockOperationWithBlock:&v9];
    [(NSOperationQueue *)opQueue addOperation:v8, v9, v10, v11, v12];
  }
}

- (void)_callBuilderCompletionBlock:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"builderComp"];
  v5 = v4;
  if (v4)
  {
    opQueue = self->_opQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1B24;
    v8[3] = &unk_83C8;
    v9 = v4;
    v7 = [NSBlockOperation blockOperationWithBlock:v8];
    [(NSOperationQueue *)opQueue addOperation:v7];
  }
}

- (void)_updateDisplayCache:(id)a3 forSection:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v6 setObject:v7 forKeyedSubscript:@"itemSpecifiers"];

  os_unfair_lock_unlock(&self->_lock);

  [(HKStoragePlugin *)self reloadSpecifiers];
}

- (id)_getSectionBy:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_configuration;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"sectionName", v14}];
        if ([v11 isEqualToString:v4])
        {
          v12 = v10;

          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_hkTypeCountsQueryOperation:(id)a3
{
  v4 = a3;
  v5 = [HKSampleCountQuery alloc];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1DE8;
  v11 = &unk_8458;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 initWithResultsHandler:&v8];
  [(HKHealthStore *)self->_hkStore executeQuery:v7, v8, v9, v10, v11, v12];
}

- (void)_buildDataTypesSection:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"count"];
  v6 = v5;
  v7 = &off_88D0;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "integerValue")}];
  sortedTypeCounts = self->_sortedTypeCounts;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_21C8;
  v16[3] = &unk_8480;
  v16[4] = self;
  v11 = v9;
  v17 = v11;
  v12 = v8;
  v18 = v12;
  [(NSArray *)sortedTypeCounts enumerateObjectsUsingBlock:v16];
  if (![v11 count])
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"NO_HEALTH_DATA" value:&stru_8778 table:@"Localizable"];
    v15 = [PSSpecifier _hkPreferenceNamed:v14];
    [v11 addObject:v15];
  }

  [(HKStoragePlugin *)self _updateDisplayCache:v11 forSection:v4];
}

- (void)_assembleBySourceSection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_sourceByteCounts keysSortedByValueUsingComparator:&stru_84A0];
  v6 = [v4 objectForKeyedSubscript:@"count"];
  v7 = v6;
  v8 = &off_88D0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2504;
  v12[3] = &unk_84C8;
  v12[4] = self;
  v13 = v9;
  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "integerValue")}];
  v10 = v14;
  v11 = v9;
  [v5 enumerateObjectsUsingBlock:v12];
  [v4 setObject:v10 forKeyedSubscript:@"itemSpecifiers"];

  os_unfair_lock_unlock(&self->_lock);
  [(HKStoragePlugin *)self reloadSpecifiers];
}

- (void)_buildDataSourceSection:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_sortedTypeCounts count])
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    sortedTypeCounts = self->_sortedTypeCounts;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2828;
    v10[3] = &unk_85B8;
    v10[4] = self;
    v12 = v13;
    v11 = v4;
    [(NSArray *)sortedTypeCounts enumerateObjectsUsingBlock:v10];

    _Block_object_dispose(v13, 8);
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"NO_HEALTH_DATA" value:&stru_8778 table:@"Localizable"];
    v8 = [PSSpecifier _hkPreferenceNamed:v7];
    v14 = v8;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    [(HKStoragePlugin *)self _updateDisplayCache:v9 forSection:v4];
  }
}

- (id)documentAppIdentifiers
{
  bundleId = self->_bundleId;
  v2 = [NSArray arrayWithObjects:&bundleId count:1];

  return v2;
}

- (HKStoragePlugin)init
{
  v19.receiver = self;
  v19.super_class = HKStoragePlugin;
  v2 = [(HKStoragePlugin *)&v19 init];
  v3 = v2;
  if (v2)
  {
    bundleId = v2->_bundleId;
    v2->_bundleId = @"com.apple.Health";

    v5 = objc_alloc_init(HKHealthStore);
    hkStore = v3->_hkStore;
    v3->_hkStore = v5;

    v7 = [[HKDiagnosticStore alloc] initWithHealthStore:v3->_hkStore];
    hkDiagStore = v3->_hkDiagStore;
    v3->_hkDiagStore = v7;

    v9 = objc_alloc_init(NSOperationQueue);
    opQueue = v3->_opQueue;
    v3->_opQueue = v9;

    [(NSOperationQueue *)v3->_opQueue setQualityOfService:25];
    [(NSOperationQueue *)v3->_opQueue setMaxConcurrentOperationCount:5];
    v11 = [(HKStoragePlugin *)v3 _buildConfiguration];
    configuration = v3->_configuration;
    v3->_configuration = v11;

    sortedTypeCounts = v3->_sortedTypeCounts;
    v3->_sortedTypeCounts = &__NSArray0__struct;

    v14 = objc_alloc_init(NSMutableDictionary);
    typeSizes = v3->_typeSizes;
    v3->_typeSizes = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    sourceByteCounts = v3->_sourceByteCounts;
    v3->_sourceByteCounts = v16;
  }

  return v3;
}

@end