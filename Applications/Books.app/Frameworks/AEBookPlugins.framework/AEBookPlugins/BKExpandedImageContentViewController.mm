@interface BKExpandedImageContentViewController
+ (BOOL)supportsResource:(id)resource;
- (BKExpandedImageContentViewController)initWithResource:(id)resource;
- (BOOL)imageAnalysisInteraction:(id)interaction shouldHandleShareWithRanges:(id)ranges boundingRect:(CGRect)rect selectedText:(id)text selectedAttributedText:(id)attributedText;
- (id)_prepareImageShowOriginal:(BOOL)original;
- (id)contentView;
- (id)currentImage:(id)image withFilter:(BOOL)filter;
- (id)imageAnalysisInteraction:(id)interaction updateAttributedStringForCopy:(id)copy;
- (id)imageAnalysisInteraction:(id)interaction updateStringForCopy:(id)copy;
- (id)leftToolbarItems;
- (void)_invert:(id)_invert;
- (void)dealloc;
- (void)releaseViews;
- (void)showInvertedImage;
@end

@implementation BKExpandedImageContentViewController

+ (BOOL)supportsResource:(id)resource
{
  resource = [resource resource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BKExpandedImageContentViewController)initWithResource:(id)resource
{
  resourceCopy = resource;
  v10.receiver = self;
  v10.super_class = BKExpandedImageContentViewController;
  v5 = [(BKExpandedContentViewController *)&v10 initWithResource:resourceCopy];
  if (v5)
  {
    objc_opt_class();
    resource = [resourceCopy resource];
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
  imageScroller = [(BKExpandedImageContentViewController *)self imageScroller];
  [imageScroller setDelegate:0];

  [(BKExpandedImageContentViewController *)self setImageScroller:0];
  [(BKExpandedImageContentViewController *)self setImageView:0];
  analysisInteraction = [(BKExpandedImageContentViewController *)self analysisInteraction];
  [analysisInteraction setDelegate:0];
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

- (void)_invert:(id)_invert
{
  v4 = [(BKExpandedImageContentViewController *)self _prepareImageShowOriginal:!self->_showOriginal];
  [(UIImageView *)self->_imageView setImage:v4];
}

- (void)showInvertedImage
{
  cGImage = [(UIImage *)self->_image CGImage];
  if (cGImage)
  {
    if ([BEImageFilter imageIsFilteringCandidate:cGImage])
    {
      self->_showingFilteredImage = 1;
      self->_showOriginal = 0;
    }
  }
}

- (id)_prepareImageShowOriginal:(BOOL)original
{
  if (!self->_showingFilteredImage)
  {
    goto LABEL_10;
  }

  originalCopy = original;
  image = [(UIImageView *)self->_imageView image];
  v6 = image;
  if (self->_showOriginal == originalCopy && image != 0)
  {
    goto LABEL_11;
  }

  self->_showOriginal = originalCopy;
  v8 = [(BKExpandedImageContentViewController *)self currentImage:self->_image withFilter:!originalCopy];
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

- (id)currentImage:(id)image withFilter:(BOOL)filter
{
  image = self->_image;
  if (filter)
  {
    cGImage = [(UIImage *)image CGImage];
    if (cGImage)
    {
      v6 = [BEImageFilter invertedImage:cGImage];
      if (v6)
      {
        imageCopy = [[UIImage alloc] initWithCIImage:v6];
      }

      else
      {
        imageCopy = 0;
      }
    }

    else
    {
      imageCopy = 0;
    }
  }

  else
  {
    imageCopy = image;
  }

  return imageCopy;
}

- (id)contentView
{
  imageScroller = [(BKExpandedImageContentViewController *)self imageScroller];

  if (!imageScroller)
  {
    v4 = [_BKExpandedImageContentCenteringScrollView alloc];
    view = [(BKExpandedImageContentViewController *)self view];
    [view bounds];
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

    analysisInteraction = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [analysisInteraction setActiveInteractionTypes:9];

    analysisInteraction2 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [analysisInteraction2 setAutomaticallyShowVisualSearchResults:1];

    analysisInteraction3 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [analysisInteraction3 setActionInfoViewHidden:0];

    analysisInteraction4 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [analysisInteraction4 setAnalysisButtonRequiresVisibleContentGating:0];

    analysisInteraction5 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [analysisInteraction5 setDelegate:self];

    v17 = self->_imageView;
    analysisInteraction6 = [(BKExpandedImageContentViewController *)self analysisInteraction];
    [(UIImageView *)v17 addInteraction:analysisInteraction6];

    v19 = objc_alloc_init(VKCImageAnalyzer);
    [(BKExpandedImageContentViewController *)self setImageAnalyzer:v19];

    v20 = [[VKCImageAnalyzerRequest alloc] initWithImage:self->_image requestType:-65];
    objc_initWeak(&location, self);
    imageAnalyzer = [(BKExpandedImageContentViewController *)self imageAnalyzer];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_C6C88;
    v33 = &unk_1E5290;
    objc_copyWeak(&v34, &location);
    [imageAnalyzer processRequest:v20 progressHandler:0 completionHandler:&v30];

    [(UIScrollView *)self->_imageScroller addSubview:self->_imageView, v30, v31, v32, v33];
    imageScroller2 = [(BKExpandedImageContentViewController *)self imageScroller];
    [imageScroller2 minimumZoomScale];
    v24 = v23;

    [(UIScrollView *)self->_imageScroller setMinimumZoomScale:fmin(v24, 1.0)];
    imageScroller3 = [(BKExpandedImageContentViewController *)self imageScroller];
    [imageScroller3 minimumZoomScale];
    v27 = v26;

    [(UIScrollView *)self->_imageScroller setZoomScale:fmin(v27, 2.0)];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  imageScroller4 = [(BKExpandedImageContentViewController *)self imageScroller];

  return imageScroller4;
}

- (id)imageAnalysisInteraction:(id)interaction updateStringForCopy:(id)copy
{
  copyCopy = copy;
  delegate = [(BKExpandedContentViewController *)self delegate];
  v7 = copyCopy;
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate expandedContentViewController:self stringForCopyFromString:copyCopy];
  }

  return v7;
}

- (id)imageAnalysisInteraction:(id)interaction updateAttributedStringForCopy:(id)copy
{
  copyCopy = copy;
  delegate = [(BKExpandedContentViewController *)self delegate];
  v7 = copyCopy;
  if (objc_opt_respondsToSelector())
  {
    v8 = [NSAttributedString alloc];
    string = [copyCopy string];
    v10 = [delegate expandedContentViewController:self stringForCopyFromString:string];
    v7 = [v8 initWithString:v10];
  }

  return v7;
}

- (BOOL)imageAnalysisInteraction:(id)interaction shouldHandleShareWithRanges:(id)ranges boundingRect:(CGRect)rect selectedText:(id)text selectedAttributedText:(id)attributedText
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textCopy = text;
  delegate = [(BKExpandedContentViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    imageView = [(BKExpandedImageContentViewController *)self imageView];
    view = [(BKExpandedImageContentViewController *)self view];
    [imageView convertRect:view toView:{x, y, width, height}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [delegate expandedContentViewController:self shareText:textCopy sourceRect:{v17, v19, v21, v23}];
  }

  return 0;
}

@end