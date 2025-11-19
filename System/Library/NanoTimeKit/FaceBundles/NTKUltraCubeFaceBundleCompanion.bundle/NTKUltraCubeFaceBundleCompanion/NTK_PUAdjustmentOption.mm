@interface NTK_PUAdjustmentOption
- (id)description;
@end

@implementation NTK_PUAdjustmentOption

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NTK_PUAdjustmentInfo *)self localizedName];
  v6 = [(NTK_PUAdjustmentInfo *)self enabled];
  v7 = [(NTK_PUAdjustmentInfo *)self identifier];
  v8 = [NSString stringWithFormat:@"<%@: %p, name=%@, enabled:%d, identifier:%@ option:%lu", v4, self, v5, v6, v7, [(NTK_PUAdjustmentOption *)self ntk_option]];

  return v8;
}

@end