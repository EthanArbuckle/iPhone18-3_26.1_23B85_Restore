@interface MTMediaLibraryDebugProvider
- (id)debugData;
@end

@implementation MTMediaLibraryDebugProvider

- (id)debugData
{
  v2 = +[MPMediaQuery mt_allItemsForPodcastsApp];
  v3 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = objc_alloc_init(NSMutableDictionary);
        v10 = +[MTMLMediaItem propertiesForMediaItem];
        v11 = [NSSet setWithArray:v10];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10014629C;
        v17[3] = &unk_1004D9F90;
        v18 = v9;
        v12 = v9;
        [v8 enumerateValuesForProperties:v11 usingBlock:v17];

        [v3 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v13 = [IMJSONUtil toJSONString:v3];
  v14 = [v13 dataUsingEncoding:4];

  return v14;
}

@end