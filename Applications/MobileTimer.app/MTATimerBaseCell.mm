@interface MTATimerBaseCell
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation MTATimerBaseCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = MTATimerBaseCell;
  [(MTATimerBaseCell *)&v2 awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = MTATimerBaseCell;
  [(MTATimerBaseCell *)&v4 setSelected:selected animated:animated];
}

@end