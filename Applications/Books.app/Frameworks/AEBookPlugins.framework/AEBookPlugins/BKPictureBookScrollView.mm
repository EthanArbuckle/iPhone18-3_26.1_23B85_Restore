@interface BKPictureBookScrollView
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation BKPictureBookScrollView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  self->_touchInProgress = 1;
  v4.receiver = self;
  v4.super_class = BKPictureBookScrollView;
  [(BKPictureBookScrollView *)&v4 touchesBegan:began withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  self->_touchInProgress = 0;
  v4.receiver = self;
  v4.super_class = BKPictureBookScrollView;
  [(BKPictureBookScrollView *)&v4 touchesEnded:ended withEvent:event];
}

@end