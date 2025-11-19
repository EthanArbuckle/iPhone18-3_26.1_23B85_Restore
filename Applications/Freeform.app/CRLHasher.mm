@interface CRLHasher
- (CRLHasher)init;
- (void)addObject:(id)a3;
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

- (void)addObject:(id)a3
{
  v4 = [a3 hash];

  [(CRLHasher *)self p_appendUnsignedInteger:v4];
}

@end