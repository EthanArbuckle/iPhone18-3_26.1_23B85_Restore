@interface DisplayFilterSelectionCell
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation DisplayFilterSelectionCell

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(DisplayFilterSelectionCell *)self textLabel];
  [v5 setText:v4];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(DisplayFilterSelectionCell *)self detailTextLabel];
  [v5 setText:v4];
}

@end