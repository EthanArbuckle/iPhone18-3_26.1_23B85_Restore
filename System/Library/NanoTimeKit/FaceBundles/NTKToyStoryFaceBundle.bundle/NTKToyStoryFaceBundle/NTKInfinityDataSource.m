@interface NTKInfinityDataSource
+ (id)alienColor;
+ (id)ballColor;
+ (id)bullseyeColor;
+ (id)buzzColor;
+ (id)hammColor;
+ (id)hangGliderColor;
+ (id)jessieColor;
+ (id)rexColor;
+ (id)spotlightColor;
+ (id)supportingCastColor;
+ (id)woodyColor;
- (id)initForDevice:(id)a3;
- (id)listingsForCharacter:(unint64_t)a3;
- (id)listingsForCharacter:(unint64_t)a3 ofTypes:(id)a4 withAttributes:(id)a5 recentlyUsed:(id)a6;
- (id)listingsOfTypes:(id)a3 withAttributes:(id)a4 recentlyUsed:(id)a5;
- (void)_countListings;
- (void)_loadCharacters;
@end

@implementation NTKInfinityDataSource

+ (id)buzzColor
{
  if (qword_116E0 != -1)
  {
    sub_5648();
  }

  v3 = qword_116D8;

  return v3;
}

+ (id)woodyColor
{
  if (qword_116F0 != -1)
  {
    sub_565C();
  }

  v3 = qword_116E8;

  return v3;
}

+ (id)jessieColor
{
  if (qword_11700 != -1)
  {
    sub_5670();
  }

  v3 = qword_116F8;

  return v3;
}

+ (id)ballColor
{
  if (qword_11710 != -1)
  {
    sub_5684();
  }

  v3 = qword_11708;

  return v3;
}

+ (id)hangGliderColor
{
  if (qword_11720 != -1)
  {
    sub_5698();
  }

  v3 = qword_11718;

  return v3;
}

+ (id)bullseyeColor
{
  if (qword_11730 != -1)
  {
    sub_56AC();
  }

  v3 = qword_11728;

  return v3;
}

+ (id)supportingCastColor
{
  if (qword_11740 != -1)
  {
    sub_56C0();
  }

  v3 = qword_11738;

  return v3;
}

+ (id)rexColor
{
  if (qword_11750 != -1)
  {
    sub_56D4();
  }

  v3 = qword_11748;

  return v3;
}

+ (id)hammColor
{
  if (qword_11760 != -1)
  {
    sub_56E8();
  }

  v3 = qword_11758;

  return v3;
}

+ (id)alienColor
{
  if (qword_11770 != -1)
  {
    sub_56FC();
  }

  v3 = qword_11768;

  return v3;
}

+ (id)spotlightColor
{
  if (qword_11780 != -1)
  {
    sub_5710();
  }

  v3 = qword_11778;

  return v3;
}

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKInfinityDataSource;
  v6 = [(NTKInfinityDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    [(NTKInfinityDataSource *)v7 _loadCharacters];
    [(NTKInfinityDataSource *)v7 _countListings];
  }

  return v7;
}

- (id)listingsForCharacter:(unint64_t)a3
{
  v16 = @"character";
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v17 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v6 = [NTKInfinityListingAttributes attributesWithDictionary:v5];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1834;
  v14 = &unk_C448;
  v15 = v6;
  v7 = v6;
  v8 = [NSPredicate predicateWithBlock:&v11];
  v9 = [(NSArray *)self->_listings filteredArrayUsingPredicate:v8, v11, v12, v13, v14];

  return v9;
}

- (id)listingsForCharacter:(unint64_t)a3 ofTypes:(id)a4 withAttributes:(id)a5 recentlyUsed:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(NTKInfinityDataSource *)self listingsForCharacter:a3];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_19C4;
  v20[3] = &unk_C470;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = [NSPredicate predicateWithBlock:v20];
  v18 = [v13 filteredArrayUsingPredicate:v17];

  return v18;
}

- (id)listingsOfTypes:(id)a3 withAttributes:(id)a4 recentlyUsed:(id)a5
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1BA0;
  v14[3] = &unk_C470;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v8 = v17;
  v9 = v16;
  v10 = v15;
  v11 = [NSPredicate predicateWithBlock:v14];
  v12 = [(NSArray *)self->_listings filteredArrayUsingPredicate:v11];

  return v12;
}

- (void)_loadCharacters
{
  v3 = +[NSMutableArray array];
  listings = self->_listings;
  self->_listings = v3;

  _objc_release_x1();
}

- (void)_countListings
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_listings;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    p_numberOfTotalActions = &self->_numberOfTotalActions;
    p_numberOfTotalMagicMoments = &self->_numberOfTotalMagicMoments;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) type];
        if (v10 - 1 >= 3)
        {
          v11 = p_numberOfTotalMagicMoments;
          if (v10 != &dword_4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v11 = p_numberOfTotalActions;
        }

        ++*v11;
LABEL_10:
        v9 = v9 + 1;
      }

      while (v5 != v9);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

@end