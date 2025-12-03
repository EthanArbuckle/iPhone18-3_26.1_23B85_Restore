@interface AMSUniversalLinksUpdateResult
+ (id)archiveClasses;
- (AMSUniversalLinksUpdateResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSUniversalLinksUpdateResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AMSUniversalLinksUpdateResult success](self forKey:{"success"), @"kCodingKeySuccess"}];
}

- (AMSUniversalLinksUpdateResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AMSUniversalLinksUpdateResult;
  v5 = [(AMSUniversalLinksUpdateResult *)&v7 init];
  if (v5)
  {
    v5->_success = [coderCopy decodeBoolForKey:@"kCodingKeySuccess"];
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