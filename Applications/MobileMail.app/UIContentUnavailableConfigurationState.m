@interface UIContentUnavailableConfigurationState
- (BOOL)showNoMessageSelectedView;
- (void)setShowNoMessageSelectedView:(BOOL)a3;
@end

@implementation UIContentUnavailableConfigurationState

- (void)setShowNoMessageSelectedView:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [UIContentUnavailableConfigurationState setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showNoMessageSelectedView
{
  v2 = [(UIContentUnavailableConfigurationState *)self objectForKeyedSubscript:@"com.apple.mobilemail.showNoMessageSelectedView"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end