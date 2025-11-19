@interface _NSOrderedSetDiff
- (_NSOrderedSetDiff)initWithObject:(id)a3;
- (void)applyToSet:(id)a3;
- (void)dealloc;
@end

@implementation _NSOrderedSetDiff

- (_NSOrderedSetDiff)initWithObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = _NSOrderedSetDiff;
  v4 = [(_NSOrderedSetDiff *)&v6 init];
  if (v4)
  {
    v4->_diffObject = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSOrderedSetDiff;
  [(_NSOrderedSetDiff *)&v3 dealloc];
}

- (void)applyToSet:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end