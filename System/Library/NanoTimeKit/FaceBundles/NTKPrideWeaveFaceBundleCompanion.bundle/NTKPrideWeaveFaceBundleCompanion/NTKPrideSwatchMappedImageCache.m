@interface NTKPrideSwatchMappedImageCache
+ (id)keyForFaceStyle:(id)a3 editOption:(id)a4 mode:(int64_t)a5 selectedOptions:(id)a6;
+ (id)sharedCache;
- (id)_init;
- (void)_removeImagesForKeysMatching:(id)a3;
@end

@implementation NTKPrideSwatchMappedImageCache

+ (id)sharedCache
{
  if (qword_2CCF8 != -1)
  {
    sub_15280();
  }

  v3 = qword_2CCF0;

  return v3;
}

- (id)_init
{
  v3 = objc_opt_new();
  v4 = [BSUIMappedImageCacheOptions optionsWithContainerPathProvider:v3];

  v8.receiver = self;
  v8.super_class = NTKPrideSwatchMappedImageCache;
  v5 = [(NTKPrideSwatchMappedImageCache *)&v8 initWithUniqueIdentifier:@"com.apple.nanotimekit.face.pride.swatches" options:v4];
  v6 = v5;
  if (v5)
  {
    [(NTKPrideSwatchMappedImageCache *)v5 _cleanCache];
  }

  return v6;
}

- (void)_removeImagesForKeysMatching:(id)a3
{
  v4 = a3;
  v5 = [(NTKPrideSwatchMappedImageCache *)self allKeys];
  v6 = [v5 copy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_CC50;
  v13[3] = &unk_248F8;
  v14 = v4;
  v7 = v4;
  v8 = [v6 indexesOfObjectsPassingTest:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_CC60;
  v10[3] = &unk_24920;
  v11 = v6;
  v12 = self;
  v9 = v6;
  [v8 enumerateIndexesUsingBlock:v10];
}

+ (id)keyForFaceStyle:(id)a3 editOption:(id)a4 mode:(int64_t)a5 selectedOptions:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v11 allKeys];
  v13 = [v12 sortedArrayUsingComparator:&stru_24960];

  v14 = objc_opt_new();
  if (v11)
  {
    v29 = a5;
    v30 = v10;
    v31 = v9;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = [v20 integerValue];
          v22 = [v11 objectForKeyedSubscript:v20];
          v23 = [v22 dailySnapshotKey];
          [v14 appendFormat:@"-%ld-%@", v21, v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    v10 = v30;
    v9 = v31;
    v13 = v28;
    a5 = v29;
  }

  v24 = [v10 dailySnapshotKey];
  v25 = NTKBuildVersion();
  v26 = [NSString stringWithFormat:@"%@-%@-%d%@-%@", v9, v24, a5, v14, v25];

  return v26;
}

@end