@interface ATXSuggestedPagesLayoutOptions
- (ATXSuggestedPagesLayoutOptions)initWithCoder:(id)coder;
@end

@implementation ATXSuggestedPagesLayoutOptions

- (ATXSuggestedPagesLayoutOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ATXSuggestedPagesLayoutOptions;
  v5 = [(ATXSuggestedPagesLayoutOptions *)&v14 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v7 initWithObjects:{v8, v9, 0}];

    objc_autoreleasePoolPop(v6);
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"candidateApps"];
    candidateApps = v5->_candidateApps;
    v5->_candidateApps = v11;
  }

  return v5;
}

@end