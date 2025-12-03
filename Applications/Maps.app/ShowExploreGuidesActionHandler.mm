@interface ShowExploreGuidesActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShowExploreGuidesActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = actionCopy;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10097DB98;
    v23[3] = &unk_101661A90;
    v8 = contextCopy;
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
    exploreGuides = [v7 exploreGuides];

    if (exploreGuides)
    {
      v12 = [GEOExploreGuides alloc];
      exploreGuides2 = [v7 exploreGuides];
      v14 = [v12 initWithExploreGuides:exploreGuides2];

      guideLocation = [v14 guideLocation];
      (v10[2])(v10, guideLocation);
    }

    else
    {
      cityName = [v7 cityName];
      v17 = [cityName length];

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