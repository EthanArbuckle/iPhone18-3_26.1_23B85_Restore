@interface THPageThumbnailViewTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation THPageThumbnailViewTapGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = THPageThumbnailViewTapGestureRecognizer;
  [(THPageThumbnailViewTapGestureRecognizer *)&v6 touchesBegan:began withEvent:event];
  [(THPageThumbnailViewTapGestureRecognizer *)self delegate];
  v5 = TSUProtocolCast();
  if (v5)
  {
    [v5 touchesBeganFromTap:self];
  }
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = THPageThumbnailViewTapGestureRecognizer;
  [(THPageThumbnailViewTapGestureRecognizer *)&v4 reset];
  [(THPageThumbnailViewTapGestureRecognizer *)self delegate];
  v3 = TSUProtocolCast();
  if (v3)
  {
    [v3 gestureReset:self];
  }
}

@end