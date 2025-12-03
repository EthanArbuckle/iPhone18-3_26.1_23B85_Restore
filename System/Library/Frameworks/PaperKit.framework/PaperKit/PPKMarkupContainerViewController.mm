@interface PPKMarkupContainerViewController
- (BOOL)acceptSingleTouch:(id)touch;
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
- (BOOL)isTouchInBannerView:(id)view;
- (BOOL)isTouchInPageLabelView:(id)view;
- (BOOL)isTouchInThumbnailView:(id)view;
- (BOOL)isVisualSearchEnabled;
- (BOOL)pencilAlwaysDraws;
- (BOOL)resignFirstResponder;
- (BOOL)shouldSaveHDRImage;
- (BOOL)shouldUpliftSubjectAfterNextAnalysis;
- (BOOL)showBannerView;
- (BOOL)showThumbnailViewForMultipage;
- (BOOL)toolbarHidden;
- (BOOL)writeTo:(id)to imageType:(id)type error:(id *)error embeddingSourceImageAndEditModel:(BOOL)model;
- (BOOL)writeTo:(id)to imageType:(id)type error:(id *)error embeddingSourceImageAndEditModel:(BOOL)model options:(id)options;
- (CGRect)pdfFrame;
- (NSString)imageDescription;
- (PPKMarkupContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PPKMarkupContainerViewControllerDelegate)delegate;
- (UIColor)backgroundColor;
- (UIColor)pdfBackgroundColor;
- (UIEdgeInsets)minimumContentInsets;
- (UIFindInteraction)findInteraction;
- (UIScrollView)contentViewScrollView;
- (UIScrollView)pdfScrollView;
- (UIView)bannerView;
- (id)archivedModelData;
- (id)dataRepresentationWithError:(id *)error;
- (id)viewForZoomingInScrollView:(id)view;
- (uint64_t)shouldHighlightTextAndODAfterNextAnalysis;
- (unint64_t)currentPDFPageIndex;
- (void)didBecomeActive:(id)active;
- (void)doubleTapped:(id)tapped;
- (void)handleDidBecomeActive;
- (void)handleSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)notification;
- (void)infoButtonTapped;
- (void)loadFromData:(id)data with:(id)with placeholderImage:(id)image completionHandler:(id)handler;
- (void)loadFromURL:(id)l with:(id)with placeholderImage:(id)image completionHandler:(id)handler;
- (void)pdfViewPageChanged:(id)changed;
- (void)pdfViewScaleChanged:(id)changed;
- (void)revert:(id)revert;
- (void)setBackgroundColor:(id)color;
- (void)setCurrentPDFPageIndex:(unint64_t)index;
- (void)setDelegate:(id)delegate;
- (void)setEncryptPrivateMetadata:(BOOL)metadata;
- (void)setFormFillingEnabled:(BOOL)enabled didUseBanner:(BOOL)banner;
- (void)setImageDescription:(id)description;
- (void)setMinimumContentInsets:(UIEdgeInsets)insets;
- (void)setPdfBackgroundColor:(id)color;
- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)analysis;
- (void)setShouldHideMarkupOverlays:(BOOL)overlays animated:(BOOL)animated;
- (void)setShouldHighlightTextAndODAfterNextAnalysis:(BOOL)analysis;
- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)analysis;
- (void)setShowThumbnailViewForMultipage:(BOOL)multipage;
- (void)setToolbarHidden:(BOOL)hidden;
- (void)setupAndStartImageAnalysisIfNeeded;
- (void)showBannerViewWith:(id)with;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForFullscreen:(BOOL)fullscreen animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)writeTo:(NSURL *)to imageType:(UTType *)type embeddingSourceImageAndEditModel:(BOOL)model options:(NSDictionary *)options completionHandler:(id)handler;
@end

@implementation PPKMarkupContainerViewController

- (uint64_t)shouldHighlightTextAndODAfterNextAnalysis
{
  selfCopy = self;
  v2 = MarkupContainerViewController.shouldEnterVisualSearchAfterNextAnalysis.getter();

  return v2 & 1;
}

- (PPKMarkupContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return MarkupContainerViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)didBecomeActive:(id)active
{
  v4 = objc_opt_self();
  selfCopy = self;
  [v4 cancelPreviousPerformRequestsWithTarget:selfCopy selector:sel_handleDidBecomeActive object:0];
  [(PPKMarkupContainerViewController *)selfCopy performSelector:sel_handleDidBecomeActive withObject:0 afterDelay:0.25];
}

- (void)handleDidBecomeActive
{
  selfCopy = self;
  v2 = MarkupContainerViewController.toolPicker.getter();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
    swift_beginAccess();
    if ((*(selfCopy + v4) & 1) != 0 && ([v3 isVisible] & 1) == 0)
    {
      [(PPKMarkupContainerViewController *)selfCopy becomeFirstResponder];
    }
  }

  else
  {
  }
}

- (void)handleSqueezeInteractionDidChangePaletteViewVisibilityNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
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

- (void)setMinimumContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
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
  selfCopy = self;
  v3 = MarkupContainerViewController.findInteraction.getter();

  return v3;
}

- (BOOL)documentIsLocked
{
  selfCopy = self;
  v3 = MarkupContainerViewController.documentIsLocked.getter();

  return v3 & 1;
}

- (BOOL)canEncryptDocument
{
  selfCopy = self;
  v3 = MarkupContainerViewController.canEncryptDocument.getter();

  return v3 & 1;
}

- (BOOL)shouldSaveHDRImage
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = MarkupContainerViewController.hasHDRMarkup.getter();

  return v3;
}

- (PPKMarkupContainerViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  MarkupContainerViewController.delegate.didset();
  swift_unknownObjectRelease();
}

- (BOOL)encryptPrivateMetadata
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEncryptPrivateMetadata:(BOOL)metadata
{
  v5 = OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata;
  swift_beginAccess();
  *(self + v5) = metadata;
}

- (NSString)imageDescription
{
  selfCopy = self;
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

- (void)setImageDescription:(id)description
{
  if (description)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  MarkupContainerViewController.imageDescription.setter(v4, v6);
}

- (BOOL)showThumbnailViewForMultipage
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowThumbnailViewForMultipage:(BOOL)multipage
{
  selfCopy = self;
  MarkupContainerViewController.showThumbnailViewForMultipage.setter(multipage);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  MarkupContainerViewController.viewIsAppearing(_:)(appearing);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  MarkupContainerViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  MarkupContainerViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for MarkupContainerViewController();
  v4 = v9.receiver;
  changeCopy = change;
  v6 = [(PPKMarkupContainerViewController *)&v9 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (v7 = [v4 traitCollection], v8 = objc_msgSend(changeCopy, sel_hasDifferentColorAppearanceComparedToTraitCollection_, v7), v7, v8))
  {
    MarkupContainerViewController.updateBannerViewStyle()(v6);
  }
}

- (void)loadFromData:(id)data with:(id)with placeholderImage:(id)image completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  dataCopy = data;
  selfCopy = self;
  withCopy = with;
  imageCopy = image;
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

  MarkupContainerViewController.load(fromData:with:placeholderImage:completionHandler:)(v14, v16, withCopy, imageCopy, v18, v17);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v18);
  outlined consume of Data._Representation(v14, v16);
}

- (void)loadFromURL:(id)l with:(id)with placeholderImage:(id)image completionHandler:(id)handler
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
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

  withCopy = with;
  imageCopy = image;
  selfCopy = self;
  MarkupContainerViewController.load(fromURL:with:placeholderImage:completionHandler:)(v13, with, image, v14, v15);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);

  (*(v11 + 8))(v13, v10);
}

- (BOOL)writeTo:(id)to imageType:(id)type error:(id *)error embeddingSourceImageAndEditModel:(BOOL)model
{
  modelCopy = model;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  typeCopy = type;
  selfCopy = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(error) = MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(v16, v12, error, modelCopy, 0);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  return error & 1;
}

- (BOOL)writeTo:(id)to imageType:(id)type error:(id *)error embeddingSourceImageAndEditModel:(BOOL)model options:(id)options
{
  modelCopy = model;
  errorCopy = error;
  v24 = type metadata accessor for UTType();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  typeCopy = type;
  optionsCopy = options;
  selfCopy = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(options) = MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(v16, v12, errorCopy, modelCopy, options);
  (*(v10 + 8))(v12, v24);
  (*(v14 + 8))(v16, v13);
  return options & 1;
}

- (void)writeTo:(NSURL *)to imageType:(UTType *)type embeddingSourceImageAndEditModel:(BOOL)model options:(NSDictionary *)options completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = to;
  *(v17 + 24) = type;
  *(v17 + 32) = model;
  *(v17 + 40) = options;
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
  toCopy = to;
  typeCopy = type;
  optionsCopy = options;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v15, &_sIeAgH_ytIeAgHr_TRTATu, v20);
}

- (id)dataRepresentationWithError:(id *)error
{
  selfCopy = self;
  v5 = MarkupContainerViewController.dataRepresentation(withError:)(error);
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
  selfCopy = self;
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
  selfCopy = self;
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

- (void)setFormFillingEnabled:(BOOL)enabled didUseBanner:(BOOL)banner
{
  selfCopy = self;
  MarkupContainerViewController.setFormFillingEnabled(_:didUseBanner:)(enabled, banner);
}

- (BOOL)toolbarHidden
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_toolbarHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setToolbarHidden:(BOOL)hidden
{
  v5 = OBJC_IVAR___PPKMarkupContainerViewController_toolbarHidden;
  swift_beginAccess();
  *(self + v5) = hidden;
}

- (unint64_t)currentPDFPageIndex
{
  selfCopy = self;
  MarkupContainerViewController.currentPDFPageIndex.getter();
  v4 = v3;

  return v4;
}

- (void)setCurrentPDFPageIndex:(unint64_t)index
{
  selfCopy = self;
  MarkupContainerViewController.currentPDFPageIndex.setter(index);
}

- (void)revert:(id)revert
{
  v3 = *(self + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager);
  if (v3)
  {
    selfCopy = self;
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
  selfCopy = self;
  v3 = MarkupContainerViewController.backgroundColor.getter(selfCopy);

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  MarkupContainerViewController.backgroundColor.setter(color);
}

- (BOOL)isTouchInThumbnailView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = MarkupContainerViewController.isTouchInThumbnailView(_:)(viewCopy);

  return self & 1;
}

- (BOOL)isTouchInPageLabelView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = MarkupContainerViewController.isTouchInPageLabelView(_:)(viewCopy);

  return self & 1;
}

- (BOOL)isTouchInBannerView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = MarkupContainerViewController.isTouchInBannerView(_:)(viewCopy);

  return self & 1;
}

- (BOOL)acceptSingleTouch:(id)touch
{
  touchCopy = touch;
  selfCopy = self;
  LOBYTE(self) = MarkupContainerViewController.acceptSingleTouch(_:)(touchCopy);

  return self & 1;
}

- (UIView)bannerView
{
  selfCopy = self;
  v3 = MarkupContainerViewController.bannerView.getter(selfCopy);

  return v3;
}

- (void)showBannerViewWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  MarkupContainerViewController.showBannerView(with:)(withCopy);
}

- (BOOL)showBannerView
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_showBannerView;
  swift_beginAccess();
  return *(self + v3);
}

- (CGRect)pdfFrame
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = MarkupContainerViewController.pdfScrollView.getter();

  return v3;
}

- (UIColor)pdfBackgroundColor
{
  v3 = OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPdfBackgroundColor:(id)color
{
  v5 = OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = color;
  colorCopy = color;
  selfCopy = self;

  MarkupContainerViewController.updateBackgroundColor()();
}

- (BOOL)canBecomeFirstResponder
{
  selfCopy = self;
  v3 = MarkupContainerViewController.canBecomeFirstResponder.getter(&selRef_canBecomeFirstResponder);

  return v3 & 1;
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = MarkupContainerViewController.canBecomeFirstResponder.getter(&selRef_becomeFirstResponder);

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = MarkupContainerViewController.canBecomeFirstResponder.getter(&selRef_resignFirstResponder);

  return v3 & 1;
}

- (void)pdfViewScaleChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MarkupContainerViewController.pdfViewScaleChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)pdfViewPageChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MarkupContainerViewController.pdfViewPageChanged(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)doubleTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  MarkupContainerViewController.doubleTapped(_:)(tappedCopy);
}

- (BOOL)isInteractionActive
{
  selfCopy = self;
  v3 = MarkupContainerViewController.imageAnalysisContext.getter(selfCopy);
  if (v3 && (v4 = [v3 isVisualIntelligenceV2Enabled], v3 = swift_unknownObjectRelease(), v4))
  {

    return 1;
  }

  else
  {
    v6 = MarkupContainerViewController.imageAnalysisContext.getter(v3);
    if (v6)
    {
      analysisInteractionHidden = [v6 analysisInteractionHidden];
      swift_unknownObjectRelease();

      return analysisInteractionHidden ^ 1;
    }

    else
    {

      return 0;
    }
  }
}

- (BOOL)hasResultsForVisualSearch
{
  selfCopy = self;
  v3 = MarkupContainerViewController.imageAnalysisContext.getter(selfCopy);
  if (v3 && (v4 = [v3 isVisualIntelligenceV2Enabled], v3 = swift_unknownObjectRelease(), v4))
  {
    hasResultsForAnalysisTypes_ = 1;
  }

  else
  {
    v6 = MarkupContainerViewController.imageAnalysisContext.getter(v3);
    if (v6)
    {
      hasResultsForAnalysisTypes_ = [v6 hasResultsForAnalysisTypes_];
      swift_unknownObjectRelease();
    }

    else
    {
      hasResultsForAnalysisTypes_ = 0;
    }
  }

  return hasResultsForAnalysisTypes_;
}

- (BOOL)isVisualSearchEnabled
{
  selfCopy = self;
  v3 = MarkupContainerViewController.isVisualSearchEnabled.getter(selfCopy);

  return v3 & 1;
}

- (void)setShouldHighlightTextAndODAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  MarkupContainerViewController.shouldHighlightTextAndODAfterNextAnalysis.setter(analysisCopy);
}

- (void)setShouldEnterVisualSearchAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  MarkupContainerViewController.shouldEnterVisualSearchAfterNextAnalysis.setter(analysisCopy);
}

- (BOOL)shouldUpliftSubjectAfterNextAnalysis
{
  selfCopy = self;
  v3 = MarkupContainerViewController.shouldUpliftSubjectAfterNextAnalysis.getter(selfCopy);

  return v3;
}

- (void)setShouldUpliftSubjectAfterNextAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  MarkupContainerViewController.shouldUpliftSubjectAfterNextAnalysis.setter(analysisCopy);
}

- (void)updateForFullscreen:(BOOL)fullscreen animated:(BOOL)animated
{
  v4 = *(self + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController);
  if (v4)
  {
    selfCopy = self;
    v6 = v4;
    PaperDocumentViewController.showPageNumberOverlay(animated:)(animated);
  }
}

- (void)setShouldHideMarkupOverlays:(BOOL)overlays animated:(BOOL)animated
{
  selfCopy = self;
  MarkupContainerViewController.setShouldHideMarkupOverlays(_:animated:)(overlays, animated);
}

- (void)infoButtonTapped
{
  selfCopy = self;
  MarkupContainerViewController.infoButtonTapped()();
}

- (void)setupAndStartImageAnalysisIfNeeded
{
  selfCopy = self;
  MarkupContainerViewController.setupAndStartImageAnalysisIfNeeded()();
}

- (id)viewForZoomingInScrollView:(id)view
{
  viewCopy = view;
  subviews = [viewCopy subviews];
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