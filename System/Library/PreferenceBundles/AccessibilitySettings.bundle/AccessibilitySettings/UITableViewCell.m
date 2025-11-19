@interface UITableViewCell
- (BOOL)isCaptionProfile;
- (BOOL)isEditableCaptionProfile;
@end

@implementation UITableViewCell

- (BOOL)isCaptionProfile
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [(UITableViewCell *)self specifier];
  v4 = [v3 propertyForKey:@"IsCaptionProfile"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)isEditableCaptionProfile
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [(UITableViewCell *)self specifier];
  v4 = [v3 isEditableCaptionProfile];

  return v4;
}

@end