@interface AMSEngagementSyncResult
+ (id)archiveClasses;
- (AMSEngagementSyncResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSEngagementSyncResult

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
  actions = [(AMSEngagementSyncResult *)self actions];
  [coderCopy encodeObject:actions forKey:@"kCodingKeyActions"];
}

- (AMSEngagementSyncResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AMSEngagementSyncResult;
  v5 = [(AMSEngagementSyncResult *)&v10 init];
  if (v5)
  {
    ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v7 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"kCodingKeyActions"];
    actions = v5->_actions;
    v5->_actions = v7;
  }

  return v5;
}

@end