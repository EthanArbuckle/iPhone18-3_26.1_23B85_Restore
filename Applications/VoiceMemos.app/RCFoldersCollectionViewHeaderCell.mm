@interface RCFoldersCollectionViewHeaderCell
- (id)_headingText;
- (id)accessibilityLabel;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation RCFoldersCollectionViewHeaderCell

- (void)updateConfigurationUsingState:(id)a3
{
  v6.receiver = self;
  v6.super_class = RCFoldersCollectionViewHeaderCell;
  [(RCFoldersCollectionViewHeaderCell *)&v6 updateConfigurationUsingState:a3];
  v4 = +[UIListContentConfiguration headerConfiguration];
  v5 = [(RCFoldersCollectionViewHeaderCell *)self _headingText];
  [v4 setText:v5];

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
  v2 = [(RCFoldersCollectionViewHeaderCell *)self _headingText];
  v3 = [NSString stringWithFormat:@"%@", v2];

  return v3;
}

@end