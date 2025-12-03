@interface NSJoin
+ (id)joinWithSourceAttributeName:(uint64_t)name destinationAttributeName:;
- (BOOL)isEqual:(id)equal;
- (NSJoin)initWithCoder:(id)coder;
- (NSJoin)initWithSourceAttributeName:(id)name destinationAttributeName:(id)attributeName;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSJoin

+ (id)joinWithSourceAttributeName:(uint64_t)name destinationAttributeName:
{
  v3 = [objc_alloc(objc_opt_self()) initWithSourceAttributeName:a2 destinationAttributeName:name];

  return v3;
}

- (NSJoin)initWithSourceAttributeName:(id)name destinationAttributeName:(id)attributeName
{
  v8.receiver = self;
  v8.super_class = NSJoin;
  v6 = [(NSJoin *)&v8 init];
  if (v6)
  {
    v6->_sourceAttributeName = [name copy];
    v6->_destinationAttributeName = [attributeName copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSJoin;
  [(NSJoin *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  if (self)
  {
    if (![(NSString *)self->_sourceAttributeName isEqualToString:*(equal + 1)])
    {
      return 0;
    }

    destinationAttributeName = self->_destinationAttributeName;
  }

  else
  {
    v8 = [0 isEqualToString:*(equal + 1)];
    destinationAttributeName = 0;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return [(NSString *)destinationAttributeName isEqualToString:*(equal + 2)];
}

- (unint64_t)hash
{
  if (self)
  {
    v3 = [(NSString *)self->_sourceAttributeName hash];
    destinationAttributeName = self->_destinationAttributeName;
  }

  else
  {
    v3 = [0 hash];
    destinationAttributeName = 0;
  }

  return [(NSString *)destinationAttributeName hash]^ v3;
}

- (NSJoin)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectForKey:@"NSSourceAttributeName"];
  v6 = [coder decodeObjectForKey:@"NSDestinationAttributeName"];

  return [(NSJoin *)self initWithSourceAttributeName:v5 destinationAttributeName:v6];
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_sourceAttributeName forKey:@"NSSourceAttributeName"];
    destinationAttributeName = self->_destinationAttributeName;
  }

  else
  {
    [coder encodeObject:0 forKey:@"NSSourceAttributeName"];
    destinationAttributeName = 0;
  }

  [coder encodeObject:destinationAttributeName forKey:@"NSDestinationAttributeName"];
}

@end