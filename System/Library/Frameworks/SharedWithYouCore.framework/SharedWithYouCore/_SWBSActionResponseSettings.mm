@interface _SWBSActionResponseSettings
- (_SWBSActionResponseSettings)init;
- (id)bsSettings;
- (void)setFlag:(BOOL)flag forSetting:(unint64_t)setting;
- (void)setObject:(id)object forSetting:(unint64_t)setting;
@end

@implementation _SWBSActionResponseSettings

- (_SWBSActionResponseSettings)init
{
  v6.receiver = self;
  v6.super_class = _SWBSActionResponseSettings;
  v2 = [(_SWBSActionResponseSettings *)&v6 init];
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
  mutableSettings = [(_SWBSActionResponseSettings *)self mutableSettings];
  v3 = [mutableSettings copy];

  return v3;
}

- (void)setObject:(id)object forSetting:(unint64_t)setting
{
  objectCopy = object;
  mutableSettings = [(_SWBSActionResponseSettings *)self mutableSettings];
  [mutableSettings setObject:objectCopy forSetting:setting];
}

- (void)setFlag:(BOOL)flag forSetting:(unint64_t)setting
{
  mutableSettings = [(_SWBSActionResponseSettings *)self mutableSettings];
  [mutableSettings setFlag:BSSettingFlagForBool() forSetting:setting];
}

@end