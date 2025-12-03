@interface UIContentUnavailableConfigurationState
- (BOOL)showNoMessageSelectedView;
- (void)setShowNoMessageSelectedView:(BOOL)view;
@end

@implementation UIContentUnavailableConfigurationState

- (void)setShowNoMessageSelectedView:(BOOL)view
{
  v4 = [NSNumber numberWithBool:view];
  [UIContentUnavailableConfigurationState setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showNoMessageSelectedView
{
  v2 = [(UIContentUnavailableConfigurationState *)self objectForKeyedSubscript:@"com.apple.mobilemail.showNoMessageSelectedView"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end