@interface ENUIMultilineCell
- (ENUIMultilineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ENUIMultilineCell

- (ENUIMultilineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = ENUIMultilineCell;
  v4 = [(ENUIMultilineCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(ENUIMultilineCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];

    detailTextLabel = [(ENUIMultilineCell *)v5 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];
  }

  return v5;
}

@end