@interface SRNotificationUsage
+ (SRNotificationUsage)notificationUsageWithBundleIdentifier:(id)identifier eventType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (SRNotificationUsage)initWithCoder:(id)coder;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRNotificationUsage

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[SRNotificationUsage bundleIdentifier](self forKey:{"bundleIdentifier"), @"bundleIdentifier"}];
  event = [(SRNotificationUsage *)self event];

  [coder encodeInteger:event forKey:@"eventType"];
}

- (SRNotificationUsage)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [coder decodeIntegerForKey:@"eventType"];

  v8 = objc_alloc_init(SRNotificationUsage);
  [(SRNotificationUsage *)v8 setBundleIdentifier:v6];
  [(SRNotificationUsage *)v8 setEvent:v7];
  return v8;
}

+ (SRNotificationUsage)notificationUsageWithBundleIdentifier:(id)identifier eventType:(int64_t)type
{
  v6 = objc_alloc_init(SRNotificationUsage);
  [(SRNotificationUsage *)v6 setBundleIdentifier:identifier];
  [(SRNotificationUsage *)v6 setEvent:type];

  return v6;
}

- (void)dealloc
{
  [(SRNotificationUsage *)self setBundleIdentifier:0];
  v3.receiver = self;
  v3.super_class = SRNotificationUsage;
  [(SRNotificationUsage *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v12) = 1;
    return v12;
  }

  v15 = v6;
  v16 = v5;
  v17 = v4;
  v18 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v12) = 0;
    return v12;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (!bundleIdentifier)
  {
    if (![equal bundleIdentifier])
    {
LABEL_7:
      event = self->_event;
      LOBYTE(v12) = event == [equal event];
      return v12;
    }

    bundleIdentifier = self->_bundleIdentifier;
  }

  v12 = -[NSString isEqualToString:](bundleIdentifier, "isEqualToString:", [equal bundleIdentifier]);
  if (v12)
  {
    goto LABEL_7;
  }

  return v12;
}

- (id)sr_dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"eventType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  v7[1] = @"bundleIdentifier";
  v8[0] = v3;
  bundleIdentifier = self->_bundleIdentifier;
  if (!bundleIdentifier)
  {
    bundleIdentifier = &stru_1F48BB5C0;
  }

  v8[1] = bundleIdentifier;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end