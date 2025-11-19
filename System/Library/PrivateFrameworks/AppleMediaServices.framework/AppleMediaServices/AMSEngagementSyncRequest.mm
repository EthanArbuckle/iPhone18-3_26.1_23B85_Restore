@interface AMSEngagementSyncRequest
+ (id)archiveClasses;
- (AMSEngagementSyncRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(AMSEngagementSyncRequest *)self apps];
  [v8 encodeObject:v4 forKey:@"kCodingKeyApps"];

  v5 = [(AMSEngagementSyncRequest *)self context];
  [v8 encodeObject:v5 forKey:@"kCodingKeyContext"];

  v6 = [(AMSEngagementSyncRequest *)self logKey];
  [v8 encodeObject:v6 forKey:@"kCodingKeyLogKey"];

  v7 = [(AMSEngagementSyncRequest *)self origin];
  [v8 encodeObject:v7 forKey:@"kCodingKeyOrigin"];

  [(AMSEngagementSyncRequest *)self timeout];
  [v8 encodeDouble:@"kCodingKeyTimeout" forKey:?];
}

- (AMSEngagementSyncRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AMSEngagementSyncRequest;
  v5 = [(AMSEngagementSyncRequest *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCodingKeyApps"];
    apps = v5->_apps;
    v5->_apps = v9;

    v11 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"kCodingKeyContext"];
    context = v5->_context;
    v5->_context = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyOrigin"];
    origin = v5->_origin;
    v5->_origin = v16;

    [v4 decodeDoubleForKey:@"kCodingKeyTimeout"];
    v5->_timeout = v18;
  }

  return v5;
}

@end