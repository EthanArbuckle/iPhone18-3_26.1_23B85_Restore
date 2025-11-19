@interface AMSEngagementEnqueueRequest
+ (id)archiveClasses;
- (AMSEngagementEnqueueRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSEngagementEnqueueRequest

+ (id)archiveClasses
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(AMSEngagementEnqueueRequest *)self clientInfo];
  [v8 encodeObject:v4 forKey:@"kCodingKeyClientInfo"];

  v5 = [(AMSEngagementEnqueueRequest *)self destinations];
  [v8 encodeObject:v5 forKey:@"kCodingKeyDestinations"];

  v6 = [(AMSEngagementEnqueueRequest *)self events];
  [v8 encodeObject:v6 forKey:@"kCodingKeyEvents"];

  v7 = [(AMSEngagementEnqueueRequest *)self logKey];
  [v8 encodeObject:v7 forKey:@"kCodingKeyLogKey"];

  [(AMSEngagementEnqueueRequest *)self timeout];
  [v8 encodeDouble:@"kCodingKeyTimeoOut" forKey:?];
  [v8 encodeInteger:-[AMSEngagementEnqueueRequest processIdentifier](self forKey:{"processIdentifier"), @"kCodingKeyProcessIdentifier"}];
}

- (AMSEngagementEnqueueRequest)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AMSEngagementEnqueueRequest;
  v5 = [(AMSEngagementEnqueueRequest *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyClientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v6;

    v8 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kCodingKeyDestinations"];
    destinations = v5->_destinations;
    v5->_destinations = v11;

    v13 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kCodingKeyEvents"];
    events = v5->_events;
    v5->_events = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v16;

    [v4 decodeDoubleForKey:@"kCodingKeyTimeoOut"];
    v5->_timeout = v18;
    v5->_processIdentifier = [v4 decodeIntegerForKey:@"kCodingKeyProcessIdentifier"];
  }

  return v5;
}

@end