@interface NSQueryGenerationToken
+ (void)initialize;
- (NSQueryGenerationToken)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSQueryGenerationToken

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _MergedGlobals_74 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
    qword_1ED4BEA40 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
    qword_1ED4BEA48 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
  }
}

- (NSQueryGenerationToken)initWithCoder:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end