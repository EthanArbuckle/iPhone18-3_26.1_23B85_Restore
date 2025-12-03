@interface FRPersonalizationFeatureBundle
+ (id)personalizationFeatureBundleForFeaturesGenerator:(id)generator groupOrder:(id)order feedOrder:(id)feedOrder userInfo:(id)info;
- (NSArray)features;
- (void)appendPersonalizationFeaturesGenerator:(id)generator;
@end

@implementation FRPersonalizationFeatureBundle

+ (id)personalizationFeatureBundleForFeaturesGenerator:(id)generator groupOrder:(id)order feedOrder:(id)feedOrder userInfo:(id)info
{
  infoCopy = info;
  orderCopy = order;
  generatorCopy = generator;
  v12 = objc_alloc_init(self);
  [v12 setFeaturesGenerator:generatorCopy];

  dateLastOpened = [infoCopy dateLastOpened];
  if (dateLastOpened)
  {
    dateLastOpened2 = [infoCopy dateLastOpened];
    [dateLastOpened2 fc_timeIntervalUntilNow];
    v15 = [NSNumber numberWithDouble:?];
    [v12 setSessionDuration:v15];
  }

  else
  {
    [v12 setSessionDuration:0];
  }

  [v12 setGroupOrder:orderCopy];
  [v12 setFeedOrder:orderCopy];

  return v12;
}

- (NSArray)features
{
  featuresGenerator = [(FRPersonalizationFeatureBundle *)self featuresGenerator];
  if (featuresGenerator)
  {
    featuresGenerator2 = [(FRPersonalizationFeatureBundle *)self featuresGenerator];
    v5 = featuresGenerator2[2]();
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)appendPersonalizationFeaturesGenerator:(id)generator
{
  generatorCopy = generator;
  [(FRPersonalizationFeatureBundle *)self featuresGenerator];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000FCA0;
  v8 = v7[3] = &unk_1000C1B60;
  v9 = generatorCopy;
  v5 = generatorCopy;
  v6 = v8;
  [(FRPersonalizationFeatureBundle *)self setFeaturesGenerator:v7];
}

@end