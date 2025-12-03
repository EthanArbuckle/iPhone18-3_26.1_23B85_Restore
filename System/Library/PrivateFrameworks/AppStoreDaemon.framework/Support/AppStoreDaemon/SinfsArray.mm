@interface SinfsArray
- (SinfsArray)init;
@end

@implementation SinfsArray

- (SinfsArray)init
{
  selfCopy = self;
  if (self)
  {
    v6.receiver = self;
    v6.super_class = SinfsArray;
    selfCopy = [(SinfsArray *)&v6 init];
    if (selfCopy)
    {
      v3 = [0 copy];
      sinfs = selfCopy->_sinfs;
      selfCopy->_sinfs = v3;
    }
  }

  return selfCopy;
}

@end