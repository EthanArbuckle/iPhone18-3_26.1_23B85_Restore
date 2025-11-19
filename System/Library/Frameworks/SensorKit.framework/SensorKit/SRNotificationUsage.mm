@interface SRNotificationUsage
+ (SRNotificationUsage)notificationUsageWithBundleIdentifier:(id)a3 eventType:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (SRNotificationUsage)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRNotificationUsage

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:-[SRNotificationUsage bundleIdentifier](self forKey:{"bundleIdentifier"), @"bundleIdentifier"}];
  v6 = [(SRNotificationUsage *)self event];

  [a3 encodeInteger:v6 forKey:@"eventType"];
}

- (SRNotificationUsage)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = [a3 decodeIntegerForKey:@"eventType"];

  v8 = objc_alloc_init(SRNotificationUsage);
  [(SRNotificationUsage *)v8 setBundleIdentifier:v6];
  [(SRNotificationUsage *)v8 setEvent:v7];
  return v8;
}

+ (SRNotificationUsage)notificationUsageWithBundleIdentifier:(id)a3 eventType:(int64_t)a4
{
  v6 = objc_alloc_init(SRNotificationUsage);
  [(SRNotificationUsage *)v6 setBundleIdentifier:a3];
  [(SRNotificationUsage *)v6 setEvent:a4];

  return v6;
}

- (void)dealloc
{
  [(SRNotificationUsage *)self setBundleIdentifier:0];
  v3.receiver = self;
  v3.super_class = SRNotificationUsage;
  [(SRNotificationUsage *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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
    if (![a3 bundleIdentifier])
    {
LABEL_7:
      event = self->_event;
      LOBYTE(v12) = event == [a3 event];
      return v12;
    }

    bundleIdentifier = self->_bundleIdentifier;
  }

  v12 = -[NSString isEqualToString:](bundleIdentifier, "isEqualToString:", [a3 bundleIdentifier]);
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