@interface _SSSScreenshotPaperKitImageView
- (BOOL)annotationsEnabled;
- (BOOL)editable;
- (BOOL)isGeneratedImageHDR:(id)a3;
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
- (double)headroomNeededForScreenshot:(id)a3;
- (double)vellumOpacity;
- (id)generateImageDataForScreenshot:(id)a3 shouldApplyCrop:(BOOL)a4 allowHDR:(BOOL)a5 targetSize:(CGSize)a6 imageType:(id)a7;
- (id)generateImageForScreenshot:(id)a3;
- (id)generateImageForScreenshot:(id)a3 shouldApplyCrop:(BOOL)a4 allowHDR:(BOOL)a5 targetSize:(CGSize)a6;
- (id)imageGeneratorCachedImageForScreenshot:(id)a3 allowHDR:(BOOL)a4;
- (unint64_t)changeCounter;
- (void)_toolPicker:(id)a3 startEditingOpacityWithAccessoryView:(id)a4;
- (void)cropControllerDidUpdateScrollView:(id)a3;
- (void)cropControllerDidZoomInScrollView:(id)a3;
- (void)deselectAllAnnotations;
- (void)imageGeneratorImageMarkedAsBeingEdited:(id)a3;
- (void)layoutSubviews;
- (void)setAnnotationsEnabled:(BOOL)a3;
- (void)setChangeCounter:(unint64_t)a3;
- (void)setCropInfo:(SSSCropInfo *)a3;
- (void)setEditable:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setRulerHostView:(id)a3;
- (void)setSizeMultiplier:(CGSize)a3;
- (void)setUseTrilinearMinificationFilter:(BOOL)a3;
- (void)setVellumOpacity:(double)a3;
- (void)toolPickerVisibilityDidChange:(id)a3;
- (void)updateCacheWithSdrImage:(id)a3 hdrImage:(id)a4;
- (void)updateCanvasViewAfterLoadingImage;
- (void)updatePaletteVisibilityIfNecessary:(BOOL)a3;
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

- (void)updateCacheWithSdrImage:(id)a3 hdrImage:(id)a4
{
  v7 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedSDRImage;
  swift_beginAccess();
  v8 = *(self + v7);
  *(self + v7) = a3;
  v9 = a3;
  v10 = a4;
  v11 = self;

  v12 = OBJC_IVAR____SSSScreenshotPaperKitImageView_cachedHDRImage;
  swift_beginAccess();
  v13 = *(v11 + v12);
  *(v11 + v12) = a4;
}

- (double)vellumOpacity
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_vellumOpacity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setVellumOpacity:(double)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitImageView_vellumOpacity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = self;
  sub_100069B54(v6);
}

- (UIGestureRecognizer)drawingGestureRecognizer
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_imageViewController;
  swift_beginAccess();
  v4 = *(self + v3);
  if (v4)
  {
    v5 = self;
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

- (void)setChangeCounter:(unint64_t)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitImageView_changeCounter;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (UIImage)image
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_image;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImage:(id)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitImageView_image;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_100069FF0();
  [(_SSSScreenshotPaperKitImageView *)v8 setNeedsLayout];
  [(_SSSScreenshotPaperKitImageView *)v8 invalidateIntrinsicContentSize];
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

- (void)setCropInfo:(SSSCropInfo *)a3
{
  width = a3->currentRect.size.width;
  height = a3->currentRect.size.height;
  v6 = (self + OBJC_IVAR____SSSScreenshotPaperKitImageView_cropInfo);
  origin = a3->currentRect.origin;
  totalSize = a3->totalSize;
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

- (void)setSizeMultiplier:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)setUseTrilinearMinificationFilter:(BOOL)a3
{
  v5 = OBJC_IVAR____SSSScreenshotPaperKitImageView_useTrilinearMinificationFilter;
  swift_beginAccess();
  *(self + v5) = a3;
  [(_SSSScreenshotPaperKitImageView *)self setNeedsLayout];
}

- (BOOL)editable
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_editable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEditable:(BOOL)a3
{
  v4 = self;
  sub_10006ACDC(a3);
}

- (void)updatePaletteVisibilityIfNecessary:(BOOL)a3
{
  v4 = self;
  sub_10006B044(a3);
}

- (UIView)rulerHostView
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_rulerHostView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRulerHostView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10006B2D0(a3);
}

- (BOOL)annotationsEnabled
{
  v3 = OBJC_IVAR____SSSScreenshotPaperKitImageView_annotationsEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAnnotationsEnabled:(BOOL)a3
{
  v4 = self;
  sub_10006B414(a3);
}

- (void)cropControllerDidZoomInScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006B4BC(v4);
}

- (void)cropControllerDidUpdateScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006B6C4(v4);
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
    v5 = self;
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
  v2 = self;
  sub_10006BCF0();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10006CA50();
}

- (double)headroomNeededForScreenshot:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000705E4();

  return v6;
}

- (BOOL)isGeneratedImageHDR:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000705E4();

  return v6 > 1.0;
}

- (id)generateImageForScreenshot:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10006CC68(v4, 0, 1, 0.0);

  return v6;
}

- (id)generateImageForScreenshot:(id)a3 shouldApplyCrop:(BOOL)a4 allowHDR:(BOOL)a5 targetSize:(CGSize)a6
{
  width = a6.width;
  v10 = a3;
  v11 = self;
  v12 = sub_10006CC68(v10, a4, a5, width);

  return v12;
}

- (void)imageGeneratorImageMarkedAsBeingEdited:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006D2F0(v4);
}

- (id)imageGeneratorCachedImageForScreenshot:(id)a3 allowHDR:(BOOL)a4
{
  if (a4)
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

- (id)generateImageDataForScreenshot:(id)a3 shouldApplyCrop:(BOOL)a4 allowHDR:(BOOL)a5 targetSize:(CGSize)a6 imageType:(id)a7
{
  width = a6.width;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3;
  v18 = a7;
  v19 = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_10006F4F8(v17, a4, a5, width);
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

- (void)toolPickerVisibilityDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006F888(v4);
}

- (void)_toolPicker:(id)a3 startEditingOpacityWithAccessoryView:(id)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong _paperKitImageView:self startEditingOpacityInAccessoryView:a4];
    swift_unknownObjectRelease();
  }
}

@end