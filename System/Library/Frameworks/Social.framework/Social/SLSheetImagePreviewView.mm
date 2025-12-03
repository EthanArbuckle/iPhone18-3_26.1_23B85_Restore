@interface SLSheetImagePreviewView
+ (id)fallbackPreviewImage;
- (CGSize)intrinsicContentSize;
- (SLSheetImagePreviewView)initWithFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SLSheetImagePreviewView

- (SLSheetImagePreviewView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SLSheetImagePreviewView;
  return [(SLSheetImagePreviewView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

+ (id)fallbackPreviewImage
{
  v2 = fallbackPreviewImage___fallbackPreviewImage;
  if (!fallbackPreviewImage___fallbackPreviewImage)
  {
    v9.width = 100.0;
    v9.height = 100.0;
    UIGraphicsBeginImageContext(v9);
    CurrentContext = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(CurrentContext);
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.87 alpha:1.0];
    CGContextSetFillColorWithColor(CurrentContext, [v4 CGColor]);

    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    v10.size.width = 100.0;
    v10.size.height = 100.0;
    CGContextFillRect(CurrentContext, v10);
    UIGraphicsPopContext();
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    v6 = fallbackPreviewImage___fallbackPreviewImage;
    fallbackPreviewImage___fallbackPreviewImage = v5;

    UIGraphicsEndImageContext();
    v2 = fallbackPreviewImage___fallbackPreviewImage;
  }

  return v2;
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  imageView = [(SLSheetImagePreviewView *)self imageView];
  [imageView setImage:imageCopy];
}

- (CGSize)intrinsicContentSize
{
  traitCollection = [(SLSheetImagePreviewView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    v6 = 60.0;
  }

  else
  {
    traitCollection2 = [(SLSheetImagePreviewView *)self traitCollection];
    v8 = [traitCollection2 horizontalSizeClass] == 1;

    v6 = dbl_1C23F4410[v8];
  }

  v9 = MEMORY[0x1E696AD98];
  traitCollection3 = [(SLSheetImagePreviewView *)self traitCollection];
  v11 = [v9 numberWithInteger:{objc_msgSend(traitCollection3, "horizontalSizeClass")}];
  v12 = MEMORY[0x1E696AD98];
  traitCollection4 = [(SLSheetImagePreviewView *)self traitCollection];
  v17 = [v12 numberWithInteger:{objc_msgSend(traitCollection4, "verticalSizeClass")}];
  _SLLog(v2, 7, @"SLSheetImagePreviewView intrinsicContentSize horizontalSizeClass %@ verticalSizeClass %@");

  v16 = [MEMORY[0x1E696B098] valueWithCGSize:{v6, v6, v11, v17}];
  _SLLog(v2, 7, @"SLSheetImagePreviewView intrinsicContentSize returning %@");

  v14 = v6;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  _SLLog(v3, 7, @"SLSheetImagePreviewView traitCollectionDidChange:");
  v11.receiver = self;
  v11.super_class = SLSheetImagePreviewView;
  [(SLSheetImagePreviewView *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(SLSheetImagePreviewView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass == [changeCopy horizontalSizeClass])
  {
    traitCollection2 = [(SLSheetImagePreviewView *)self traitCollection];
    verticalSizeClass = [traitCollection2 verticalSizeClass];
    verticalSizeClass2 = [changeCopy verticalSizeClass];

    if (verticalSizeClass == verticalSizeClass2)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  _SLLog(v3, 7, @"SLSheetImagePreviewView traitCollectionDidChange: now invalidatingIntrinsicContentSize");
  [(SLSheetImagePreviewView *)self invalidateIntrinsicContentSize];
LABEL_6:
}

@end