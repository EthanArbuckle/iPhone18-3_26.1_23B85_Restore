@interface MapsDebugReadOnlyValueRow
- (void)configureCell:(id)cell;
@end

@implementation MapsDebugReadOnlyValueRow

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = MapsDebugReadOnlyValueRow;
  [(MapsDebugTableRow *)&v11 configureCell:cellCopy];
  contentConfiguration = [cellCopy contentConfiguration];
  detailTextLabel = [cellCopy detailTextLabel];
  text = [detailTextLabel text];
  v8 = [text length];

  if (v8)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v9 = ;
  textProperties = [contentConfiguration textProperties];
  [textProperties setColor:v9];

  [cellCopy setContentConfiguration:contentConfiguration];
}

@end