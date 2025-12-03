@interface DisplayFilterSelectionCell
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation DisplayFilterSelectionCell

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(DisplayFilterSelectionCell *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  detailTextLabel = [(DisplayFilterSelectionCell *)self detailTextLabel];
  [detailTextLabel setText:subtitleCopy];
}

@end