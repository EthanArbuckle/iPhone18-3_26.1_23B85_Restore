@interface SNDSPGraphBox
- (SNDSPGraphBox)init;
- (id).cxx_construct;
@end

@implementation SNDSPGraphBox

- (SNDSPGraphBox)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SNDSPGraphBox init]"];
  [v3 raise:*MEMORY[0x1E695D940] format:{@"Do not call %@", v4}];

  return 0;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end