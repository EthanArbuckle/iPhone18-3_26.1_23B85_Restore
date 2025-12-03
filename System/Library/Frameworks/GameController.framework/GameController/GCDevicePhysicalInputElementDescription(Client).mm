@interface GCDevicePhysicalInputElementDescription(Client)
- (id)makeParameters;
@end

@implementation GCDevicePhysicalInputElementDescription(Client)

- (id)makeParameters
{
  v13.receiver = self;
  v13.super_class = &off_1F4EA9470;
  v2 = objc_msgSendSuper2(&v13, sel_makeParameters);
  identifier = [self identifier];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v3, identifier, 8);
  }

  aliases = [self aliases];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, aliases, 16);
  }

  localizedName = [self localizedName];
  v9 = _GCFConvertStringToLocalizedString();
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v8, v9, 24);
  }

  symbol = [self symbol];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v10, symbol, 32);
  }

  return v2;
}

@end