@interface AMSEngagementEnqueueResult
+ (id)archiveClasses;
- (AMSEngagementEnqueueResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSEngagementEnqueueResult

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
  actions = [(AMSEngagementEnqueueResult *)self actions];
  [coderCopy encodeObject:actions forKey:@"kCodingKeyActions"];

  data = [(AMSEngagementEnqueueResult *)self data];
  [coderCopy encodeObject:data forKey:@"kCodingKeyData"];

  request = [(AMSEngagementEnqueueResult *)self request];
  [coderCopy encodeObject:request forKey:@"kCodingKeyRequest"];
}

- (AMSEngagementEnqueueResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AMSEngagementEnqueueResult;
  v5 = [(AMSEngagementEnqueueResult *)&v15 init];
  if (v5)
  {
    ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v7 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"kCodingKeyActions"];
    actions = v5->_actions;
    v5->_actions = v7;

    ams_PLISTClasses2 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v10 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses2 forKey:@"kCodingKeyData"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
    request = v5->_request;
    v5->_request = v12;
  }

  return v5;
}

@end