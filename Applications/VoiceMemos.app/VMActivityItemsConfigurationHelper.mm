@interface VMActivityItemsConfigurationHelper
+ (id)activityItemsConfigurationForCompositions:(id)a3;
@end

@implementation VMActivityItemsConfigurationHelper

+ (id)activityItemsConfigurationForCompositions:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableDictionary dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    *&v7 = 136315394;
    v24 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [[RCShareableComposition alloc] initWithComposition:*(*(&v29 + 1) + 8 * v10)];
        v12 = objc_opt_new();
        v13 = [(RCShareableComposition *)v11 title];
        [v12 setSuggestedName:v13];

        v28 = 0;
        LOBYTE(v13) = [(RCShareableComposition *)v11 registerAudioFileRepresentationWithItemProvider:v12 error:&v28];
        v14 = v28;
        if ((v13 & 1) == 0)
        {
          v15 = OSLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v34 = "+[VMActivityItemsConfigurationHelper activityItemsConfigurationForCompositions:]";
            v35 = 2112;
            v36 = v14;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s -- registerError = %@", buf, 0x16u);
          }
        }

        v16 = [(RCShareableComposition *)v11 title];
        [v12 registerObject:v16 visibility:0];

        [v4 addObject:v12];
        v17 = [v4 lastObject];
        v18 = [v4 indexOfObject:v17];

        v19 = [(RCShareableComposition *)v11 title];
        v20 = [NSNumber numberWithUnsignedInteger:v18];
        [v5 setObject:v19 forKeyedSubscript:v20];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  v21 = [UIActivityItemsConfiguration activityItemsConfigurationWithItemProviders:v4];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10006F518;
  v26[3] = &unk_10028B540;
  v27 = v5;
  v22 = v5;
  [v21 setPerItemMetadataProvider:v26];
  [v21 setLocalObject:obj];

  return v21;
}

@end