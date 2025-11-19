@interface AutocompleteClientSource
+ (BOOL)itemIsFromMail:(id)a3;
+ (BOOL)itemIsFromMessages:(id)a3;
+ (BOOL)itemIsMarkedLocation:(id)a3;
+ (BOOL)itemIsRecentPlace:(id)a3;
+ (BOOL)itemIsRecentSearch:(id)a3;
+ (id)autocompleteClientSourceAppIconWithType:(int64_t)a3;
+ (id)autocompleteClientSourceTitleWithType:(int64_t)a3 contactName:(id)a4;
+ (int64_t)autocompleteClientSourceTypeWithItem:(id)a3;
@end

@implementation AutocompleteClientSource

+ (id)autocompleteClientSourceAppIconWithType:(int64_t)a3
{
  v3 = @"com.apple.MobileSMS";
  if (a3 != 4)
  {
    v3 = 0;
  }

  if (a3 == 3)
  {
    v4 = @"com.apple.mobilemail";
  }

  else
  {
    v4 = v3;
  }

  if ([(__CFString *)v4 length])
  {
    v5 = +[UIScreen mainScreen];
    [v5 scale];
    v6 = [UIImage _applicationIconImageForBundleIdentifier:v4 format:2 scale:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)autocompleteClientSourceTitleWithType:(int64_t)a3 contactName:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"Recent Search";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_21;
      }

      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"Recently Viewed";
    }

    goto LABEL_19;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      if (a3 != 5)
      {
        goto LABEL_21;
      }

      v8 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      if (v8)
      {
        v11 = @"Marked Location";
      }

      else
      {
        v11 = @"Dropped Pin";
      }

      goto LABEL_19;
    }

    if ([v5 length])
    {
      v12 = +[NSBundle mainBundle];
      v10 = v12;
      v13 = @"Siri found in Messages from %@";
      goto LABEL_14;
    }

    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"Siri found in Messages";
LABEL_19:
    v7 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];
    goto LABEL_20;
  }

  if (![v5 length])
  {
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"Siri found in Mail";
    goto LABEL_19;
  }

  v12 = +[NSBundle mainBundle];
  v10 = v12;
  v13 = @"Siri found in Mail from %@";
LABEL_14:
  v14 = [v12 localizedStringForKey:v13 value:@"localized string not found" table:0];
  v7 = [NSString stringWithFormat:v14, v6];

LABEL_20:
LABEL_21:

  return v7;
}

+ (BOOL)itemIsMarkedLocation:(id)a3
{
  v3 = [a3 autocompleteObject];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 type] == 3;

  return v4;
}

+ (BOOL)itemIsFromMessages:(id)a3
{
  v3 = a3;
  if ([v3 containsPossiblePersonalizedItemSourceType:5])
  {
    v4 = [v3 containsPossiblePersonalizedItemSourceSubtype:6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)itemIsFromMail:(id)a3
{
  v3 = a3;
  if ([v3 containsPossiblePersonalizedItemSourceType:5])
  {
    v4 = [v3 containsPossiblePersonalizedItemSourceSubtype:5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)itemIsRecentPlace:(id)a3
{
  v3 = a3;
  if ([v3 containsPossiblePersonalizedItemSourceType:7] && (objc_msgSend(v3, "containsPossiblePersonalizedItemSourceSubtype:", 11) & 1) != 0)
  {
    v4 = 1;
  }

  else if ([v3 containsPossiblePersonalizedItemSourceType:9])
  {
    v4 = [v3 containsPossiblePersonalizedItemSourceSubtype:18];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)itemIsRecentSearch:(id)a3
{
  v3 = a3;
  if ([v3 containsPossiblePersonalizedItemSourceType:7])
  {
    v4 = [v3 containsPossiblePersonalizedItemSourceSubtype:12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)autocompleteClientSourceTypeWithItem:(id)a3
{
  v4 = a3;
  if ([a1 itemIsRecentSearch:v4])
  {
    v5 = 1;
  }

  else if ([a1 itemIsRecentPlace:v4])
  {
    v5 = 2;
  }

  else if ([a1 itemIsFromMail:v4])
  {
    v5 = 3;
  }

  else if ([a1 itemIsFromMessages:v4])
  {
    v5 = 4;
  }

  else if ([a1 itemIsMarkedLocation:v4])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end