@interface MapsDebugEmptySectionBannerRow
- (void)configureCell:(id)a3;
@end

@implementation MapsDebugEmptySectionBannerRow

- (void)configureCell:(id)a3
{
  v8.receiver = self;
  v8.super_class = MapsDebugEmptySectionBannerRow;
  v3 = a3;
  [(MapsDebugTableRow *)&v8 configureCell:v3];
  v4 = [v3 contentConfiguration];
  v5 = +[UIColor secondaryLabelColor];
  v6 = [v4 textProperties];
  [v6 setColor:v5];

  v7 = [v4 textProperties];
  [v7 setAlignment:1];

  [v3 setContentConfiguration:v4];
}

@end