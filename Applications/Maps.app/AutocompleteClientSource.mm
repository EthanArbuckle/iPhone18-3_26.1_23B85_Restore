@interface AutocompleteClientSource
+ (BOOL)itemIsFromMail:(id)mail;
+ (BOOL)itemIsFromMessages:(id)messages;
+ (BOOL)itemIsMarkedLocation:(id)location;
+ (BOOL)itemIsRecentPlace:(id)place;
+ (BOOL)itemIsRecentSearch:(id)search;
+ (id)autocompleteClientSourceAppIconWithType:(int64_t)type;
+ (id)autocompleteClientSourceTitleWithType:(int64_t)type contactName:(id)name;
+ (int64_t)autocompleteClientSourceTypeWithItem:(id)item;
@end

@implementation AutocompleteClientSource

+ (id)autocompleteClientSourceAppIconWithType:(int64_t)type
{
  v3 = @"com.apple.MobileSMS";
  if (type != 4)
  {
    v3 = 0;
  }

  if (type == 3)
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

+ (id)autocompleteClientSourceTitleWithType:(int64_t)type contactName:(id)name
{
  nameCopy = name;
  v6 = nameCopy;
  v7 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"Recent Search";
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_21;
      }

      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"Recently Viewed";
    }

    goto LABEL_19;
  }

  if (type != 3)
  {
    if (type != 4)
    {
      if (type != 5)
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

    if ([nameCopy length])
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

  if (![nameCopy length])
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

+ (BOOL)itemIsMarkedLocation:(id)location
{
  autocompleteObject = [location autocompleteObject];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [autocompleteObject type] == 3;

  return v4;
}

+ (BOOL)itemIsFromMessages:(id)messages
{
  messagesCopy = messages;
  if ([messagesCopy containsPossiblePersonalizedItemSourceType:5])
  {
    v4 = [messagesCopy containsPossiblePersonalizedItemSourceSubtype:6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)itemIsFromMail:(id)mail
{
  mailCopy = mail;
  if ([mailCopy containsPossiblePersonalizedItemSourceType:5])
  {
    v4 = [mailCopy containsPossiblePersonalizedItemSourceSubtype:5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)itemIsRecentPlace:(id)place
{
  placeCopy = place;
  if ([placeCopy containsPossiblePersonalizedItemSourceType:7] && (objc_msgSend(placeCopy, "containsPossiblePersonalizedItemSourceSubtype:", 11) & 1) != 0)
  {
    v4 = 1;
  }

  else if ([placeCopy containsPossiblePersonalizedItemSourceType:9])
  {
    v4 = [placeCopy containsPossiblePersonalizedItemSourceSubtype:18];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)itemIsRecentSearch:(id)search
{
  searchCopy = search;
  if ([searchCopy containsPossiblePersonalizedItemSourceType:7])
  {
    v4 = [searchCopy containsPossiblePersonalizedItemSourceSubtype:12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)autocompleteClientSourceTypeWithItem:(id)item
{
  itemCopy = item;
  if ([self itemIsRecentSearch:itemCopy])
  {
    v5 = 1;
  }

  else if ([self itemIsRecentPlace:itemCopy])
  {
    v5 = 2;
  }

  else if ([self itemIsFromMail:itemCopy])
  {
    v5 = 3;
  }

  else if ([self itemIsFromMessages:itemCopy])
  {
    v5 = 4;
  }

  else if ([self itemIsMarkedLocation:itemCopy])
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