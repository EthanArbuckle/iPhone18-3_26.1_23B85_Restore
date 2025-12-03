@interface NTK_PUAdjustmentOption
- (id)description;
@end

@implementation NTK_PUAdjustmentOption

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  localizedName = [(NTK_PUAdjustmentInfo *)self localizedName];
  enabled = [(NTK_PUAdjustmentInfo *)self enabled];
  identifier = [(NTK_PUAdjustmentInfo *)self identifier];
  v8 = [NSString stringWithFormat:@"<%@: %p, name=%@, enabled:%d, identifier:%@ option:%lu", v4, self, localizedName, enabled, identifier, [(NTK_PUAdjustmentOption *)self ntk_option]];

  return v8;
}

@end