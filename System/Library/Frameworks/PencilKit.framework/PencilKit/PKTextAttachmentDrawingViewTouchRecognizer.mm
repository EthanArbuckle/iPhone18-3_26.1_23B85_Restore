@interface PKTextAttachmentDrawingViewTouchRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation PKTextAttachmentDrawingViewTouchRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (![(PKTextAttachmentDrawingViewTouchRecognizer *)self state:a3])
  {

    [(PKTextAttachmentDrawingViewTouchRecognizer *)self setState:1];
  }
}

@end