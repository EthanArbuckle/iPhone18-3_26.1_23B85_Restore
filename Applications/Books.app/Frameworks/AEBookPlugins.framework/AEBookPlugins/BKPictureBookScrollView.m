@interface BKPictureBookScrollView
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation BKPictureBookScrollView

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_touchInProgress = 1;
  v4.receiver = self;
  v4.super_class = BKPictureBookScrollView;
  [(BKPictureBookScrollView *)&v4 touchesBegan:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  self->_touchInProgress = 0;
  v4.receiver = self;
  v4.super_class = BKPictureBookScrollView;
  [(BKPictureBookScrollView *)&v4 touchesEnded:a3 withEvent:a4];
}

@end