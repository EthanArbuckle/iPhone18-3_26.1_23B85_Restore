@interface SearchHomeTipLayoutProvider
- (id)cellClasses;
- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5;
- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8;
@end

@implementation SearchHomeTipLayoutProvider

- (id)layoutSectionWithLayoutEnvironment:(id)a3 estimatedHeaderHeight:(double)a4 estimatedFooterHeight:(double)a5 deletionBlock:(id)a6 objectsCount:(unint64_t)a7 mapsTheme:(id)a8
{
  v9 = [NSCollectionLayoutDimension fractionalWidthDimension:a3, a6, a7, a8, 1.0, a5];
  v10 = [NSCollectionLayoutDimension estimatedDimension:100.0];
  v11 = [NSCollectionLayoutSize sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [NSCollectionLayoutItem itemWithLayoutSize:v11];
  v13 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v14 = [NSCollectionLayoutDimension estimatedDimension:100.0];
  v15 = [NSCollectionLayoutSize sizeWithWidthDimension:v13 heightDimension:v14];

  v23 = v12;
  v16 = [NSArray arrayWithObjects:&v23 count:1];
  v17 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v15 subitems:v16];

  v18 = [NSCollectionLayoutSection sectionWithGroup:v17];
  if (!v18)
  {
    v19 = sub_100798B6C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "The LayoutSection is nil for some reason in class - %@.", &v21, 0xCu);
    }
  }

  return v18;
}

- (id)cellForRowAtIndexPath:(id)a3 collectionView:(id)a4 item:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SearchHomeTipLayoutProvider *)self cellReuseIdentifier];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  LODWORD(v11) = MGGetBoolAnswer();
  v13 = +[NSBundle mainBundle];
  v14 = v13;
  if (v11)
  {
    v15 = @"[Search Home] Search Tip Subtitle WLAN";
  }

  else
  {
    v15 = @"[Search Home] Search Tip Subtitle WIFI";
  }

  v16 = [v13 localizedStringForKey:v15 value:@"localized string not found" table:0];

  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100616C48;
  v18[3] = &unk_101661B98;
  objc_copyWeak(&v19, &location);
  [v12 setupUIContents:v16 withDismissHandler:v18];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v12;
}

- (id)cellClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end