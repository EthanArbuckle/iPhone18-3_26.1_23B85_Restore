@interface MTResultsChangeWrapper
- (BOOL)isEqual:(id)equal;
- (MTResultsChangeWrapper)initWithObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MTResultsChangeWrapper

- (MTResultsChangeWrapper)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = MTResultsChangeWrapper;
  v5 = [(MTResultsChangeWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTResultsChangeWrapper *)v5 setObject:objectCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTResultsChangeWrapper alloc];
  object = [(MTResultsChangeWrapper *)self object];
  v6 = [(MTResultsChangeWrapper *)v4 initWithObject:object];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    object = [(MTResultsChangeWrapper *)self object];
    object2 = [v5 object];

    v8 = [object isEqual:object2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  object = [(MTResultsChangeWrapper *)self object];
  v3 = [object hash];

  return v3;
}

@end