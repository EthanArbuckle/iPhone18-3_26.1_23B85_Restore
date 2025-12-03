@interface BKDebugCell
- (BKDebugCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation BKDebugCell

- (BKDebugCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = BKDebugCell;
  return [(BKDebugCell *)&v5 initWithStyle:1 reuseIdentifier:identifier];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = BKDebugCell;
  [(BKDebugCell *)&v6 prepareForReuse];
  textLabel = [(BKDebugCell *)self textLabel];
  [textLabel setText:0];

  detailTextLabel = [(BKDebugCell *)self detailTextLabel];
  [detailTextLabel setText:0];

  detailTextLabel2 = [(BKDebugCell *)self detailTextLabel];
  [detailTextLabel2 setLineBreakMode:4];

  [(BKDebugCell *)self setAccessoryType:0];
  [(BKDebugCell *)self setAccessoryView:0];
  [(BKDebugCell *)self setSelectionStyle:3];
}

@end