@interface TapParameters
- (void)setCompletionHandler:(id)handler;
@end

@implementation TapParameters

- (void)setCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  sub_1007B9034(v4, v5);
}

@end