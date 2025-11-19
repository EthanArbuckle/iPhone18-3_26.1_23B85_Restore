@interface THPageThumbnailViewTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation THPageThumbnailViewTapGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = THPageThumbnailViewTapGestureRecognizer;
  [(THPageThumbnailViewTapGestureRecognizer *)&v6 touchesBegan:a3 withEvent:a4];
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