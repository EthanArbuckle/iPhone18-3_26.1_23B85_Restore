@interface __NSURLSessionLocal
- (id).cxx_construct;
- (unint64_t)nextSeed;
@end

@implementation __NSURLSessionLocal

- (id).cxx_construct
{
  *(self + 29) = 850045863;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 36) = 0;
  *(self + 37) = 850045863;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 44) = 0;
  return self;
}

- (unint64_t)nextSeed
{
  objc_sync_enter(self);
  v3 = *(self + 20);
  *(self + 20) = v3 + 1;
  objc_sync_exit(self);
  return v3;
}

@end