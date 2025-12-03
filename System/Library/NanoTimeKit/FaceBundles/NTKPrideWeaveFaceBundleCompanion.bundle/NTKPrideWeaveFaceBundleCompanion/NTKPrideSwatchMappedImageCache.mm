@interface NTKPrideSwatchMappedImageCache
+ (id)keyForFaceStyle:(id)style editOption:(id)option mode:(int64_t)mode selectedOptions:(id)options;
+ (id)sharedCache;
- (id)_init;
- (void)_removeImagesForKeysMatching:(id)matching;
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

- (void)_removeImagesForKeysMatching:(id)matching
{
  matchingCopy = matching;
  allKeys = [(NTKPrideSwatchMappedImageCache *)self allKeys];
  v6 = [allKeys copy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_CC50;
  v13[3] = &unk_248F8;
  v14 = matchingCopy;
  v7 = matchingCopy;
  v8 = [v6 indexesOfObjectsPassingTest:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_CC60;
  v10[3] = &unk_24920;
  v11 = v6;
  selfCopy = self;
  v9 = v6;
  [v8 enumerateIndexesUsingBlock:v10];
}

+ (id)keyForFaceStyle:(id)style editOption:(id)option mode:(int64_t)mode selectedOptions:(id)options
{
  styleCopy = style;
  optionCopy = option;
  optionsCopy = options;
  allKeys = [optionsCopy allKeys];
  v13 = [allKeys sortedArrayUsingComparator:&stru_24960];

  v14 = objc_opt_new();
  if (optionsCopy)
  {
    modeCopy = mode;
    v30 = optionCopy;
    v31 = styleCopy;
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
          integerValue = [v20 integerValue];
          v22 = [optionsCopy objectForKeyedSubscript:v20];
          dailySnapshotKey = [v22 dailySnapshotKey];
          [v14 appendFormat:@"-%ld-%@", integerValue, dailySnapshotKey];
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    optionCopy = v30;
    styleCopy = v31;
    v13 = v28;
    mode = modeCopy;
  }

  dailySnapshotKey2 = [optionCopy dailySnapshotKey];
  v25 = NTKBuildVersion();
  v26 = [NSString stringWithFormat:@"%@-%@-%d%@-%@", styleCopy, dailySnapshotKey2, mode, v14, v25];

  return v26;
}

@end