@interface PlatformDisplayLink.DisplayLinkTarget
- (void)frame:(id)frame;
@end

@implementation PlatformDisplayLink.DisplayLinkTarget

- (void)frame:(id)frame
{
  frameCopy = frame;

  [frameCopy timestamp];
  v6 = v5;
  [frameCopy duration];
  v8 = *self->callback;
  if (v8)
  {
    v9 = v7;
    v10 = *&self->callback[8];

    v8(v11, v6, v9);

    sub_10004EB88(v8);
  }

  else
  {
  }
}

@end