@interface _SSSScreenshotPaperKitImageView
- (BOOL)annotationsEnabled;
- (BOOL)editable;
- (BOOL)isGeneratedImageHDR:(id)r;
- (BOOL)useTrilinearMinificationFilter;
- (CGSize)sizeMultiplier;
- (NSString)imageDescription;
- (SSSCropInfo)cropInfo;
- (UIGestureRecognizer)drawingGestureRecognizer;
- (UIImage)cachedHDRImage;
- (UIImage)cachedSDRImage;
- (UIImage)image;
- (UIView)rulerHostView;
- (_SSSScreenshotPaperKitImageViewDelegate)delegate;
- (double)headroomNeededForScreenshot:(id)screenshot;
- (double)vellumOpacity;
- (id)generateImageDataForScreenshot:(id)screenshot shouldApplyCrop:(BOOL)crop allowHDR:(BOOL)r targetSize:(CGSize)size imageType:(id)type;
- (id)generateImageForScreenshot:(id)screenshot;
- (id)generateImageForScreenshot:(id)screenshot shouldApplyCrop:(BOOL)crop allowHDR:(BOOL)r targetSize:(CGSize)size;
- (id)imageGeneratorCachedImageForScreenshot:(id)screenshot allowHDR:(BOOL)r;
- (unint64_t)changeCounter;
- (void)_toolPicker:(id)picker startEditingOpacityWithAccessoryView:(id)view;
- (void)cropControllerDidUpdateScrollView:(id)view;
- (void)cropControllerDidZoomInScrollView:(id)view;
- (void)deselectAllAnnotations;
- (void)imageGeneratorImageMarkedAsBeingEdited:(id)edited;
- (void)layoutSubviews;
- (void)setAnnotationsEnabled:(BOOL)enabled;
- (void)setChangeCounter:(unint64_t)counter;
- (void)setCropInfo:(SSSCropInfo *)info;
- (void)setEditable:(BOOL)editable;
- (void)setImage:(id)image;
- (void)setRulerHostView:(id)view;
- (void)setSizeMultiplier:(CGSize)multiplier;
- (void)setUseTrilinearMinificationFilter:(BOOL)filter;
- (void)setVellumOpacity:(double)opacity;
- (void)toolPickerVisibilityDidChange:(id)change;
- (void)updateCacheWithSdrImage:(id)image hdrImage:(id)hdrImage;
- (void)updateCanvasViewAfterLoadingImage;
- (void)updatePaletteVisibilityIfNecessary:(BOOL)necessary;
@end

@implementation _SSSScreenshotPaperKitImageView

- (_SSSScreenshotPaperKitImageViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIImage)cachedHDRImage
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage;
  swift_beginAccess();
  return *(self + v3);
}

- (UIImage)cachedSDRImage
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)updateCacheWithSdrImage:(id)image hdrImage:(id)hdrImage
{
  v7 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage;
  swift_beginAccess();
  v8 = *(self + v7);
  *(self + v7) = image;
  imageCopy = image;
  hdrImageCopy = hdrImage;
  selfCopy = self;

  v12 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage;
  swift_beginAccess();
  v13 = *(selfCopy + v12);
  *(selfCopy + v12) = hdrImage;
}

- (double)vellumOpacity
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_vellumOpacity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setVellumOpacity:(double)opacity
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitImageView_vellumOpacity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = opacity;
  selfCopy = self;
  sub_100069B54(v6);
}

- (UIGestureRecognizer)drawingGestureRecognizer
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4)
  {
    selfCopy = self;
    v6 = v4;
    v7 = dispatch thunk of CanvasElementViewController.drawingGestureRecognizer.getter();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)changeCounter
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_changeCounter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setChangeCounter:(unint64_t)counter
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitImageView_changeCounter;
  swift_beginAccess();
  *(self + v5) = counter;
}

- (UIImage)image
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_image;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImage:(id)image
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitImageView_image;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = image;
  imageCopy = image;
  selfCopy = self;

  sub_100069FF0();
  [(_SSSScreenshotPaperKitImageView *)selfCopy setNeedsLayout];
  [(_SSSScreenshotPaperKitImageView *)selfCopy invalidateIntrinsicContentSize];
}

- (SSSCropInfo)cropInfo
{
  v4 = self + OBJC_IVAR____SSSScreenshotPaperKitImageView_cropInfo;
  result = swift_beginAccess();
  v6 = *(v4 + 1);
  retstr->totalSize = *v4;
  retstr->currentRect.origin = v6;
  retstr->currentRect.size = *(v4 + 2);
  return result;
}

- (void)setCropInfo:(SSSCropInfo *)info
{
  width = info->currentRect.size.width;
  height = info->currentRect.size.height;
  v6 = (self + OBJC_IVAR____SSSScreenshotPaperKitImageView_cropInfo);
  origin = info->currentRect.origin;
  totalSize = info->totalSize;
  swift_beginAccess();
  *v6 = totalSize;
  v6[1] = origin;
  v6[2].x = width;
  v6[2].y = height;
  [(_SSSScreenshotPaperKitImageView *)self setNeedsLayout];
}

- (CGSize)sizeMultiplier
{
  v2 = (self + OBJC_IVAR____SSSScreenshotPaperKitImageView_sizeMultiplier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSizeMultiplier:(CGSize)multiplier
{
  height = multiplier.height;
  width = multiplier.width;
  v6 = (self + OBJC_IVAR____SSSScreenshotPaperKitImageView_sizeMultiplier);
  swift_beginAccess();
  *v6 = width;
  v6[1] = height;
  [(_SSSScreenshotPaperKitImageView *)self setNeedsLayout];
}

- (BOOL)useTrilinearMinificationFilter
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_useTrilinearMinificationFilter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseTrilinearMinificationFilter:(BOOL)filter
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitImageView_useTrilinearMinificationFilter;
  swift_beginAccess();
  *(self + v5) = filter;
  [(_SSSScreenshotPaperKitImageView *)self setNeedsLayout];
}

- (BOOL)editable
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_editable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEditable:(BOOL)editable
{
  selfCopy = self;
  sub_10006ACDC(editable);
}

- (void)updatePaletteVisibilityIfNecessary:(BOOL)necessary
{
  selfCopy = self;
  sub_10006B044(necessary);
}

- (UIView)rulerHostView
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_rulerHostView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRulerHostView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10006B2D0(view);
}

- (BOOL)annotationsEnabled
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_annotationsEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAnnotationsEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_10006B414(enabled);
}

- (void)cropControllerDidZoomInScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10006B4BC(viewCopy);
}

- (void)cropControllerDidUpdateScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10006B6C4(viewCopy);
}

- (NSString)imageDescription
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4 && (v5 = self, v6 = v4, CanvasElementViewController<>.imageDescription.getter(), v8 = v7, v5, v6, v8))
  {
    v9 = String._bridgeToObjectiveC()();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)deselectAllAnnotations
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4)
  {
    selfCopy = self;
    v6 = v4;
    v7 = dispatch thunk of CanvasElementViewController.canvasView.getter();

    if (v7)
    {
      dispatch thunk of Canvas.deselectAll()();
    }
  }
}

- (void)updateCanvasViewAfterLoadingImage
{
  selfCopy = self;
  sub_10006BCF0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10006CA50();
}

- (double)headroomNeededForScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  selfCopy = self;
  v6 = sub_1000705E4();

  return v6;
}

- (BOOL)isGeneratedImageHDR:(id)r
{
  rCopy = r;
  selfCopy = self;
  v6 = sub_1000705E4();

  return v6 > 1.0;
}

- (id)generateImageForScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  selfCopy = self;
  v6 = sub_10006CC68(screenshotCopy, 0, 1, 0.0);

  return v6;
}

- (id)generateImageForScreenshot:(id)screenshot shouldApplyCrop:(BOOL)crop allowHDR:(BOOL)r targetSize:(CGSize)size
{
  width = size.width;
  screenshotCopy = screenshot;
  selfCopy = self;
  v12 = sub_10006CC68(screenshotCopy, crop, r, width);

  return v12;
}

- (void)imageGeneratorImageMarkedAsBeingEdited:(id)edited
{
  editedCopy = edited;
  selfCopy = self;
  sub_10006D2F0(editedCopy);
}

- (id)imageGeneratorCachedImageForScreenshot:(id)screenshot allowHDR:(BOOL)r
{
  if (r)
  {
    v4 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage;
  }

  else
  {
    v4 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage;
  }

  v5 = (self + v4);
  swift_beginAccess();
  return *v5;
}

- (id)generateImageDataForScreenshot:(id)screenshot shouldApplyCrop:(BOOL)crop allowHDR:(BOOL)r targetSize:(CGSize)size imageType:(id)type
{
  width = size.width;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  screenshotCopy = screenshot;
  typeCopy = type;
  selfCopy = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_10006F4F8(screenshotCopy, crop, r, width);
  v22 = v21;

  (*(v14 + 8))(v16, v13);
  v23 = 0;
  if (v22 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100057E78(v20, v22);
    v23 = isa;
  }

  return v23;
}

- (void)toolPickerVisibilityDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10006F888(changeCopy);
}

- (void)_toolPicker:(id)picker startEditingOpacityWithAccessoryView:(id)view
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong _paperKitImageView:self startEditingOpacityInAccessoryView:view];
    swift_unknownObjectRelease();
  }
}

@end