@interface UITableViewCell
- (id)accessibilitySharedViaICloudStringForNote:(id)a3;
@end

@implementation UITableViewCell

- (id)accessibilitySharedViaICloudStringForNote:(id)a3
{
  v3 = a3;
  v4 = [v3 isSharedViaICloud];
  v5 = [v3 isSharedViaICloudFolder];
  if (!v4 || v5)
  {
    if (![v3 isSharedViaICloudFolder])
    {
      v17 = 0;
      goto LABEL_14;
    }

    v10 = [v3 folder];
    v8 = [v10 title];

    v11 = [v3 folder];
    v12 = [v11 isOwnedByCurrentUser];
    v13 = +[NSBundle mainBundle];
    v14 = v13;
    if (v12)
    {
      v15 = @"In a folder shared by me called %@";
    }

    else
    {
      v15 = @"In a folder shared with me called %@";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_1000F6F48 table:0];

    v17 = [NSString localizedStringWithFormat:v16, v8];
  }

  else
  {
    v6 = [v3 isOwnedByCurrentUser];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (v6)
    {
      v9 = @"Shared by me via iCloud";
    }

    else
    {
      v9 = @"Shared with me via iCloud";
    }

    v17 = [v7 localizedStringForKey:v9 value:&stru_1000F6F48 table:0];
  }

LABEL_14:

  return v17;
}

@end