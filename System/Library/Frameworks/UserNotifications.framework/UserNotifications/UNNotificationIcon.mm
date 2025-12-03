@interface UNNotificationIcon
+ (id)iconAtPath:(id)path;
+ (id)iconForApplicationIdentifier:(id)identifier;
+ (id)iconForSystemImageNamed:(id)named;
+ (id)iconNamed:(id)named;
+ (id)iconWithData:(id)data;
+ (id)iconWithDateComponents:(id)components calendarIdentifier:(id)identifier format:(int64_t)format;
+ (id)iconWithUTI:(id)i;
- (BOOL)isEqual:(id)equal;
- (UNNotificationIcon)init;
- (UNNotificationIcon)initWithCoder:(id)coder;
- (id)_initWithIconInfo:(id)info type:(int64_t)type shouldSuppressMask:(BOOL)mask;
- (id)applicationIdentifier;
- (id)data;
- (id)dateComponents;
- (id)description;
- (id)name;
- (id)path;
- (id)systemImageName;
- (id)uti;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

+ (id)iconForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] _initWithIconInfo:identifierCopy type:3 shouldSuppressMask:0];

  return v5;
}

+ (id)iconForSystemImageNamed:(id)named
{
  namedCopy = named;
  v5 = [[self alloc] _initWithIconInfo:namedCopy type:4 shouldSuppressMask:0];

  return v5;
}

+ (id)iconWithDateComponents:(id)components calendarIdentifier:(id)identifier format:(int64_t)format
{
  v17[3] = *MEMORY[0x1E69E9840];
  v16[0] = @"NotificationIconDateComponents";
  v16[1] = @"NotificationIconCalendarKey";
  v17[0] = components;
  v17[1] = identifier;
  v16[2] = @"NotificationIconDateFormatKey";
  v8 = MEMORY[0x1E696AD98];
  identifierCopy = identifier;
  componentsCopy = components;
  v11 = [v8 numberWithInteger:format];
  v17[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v13 = [[self alloc] _initWithIconInfo:v12 type:7 shouldSuppressMask:0];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)iconWithUTI:(id)i
{
  iCopy = i;
  v5 = [[self alloc] _initWithIconInfo:iCopy type:6 shouldSuppressMask:0];

  return v5;
}

- (id)_initWithIconInfo:(id)info type:(int64_t)type shouldSuppressMask:(BOOL)mask
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = UNNotificationIcon;
  v9 = [(UNNotificationIcon *)&v13 init];
  if (v9)
  {
    v10 = [infoCopy copy];
    iconInfo = v9->_iconInfo;
    v9->_iconInfo = v10;

    v9->_iconInfoType = type;
    v9->_shouldSuppressMask = mask;
  }

  return v9;
}

- (UNNotificationIcon)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UNNotificationIcon.m" lineNumber:73 description:@"use appropriate class method"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && UNEqualObjects(self->_iconInfo, equalCopy[1]) && self->_iconInfoType == equalCopy[2] && self->_shouldSuppressMask == *(equalCopy + 24);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:2 forKey:@"codingVersion"];
  [coderCopy encodeObject:self->_iconInfo forKey:@"iconInfo"];
  [coderCopy encodeInteger:self->_iconInfoType forKey:@"iconInfoType"];
  [coderCopy encodeBool:self->_shouldSuppressMask forKey:@"shouldSuppressMask"];
}

- (UNNotificationIcon)initWithCoder:(id)coder
{
  v24[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"codingVersion"] == 2)
  {
    v5 = [coderCopy decodeIntegerForKey:@"iconInfoType"];
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

      v12 = [coderCopy decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v11 forKey:@"iconInfo"];
    }

    else
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconInfo"];
    }

    v18 = [coderCopy decodeBoolForKey:@"shouldSuppressMask"];
  }

  else
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uti"];
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

+ (id)iconNamed:(id)named
{
  namedCopy = named;
  v5 = [[self alloc] _initWithIconInfo:namedCopy type:1 shouldSuppressMask:0];

  return v5;
}

+ (id)iconAtPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] _initWithIconInfo:pathCopy type:2 shouldSuppressMask:0];

  return v5;
}

+ (id)iconWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] _initWithIconInfo:dataCopy type:5 shouldSuppressMask:0];

  return v5;
}

@end