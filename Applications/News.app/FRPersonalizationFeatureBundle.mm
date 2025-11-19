@interface FRPersonalizationFeatureBundle
+ (id)personalizationFeatureBundleForFeaturesGenerator:(id)a3 groupOrder:(id)a4 feedOrder:(id)a5 userInfo:(id)a6;
- (NSArray)features;
- (void)appendPersonalizationFeaturesGenerator:(id)a3;
@end

@implementation FRPersonalizationFeatureBundle

+ (id)personalizationFeatureBundleForFeaturesGenerator:(id)a3 groupOrder:(id)a4 feedOrder:(id)a5 userInfo:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(a1);
  [v12 setFeaturesGenerator:v11];

  v13 = [v9 dateLastOpened];
  if (v13)
  {
    v14 = [v9 dateLastOpened];
    [v14 fc_timeIntervalUntilNow];
    v15 = [NSNumber numberWithDouble:?];
    [v12 setSessionDuration:v15];
  }

  else
  {
    [v12 setSessionDuration:0];
  }

  [v12 setGroupOrder:v10];
  [v12 setFeedOrder:v10];

  return v12;
}

- (NSArray)features
{
  v3 = [(FRPersonalizationFeatureBundle *)self featuresGenerator];
  if (v3)
  {
    v4 = [(FRPersonalizationFeatureBundle *)self featuresGenerator];
    v5 = v4[2]();
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)appendPersonalizationFeaturesGenerator:(id)a3
{
  v4 = a3;
  [(FRPersonalizationFeatureBundle *)self featuresGenerator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000FCA0;
  v8 = v7[3] = &unk_1000C1B60;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [(FRPersonalizationFeatureBundle *)self setFeaturesGenerator:v7];
}

@end