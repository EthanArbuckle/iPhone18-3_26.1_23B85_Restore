@interface TUIStarRatingImageCache
+ (id)sharedInstance;
- (TUIStarRatingImageCache)init;
- (id)_cacheKeyFromRatingStarsImageName:(id)a3 starSize:(double)a4 starCount:(unint64_t)a5 starPadding:(double)a6 traitCollection:(id)a7;
- (id)_generateImageForRatingStarsImageName:(id)a3 starSize:(double)a4 starCount:(int64_t)a5 starPadding:(double)a6 traitCollection:(id)a7;
- (id)ratingStarsImageWithName:(id)a3 starSize:(double)a4 starCount:(unint64_t)a5 starPadding:(double)a6 traitCollection:(id)a7;
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

- (id)ratingStarsImageWithName:(id)a3 starSize:(double)a4 starCount:(unint64_t)a5 starPadding:(double)a6 traitCollection:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [(TUIStarRatingImageCache *)self _cacheKeyFromRatingStarsImageName:v12 starSize:a5 starCount:v13 starPadding:a4 traitCollection:a6];
  v15 = [(NSCache *)self->_cache objectForKey:v14];
  if (!v15)
  {
    v15 = [(TUIStarRatingImageCache *)self _generateImageForRatingStarsImageName:v12 starSize:a5 starCount:v13 starPadding:a4 traitCollection:a6];
    [(NSCache *)self->_cache setObject:v15 forKey:v14];
  }

  return v15;
}

- (id)_cacheKeyFromRatingStarsImageName:(id)a3 starSize:(double)a4 starCount:(unint64_t)a5 starPadding:(double)a6 traitCollection:(id)a7
{
  v11 = a3;
  [a7 displayScale];
  v13 = [NSString stringWithFormat:@"img%@-starSize%f-starCount%lu-starPadding%f-contentsScale%f", v11, *&a4, a5, *&a6, v12];

  return v13;
}

- (id)_generateImageForRatingStarsImageName:(id)a3 starSize:(double)a4 starCount:(int64_t)a5 starPadding:(double)a6 traitCollection:(id)a7
{
  v11 = a7;
  v12 = a3;
  if (UIAccessibilityIsBoldTextEnabled())
  {
    [UIImageSymbolConfiguration configurationWithPointSize:7 weight:a4];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithPointSize:a4];
  }
  v13 = ;
  v14 = [UIImage systemImageNamed:v12];

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
    v31 = [UIGraphicsImageRendererFormat formatForTraitCollection:v11];
    v32 = [v30 initWithSize:v31 format:{ceil((a5 - 1) * a6 + v28 * a5), v29}];

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_7CE74;
    v36[3] = &unk_260420;
    v38 = a5;
    v37 = v15;
    v39 = v21;
    v40 = v23;
    v41 = v25;
    v42 = v27;
    v43 = v28;
    v44 = v29;
    v45 = a6;
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