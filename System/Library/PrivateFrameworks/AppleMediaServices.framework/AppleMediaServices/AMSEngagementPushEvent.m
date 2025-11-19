@interface AMSEngagementPushEvent
+ (id)archiveClasses;
- (AMSEngagementPushEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSEngagementPushEvent

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
  v4 = a3;
  v5 = [(AMSEngagementPushEvent *)self actions];
  [v4 encodeObject:v5 forKey:@"kCodingKeyActions"];

  v6 = [(AMSEngagementPushEvent *)self data];
  [v4 encodeObject:v6 forKey:@"kCodingKeyData"];

  v7 = [(AMSEngagementPushEvent *)self request];
  [v4 encodeObject:v7 forKey:@"kCodingKeyRequest"];
}

- (AMSEngagementPushEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AMSEngagementPushEvent;
  v5 = [(AMSEngagementPushEvent *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"kCodingKeyActions"];
    actions = v5->_actions;
    v5->_actions = v7;

    v9 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"kCodingKeyData"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
    request = v5->_request;
    v5->_request = v12;
  }

  return v5;
}

@end