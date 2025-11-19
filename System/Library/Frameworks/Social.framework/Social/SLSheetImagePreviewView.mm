@interface SLSheetImagePreviewView
+ (id)fallbackPreviewImage;
- (CGSize)intrinsicContentSize;
- (SLSheetImagePreviewView)initWithFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SLSheetImagePreviewView

- (SLSheetImagePreviewView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SLSheetImagePreviewView;
  return [(SLSheetImagePreviewView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [(SLSheetImagePreviewView *)self imageView];
  [v6 setImage:v5];
}

- (CGSize)intrinsicContentSize
{
  v4 = [(SLSheetImagePreviewView *)self traitCollection];
  v5 = [v4 verticalSizeClass];

  if (v5 == 1)
  {
    v6 = 60.0;
  }

  else
  {
    v7 = [(SLSheetImagePreviewView *)self traitCollection];
    v8 = [v7 horizontalSizeClass] == 1;

    v6 = dbl_1C23F4410[v8];
  }

  v9 = MEMORY[0x1E696AD98];
  v10 = [(SLSheetImagePreviewView *)self traitCollection];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "horizontalSizeClass")}];
  v12 = MEMORY[0x1E696AD98];
  v13 = [(SLSheetImagePreviewView *)self traitCollection];
  v17 = [v12 numberWithInteger:{objc_msgSend(v13, "verticalSizeClass")}];
  _SLLog(v2, 7, @"SLSheetImagePreviewView intrinsicContentSize horizontalSizeClass %@ verticalSizeClass %@");

  v16 = [MEMORY[0x1E696B098] valueWithCGSize:{v6, v6, v11, v17}];
  _SLLog(v2, 7, @"SLSheetImagePreviewView intrinsicContentSize returning %@");

  v14 = v6;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"SLSheetImagePreviewView traitCollectionDidChange:");
  v11.receiver = self;
  v11.super_class = SLSheetImagePreviewView;
  [(SLSheetImagePreviewView *)&v11 traitCollectionDidChange:v5];
  v6 = [(SLSheetImagePreviewView *)self traitCollection];
  v7 = [v6 horizontalSizeClass];
  if (v7 == [v5 horizontalSizeClass])
  {
    v8 = [(SLSheetImagePreviewView *)self traitCollection];
    v9 = [v8 verticalSizeClass];
    v10 = [v5 verticalSizeClass];

    if (v9 == v10)
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