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

  specifier = [(UITableViewCell *)self specifier];
  v4 = [specifier propertyForKey:@"IsCaptionProfile"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEditableCaptionProfile
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  specifier = [(UITableViewCell *)self specifier];
  isEditableCaptionProfile = [specifier isEditableCaptionProfile];

  return isEditableCaptionProfile;
}

@end