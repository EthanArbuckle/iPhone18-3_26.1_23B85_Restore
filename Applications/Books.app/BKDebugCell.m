@interface BKDebugCell
- (BKDebugCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation BKDebugCell

- (BKDebugCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = BKDebugCell;
  return [(BKDebugCell *)&v5 initWithStyle:1 reuseIdentifier:a4];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = BKDebugCell;
  [(BKDebugCell *)&v6 prepareForReuse];
  v3 = [(BKDebugCell *)self textLabel];
  [v3 setText:0];

  v4 = [(BKDebugCell *)self detailTextLabel];
  [v4 setText:0];

  v5 = [(BKDebugCell *)self detailTextLabel];
  [v5 setLineBreakMode:4];

  [(BKDebugCell *)self setAccessoryType:0];
  [(BKDebugCell *)self setAccessoryView:0];
  [(BKDebugCell *)self setSelectionStyle:3];
}

@end