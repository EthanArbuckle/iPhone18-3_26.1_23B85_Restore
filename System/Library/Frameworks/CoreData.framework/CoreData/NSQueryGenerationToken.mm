@interface NSQueryGenerationToken
+ (void)initialize;
- (NSQueryGenerationToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSQueryGenerationToken

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _MergedGlobals_74 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
    qword_1ED4BEA40 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
    qword_1ED4BEA48 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
  }
}

- (NSQueryGenerationToken)initWithCoder:(id)coder
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end