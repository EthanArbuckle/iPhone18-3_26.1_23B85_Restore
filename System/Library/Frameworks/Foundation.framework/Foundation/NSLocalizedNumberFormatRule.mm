@interface NSLocalizedNumberFormatRule
+ (id)automatic;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSLocalizedNumberFormatRule

- (id)_init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSLocalizedNumberFormatRule;
  return [(NSLocalizedNumberFormatRule *)&v3 init];
}

+ (id)automatic
{
  if (_MergedGlobals_134 != -1)
  {
    dispatch_once(&_MergedGlobals_134, &__block_literal_global_61);
  }

  return qword_1ED43FD50;
}

id __40__NSLocalizedNumberFormatRule_automatic__block_invoke()
{
  result = [[_NSLocalizedNumberFormatRuleAutomatic alloc] _init];
  qword_1ED43FD50 = result;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5);
}

@end