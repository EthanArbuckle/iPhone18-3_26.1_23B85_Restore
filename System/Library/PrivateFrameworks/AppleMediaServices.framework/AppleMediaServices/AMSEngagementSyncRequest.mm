@interface AMSEngagementSyncRequest
+ (id)archiveClasses;
- (AMSEngagementSyncRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSEngagementSyncRequest

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
  apps = [(AMSEngagementSyncRequest *)self apps];
  [coderCopy encodeObject:apps forKey:@"kCodingKeyApps"];

  context = [(AMSEngagementSyncRequest *)self context];
  [coderCopy encodeObject:context forKey:@"kCodingKeyContext"];

  logKey = [(AMSEngagementSyncRequest *)self logKey];
  [coderCopy encodeObject:logKey forKey:@"kCodingKeyLogKey"];

  origin = [(AMSEngagementSyncRequest *)self origin];
  [coderCopy encodeObject:origin forKey:@"kCodingKeyOrigin"];

  [(AMSEngagementSyncRequest *)self timeout];
  [coderCopy encodeDouble:@"kCodingKeyTimeout" forKey:?];
}

- (AMSEngagementSyncRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = AMSEngagementSyncRequest;
  v5 = [(AMSEngagementSyncRequest *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCodingKeyApps"];
    apps = v5->_apps;
    v5->_apps = v9;

    ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v12 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"kCodingKeyContext"];
    context = v5->_context;
    v5->_context = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyOrigin"];
    origin = v5->_origin;
    v5->_origin = v16;

    [coderCopy decodeDoubleForKey:@"kCodingKeyTimeout"];
    v5->_timeout = v18;
  }

  return v5;
}

@end