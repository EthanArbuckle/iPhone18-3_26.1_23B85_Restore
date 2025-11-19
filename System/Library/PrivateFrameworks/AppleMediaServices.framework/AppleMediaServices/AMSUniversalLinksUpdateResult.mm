@interface AMSUniversalLinksUpdateResult
+ (id)archiveClasses;
- (AMSUniversalLinksUpdateResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSUniversalLinksUpdateResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[AMSUniversalLinksUpdateResult success](self forKey:{"success"), @"kCodingKeySuccess"}];
}

- (AMSUniversalLinksUpdateResult)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AMSUniversalLinksUpdateResult;
  v5 = [(AMSUniversalLinksUpdateResult *)&v7 init];
  if (v5)
  {
    v5->_success = [v4 decodeBoolForKey:@"kCodingKeySuccess"];
  }

  return v5;
}

+ (id)archiveClasses
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end