@interface MTATimerBaseCell
- (void)awakeFromNib;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MTATimerBaseCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = MTATimerBaseCell;
  [(MTATimerBaseCell *)&v2 awakeFromNib];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = MTATimerBaseCell;
  [(MTATimerBaseCell *)&v4 setSelected:a3 animated:a4];
}

@end