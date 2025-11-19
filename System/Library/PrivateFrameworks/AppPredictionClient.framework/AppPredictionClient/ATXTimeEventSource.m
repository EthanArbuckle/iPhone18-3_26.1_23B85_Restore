@interface ATXTimeEventSource
- (ATXTimeEventSource)initWithCoder:(id)a3;
- (ATXTimeEventSource)initWithType:(int64_t)a3 bundleId:(id)a4 url:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeEventSource

- (ATXTimeEventSource)initWithType:(int64_t)a3 bundleId:(id)a4 url:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = ATXTimeEventSource;
  v10 = [(ATXTimeEventSource *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    bundleId = v11->_bundleId;
    v11->_bundleId = v12;

    objc_storeStrong(&v11->_url, a5);
  }

  return v11;
}

- (ATXTimeEventSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"sourceType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  v8 = [(ATXTimeEventSource *)self initWithType:v5 bundleId:v6 url:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[ATXTimeEventSource type](self forKey:{"type"), @"sourceType"}];
  v5 = [(ATXTimeEventSource *)self bundleId];
  [v4 encodeObject:v5 forKey:@"bundleId"];

  v6 = [(ATXTimeEventSource *)self url];
  [v4 encodeObject:v6 forKey:@"url"];
}

@end