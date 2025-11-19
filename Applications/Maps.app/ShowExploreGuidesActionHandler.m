@interface ShowExploreGuidesActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ShowExploreGuidesActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10097DB98;
    v23[3] = &unk_101661A90;
    v8 = v6;
    v24 = v8;
    v25 = v7;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10097DC60;
    v20[3] = &unk_1016302A0;
    v9 = objc_retainBlock(v23);
    v22 = v9;
    v21 = v8;
    v10 = objc_retainBlock(v20);
    v11 = [v7 exploreGuides];

    if (v11)
    {
      v12 = [GEOExploreGuides alloc];
      v13 = [v7 exploreGuides];
      v14 = [v12 initWithExploreGuides:v13];

      v15 = [v14 guideLocation];
      (v10[2])(v10, v15);
    }

    else
    {
      v16 = [v7 cityName];
      v17 = [v16 length];

      if (!v17)
      {
LABEL_7:

        goto LABEL_8;
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10097DDE8;
      v18[3] = &unk_1016302C8;
      v19 = v10;
      [v7 performExploreGuidesLookup:v18];
      v14 = v19;
    }

    goto LABEL_7;
  }

LABEL_8:
}

@end