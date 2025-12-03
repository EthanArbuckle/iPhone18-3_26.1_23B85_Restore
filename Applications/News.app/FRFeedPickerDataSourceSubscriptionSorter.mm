@interface FRFeedPickerDataSourceSubscriptionSorter
+ (void)initialize;
- (FRFeedPickerDataSourceSubscriptionSorter)init;
- (id)comparatorForSubscriptions;
- (id)sortSubscriptionsAlphabetically:(id)alphabetically;
- (id)sortSubscriptionsByRecency:(id)recency sortedPopularTagIDs:(id)ds;
- (id)trimTheArticle:(id)article;
- (void)recordSubscriptionAsRecentlyOpened:(id)opened;
@end

@implementation FRFeedPickerDataSourceSubscriptionSorter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v4 = @"FRFeedPickerDataSourceOpenedLookup";
    v5 = &__NSDictionary0__struct;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v2 registerDefaults:v3];
  }
}

- (FRFeedPickerDataSourceSubscriptionSorter)init
{
  +[NSThread isMainThread];
  v25.receiver = self;
  v25.super_class = FRFeedPickerDataSourceSubscriptionSorter;
  v3 = [(FRFeedPickerDataSourceSubscriptionSorter *)&v25 init];
  v4 = v3;
  if (v3)
  {
    v19 = v3;
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 dictionaryForKey:@"FRFeedPickerDataSourceOpenedLookup"];

    v20 = +[NSMutableDictionary dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          objc_opt_class();
          v13 = FCDynamicCast();
          objc_opt_class();
          v14 = [v7 objectForKeyedSubscript:v12];
          v15 = FCDynamicCast();

          if (v13)
          {
            v16 = v15 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [(NSMutableDictionary *)v20 setObject:v15 forKeyedSubscript:v13];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v4 = v19;
    tagOpenedDate = v19->_tagOpenedDate;
    v19->_tagOpenedDate = v20;
  }

  return v4;
}

- (id)comparatorForSubscriptions
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F0AC;
  v4[3] = &unk_1000C1B10;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (id)sortSubscriptionsAlphabetically:(id)alphabetically
{
  alphabeticallyCopy = alphabetically;
  +[NSThread isMainThread];
  comparatorForSubscriptions = [(FRFeedPickerDataSourceSubscriptionSorter *)self comparatorForSubscriptions];
  v6 = [alphabeticallyCopy sortedArrayWithOptions:1 usingComparator:comparatorForSubscriptions];

  return v6;
}

- (id)trimTheArticle:(id)article
{
  articleCopy = article;
  if ([articleCopy rangeOfString:@"the " options:9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = articleCopy;
  }

  else
  {
    v5 = [articleCopy substringFromIndex:v4];
  }

  v6 = v5;

  return v6;
}

- (id)sortSubscriptionsByRecency:(id)recency sortedPopularTagIDs:(id)ds
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F5D8;
  v8[3] = &unk_1000C1B38;
  v8[4] = self;
  dsCopy = ds;
  v5 = dsCopy;
  v6 = [recency sortedArrayUsingComparator:v8];

  return v6;
}

- (void)recordSubscriptionAsRecentlyOpened:(id)opened
{
  openedCopy = opened;
  +[NSThread isMainThread];
  v5 = +[NSDate date];
  tagOpenedDate = [(FRFeedPickerDataSourceSubscriptionSorter *)self tagOpenedDate];
  identifier = [openedCopy identifier];

  [tagOpenedDate setObject:v5 forKeyedSubscript:identifier];
  v10 = +[NSUserDefaults standardUserDefaults];
  tagOpenedDate2 = [(FRFeedPickerDataSourceSubscriptionSorter *)self tagOpenedDate];
  v9 = [tagOpenedDate2 copy];
  [v10 setObject:v9 forKey:@"FRFeedPickerDataSourceOpenedLookup"];
}

@end