@interface CRLHasher
- (CRLHasher)init;
- (void)addObject:(id)object;
@end

@implementation CRLHasher

- (CRLHasher)init
{
  v3.receiver = self;
  v3.super_class = CRLHasher;
  result = [(CRLHasher *)&v3 init];
  if (result)
  {
    result->_currentHash = 0xCBF29CE484222325;
  }

  return result;
}

- (void)addObject:(id)object
{
  v4 = [object hash];

  [(CRLHasher *)self p_appendUnsignedInteger:v4];
}

@end