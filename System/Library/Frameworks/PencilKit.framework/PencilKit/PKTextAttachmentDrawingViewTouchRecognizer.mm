@interface PKTextAttachmentDrawingViewTouchRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation PKTextAttachmentDrawingViewTouchRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (![(PKTextAttachmentDrawingViewTouchRecognizer *)self state:began])
  {

    [(PKTextAttachmentDrawingViewTouchRecognizer *)self setState:1];
  }
}

@end