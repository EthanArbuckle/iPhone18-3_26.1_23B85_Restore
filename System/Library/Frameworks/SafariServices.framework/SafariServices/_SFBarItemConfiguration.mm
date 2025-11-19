@interface _SFBarItemConfiguration
- (_SFBarItemConfiguration)init;
@end

@implementation _SFBarItemConfiguration

- (_SFBarItemConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _SFBarItemConfiguration;
  v2 = [(_SFBarItemConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 1;
    v4 = v2;
  }

  return v3;
}

@end