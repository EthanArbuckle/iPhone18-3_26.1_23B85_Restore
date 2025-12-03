@interface RCFoldersCollectionViewHeaderCell
- (id)_headingText;
- (id)accessibilityLabel;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation RCFoldersCollectionViewHeaderCell

- (void)updateConfigurationUsingState:(id)state
{
  v6.receiver = self;
  v6.super_class = RCFoldersCollectionViewHeaderCell;
  [(RCFoldersCollectionViewHeaderCell *)&v6 updateConfigurationUsingState:state];
  v4 = +[UIListContentConfiguration headerConfiguration];
  _headingText = [(RCFoldersCollectionViewHeaderCell *)self _headingText];
  [v4 setText:_headingText];

  [(RCFoldersCollectionViewHeaderCell *)self setContentConfiguration:v4];
}

- (id)_headingText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MY_FOLDERS" value:&stru_100295BB8 table:0];

  return v3;
}

- (id)accessibilityLabel
{
  _headingText = [(RCFoldersCollectionViewHeaderCell *)self _headingText];
  v3 = [NSString stringWithFormat:@"%@", _headingText];

  return v3;
}

@end