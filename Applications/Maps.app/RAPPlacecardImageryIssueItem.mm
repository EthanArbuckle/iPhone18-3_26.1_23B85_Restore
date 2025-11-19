@interface RAPPlacecardImageryIssueItem
+ (NSArray)defaultIssueItems;
- (NSString)localizedTitle;
- (RAPPlacecardImageryIssueItem)initWithType:(unint64_t)a3;
- (RAPPlacecardImageryIssueItem)initWithType:(unint64_t)a3 overridenText:(id)a4;
@end

@implementation RAPPlacecardImageryIssueItem

- (NSString)localizedTitle
{
  if ([(RAPPlacecardImageryIssueItem *)self hasOverridenText])
  {
    v3 = self->_overridenText;
  }

  else
  {
    v4 = self->_type - 1;
    if (v4 > 7)
    {
      v3 = &stru_1016631F0;
    }

    else
    {
      v5 = off_10165EEB8[v4];
      v6 = +[NSBundle mainBundle];
      v3 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];
    }
  }

  return v3;
}

- (RAPPlacecardImageryIssueItem)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RAPPlacecardImageryIssueItem;
  result = [(RAPPlacecardImageryIssueItem *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (RAPPlacecardImageryIssueItem)initWithType:(unint64_t)a3 overridenText:(id)a4
{
  v7 = a4;
  v8 = [(RAPPlacecardImageryIssueItem *)self initWithType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_overridenText, a4);
  }

  return v9;
}

+ (NSArray)defaultIssueItems
{
  v2 = objc_opt_new();
  v3 = [NSMutableArray arrayWithArray:&off_1016EDBF8];
  v4 = +[GEOCountryConfiguration sharedConfiguration];
  v5 = [v4 countryCode];
  v6 = [v5 isEqualToString:@"KR"];

  if (v6)
  {
    [v3 removeObject:&off_1016EABB0];
    [v3 removeObject:&off_1016EABC8];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [RAPPlacecardImageryIssueItem alloc];
        v14 = -[RAPPlacecardImageryIssueItem initWithType:](v13, "initWithType:", [v12 unsignedIntegerValue]);
        [v2 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v2 copy];

  return v15;
}

@end