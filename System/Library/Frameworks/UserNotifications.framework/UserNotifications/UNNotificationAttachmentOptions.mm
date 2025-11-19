@interface UNNotificationAttachmentOptions
- (BOOL)isEqual:(id)a3;
- (UNNotificationAttachmentOptions)initWithCoder:(id)a3;
- (id)_initWithDisplayLocation:(unint64_t)a3 thumbnailGeneratorUserInfo:(id)a4;
- (id)_initWithOptions:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationAttachmentOptions

- (id)_initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 displayLocation];
  v6 = [v4 thumbnailGeneratorUserInfo];

  v7 = [(UNNotificationAttachmentOptions *)self _initWithDisplayLocation:v5 thumbnailGeneratorUserInfo:v6];
  return v7;
}

- (id)_initWithDisplayLocation:(unint64_t)a3 thumbnailGeneratorUserInfo:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = UNNotificationAttachmentOptions;
  v7 = [(UNNotificationAttachmentOptions *)&v13 init];
  p_isa = &v7->super.isa;
  if (v7)
  {
    v7->_displayLocation = a3;
    v9 = [v6 copy];
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
  v3 = [(UNNotificationAttachmentOptions *)self displayLocation];
  v4 = [(UNNotificationAttachmentOptions *)self thumbnailGeneratorUserInfo];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UNNotificationAttachmentOptions *)self displayLocation];
      if (v6 == [(UNNotificationAttachmentOptions *)v5 displayLocation])
      {
        v7 = [(UNNotificationAttachmentOptions *)self thumbnailGeneratorUserInfo];
        v8 = [(UNNotificationAttachmentOptions *)v5 thumbnailGeneratorUserInfo];
        v9 = UNEqualObjects(v7, v8);
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
  v6 = [(UNNotificationAttachmentOptions *)self thumbnailGeneratorUserInfo];
  v7 = [v3 stringWithFormat:@"<%@: %p displayLocation: %@; thumbnailGeneratorUserInfo: %@>", v4, self, v5, v6];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UNMutableNotificationAttachmentOptions alloc];

  return [(UNNotificationAttachmentOptions *)v4 _initWithOptions:self];
}

- (UNNotificationAttachmentOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"displayLocation"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"thumbnailGeneratorUserInfo"];

  v13 = [(UNNotificationAttachmentOptions *)self _initWithDisplayLocation:v5 thumbnailGeneratorUserInfo:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[UNNotificationAttachmentOptions displayLocation](self forKey:{"displayLocation"), @"displayLocation"}];
  v5 = [(UNNotificationAttachmentOptions *)self thumbnailGeneratorUserInfo];
  [v4 encodeObject:v5 forKey:@"thumbnailGeneratorUserInfo"];
}

@end