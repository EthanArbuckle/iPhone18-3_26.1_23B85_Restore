@interface AMSEngagementEnqueueRequest
+ (id)archiveClasses;
- (AMSEngagementEnqueueRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientInfo = [(AMSEngagementEnqueueRequest *)self clientInfo];
  [coderCopy encodeObject:clientInfo forKey:@"kCodingKeyClientInfo"];

  destinations = [(AMSEngagementEnqueueRequest *)self destinations];
  [coderCopy encodeObject:destinations forKey:@"kCodingKeyDestinations"];

  events = [(AMSEngagementEnqueueRequest *)self events];
  [coderCopy encodeObject:events forKey:@"kCodingKeyEvents"];

  logKey = [(AMSEngagementEnqueueRequest *)self logKey];
  [coderCopy encodeObject:logKey forKey:@"kCodingKeyLogKey"];

  [(AMSEngagementEnqueueRequest *)self timeout];
  [coderCopy encodeDouble:@"kCodingKeyTimeoOut" forKey:?];
  [coderCopy encodeInteger:-[AMSEngagementEnqueueRequest processIdentifier](self forKey:{"processIdentifier"), @"kCodingKeyProcessIdentifier"}];
}

- (AMSEngagementEnqueueRequest)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = AMSEngagementEnqueueRequest;
  v5 = [(AMSEngagementEnqueueRequest *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyClientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v6;

    v8 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kCodingKeyDestinations"];
    destinations = v5->_destinations;
    v5->_destinations = v11;

    ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v14 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"kCodingKeyEvents"];
    events = v5->_events;
    v5->_events = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v16;

    [coderCopy decodeDoubleForKey:@"kCodingKeyTimeoOut"];
    v5->_timeout = v18;
    v5->_processIdentifier = [coderCopy decodeIntegerForKey:@"kCodingKeyProcessIdentifier"];
  }

  return v5;
}

@end