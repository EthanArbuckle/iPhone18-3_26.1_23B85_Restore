@interface PlatformDisplayLink.DisplayLinkTarget
- (void)frame:(id)a3;
@end

@implementation PlatformDisplayLink.DisplayLinkTarget

- (void)frame:(id)a3
{
  v4 = a3;

  [v4 timestamp];
  v6 = v5;
  [v4 duration];
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