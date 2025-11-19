@interface LSUseValuesMCStateProvider
- (id)initWithAllowlistEnabled:(void *)a3 allowlistedBundles:(void *)a4 restrictedBundles:(void *)a5 ratingRankExceptions:(void *)a6 maximumRating:;
@end

@implementation LSUseValuesMCStateProvider

- (id)initWithAllowlistEnabled:(void *)a3 allowlistedBundles:(void *)a4 restrictedBundles:(void *)a5 ratingRankExceptions:(void *)a6 maximumRating:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = LSUseValuesMCStateProvider;
    v15 = objc_msgSendSuper2(&v23, sel_init);
    a1 = v15;
    if (v15)
    {
      *(v15 + 8) = a2;
      v16 = [v11 copy];
      v17 = a1[2];
      a1[2] = v16;

      v18 = [v12 copy];
      v19 = a1[3];
      a1[3] = v18;

      v20 = [v13 copy];
      v21 = a1[4];
      a1[4] = v20;

      objc_storeStrong(a1 + 5, a6);
    }
  }

  return a1;
}

@end