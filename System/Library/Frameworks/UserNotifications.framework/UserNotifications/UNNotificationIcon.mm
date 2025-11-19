@interface UNNotificationIcon
+ (id)iconAtPath:(id)a3;
+ (id)iconForApplicationIdentifier:(id)a3;
+ (id)iconForSystemImageNamed:(id)a3;
+ (id)iconNamed:(id)a3;
+ (id)iconWithData:(id)a3;
+ (id)iconWithDateComponents:(id)a3 calendarIdentifier:(id)a4 format:(int64_t)a5;
+ (id)iconWithUTI:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UNNotificationIcon)init;
- (UNNotificationIcon)initWithCoder:(id)a3;
- (id)_initWithIconInfo:(id)a3 type:(int64_t)a4 shouldSuppressMask:(BOOL)a5;
- (id)applicationIdentifier;
- (id)data;
- (id)dateComponents;
- (id)description;
- (id)name;
- (id)path;
- (id)systemImageName;
- (id)uti;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationIcon

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = self->_iconInfoType - 1;
  if (v5 > 5)
  {
    v6 = @"[INVALID]";
  }

  else
  {
    v6 = off_1E7CFF838[v5];
  }

  return [v3 stringWithFormat:@"<%@: %p; iconInfo: %@; iconInfoType: %@; shouldSuppressMask: %d>", v4, self, self->_iconInfo, v6, self->_shouldSuppressMask];
}

+ (id)iconForApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconInfo:v4 type:3 shouldSuppressMask:0];

  return v5;
}

+ (id)iconForSystemImageNamed:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconInfo:v4 type:4 shouldSuppressMask:0];

  return v5;
}

+ (id)iconWithDateComponents:(id)a3 calendarIdentifier:(id)a4 format:(int64_t)a5
{
  v17[3] = *MEMORY[0x1E69E9840];
  v16[0] = @"NotificationIconDateComponents";
  v16[1] = @"NotificationIconCalendarKey";
  v17[0] = a3;
  v17[1] = a4;
  v16[2] = @"NotificationIconDateFormatKey";
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = a3;
  v11 = [v8 numberWithInteger:a5];
  v17[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v13 = [[a1 alloc] _initWithIconInfo:v12 type:7 shouldSuppressMask:0];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)iconWithUTI:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconInfo:v4 type:6 shouldSuppressMask:0];

  return v5;
}

- (id)_initWithIconInfo:(id)a3 type:(int64_t)a4 shouldSuppressMask:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = UNNotificationIcon;
  v9 = [(UNNotificationIcon *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    iconInfo = v9->_iconInfo;
    v9->_iconInfo = v10;

    v9->_iconInfoType = a4;
    v9->_shouldSuppressMask = a5;
  }

  return v9;
}

- (UNNotificationIcon)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UNNotificationIcon.m" lineNumber:73 description:@"use appropriate class method"];

  return 0;
}

- (id)applicationIdentifier
{
  if (self->_iconInfoType == 3)
  {
    v4 = objc_opt_class();
    v5 = UNSafeCast(v4, self->_iconInfo);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)name
{
  if (self->_iconInfoType == 1)
  {
    v4 = objc_opt_class();
    v5 = UNSafeCast(v4, self->_iconInfo);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)path
{
  if (self->_iconInfoType == 2)
  {
    v4 = objc_opt_class();
    v5 = UNSafeCast(v4, self->_iconInfo);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)uti
{
  if (self->_iconInfoType == 6)
  {
    v4 = objc_opt_class();
    v5 = UNSafeCast(v4, self->_iconInfo);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)systemImageName
{
  if (self->_iconInfoType == 4)
  {
    v4 = objc_opt_class();
    v5 = UNSafeCast(v4, self->_iconInfo);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)data
{
  if (self->_iconInfoType == 5)
  {
    v4 = objc_opt_class();
    v5 = UNSafeCast(v4, self->_iconInfo);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dateComponents
{
  if (self->_iconInfoType == 7)
  {
    v4 = objc_opt_class();
    v5 = UNSafeCast(v4, self->_iconInfo);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [self->_iconInfo hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_iconInfoType];
  v5 = [v4 hash];
  v6 = v3 ^ self->_shouldSuppressMask;

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && UNEqualObjects(self->_iconInfo, v4[1]) && self->_iconInfoType == v4[2] && self->_shouldSuppressMask == *(v4 + 24);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:2 forKey:@"codingVersion"];
  [v4 encodeObject:self->_iconInfo forKey:@"iconInfo"];
  [v4 encodeInteger:self->_iconInfoType forKey:@"iconInfoType"];
  [v4 encodeBool:self->_shouldSuppressMask forKey:@"shouldSuppressMask"];
}

- (UNNotificationIcon)initWithCoder:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"codingVersion"] == 2)
  {
    v5 = [v4 decodeIntegerForKey:@"iconInfoType"];
    if (v5 == 7)
    {
      v6 = MEMORY[0x1E695DFD8];
      v24[0] = objc_opt_class();
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v8 = [v6 setWithArray:v7];

      v9 = MEMORY[0x1E695DFD8];
      v23[0] = objc_opt_class();
      v23[1] = objc_opt_class();
      v23[2] = objc_opt_class();
      v23[3] = objc_opt_class();
      v23[4] = objc_opt_class();
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];
      v11 = [v9 setWithArray:v10];

      v12 = [v4 decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v11 forKey:@"iconInfo"];
    }

    else
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconInfo"];
    }

    v18 = [v4 decodeBoolForKey:@"shouldSuppressMask"];
  }

  else
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uti"];
    if ([v13 length])
    {
      v5 = 3;
      v17 = v13;
    }

    else if ([v14 length])
    {
      v5 = 1;
      v17 = v14;
    }

    else
    {
      v19 = [v16 length];
      if (v19)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if (v19)
      {
        v5 = 6;
      }

      else
      {
        v5 = 2;
      }
    }

    v12 = v17;

    v18 = 0;
  }

  v20 = [(UNNotificationIcon *)self _initWithIconInfo:v12 type:v5 shouldSuppressMask:v18];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)iconNamed:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconInfo:v4 type:1 shouldSuppressMask:0];

  return v5;
}

+ (id)iconAtPath:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconInfo:v4 type:2 shouldSuppressMask:0];

  return v5;
}

+ (id)iconWithData:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithIconInfo:v4 type:5 shouldSuppressMask:0];

  return v5;
}

@end