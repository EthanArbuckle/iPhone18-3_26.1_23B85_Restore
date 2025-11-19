@interface _SWBSActionSettings
- (_SWBSActionSettings)init;
- (id)bsSettings;
- (void)setObject:(id)a3 forSetting:(unint64_t)a4;
@end

@implementation _SWBSActionSettings

- (_SWBSActionSettings)init
{
  v6.receiver = self;
  v6.super_class = _SWBSActionSettings;
  v2 = [(_SWBSActionSettings *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E700]);
    mutableSettings = v2->_mutableSettings;
    v2->_mutableSettings = v3;
  }

  return v2;
}

- (id)bsSettings
{
  v2 = [(_SWBSActionSettings *)self mutableSettings];
  v3 = [v2 copy];

  return v3;
}

- (void)setObject:(id)a3 forSetting:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_SWBSActionSettings *)self mutableSettings];
  [v7 setObject:v6 forSetting:a4];
}

@end