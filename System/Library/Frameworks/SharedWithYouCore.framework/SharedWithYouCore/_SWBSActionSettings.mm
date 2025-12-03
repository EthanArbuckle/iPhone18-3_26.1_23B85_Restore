@interface _SWBSActionSettings
- (_SWBSActionSettings)init;
- (id)bsSettings;
- (void)setObject:(id)object forSetting:(unint64_t)setting;
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
  mutableSettings = [(_SWBSActionSettings *)self mutableSettings];
  v3 = [mutableSettings copy];

  return v3;
}

- (void)setObject:(id)object forSetting:(unint64_t)setting
{
  objectCopy = object;
  mutableSettings = [(_SWBSActionSettings *)self mutableSettings];
  [mutableSettings setObject:objectCopy forSetting:setting];
}

@end