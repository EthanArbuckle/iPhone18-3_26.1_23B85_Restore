@interface MapsDebugReadOnlyValueRow
- (void)configureCell:(id)a3;
@end

@implementation MapsDebugReadOnlyValueRow

- (void)configureCell:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MapsDebugReadOnlyValueRow;
  [(MapsDebugTableRow *)&v11 configureCell:v4];
  v5 = [v4 contentConfiguration];
  v6 = [v4 detailTextLabel];
  v7 = [v6 text];
  v8 = [v7 length];

  if (v8)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v9 = ;
  v10 = [v5 textProperties];
  [v10 setColor:v9];

  [v4 setContentConfiguration:v5];
}

@end