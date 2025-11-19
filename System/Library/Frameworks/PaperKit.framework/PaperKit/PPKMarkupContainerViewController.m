@interface PPKMarkupContainerViewController
- (BOOL)acceptSingleTouch:(id)a3;
- (BOOL)allEditingDisabled;
- (BOOL)annotationEditingEnabled;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canChangeImageFileFormat;
- (BOOL)canEncryptDocument;
- (BOOL)documentIsLocked;
- (BOOL)encryptPrivateMetadata;
- (BOOL)findInteractionEnabled;
- (BOOL)formFillingEnabled;
- (BOOL)hasHDRMarkup;
- (BOOL)hasResultsForVisualSearch;
- (BOOL)isImageAnalysisEnabled;
- (BOOL)isInteractionActive;
- (BOOL)isTouchInBannerView:(id)a3;
- (BOOL)isTouchInPageLabelView:(id)a3;
- (BOOL)isTouchInThumbnailView:(id)a3;
- (BOOL)isVisualSearchEnabled;
- (BOOL)pencilAlwaysDraws;
- (BOOL)resignFirstResponder;
- (BOOL)shouldSaveHDRImage;
- (BOOL)shouldUpliftSubjectAfterNextAnalysis;
- (BOOL)showBannerView;
- (BOOL)showThumbnailViewForMultipage;
- (BOOL)toolbarHidden;
- (BOOL)writeTo:(id)a3 imageType:(id)a4 error:(id *)a5 embeddingSourceImageAndEditModel:(BOOL)a6;
- (BOOL)writeTo:(id)a3 imageType:(id)a4 error:(id *)a5 embeddingSourceImageAndEditModel:(BOOL)a6 options:(id)a7;
- (CGRect)pdfFrame;
- (NSString)imageDescription;
- (PPKMarkupContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PPKMarkupContainerViewControllerDelegate)delegate;
- (UIColor)backgroundColor;
- (UIColor)pdfBackgroundColor;
- (UIEdgeInsets)minimumContentInsets;
- (UIFindInteraction)findInteraction;
- (UIScrollView)contentViewScrollView;
- (UIScrollView)pdfScrollView;
- (UIView)bannerView;
- (id)archivedModelData;
- (id)dataRepresentationWithError:(id *)a3;
- (id)viewForZoomingInScrollView:(id)a3;
- (uint64_t)shouldHighlightTextAndODAfterNextAnalysis;
- (unint64_t)currentPDFPageIndex;
- (void)didBecomeActive:(id)a3;
- (void)doubleTapped:(id)a3;
- (void)handleDidBecomeActive;
- (void)handleSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)a3;
- (void)infoButtonTapped;
- (void)loadFromData:(id)a3 with:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6;
- (void)loadFromURL:(id)a3 with:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6;
- (void)pdfViewPageChanged:(id)a3;
- (void)pdfViewScaleChanged:(id)a3;
- (void)revert:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCurrentPDFPageIndex:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setEncryptPrivateMetadata:(BOOL)a3;
- (void)setFormFillingEnabled:(BOOL)a3 didUseBanner:(BOOL)a4;
- (void)setImageDescription:(id)a3;
- (void)setMinimumContentInsets:(UIEdgeInsets)a3;
- (void)setPdfBackgroundColor:(id)a3;
- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)a3;
- (void)setShouldHideMarkupOverlays:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldHighlightTextAndODAfterNextAnalysis:(BOOL)a3;
- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)a3;
- (void)setShowThumbnailViewForMultipage:(BOOL)a3;
- (void)setToolbarHidden:(BOOL)a3;
- (void)setupAndStartImageAnalysisIfNeeded;
- (void)showBannerViewWith:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateForFullscreen:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)writeTo:(NSURL *)a3 imageType:(UTType *)a4 embeddingSourceImageAndEditModel:(BOOL)a5 options:(NSDictionary *)a6 completionHandler:(id)a7;
@end

@implementation PPKMarkupContainerViewController

- (uint64_t)shouldHighlightTextAndODAfterNextAnalysis
{
  v1 = a1;
  v2 = MarkupContainerViewController.shouldEnterVisualSearchAfterNextAnalysis.getter();

  return v2 & 1;
}

- (PPKMarkupContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return MarkupContainerViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)didBecomeActive:(id)a3
{
  v4 = objc_opt_self();
  v5 = self;
  [v4 cancelPreviousPerformRequestsWithTarget:v5 selector:sel_handleDidBecomeActive object:0];
  [(PPKMarkupContainerViewController *)v5 performSelector:sel_handleDidBecomeActive withObject:0 afterDelay:0.25];
}

- (void)handleDidBecomeActive
{
  v5 = self;
  v2 = MarkupContainerViewController.toolPicker.getter();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
    swift_beginAccess();
    if ((*(v5 + v4) & 1) != 0 && ([v3 isVisible] & 1) == 0)
    {
      [(PPKMarkupContainerViewController *)v5 becomeFirstResponder];
    }
  }

  else
  {
  }
}

- (void)handleSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized MarkupContainerViewController.handleSqueezeInteractionDidChangePaletteViewVisibilityNotification(_:)();
}

- (UIEdgeInsets)minimumContentInsets
{
  v2 = (self + OBJC_IVAR___PPKMarkupContainerViewController_minimumContentInsets);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setMinimumContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  MarkupContainerViewController.minimumContentInsets.setter(top, left, bottom, right);
}

- (BOOL)findInteractionEnabled
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_findInteractionEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isImageAnalysisEnabled
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_isImageAnalysisEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (UIFindInteraction)findInteraction
{
  v2 = self;
  v3 = MarkupContainerViewController.findInteraction.getter();

  return v3;
}

- (BOOL)documentIsLocked
{
  v2 = self;
  v3 = MarkupContainerViewController.documentIsLocked.getter();

  return v3 & 1;
}

- (BOOL)canEncryptDocument
{
  v2 = self;
  v3 = MarkupContainerViewController.canEncryptDocument.getter();

  return v3 & 1;
}

- (BOOL)shouldSaveHDRImage
{
  v2 = self;
  v3 = MarkupContainerViewController.shouldSaveHDRImage.getter();

  return v3;
}

- (BOOL)canChangeImageFileFormat
{
  if (one-time initialization token for isMarkupPhotoEditingExtension != -1)
  {
    swift_once();
  }

  if (static NSBundle.isMarkupPhotoEditingExtension)
  {
    return 1;
  }

  if (one-time initialization token for isQuickLookUIExtension != -1)
  {
    swift_once();
  }

  if (static NSBundle.isQuickLookUIExtension == 1)
  {
    return 1;
  }

  if (one-time initialization token for isQuickLookVisionOSExtension != -1)
  {
    swift_once();
  }

  return static NSBundle.isQuickLookVisionOSExtension;
}

- (BOOL)hasHDRMarkup
{
  v2 = self;
  v3 = MarkupContainerViewController.hasHDRMarkup.getter();

  return v3;
}

- (PPKMarkupContainerViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v4 = self;
  MarkupContainerViewController.delegate.didset();
  swift_unknownObjectRelease();
}

- (BOOL)encryptPrivateMetadata
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEncryptPrivateMetadata:(BOOL)a3
{
  v5 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)imageDescription
{
  v2 = self;
  v3 = MarkupContainerViewController.imageDescription.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x1DA6CCED0](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setImageDescription:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  MarkupContainerViewController.imageDescription.setter(v4, v6);
}

- (BOOL)showThumbnailViewForMultipage
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowThumbnailViewForMultipage:(BOOL)a3
{
  v4 = self;
  MarkupContainerViewController.showThumbnailViewForMultipage.setter(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  MarkupContainerViewController.viewIsAppearing(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  MarkupContainerViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  MarkupContainerViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for MarkupContainerViewController();
  v4 = v9.receiver;
  v5 = a3;
  v6 = [(PPKMarkupContainerViewController *)&v9 traitCollectionDidChange:v5];
  if (!v5 || (v7 = [v4 traitCollection], v8 = objc_msgSend(v5, sel_hasDifferentColorAppearanceComparedToTraitCollection_, v7), v7, v8))
  {
    MarkupContainerViewController.updateBannerViewStyle()(v6);
  }
}

- (void)loadFromData:(id)a3 with:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v19 = self;
  v12 = a4;
  v13 = a5;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v10)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v10;
    v18 = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  MarkupContainerViewController.load(fromData:with:placeholderImage:completionHandler:)(v14, v16, v12, v13, v18, v17);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v18);
  outlined consume of Data._Representation(v14, v16);
}

- (void)loadFromURL:(id)a3 with:(id)a4 placeholderImage:(id)a5 completionHandler:(id)a6
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v14 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  }

  else
  {
    v15 = 0;
  }

  v16 = a4;
  v17 = a5;
  v18 = self;
  MarkupContainerViewController.load(fromURL:with:placeholderImage:completionHandler:)(v13, a4, a5, v14, v15);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);

  (*(v11 + 8))(v13, v10);
}

- (BOOL)writeTo:(id)a3 imageType:(id)a4 error:(id *)a5 embeddingSourceImageAndEditModel:(BOOL)a6
{
  v21 = a6;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a4;
  v18 = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(a5) = MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(v16, v12, a5, v21, 0);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  return a5 & 1;
}

- (BOOL)writeTo:(id)a3 imageType:(id)a4 error:(id *)a5 embeddingSourceImageAndEditModel:(BOOL)a6 options:(id)a7
{
  v23 = a6;
  v22 = a5;
  v24 = type metadata accessor for UTType();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a4;
  v18 = a7;
  v19 = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(a7) = MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(v16, v12, v22, v23, a7);
  (*(v10 + 8))(v12, v24);
  (*(v14 + 8))(v16, v13);
  return a7 & 1;
}

- (void)writeTo:(NSURL *)a3 imageType:(UTType *)a4 embeddingSourceImageAndEditModel:(BOOL)a5 options:(NSDictionary *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &async function pointer to partial apply for @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &_sIeghH_IeAgH_TRTATu;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a6;
  v24 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v15, &_sIeAgH_ytIeAgHr_TRTATu, v20);
}

- (id)dataRepresentationWithError:(id *)a3
{
  v4 = self;
  v5 = MarkupContainerViewController.dataRepresentation(withError:)(a3);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v5, v7);
    v8 = isa;
  }

  return v8;
}

- (id)archivedModelData
{
  v2 = self;
  v3 = MarkupContainerViewController.archivedModelData()();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (UIScrollView)contentViewScrollView
{
  v2 = self;
  v3 = MarkupContainerViewController.contentViewScrollView.getter();

  return v3;
}

- (BOOL)annotationEditingEnabled
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)allEditingDisabled
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_allEditingDisabled;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)pencilAlwaysDraws
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_pencilAlwaysDraws;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)formFillingEnabled
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_formFillingEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormFillingEnabled:(BOOL)a3 didUseBanner:(BOOL)a4
{
  v6 = self;
  MarkupContainerViewController.setFormFillingEnabled(_:didUseBanner:)(a3, a4);
}

- (BOOL)toolbarHidden
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_toolbarHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setToolbarHidden:(BOOL)a3
{
  v5 = OBJC_IVAR___PPKMarkupContainerViewController_toolbarHidden;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)currentPDFPageIndex
{
  v2 = self;
  MarkupContainerViewController.currentPDFPageIndex.getter();
  v4 = v3;

  return v4;
}

- (void)setCurrentPDFPageIndex:(unint64_t)a3
{
  v4 = self;
  MarkupContainerViewController.currentPDFPageIndex.setter(a3);
}

- (void)revert:(id)a3
{
  v3 = *(self + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager);
  if (v3)
  {
    v5 = self;
    v4 = v3;
    if ([v4 canUndo])
    {
      do
      {
        [v4 undo];
      }

      while (([v4 canUndo] & 1) != 0);
    }

    [v4 removeAllActions];
  }
}

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = MarkupContainerViewController.backgroundColor.getter(v2);

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  MarkupContainerViewController.backgroundColor.setter(a3);
}

- (BOOL)isTouchInThumbnailView:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MarkupContainerViewController.isTouchInThumbnailView(_:)(v4);

  return self & 1;
}

- (BOOL)isTouchInPageLabelView:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MarkupContainerViewController.isTouchInPageLabelView(_:)(v4);

  return self & 1;
}

- (BOOL)isTouchInBannerView:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MarkupContainerViewController.isTouchInBannerView(_:)(v4);

  return self & 1;
}

- (BOOL)acceptSingleTouch:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = MarkupContainerViewController.acceptSingleTouch(_:)(v4);

  return self & 1;
}

- (UIView)bannerView
{
  v2 = self;
  v3 = MarkupContainerViewController.bannerView.getter(v2);

  return v3;
}

- (void)showBannerViewWith:(id)a3
{
  v4 = a3;
  v5 = self;
  MarkupContainerViewController.showBannerView(with:)(v4);
}

- (BOOL)showBannerView
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_showBannerView;
  swift_beginAccess();
  return *(self + v3);
}

- (CGRect)pdfFrame
{
  v2 = self;
  MarkupContainerViewController.pdfFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIScrollView)pdfScrollView
{
  v2 = self;
  v3 = MarkupContainerViewController.pdfScrollView.getter();

  return v3;
}

- (UIColor)pdfBackgroundColor
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPdfBackgroundColor:(id)a3
{
  v5 = OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  MarkupContainerViewController.updateBackgroundColor()();
}

- (BOOL)canBecomeFirstResponder
{
  v2 = self;
  v3 = MarkupContainerViewController.canBecomeFirstResponder.getter(&selRef_canBecomeFirstResponder);

  return v3 & 1;
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = MarkupContainerViewController.canBecomeFirstResponder.getter(&selRef_becomeFirstResponder);

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = MarkupContainerViewController.canBecomeFirstResponder.getter(&selRef_resignFirstResponder);

  return v3 & 1;
}

- (void)pdfViewScaleChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  MarkupContainerViewController.pdfViewScaleChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)pdfViewPageChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  MarkupContainerViewController.pdfViewPageChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)doubleTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  MarkupContainerViewController.doubleTapped(_:)(v4);
}

- (BOOL)isInteractionActive
{
  v2 = self;
  v3 = MarkupContainerViewController.imageAnalysisContext.getter(v2);
  if (v3 && (v4 = [v3 isVisualIntelligenceV2Enabled], v3 = swift_unknownObjectRelease(), v4))
  {

    return 1;
  }

  else
  {
    v6 = MarkupContainerViewController.imageAnalysisContext.getter(v3);
    if (v6)
    {
      v7 = [v6 analysisInteractionHidden];
      swift_unknownObjectRelease();

      return v7 ^ 1;
    }

    else
    {

      return 0;
    }
  }
}

- (BOOL)hasResultsForVisualSearch
{
  v2 = self;
  v3 = MarkupContainerViewController.imageAnalysisContext.getter(v2);
  if (v3 && (v4 = [v3 isVisualIntelligenceV2Enabled], v3 = swift_unknownObjectRelease(), v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = MarkupContainerViewController.imageAnalysisContext.getter(v3);
    if (v6)
    {
      v5 = [v6 hasResultsForAnalysisTypes_];
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isVisualSearchEnabled
{
  v2 = self;
  v3 = MarkupContainerViewController.isVisualSearchEnabled.getter(v2);

  return v3 & 1;
}

- (void)setShouldHighlightTextAndODAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  MarkupContainerViewController.shouldHighlightTextAndODAfterNextAnalysis.setter(v3);
}

- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  MarkupContainerViewController.shouldEnterVisualSearchAfterNextAnalysis.setter(v3);
}

- (BOOL)shouldUpliftSubjectAfterNextAnalysis
{
  v2 = self;
  v3 = MarkupContainerViewController.shouldUpliftSubjectAfterNextAnalysis.getter(v2);

  return v3;
}

- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  MarkupContainerViewController.shouldUpliftSubjectAfterNextAnalysis.setter(v3);
}

- (void)updateForFullscreen:(BOOL)a3 animated:(BOOL)a4
{
  v4 = *(self + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v4)
  {
    v7 = self;
    v6 = v4;
    PaperDocumentViewController.showPageNumberOverlay(animated:)(a4);
  }
}

- (void)setShouldHideMarkupOverlays:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  MarkupContainerViewController.setShouldHideMarkupOverlays(_:animated:)(a3, a4);
}

- (void)infoButtonTapped
{
  v2 = self;
  MarkupContainerViewController.infoButtonTapped()();
}

- (void)setupAndStartImageAnalysisIfNeeded
{
  v2 = self;
  MarkupContainerViewController.setupAndStartImageAnalysisIfNeeded()();
}

- (id)viewForZoomingInScrollView:(id)a3
{
  v3 = a3;
  v4 = [v3 subviews];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA6CE0C0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
LABEL_9:

  return v8;
}

@end