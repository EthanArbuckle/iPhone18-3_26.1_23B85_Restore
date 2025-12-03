@interface _SSSVI2View
- (BOOL)_ss_vi2Enabled;
@end

@implementation _SSSVI2View

- (BOOL)_ss_vi2Enabled
{
  if ([(_SSSVI2View *)self ss_vi2EnabledCacheIsValid])
  {

    return [(_SSSVI2View *)self ss_vi2EnabledCachedValue];
  }

  else
  {
    window = [(_SSSVI2View *)self window];

    if (window)
    {
      v5.receiver = self;
      v5.super_class = _SSSVI2View;
      [(_SSSVI2View *)self setSs_vi2EnabledCachedValue:[(_SSSVI2View *)&v5 _ss_vi2Enabled]];
      [(_SSSVI2View *)self setSs_vi2EnabledCacheIsValid:1];
      return [(_SSSVI2View *)self ss_vi2EnabledCachedValue];
    }

    else
    {
      return 0;
    }
  }
}

@end