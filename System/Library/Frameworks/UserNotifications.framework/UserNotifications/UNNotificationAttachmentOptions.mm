@interface UNNotificationAttachmentOptions
- (BOOL)isEqual:(id)equal;
- (UNNotificationAttachmentOptions)initWithCoder:(id)coder;
- (id)_initWithDisplayLocation:(unint64_t)location thumbnailGeneratorUserInfo:(id)info;
- (id)_initWithOptions:(id)options;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationAttachmentOptions

- (id)_initWithOptions:(id)options
{
  optionsCopy = options;
  displayLocation = [optionsCopy displayLocation];
  thumbnailGeneratorUserInfo = [optionsCopy thumbnailGeneratorUserInfo];

  v7 = [(UNNotificationAttachmentOptions *)self _initWithDisplayLocation:displayLocation thumbnailGeneratorUserInfo:thumbnailGeneratorUserInfo];
  return v7;
}

- (id)_initWithDisplayLocation:(unint64_t)location thumbnailGeneratorUserInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = UNNotificationAttachmentOptions;
  v7 = [(UNNotificationAttachmentOptions *)&v13 init];
  p_isa = &v7->super.isa;
  if (v7)
  {
    v7->_displayLocation = location;
    v9 = [infoCopy copy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(p_isa + 2, v11);
  }

  return p_isa;
}

- (unint64_t)hash
{
  displayLocation = [(UNNotificationAttachmentOptions *)self displayLocation];
  thumbnailGeneratorUserInfo = [(UNNotificationAttachmentOptions *)self thumbnailGeneratorUserInfo];
  v5 = [thumbnailGeneratorUserInfo hash];

  return v5 ^ displayLocation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      displayLocation = [(UNNotificationAttachmentOptions *)self displayLocation];
      if (displayLocation == [(UNNotificationAttachmentOptions *)v5 displayLocation])
      {
        thumbnailGeneratorUserInfo = [(UNNotificationAttachmentOptions *)self thumbnailGeneratorUserInfo];
        thumbnailGeneratorUserInfo2 = [(UNNotificationAttachmentOptions *)v5 thumbnailGeneratorUserInfo];
        v9 = UNEqualObjects(thumbnailGeneratorUserInfo, thumbnailGeneratorUserInfo2);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = UNStringFromNotificationAttachmentDisplayLocation([(UNNotificationAttachmentOptions *)self displayLocation]);
  thumbnailGeneratorUserInfo = [(UNNotificationAttachmentOptions *)self thumbnailGeneratorUserInfo];
  v7 = [v3 stringWithFormat:@"<%@: %p displayLocation: %@; thumbnailGeneratorUserInfo: %@>", v4, self, v5, thumbnailGeneratorUserInfo];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UNMutableNotificationAttachmentOptions alloc];

  return [(UNNotificationAttachmentOptions *)v4 _initWithOptions:self];
}

- (UNNotificationAttachmentOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"displayLocation"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"thumbnailGeneratorUserInfo"];

  v13 = [(UNNotificationAttachmentOptions *)self _initWithDisplayLocation:v5 thumbnailGeneratorUserInfo:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[UNNotificationAttachmentOptions displayLocation](self forKey:{"displayLocation"), @"displayLocation"}];
  thumbnailGeneratorUserInfo = [(UNNotificationAttachmentOptions *)self thumbnailGeneratorUserInfo];
  [coderCopy encodeObject:thumbnailGeneratorUserInfo forKey:@"thumbnailGeneratorUserInfo"];
}

@end