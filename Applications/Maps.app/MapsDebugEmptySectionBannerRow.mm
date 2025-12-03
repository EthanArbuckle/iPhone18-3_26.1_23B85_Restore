@interface MapsDebugEmptySectionBannerRow
- (void)configureCell:(id)cell;
@end

@implementation MapsDebugEmptySectionBannerRow

- (void)configureCell:(id)cell
{
  v8.receiver = self;
  v8.super_class = MapsDebugEmptySectionBannerRow;
  cellCopy = cell;
  [(MapsDebugTableRow *)&v8 configureCell:cellCopy];
  contentConfiguration = [cellCopy contentConfiguration];
  v5 = +[UIColor secondaryLabelColor];
  textProperties = [contentConfiguration textProperties];
  [textProperties setColor:v5];

  textProperties2 = [contentConfiguration textProperties];
  [textProperties2 setAlignment:1];

  [cellCopy setContentConfiguration:contentConfiguration];
}

@end