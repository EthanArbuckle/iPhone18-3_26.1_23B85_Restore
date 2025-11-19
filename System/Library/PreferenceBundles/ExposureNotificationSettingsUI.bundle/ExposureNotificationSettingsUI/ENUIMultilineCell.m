@interface ENUIMultilineCell
- (ENUIMultilineCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ENUIMultilineCell

- (ENUIMultilineCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = ENUIMultilineCell;
  v4 = [(ENUIMultilineCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(ENUIMultilineCell *)v4 textLabel];
    [v6 setNumberOfLines:0];

    v7 = [(ENUIMultilineCell *)v5 detailTextLabel];
    [v7 setNumberOfLines:0];
  }

  return v5;
}

@end