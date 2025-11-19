@interface BKExpandedImageContentViewController
+ (BOOL)supportsResource:(id)a3;
- (BKExpandedImageContentViewController)initWithResource:(id)a3;
- (BOOL)imageAnalysisInteraction:(id)a3 shouldHandleShareWithRanges:(id)a4 boundingRect:(CGRect)a5 selectedText:(id)a6 selectedAttributedText:(id)a7;
- (id)_prepareImageShowOriginal:(BOOL)a3;
- (id)contentView;
- (id)currentImage:(id)a3 withFilter:(BOOL)a4;
- (id)imageAnalysisInteraction:(id)a3 updateAttributedStringForCopy:(id)a4;
- (id)imageAnalysisInteraction:(id)a3 updateStringForCopy:(id)a4;
- (id)leftToolbarItems;
- (void)_invert:(id)a3;
- (void)dealloc;
- (void)releaseViews;
- (void)showInvertedImage;
@end

@implementation BKExpandedImageContentViewController

+ (BOOL)supportsResource:(id)a3
{
  v3 = [a3 resource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BKExpandedImageContentViewController)initWithResource:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKExpandedImageContentViewController;
  v5 = [(BKExpandedContentViewController *)&v10 initWithResource:v4];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 resource];
    v7 = BUDynamicCast();
    image = v5->_image;
    v5->_image = v7;

    v5->_showOriginal = 1;
  }

  return v5;
}

- (void)dealloc
{
  [(BKExpandedImageContentViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKExpandedImageContentViewController;
  [(BKExpandedContentViewController *)&v3 dealloc];
}

- (void)releaseViews
{
  v5.receiver = self;
  v5.super_class = BKExpandedImageContentViewController;
  [(BKExpandedContentViewController *)&v5 releaseViews];
  v3 = [(BKExpandedImageContentViewController *)self imageScroller];
  [v3 setDelegate:0];

  [(BKExpandedImageContentViewController *)self setImageScroller:0];
  [(BKExpandedImageContentViewController *)self setImageView:0];
  v4 = [(BKExpandedImageContentViewController *)self analysisInteraction];
  [v4 setDelegate:0];
}

- (id)leftToolbarItems
{
  if (self->_showingFilteredImage)
  {
    v3 = BookEPUBBundle();
    v4 = [v3 localizedStringForKey:@"Invert" value:&stru_1E7188 table:0];

    v5 = [[UIBarButtonItem alloc] initWithTitle:v4 style:0 target:self action:"_invert:"];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_invert:(id)a3
{
  v4 = [(BKExpandedImageContentViewController *)self _prepareImageShowOriginal:!self->_showOriginal];
  [(UIImageView *)self->_imageView setImage:v4];
}

- (void)showInvertedImage
{
  v3 = [(UIImage *)self->_image CGImage];
  if (v3)
  {
    if ([BEImageFilter imageIsFilteringCandidate:v3])
    {
      self->_showingFilteredImage = 1;
      self->_showOriginal = 0;
    }
  }
}

- (id)_prepareImageShowOriginal:(BOOL)a3
{
  if (!self->_showingFilteredImage)
  {
    goto LABEL_10;
  }

  v4 = a3;
  v5 = [(UIImageView *)self->_imageView image];
  v6 = v5;
  if (self->_showOriginal == v4 && v5 != 0)
  {
    goto LABEL_11;
  }

  self->_showOriginal = v4;
  v8 = [(BKExpandedImageContentViewController *)self currentImage:self->_image withFilter:!v4];
  if (v8)
  {
    v9 = v8;

    v6 = v9;
    goto LABEL_11;
  }

  if (!v6)
  {
LABEL_10:
    v6 = self->_image;
  }

LABEL_11:

  return v6;
}

- (id)currentImage:(id)a3 withFilter:(BOOL)a4
{
  image = self->_image;
  if (a4)
  {
    v5 = [(UIImage *)image CGImage];
    if (v5)
    {
      v6 = [BEImageFilter invertedImage:v5];
      if (v6)
      {
        v7 = [[UIImage alloc] initWithCIImage:v6];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = image;
  }

  return v7;
}

- (id)contentView
{
  v3 = [(BKExpandedImageContentViewController *)self imageScroller];

  if (!v3)
  {
    v4 = [_BKExpandedImageContentCenteringScrollView alloc];
    v5 = [(BKExpandedImageContentViewController *)self view];
    [v5 bounds];
    v6 = [(_BKExpandedImageContentCenteringScrollView *)v4 initWithFrame:?];
    imageScroller = self->_imageScroller;
    self->_imageScroller = v6;

    [(UIScrollView *)self->_imageScroller setMaximumZoomScale:32.0];
    [(UIScrollView *)self->_imageScroller setDelegate:self];
    [(UIScrollView *)self->_imageScroller setBouncesZoom:1];
    [(UIScrollView *)self->_imageScroller setDecelerationRate:UIScrollViewDecelerationRateFast];
    [(UIScrollView *)self->_imageScroller setAutoresizingMask:18];
    v8 = [(BKExpandedImageContentViewController *)self _prepareImageShowOriginal:self->_showOriginal];
    v9 = [[UIImageView alloc] initWithImage:v8];
    imageView = self->_imageView;
    self->_imageView = v9;

    [(UIImageView *)self->_imageView setContentMode:1];
    [(UIImageView *)self->_imageView setAutoresizingMask:0];
    [(UIImageView *)self->_imageView setUserInteractionEnabled:1];
    v11 = objc_alloc_init(VKCImageAnalysisInteraction);
    [(BKExpandedImageContentViewController *)self setAnalysisInteraction:v11];

    v12 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [v12 setActiveInteractionTypes:9];

    v13 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [v13 setAutomaticallyShowVisualSearchResults:1];

    v14 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [v14 setActionInfoViewHidden:0];

    v15 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [v15 setAnalysisButtonRequiresVisibleContentGating:0];

    v16 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [v16 setDelegate:self];

    v17 = self->_imageView;
    v18 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [(UIImageView *)v17 addInteraction:v18];

    v19 = objc_alloc_init(VKCImageAnalyzer);
    [(BKExpandedImageContentViewController *)self setImageAnalyzer:v19];

    v20 = [[VKCImageAnalyzerRequest alloc] initWithImage:self->_image requestType:-65];
    objc_initWeak(&location, self);
    v21 = [(BKExpandedImageContentViewController *)self imageAnalyzer];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_C6C88;
    v33 = &unk_1E5290;
    objc_copyWeak(&v34, &location);
    [v21 processRequest:v20 progressHandler:0 completionHandler:&v30];

    [(UIScrollView *)self->_imageScroller addSubview:self->_imageView, v30, v31, v32, v33];
    v22 = [(BKExpandedImageContentViewController *)self imageScroller];
    [v22 minimumZoomScale];
    v24 = v23;

    [(UIScrollView *)self->_imageScroller setMinimumZoomScale:fmin(v24, 1.0)];
    v25 = [(BKExpandedImageContentViewController *)self imageScroller];
    [v25 minimumZoomScale];
    v27 = v26;

    [(UIScrollView *)self->_imageScroller setZoomScale:fmin(v27, 2.0)];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  v28 = [(BKExpandedImageContentViewController *)self imageScroller];

  return v28;
}

- (id)imageAnalysisInteraction:(id)a3 updateStringForCopy:(id)a4
{
  v5 = a4;
  v6 = [(BKExpandedContentViewController *)self delegate];
  v7 = v5;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 expandedContentViewController:self stringForCopyFromString:v5];
  }

  return v7;
}

- (id)imageAnalysisInteraction:(id)a3 updateAttributedStringForCopy:(id)a4
{
  v5 = a4;
  v6 = [(BKExpandedContentViewController *)self delegate];
  v7 = v5;
  if (objc_opt_respondsToSelector())
  {
    v8 = [NSAttributedString alloc];
    v9 = [v5 string];
    v10 = [v6 expandedContentViewController:self stringForCopyFromString:v9];
    v7 = [v8 initWithString:v10];
  }

  return v7;
}

- (BOOL)imageAnalysisInteraction:(id)a3 shouldHandleShareWithRanges:(id)a4 boundingRect:(CGRect)a5 selectedText:(id)a6 selectedAttributedText:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a6;
  v13 = [(BKExpandedContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(BKExpandedImageContentViewController *)self imageView];
    v15 = [(BKExpandedImageContentViewController *)self view];
    [v14 convertRect:v15 toView:{x, y, width, height}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v13 expandedContentViewController:self shareText:v12 sourceRect:{v17, v19, v21, v23}];
  }

  return 0;
}

@end