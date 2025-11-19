@interface TapParameters
- (void)setCompletionHandler:(id)a3;
@end

@implementation TapParameters

- (void)setCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1007BA3D4;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1007B9034(v4, v5);
}

@end