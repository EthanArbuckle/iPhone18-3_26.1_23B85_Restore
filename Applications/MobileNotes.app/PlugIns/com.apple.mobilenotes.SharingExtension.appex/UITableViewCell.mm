@interface UITableViewCell
- (id)accessibilitySharedViaICloudStringForNote:(id)note;
@end

@implementation UITableViewCell

- (id)accessibilitySharedViaICloudStringForNote:(id)note
{
  noteCopy = note;
  isSharedViaICloud = [noteCopy isSharedViaICloud];
  isSharedViaICloudFolder = [noteCopy isSharedViaICloudFolder];
  if (!isSharedViaICloud || isSharedViaICloudFolder)
  {
    if (![noteCopy isSharedViaICloudFolder])
    {
      v17 = 0;
      goto LABEL_14;
    }

    folder = [noteCopy folder];
    title = [folder title];

    folder2 = [noteCopy folder];
    isOwnedByCurrentUser = [folder2 isOwnedByCurrentUser];
    v13 = +[NSBundle mainBundle];
    v14 = v13;
    if (isOwnedByCurrentUser)
    {
      v15 = @"In a folder shared by me called %@";
    }

    else
    {
      v15 = @"In a folder shared with me called %@";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_1000F6F48 table:0];

    v17 = [NSString localizedStringWithFormat:v16, title];
  }

  else
  {
    isOwnedByCurrentUser2 = [noteCopy isOwnedByCurrentUser];
    v7 = +[NSBundle mainBundle];
    title = v7;
    if (isOwnedByCurrentUser2)
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