@interface NSError(UserNotifications)
+ (__CFString)_un_descriptionForUNErrorCode:()UserNotifications;
+ (__CFString)_un_descriptionForUNPrivateErrorCode:()UserNotifications;
+ (id)_updateUserInfo:()UserNotifications withLocalizedDescription:;
+ (id)un_errorWithUNErrorCode:()UserNotifications userInfo:;
+ (id)un_errorWithUNPrivateErrorCode:()UserNotifications userInfo:;
@end

@implementation NSError(UserNotifications)

+ (id)un_errorWithUNErrorCode:()UserNotifications userInfo:
{
  v6 = a4;
  v7 = [self _un_descriptionForUNErrorCode:a3];
  v8 = [self _updateUserInfo:v6 withLocalizedDescription:v7];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UNErrorDomain" code:a3 userInfo:v8];

  return v9;
}

+ (id)un_errorWithUNPrivateErrorCode:()UserNotifications userInfo:
{
  v6 = a4;
  v7 = [self _un_descriptionForUNPrivateErrorCode:a3];
  v8 = [self _updateUserInfo:v6 withLocalizedDescription:v7];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UNErrorDomain" code:a3 userInfo:v8];

  return v9;
}

+ (__CFString)_un_descriptionForUNErrorCode:()UserNotifications
{
  v3 = @"Notifications are not allowed for this application";
  v4 = @"Content providing object not allowed";
  v5 = @"Content providing object is invalid";
  v6 = @"Badge count is invalid";
  if (a3 != 1600)
  {
    v6 = @"Notifications are not allowed for this application";
  }

  if (a3 != 1501)
  {
    v5 = v6;
  }

  if (a3 != 1500)
  {
    v4 = v5;
  }

  v7 = @"Notification has no user visible content";
  if (a3 != 1401)
  {
    v7 = @"Notifications are not allowed for this application";
  }

  if (a3 == 1400)
  {
    v7 = @"Notification has no date";
  }

  if (a3 == 105)
  {
    v7 = @"Attachment is corrupt";
  }

  if (a3 <= 1499)
  {
    v4 = v7;
  }

  v8 = @"Attachment is not in the data store";
  v9 = @"Failed to move attachment file into data store";
  if (a3 != 104)
  {
    v9 = @"Notifications are not allowed for this application";
  }

  if (a3 != 103)
  {
    v8 = v9;
  }

  if (a3 == 102)
  {
    v8 = @"Invalid attachment file size";
  }

  if (a3 == 101)
  {
    v3 = @"Unrecognized attachment file type";
  }

  if (a3 == 100)
  {
    v3 = @"Invalid attachment file URL";
  }

  if (a3 > 101)
  {
    v3 = v8;
  }

  if (a3 <= 104)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (__CFString)_un_descriptionForUNPrivateErrorCode:()UserNotifications
{
  v3 = @"Service extension failed to start";
  v4 = @"Service extension encountered an unknown error";
  v5 = @"Unknown application";
  v6 = @"Repository could not save notification due to mismatched revision numbers";
  if (a3 != 2000)
  {
    v6 = @"Service extension failed to start";
  }

  if (a3 != 1904)
  {
    v5 = v6;
  }

  if (a3 != 1903)
  {
    v4 = v5;
  }

  if (a3 == 1902)
  {
    v3 = @"Invalid context";
  }

  if (a3 == 1901)
  {
    v3 = @"Service extension time expired";
  }

  if (a3 <= 1902)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)_updateUserInfo:()UserNotifications withLocalizedDescription:
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E696A578];
  v8 = [v5 objectForKey:*MEMORY[0x1E696A578]];

  if (!v8)
  {
    v9 = [v5 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    v12 = v11;

    [v12 setObject:v6 forKey:v7];
    v13 = [v12 copy];

    v5 = v13;
  }

  return v5;
}

@end