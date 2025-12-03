@interface TUIStarRatingImageCache
+ (id)sharedInstance;
- (TUIStarRatingImageCache)init;
- (id)_cacheKeyFromRatingStarsImageName:(id)name starSize:(double)size starCount:(unint64_t)count starPadding:(double)padding traitCollection:(id)collection;
- (id)_generateImageForRatingStarsImageName:(id)name starSize:(double)size starCount:(int64_t)count starPadding:(double)padding traitCollection:(id)collection;
- (id)ratingStarsImageWithName:(id)name starSize:(double)size starCount:(unint64_t)count starPadding:(double)padding traitCollection:(id)collection;
@end

@implementation TUIStarRatingImageCache

+ (id)sharedInstance
{
  if (qword_2E62C0 != -1)
  {
    sub_199E34();
  }

  v3 = qword_2E62B8;

  return v3;
}

- (TUIStarRatingImageCache)init
{
  v6.receiver = self;
  v6.super_class = TUIStarRatingImageCache;
  v2 = [(TUIStarRatingImageCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)ratingStarsImageWithName:(id)name starSize:(double)size starCount:(unint64_t)count starPadding:(double)padding traitCollection:(id)collection
{
  nameCopy = name;
  collectionCopy = collection;
  v14 = [(TUIStarRatingImageCache *)self _cacheKeyFromRatingStarsImageName:nameCopy starSize:count starCount:collectionCopy starPadding:size traitCollection:padding];
  v15 = [(NSCache *)self->_cache objectForKey:v14];
  if (!v15)
  {
    v15 = [(TUIStarRatingImageCache *)self _generateImageForRatingStarsImageName:nameCopy starSize:count starCount:collectionCopy starPadding:size traitCollection:padding];
    [(NSCache *)self->_cache setObject:v15 forKey:v14];
  }

  return v15;
}

- (id)_cacheKeyFromRatingStarsImageName:(id)name starSize:(double)size starCount:(unint64_t)count starPadding:(double)padding traitCollection:(id)collection
{
  nameCopy = name;
  [collection displayScale];
  v13 = [NSString stringWithFormat:@"img%@-starSize%f-starCount%lu-starPadding%f-contentsScale%f", nameCopy, *&size, count, *&padding, v12];

  return v13;
}

- (id)_generateImageForRatingStarsImageName:(id)name starSize:(double)size starCount:(int64_t)count starPadding:(double)padding traitCollection:(id)collection
{
  collectionCopy = collection;
  nameCopy = name;
  if (UIAccessibilityIsBoldTextEnabled())
  {
    [UIImageSymbolConfiguration configurationWithPointSize:7 weight:size];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithPointSize:size];
  }
  v13 = ;
  v14 = [UIImage systemImageNamed:nameCopy];

  v15 = [v14 imageWithConfiguration:v13];

  if (v15)
  {
    [v15 size];
    v17 = v16;
    v19 = v18;
    [v15 contentInsets];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = v17 - v22 - v26;
    v29 = v19 - v20 - v24;
    v30 = [UIGraphicsImageRenderer alloc];
    v31 = [UIGraphicsImageRendererFormat formatForTraitCollection:collectionCopy];
    v32 = [v30 initWithSize:v31 format:{ceil((count - 1) * padding + v28 * count), v29}];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_7CE74;
    v36[3] = &unk_260420;
    countCopy = count;
    v37 = v15;
    v39 = v21;
    v40 = v23;
    v41 = v25;
    v42 = v27;
    v43 = v28;
    v44 = v29;
    paddingCopy = padding;
    v33 = [v32 imageWithActions:v36];
    v34 = [v33 imageWithRenderingMode:2];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

@end