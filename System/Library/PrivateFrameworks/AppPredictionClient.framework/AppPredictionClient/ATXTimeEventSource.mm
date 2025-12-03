@interface ATXTimeEventSource
- (ATXTimeEventSource)initWithCoder:(id)coder;
- (ATXTimeEventSource)initWithType:(int64_t)type bundleId:(id)id url:(id)url;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeEventSource

- (ATXTimeEventSource)initWithType:(int64_t)type bundleId:(id)id url:(id)url
{
  idCopy = id;
  urlCopy = url;
  v15.receiver = self;
  v15.super_class = ATXTimeEventSource;
  v10 = [(ATXTimeEventSource *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [idCopy copy];
    bundleId = v11->_bundleId;
    v11->_bundleId = v12;

    objc_storeStrong(&v11->_url, url);
  }

  return v11;
}

- (ATXTimeEventSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"sourceType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  v8 = [(ATXTimeEventSource *)self initWithType:v5 bundleId:v6 url:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ATXTimeEventSource type](self forKey:{"type"), @"sourceType"}];
  bundleId = [(ATXTimeEventSource *)self bundleId];
  [coderCopy encodeObject:bundleId forKey:@"bundleId"];

  v6 = [(ATXTimeEventSource *)self url];
  [coderCopy encodeObject:v6 forKey:@"url"];
}

@end