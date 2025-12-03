@interface LPLinkView
- (BOOL)_backgroundColorSupportsVibrancy:(id)vibrancy;
- (BOOL)_disableHighlightGesture;
- (BOOL)_disablePreviewGesture;
- (BOOL)_hasMedia;
- (BOOL)_hasMediaToPlay;
- (BOOL)_isPlayingMedia;
- (BOOL)_isUsingAppClipPresentation;
- (BOOL)_layoutHeightDependsOnWidth;
- (BOOL)_shouldUseAnimations;
- (BOOL)_shouldUseInferredAppearance;
- (BOOL)_useProgressSpinner;
- (BOOL)allowsBadgingIconEdgeForComponentView:(id)view;
- (BOOL)allowsVibrancyForComponentView:(id)view;
- (BOOL)captionTextIsTruncated;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (CGRect)_primaryCaptionBarFrame;
- (CGRect)_rectForCaptionButtonType:(int64_t)type;
- (CGRect)frameForHighlightedTextRange;
- (CGSize)_layoutLinkViewForSize:(CGSize)size applyingLayout:(BOOL)layout;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPLinkMetadata)_flattenedMetadata;
- (LPLinkMetadata)metadata;
- (LPLinkView)init;
- (LPLinkView)initWithFrame:(CGRect)frame;
- (LPLinkView)initWithMetadata:(LPLinkMetadata *)metadata;
- (LPLinkView)initWithMetadataLoadedFromRequest:(id)request;
- (LPLinkView)initWithMetadataLoadedFromURL:(id)l;
- (LPLinkView)initWithPresentationProperties:(id)properties;
- (LPLinkView)initWithPresentationProperties:(id)properties URL:(id)l;
- (LPLinkViewDelegate)delegate;
- (UIColor)_dominantBackgroundColor;
- (UIColor)_resolvedBackgroundColor;
- (UIColor)_specializedBackgroundColor;
- (UIEdgeInsets)_textSafeAreaInset;
- (UIEdgeInsets)contentInset;
- (UITextRange)selectedTextRange;
- (double)_effectiveCornerRadius;
- (double)minimumCornerRadiusForComponentView:(id)view;
- (id)_URLToOpen;
- (id)_computeCollapsedButtonPropertiesForAttributedString:(id)string;
- (id)_createBackgroundImageView;
- (id)_createCaptionBar;
- (id)_createComponents;
- (id)_createContactsBadgeView;
- (id)_createDomainNameIndicator;
- (id)_createMediaBottomCaptionBarView;
- (id)_createMediaTopCaptionBarView;
- (id)_createMediaViewForProperties:(id)properties;
- (id)_createProgressSpinner;
- (id)_createQuotedTextView;
- (id)_createTapToLoadView;
- (id)_createTextHighlightView;
- (id)_createTextSearchingDimmingView;
- (id)_fetchMetadataForRequest:(id)request withSubresources:(BOOL)subresources completionHandler:(id)handler;
- (id)_initWithMetadataLoadedFromRequests:(id)requests;
- (id)_initWithMetadataLoadedFromURLs:(id)ls;
- (id)_initWithMultipleMetadata:(id)metadata;
- (id)_initWithNullableURL:(id)l;
- (id)_initWithSynapseContentItem:(id)item;
- (id)_mediaBackgroundColor;
- (id)_playable;
- (id)_primaryMediaView;
- (id)_videoViewConfiguration;
- (id)appearanceForComponentView:(id)view;
- (id)componentView:(id)view playerForAudio:(id)audio;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)downloadProgressForComponentView:(id)view;
- (id)findInteraction:(id)interaction sessionForView:(id)view;
- (id)layoutExclusionsForView:(id)view;
- (id)targetedPreviewForHighlightedTextRange;
- (int64_t)_style;
- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document;
- (int64_t)componentView:(id)view allowedImageFilterForFilter:(int64_t)filter;
- (unint64_t)_axesForDerivingIntrinsicContentSizeFromLayoutSize;
- (void)_addCaptionButton:(id)button;
- (void)_addHighlightRecognizerToView:(id)view forMedia:(BOOL)media;
- (void)_addTapRecognizerToView:(id)view forMedia:(BOOL)media;
- (void)_cancelActiveHighlight;
- (void)_captionBarButtonPressed:(id)pressed;
- (void)_captionHighlightRecognized:(id)recognized;
- (void)_captionTapRecognized:(id)recognized;
- (void)_commonInitWithURL:(id)l;
- (void)_computePresentationPropertiesFromMetadataIfNeeded;
- (void)_configureWithoutLoadingMetadataFromURLs:(id)ls;
- (void)_disableBlur;
- (void)_enableBlur;
- (void)_fetchMetadataForRequest:(id)request;
- (void)_installHighlightGestureRecognizers;
- (void)_installPreviewGestureRecognizer;
- (void)_installTapGestureRecognizers;
- (void)_invalidateLayout;
- (void)_invalidatePresentationProperties;
- (void)_invalidatePresentationPropertiesAndLayout;
- (void)_layoutLinkView;
- (void)_mediaHighlightRecognized:(id)recognized;
- (void)_mediaTapRecognized:(id)recognized;
- (void)_openURLAllowingSensitiveSchemes:(BOOL)schemes allowingAssociatedApplications:(BOOL)applications;
- (void)_pauseMedia;
- (void)_playMedia;
- (void)_rebuildEntireView;
- (void)_rebuildGestureRecognizersIfNeeded;
- (void)_rebuildSubviewsWithAnimation:(BOOL)animation;
- (void)_removeCaptionButtonWithType:(int64_t)type;
- (void)_resetMediaPlayback;
- (void)_secondaryCaptionBarButtonPressed:(id)pressed;
- (void)_setAction:(id)action withAttributedText:(id)text buttonType:(int64_t)type;
- (void)_setAction:(id)action withText:(id)text buttonType:(int64_t)type;
- (void)_setButtonActions:(id)actions;
- (void)_setBytesLoaded:(unint64_t)loaded;
- (void)_setCollaborationFooterViewModel:(id)model action:(id)action;
- (void)_setCollaborative:(BOOL)collaborative;
- (void)_setContactsForAttribution:(id)attribution;
- (void)_setDisableHighlightGesture:(BOOL)gesture;
- (void)_setDisablePreviewGesture:(BOOL)gesture;
- (void)_setDisableTapGesture:(BOOL)gesture;
- (void)_setEffectiveAppearanceTraits:(id)traits;
- (void)_setEffectiveCornerRadius:(double)radius;
- (void)_setEmphasizedTextExpression:(id)expression;
- (void)_setFindInteractionEnabled:(BOOL)enabled;
- (void)_setHighlightCaption:(BOOL)caption;
- (void)_setHighlightMedia:(BOOL)media;
- (void)_setHighlightedForAttribution:(BOOL)attribution;
- (void)_setInComposeContext:(BOOL)context;
- (void)_setInSenderContext:(BOOL)context;
- (void)_setLastResortIcon:(id)icon;
- (void)_setMaskImage:(id)image;
- (void)_setMediaOverlayIcon:(id)icon;
- (void)_setMetadata:(id)metadata isFinal:(BOOL)final;
- (void)_setMetadataInternal:(id)internal;
- (void)_setMultipleMetadata:(id)metadata;
- (void)_setOverrideActionButtonColor:(id)color;
- (void)_setOverrideBackgroundColor:(id)color;
- (void)_setOverrideMediaBackgroundColor:(id)color;
- (void)_setOverrideSubtitle:(id)subtitle;
- (void)_setOverrideSubtitleButtonColor:(id)color;
- (void)_setOverrideURL:(id)l;
- (void)_setPreferredSizeClass:(unint64_t)class;
- (void)_setPresentationPropertiesInternal:(id)internal;
- (void)_setSecondaryButtonAction:(id)action;
- (void)_setSelectedVariantIndex:(id)index;
- (void)_setShowingDisclosureView:(BOOL)view;
- (void)_setSizeClassParameters:(id)parameters;
- (void)_setSourceBundleIdentifier:(id)identifier;
- (void)_setSuppressChatKitMask:(BOOL)mask;
- (void)_setTextSafeAreaInset:(UIEdgeInsets)inset;
- (void)_setUnderlyingBackgroundColor:(id)color;
- (void)_setUseCPURenderingForMaterials:(BOOL)materials;
- (void)_setUsesInferredAppearanceWithOverriddenBackgroundColor:(BOOL)color;
- (void)_setupView;
- (void)_uninstallHighlightGestureRecognizers;
- (void)_uninstallPreviewGestureRecognizer;
- (void)_uninstallTapGestureRecognizers;
- (void)_updateBackgroundColor;
- (void)_updateBlur;
- (void)_updateCornerRadius;
- (void)_updateEffectiveAppearanceTraitsIfNeeded;
- (void)_updateMasking;
- (void)_updateMetadataIsComplete;
- (void)animateBackgroundColor;
- (void)animateFromOldFrame:(CGRect)frame oldMediaBackgroundFrame:(CGRect)backgroundFrame oldCaptionBarView:(id)view;
- (void)animateInViews;
- (void)animateOutAndRemoveViews;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)clearAllDecoratedFoundText;
- (void)componentViewDidChangeMediaState:(id)state;
- (void)componentViewDidTapCaptionButton:(id)button buttonType:(int64_t)type;
- (void)dealloc;
- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style;
- (void)layoutSubviews;
- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator;
- (void)resetDownloadState;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setURL:(id)l;
- (void)tapToLoadViewWasTapped:(id)tapped;
- (void)themeParametersDidChange;
@end

@implementation LPLinkView

- (LPLinkView)init
{
  v3 = objc_alloc_init(LPLinkMetadata);
  v4 = [(LPLinkView *)self initWithMetadata:v3];

  return v4;
}

- (LPLinkView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = LPLinkView;
  v3 = [(LPLinkView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LPLinkView *)v3 _commonInitWithURL:0];
    v4->_usesComputedPresentationProperties = 1;
    v4->_metadataIsComplete = 1;
    v5 = v4;
  }

  return v4;
}

- (LPLinkView)initWithMetadataLoadedFromURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:lCopy];
  v6 = [(LPLinkView *)self initWithMetadataLoadedFromRequest:v5];

  return v6;
}

- (LPLinkView)initWithMetadataLoadedFromRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy URL];
  v6 = [(LPLinkView *)self _initWithNullableURL:v5];
  v7 = v6;
  if (v6)
  {
    [(LPLinkView *)v6 _fetchMetadataForRequest:requestCopy];
    v8 = v7;
  }

  return v7;
}

- (id)_initWithMetadataLoadedFromURLs:(id)ls
{
  v18 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = lsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [MEMORY[0x1E695AC68] requestWithURL:{*(*(&v13 + 1) + 8 * v9), v13}];
        [v5 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(LPLinkView *)self _initWithMetadataLoadedFromRequests:v5];
  return v11;
}

- (id)_initWithMetadataLoadedFromRequests:(id)requests
{
  v31 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v29.receiver = self;
  v29.super_class = LPLinkView;
  v5 = [(LPLinkView *)&v29 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(LPLinkView *)v5 _commonInitWithURL:0];
    v6->_usesComputedPresentationProperties = 1;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(requestsCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = requestsCopy;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v25 + 1) + 8 * v11) URL];
          [v7 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    if ([v8 count] < 0xB)
    {
      objc_storeStrong(&v6->_multipleURLs, v7);
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __50__LPLinkView__initWithMetadataLoadedFromRequests___block_invoke;
      v22 = &unk_1E7A36EA0;
      v15 = v14;
      v23 = v15;
      v16 = v6;
      v24 = v16;
      [v8 enumerateObjectsUsingBlock:&v19];
      [(LPLinkView *)v16 _setMultipleMetadata:v15, v19, v20, v21, v22];
      v17 = v16;
    }

    else
    {
      [(LPLinkView *)v6 _configureWithoutLoadingMetadataFromURLs:v7];
      v13 = v6;
    }
  }

  return v6;
}

void __50__LPLinkView__initWithMetadataLoadedFromRequests___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3 < 2;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__LPLinkView__initWithMetadataLoadedFromRequests___block_invoke_2;
  v12 = &unk_1E7A36E78;
  v13 = v5;
  v14 = *(a1 + 32);
  v8 = [v13 _fetchMetadataForRequest:a2 withSubresources:v7 completionHandler:&v9];
  [v6 addObject:{v8, v9, v10, v11, v12}];
}

void __50__LPLinkView__initWithMetadataLoadedFromRequests___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setMultipleMetadata:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 880));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained linkView:*(a1 + 32) didFetchMetadata:*(*(a1 + 32) + 424)];
  }
}

- (id)_initWithNullableURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = LPLinkView;
  v5 = [(LPLinkView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(LPLinkView *)v5 _commonInitWithURL:lCopy];
    v6->_usesComputedPresentationProperties = 1;
    v6->_metadataIsComplete = 1;
    v7 = v6;
  }

  return v6;
}

- (LPLinkView)initWithMetadata:(LPLinkMetadata *)metadata
{
  v4 = metadata;
  originalURL = [(LPLinkMetadata *)v4 originalURL];
  v6 = [(LPLinkView *)self _initWithNullableURL:originalURL];

  if (v6)
  {
    [(LPLinkView *)v6 setMetadata:v4];
    v7 = v6;
  }

  return v6;
}

- (id)_initWithMultipleMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9.receiver = self;
  v9.super_class = LPLinkView;
  v5 = [(LPLinkView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(LPLinkView *)v5 _commonInitWithURL:0];
    v6->_usesComputedPresentationProperties = 1;
    v6->_metadataIsComplete = 1;
    [(LPLinkView *)v6 _setMultipleMetadata:metadataCopy];
    v7 = v6;
  }

  return v6;
}

- (LPLinkView)initWithPresentationProperties:(id)properties
{
  v3 = [(LPLinkView *)self initWithPresentationProperties:properties URL:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (LPLinkView)initWithPresentationProperties:(id)properties URL:(id)l
{
  propertiesCopy = properties;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = LPLinkView;
  v8 = [(LPLinkView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(LPLinkView *)v8 _commonInitWithURL:lCopy];
    [(LPLinkView *)v9 _setPresentationProperties:propertiesCopy];
    v10 = v9;
  }

  return v9;
}

- (id)_initWithSynapseContentItem:(id)item
{
  itemCopy = item;
  v5 = [[LPLinkMetadata alloc] _initWithSynapseContentItem:itemCopy];
  v6 = [(LPLinkView *)self initWithMetadata:v5];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (void)_commonInitWithURL:(id)l
{
  v22[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  pendingMetadataProviders = self->_pendingMetadataProviders;
  self->_pendingMetadataProviders = weakObjectsHashTable;

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  self->_sourceBundleIdentifier = bundleIdentifier;

  self->_loggingID = ++generateLoggingID_nextLoggingID;
  objc_storeStrong(&self->_URL, l);
  self->_applyCornerRadius = 1;
  self->_allowsSkinnyWidth = +[LPApplicationCompatibilityQuirks allowsSkinnyWidthByDefault];
  self->_allowsVibrancy = 1;
  self->_presentationPropertyState = -1;
  self->_allowsAsynchronousImageDecoding = ![LPApplicationIdentification isKnownApplication:7];
  v11 = objc_opt_self();
  v22[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v13 = [(LPLinkView *)self registerForTraitChanges:v12 withHandler:&__block_literal_global_19];

  v14 = objc_opt_self();
  v21 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v16 = [(LPLinkView *)self registerForTraitChanges:v15 withHandler:&__block_literal_global_61];

  v17 = objc_opt_self();
  v20 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v19 = [(LPLinkView *)self registerForTraitChanges:v18 withHandler:&__block_literal_global_64];
}

void __33__LPLinkView__commonInitWithURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _invalidatePresentationProperties];
  [v2 themeParametersDidChange];
}

void __33__LPLinkView__commonInitWithURL___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v2[83] |= 1uLL;
  ++v2[84];
  v3 = v2;
  [v2 themeParametersDidChange];
  --v3[84];
}

- (void)dealloc
{
  [LPTheme removeClient:self];
  v3.receiver = self;
  v3.super_class = LPLinkView;
  [(LPLinkView *)&v3 dealloc];
}

- (void)_setEffectiveCornerRadius:(double)radius
{
  self->_hasOverrideCornerRadius = 1;
  self->_overrideCornerRadius = radius;
  [(LPLinkView *)self _updateCornerRadius];
}

- (double)_effectiveCornerRadius
{
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  if (self->_hasOverrideCornerRadius)
  {
    overrideCornerRadius = self->_overrideCornerRadius;
  }

  else
  {
    cornerRadius = [(LPTheme *)self->_theme cornerRadius];
    [cornerRadius value];
    overrideCornerRadius = v5;
  }

  [(LPLinkView *)self frame];
  v7 = v6 * 0.5;
  [(LPLinkView *)self frame];
  return fmin(overrideCornerRadius, fmin(v7, v8 * 0.5));
}

- (void)_updateCornerRadius
{
  animationView = self->_animationView;
  _shouldApplyCornerRadius = [(LPLinkView *)self _shouldApplyCornerRadius];
  v5 = 0.0;
  if (_shouldApplyCornerRadius)
  {
    [(LPLinkView *)self _effectiveCornerRadius];
  }

  [(UIView *)animationView _lp_setCornerRadius:v5];
}

- (void)_configureWithoutLoadingMetadataFromURLs:(id)ls
{
  lsCopy = ls;
  v4 = objc_alloc_init(LPLinkMetadata);
  v5 = MEMORY[0x1E696AEC0];
  v6 = LPLocalizedString(@"%ld Document(s)");
  v7 = [v5 localizedStringWithFormat:v6, objc_msgSend(lsCopy, "count")];
  [(LPLinkMetadata *)v4 setTitle:v7];

  v8 = objc_alloc_init(LPSummarizedLinkMetadata);
  [(LPLinkMetadata *)v4 setSpecialization:v8];

  [(LPLinkView *)self _setMetadata:v4 isFinal:1];
}

- (id)_fetchMetadataForRequest:(id)request withSubresources:(BOOL)subresources completionHandler:(id)handler
{
  subresourcesCopy = subresources;
  requestCopy = request;
  handlerCopy = handler;
  [(LPLinkView *)self _updateMetadataIsComplete];
  v10 = objc_alloc_init(LPMetadataProvider);
  [(NSHashTable *)self->_pendingMetadataProviders addObject:v10];
  [(LPMetadataProvider *)v10 setShouldFetchSubresources:subresourcesCopy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__LPLinkView__fetchMetadataForRequest_withSubresources_completionHandler___block_invoke;
  v17[3] = &unk_1E7A36F10;
  v17[4] = self;
  v11 = v10;
  v18 = v11;
  v12 = handlerCopy;
  v19 = v12;
  v20 = &v21;
  v13 = [(LPMetadataProvider *)v11 _startFetchingMetadataForRequest:requestCopy completionHandler:v17];
  v14 = v22[5];
  v22[5] = v13;

  v15 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v15;
}

void __74__LPLinkView__fetchMetadataForRequest_withSubresources_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__LPLinkView__fetchMetadataForRequest_withSubresources_completionHandler___block_invoke_2;
  block[3] = &unk_1E7A36EE8;
  v2 = (a1 + 56);
  v5 = *(a1 + 32);
  v3 = *(&v5 + 1);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = *v2;
  v7 = v5;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __74__LPLinkView__fetchMetadataForRequest_withSubresources_completionHandler___block_invoke_2(void *a1)
{
  [*(a1[4] + 416) removeObject:a1[5]];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_fetchMetadataForRequest:(id)request
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__LPLinkView__fetchMetadataForRequest___block_invoke;
  v7[3] = &unk_1E7A36F38;
  v7[4] = self;
  v4 = [(LPLinkView *)self _fetchMetadataForRequest:request withSubresources:1 completionHandler:v7];
  self->_allowsTapToLoad = 0;
  media = [(LPLinkViewComponents *)self->_components media];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(LPLinkView *)self _setMetadata:v4 isFinal:0];
  }
}

void __39__LPLinkView__fetchMetadataForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __39__LPLinkView__fetchMetadataForRequest___block_invoke_2;
  v13 = &unk_1E7A35478;
  v14 = *(a1 + 32);
  v4 = v3;
  v15 = v4;
  v5 = _Block_copy(&v10);
  v6 = [*(*(a1 + 32) + 856) media];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [*(*(a1 + 32) + 856) media];
    [v8 animateOutWithCompletionHandler:v5];
    v9 = [*(*(a1 + 32) + 856) captionBar];
    [v9 animateOut];

    [*(*(a1 + 32) + 856) setCaptionBar:0];
  }

  else
  {
    v5[2](v5);
  }
}

void __39__LPLinkView__fetchMetadataForRequest___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setMetadata:*(a1 + 40) isFinal:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 880));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained linkView:*(a1 + 32) didFetchMetadata:*(*(a1 + 32) + 424)];
  }
}

- (void)_setupView
{
  [LPTheme addClient:self];
  _lp_createFlippedView = [MEMORY[0x1E69DD250] _lp_createFlippedView];
  animationView = self->_animationView;
  self->_animationView = _lp_createFlippedView;

  layer = [(UIView *)self->_animationView layer];
  [layer setMasksToBounds:1];

  [(LPLinkView *)self addSubview:self->_animationView];
  _lp_createFlippedView2 = [MEMORY[0x1E69DD250] _lp_createFlippedView];
  contentView = self->_contentView;
  self->_contentView = _lp_createFlippedView2;

  [(LPLinkView *)self _updateEffectiveAppearanceTraitsIfNeeded];
  [(UIView *)self->_animationView addSubview:self->_contentView];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  tapGestureRecognizers = self->_tapGestureRecognizers;
  self->_tapGestureRecognizers = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  highlightGestureRecognizers = self->_highlightGestureRecognizers;
  self->_highlightGestureRecognizers = v10;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __24__LPLinkView__setupView__block_invoke;
  aBlock[3] = &unk_1E7A36F80;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v13 = v12[2]();
  captionHighlightView = self->_captionHighlightView;
  self->_captionHighlightView = v13;

  [(UIView *)self->_animationView addSubview:self->_captionHighlightView];
  v15 = (v12[2])(v12);
  mediaHighlightView = self->_mediaHighlightView;
  self->_mediaHighlightView = v15;

  [(UIView *)self->_animationView addSubview:self->_mediaHighlightView];
  [(LPLinkView *)self _updateBlur];
  [(UIView *)self->_animationView _lp_setHoverEffectEnabled:!self->_disableTapGesture];
  if (+[LPSettings showDebugIndicators])
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
    cGColor = [redColor CGColor];
    layer2 = [(LPLinkView *)self layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(LPLinkView *)self layer];
    [layer3 setBorderWidth:0.5];

    greenColor = [MEMORY[0x1E69DC888] greenColor];
    cGColor2 = [greenColor CGColor];
    layer4 = [(UIView *)self->_animationView layer];
    [layer4 setBorderColor:cGColor2];

    layer5 = [(UIView *)self->_animationView layer];
    [layer5 setBorderWidth:0.5];
  }
}

LPBackgroundColorView *__24__LPLinkView__setupView__block_invoke(uint64_t a1)
{
  v2 = [LPBackgroundColorView alloc];
  v3 = [*(*(a1 + 32) + 448) highlightColor];
  v4 = [(LPBackgroundColorView *)v2 initWithColor:v3];

  [(LPBackgroundColorView *)v4 setHidden:1];
  [(LPBackgroundColorView *)v4 setUserInteractionEnabled:0];
  v5 = [*(*(a1 + 32) + 448) highlightCompositingFilter];
  [(UIView *)v4 _lp_applyAndRegisterForUpdatesToValue:v5 withApplyCallback:&__block_literal_global_81];

  return v4;
}

- (void)_updateBlur
{
  if ([(LPLinkView *)self _shouldUseBlur])
  {

    [(LPLinkView *)self _enableBlur];
  }

  else
  {

    [(LPLinkView *)self _disableBlur];
  }
}

- (void)_enableBlur
{
  if (!self->_blurView && self->_contentView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD298]);
    v6 = [MEMORY[0x1E69DC730] effectWithStyle:{-[LPLinkView _blurEffectStyle](self, "_blurEffectStyle")}];
    v4 = [v3 initWithEffect:?];
    blurView = self->_blurView;
    self->_blurView = v4;

    [(UIView *)self->_animationView insertSubview:self->_blurView belowSubview:self->_contentView];
    contentView = [(UIVisualEffectView *)self->_blurView contentView];
    [contentView addSubview:self->_contentView];
  }
}

- (void)_disableBlur
{
  if (self->_blurView)
  {
    [(UIView *)self->_animationView insertSubview:self->_contentView belowSubview:?];
    [(UIVisualEffectView *)self->_blurView removeFromSuperview];
    blurView = self->_blurView;
    self->_blurView = 0;
  }
}

- (double)minimumCornerRadiusForComponentView:(id)view
{
  viewCopy = view;
  captionBar = [(LPLinkViewComponents *)self->_components captionBar];
  if (([captionBar hasIconViewEqualToComponentView:viewCopy] & 1) == 0)
  {
    mediaTopCaptionBar = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
    if (![mediaTopCaptionBar hasIconViewEqualToComponentView:viewCopy])
    {
      mediaBottomCaptionBar = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
      v11 = [mediaBottomCaptionBar hasIconViewEqualToComponentView:viewCopy];

      v8 = 0.0;
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters minimumIconCornerRadius];
  v8 = v7;
LABEL_6:

  return v8;
}

- (id)appearanceForComponentView:(id)view
{
  _lp_appearance = [(UIView *)self _lp_appearance];

  return _lp_appearance;
}

- (UIColor)_resolvedBackgroundColor
{
  backgroundColor = [(LPTheme *)self->_theme backgroundColor];
  if ([(LPLinkView *)self _themePlatform]== 5)
  {
    traitCollection = [(LPLinkView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle != 2)
    {
      v6 = [LPTheme defaultBackgroundColorForPlatform:0];

      backgroundColor = v6;
    }
  }

  overrideBackgroundColor = self->_overrideBackgroundColor;
  if (overrideBackgroundColor)
  {
    v8 = overrideBackgroundColor;
  }

  else
  {
    _specializedBackgroundColor = [(LPLinkView *)self _specializedBackgroundColor];
    v10 = _specializedBackgroundColor;
    if (_specializedBackgroundColor)
    {
      v11 = _specializedBackgroundColor;
    }

    else
    {
      v11 = backgroundColor;
    }

    v8 = v11;
  }

  underlyingBackgroundColor = self->_underlyingBackgroundColor;
  if (underlyingBackgroundColor)
  {
    v13 = [(UIColor *)underlyingBackgroundColor _lp_colorBlendedWithColor:v8];
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  return v14;
}

- (UIColor)_dominantBackgroundColor
{
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  properties = self->_properties;

  return [(LPWebLinkPresentationProperties *)properties dominantImageBackgroundColor];
}

- (BOOL)_backgroundColorSupportsVibrancy:(id)vibrancy
{
  vibrancyCopy = vibrancy;
  traitCollection = [(LPLinkView *)self traitCollection];
  v6 = [vibrancyCopy resolvedColorWithTraitCollection:traitCollection];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  LOBYTE(traitCollection) = [v6 isEqual:clearColor];

  return traitCollection;
}

- (void)_updateBackgroundColor
{
  _resolvedBackgroundColor = [(LPLinkView *)self _resolvedBackgroundColor];
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = _resolvedBackgroundColor;

  self->_backgroundColorSupportsVibrancy = [(LPLinkView *)self _backgroundColorSupportsVibrancy:self->_backgroundColor];

  [(LPLinkView *)self _updateEffectiveAppearanceTraitsIfNeeded];
}

- (void)_setEffectiveAppearanceTraits:(id)traits
{
  traitsCopy = traits;
  _effectiveAppearanceTraits = [(LPLinkView *)self _effectiveAppearanceTraits];
  v6 = [_effectiveAppearanceTraits isEqual:traitsCopy];

  if ((v6 & 1) == 0)
  {
    [(LPLinkView *)self willChangeValueForKey:@"_effectiveTraitCollection"];
    objc_storeStrong(&self->_effectiveTraitCollection, traits);
    [(LPLinkView *)self didChangeValueForKey:@"_effectiveTraitCollection"];
  }
}

- (void)_setUsesInferredAppearanceWithOverriddenBackgroundColor:(BOOL)color
{
  if (self->_usesInferredAppearanceWithOverriddenBackgroundColor != color)
  {
    self->_usesInferredAppearanceWithOverriddenBackgroundColor = color;
    [(LPLinkView *)self _updateEffectiveAppearanceTraitsIfNeeded];

    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (BOOL)_shouldUseInferredAppearance
{
  dominantImageBackgroundColor = [(LPWebLinkPresentationProperties *)self->_properties dominantImageBackgroundColor];
  if (dominantImageBackgroundColor)
  {
    v4 = dominantImageBackgroundColor;
    allowsDominantImageBackgroundColorAsCaptionBackground = [(LPWebLinkPresentationProperties *)self->_properties allowsDominantImageBackgroundColorAsCaptionBackground];

    if (!allowsDominantImageBackgroundColorAsCaptionBackground || self->_overrideBackgroundColor && !self->_usesInferredAppearanceWithOverriddenBackgroundColor)
    {
      goto LABEL_8;
    }

    image = [(LPWebLinkPresentationProperties *)self->_properties image];
    _darkInterfaceAlternativeImage = [image _darkInterfaceAlternativeImage];
    if (_darkInterfaceAlternativeImage)
    {

LABEL_8:
      LOBYTE(dominantImageBackgroundColor) = 0;
      return dominantImageBackgroundColor;
    }

    backgroundImage = [(LPWebLinkPresentationProperties *)self->_properties backgroundImage];
    _darkInterfaceAlternativeImage2 = [backgroundImage _darkInterfaceAlternativeImage];

    if (_darkInterfaceAlternativeImage2)
    {
      goto LABEL_8;
    }

    LOBYTE(dominantImageBackgroundColor) = 1;
  }

  return dominantImageBackgroundColor;
}

- (void)_updateEffectiveAppearanceTraitsIfNeeded
{
  if ([(LPLinkView *)self _shouldUseInferredAppearance])
  {
    dominantImageBackgroundColor = [(LPWebLinkPresentationProperties *)self->_properties dominantImageBackgroundColor];
    _lp_luminosityLevelForUserInterfaceStyle = [dominantImageBackgroundColor _lp_luminosityLevelForUserInterfaceStyle];

    if (_lp_luminosityLevelForUserInterfaceStyle == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    traitCollection = [(LPLinkView *)self traitCollection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__LPLinkView__updateEffectiveAppearanceTraitsIfNeeded__block_invoke;
    v17[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v17[4] = v5;
    v7 = [traitCollection traitCollectionByModifyingTraits:v17];
    [(LPLinkView *)self _setEffectiveAppearanceTraits:v7];

    _effectiveAppearanceTraits = [(LPLinkView *)self _effectiveAppearanceTraits];
    userInterfaceStyle = [_effectiveAppearanceTraits userInterfaceStyle];
    traitOverrides = [(UIView *)self->_contentView traitOverrides];
    [traitOverrides setUserInterfaceStyle:userInterfaceStyle];
  }

  else
  {
    _lp_appearance = [(UIView *)self _lp_appearance];
    [(LPLinkView *)self _setEffectiveAppearanceTraits:_lp_appearance];

    traitOverrides2 = [(UIView *)self->_contentView traitOverrides];
    v13 = objc_opt_self();
    v14 = [traitOverrides2 containsTrait:v13];

    if (v14)
    {
      traitOverrides3 = [(UIView *)self->_contentView traitOverrides];
      v15 = objc_opt_self();
      [traitOverrides3 removeTrait:v15];
    }
  }
}

- (void)themeParametersDidChange
{
  _themePlatform = [(LPLinkView *)self _themePlatform];
  captionBar = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  button = [captionBar button];

  style = [(LPWebLinkPresentationProperties *)self->_properties style];
  captionBar2 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  trailingIcon = [captionBar2 trailingIcon];
  leadingIcon = trailingIcon;
  if (!trailingIcon)
  {
    captionBar3 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    leadingIcon = [captionBar3 leadingIcon];
  }

  v8 = style;
  effectiveSizeClass = self->_effectiveSizeClass;
  sizeClassParameters = self->_sizeClassParameters;
  traitCollection = [(LPLinkView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v13 = [LPTheme themeWithStyle:v8 icon:leadingIcon platform:_themePlatform sizeClass:effectiveSizeClass sizeClassParameters:sizeClassParameters hasButton:button != 0 preferredContentSizeCategory:preferredContentSizeCategory];
  theme = self->_theme;
  self->_theme = v13;

  if (!trailingIcon)
  {
  }

  [(LPLinkView *)self _updateBackgroundColor];
  [(LPLinkView *)self _updateBlur];

  [(LPLinkView *)self _rebuildEntireView];
}

- (void)_setOverrideURL:(id)l
{
  lCopy = l;
  objc_storeStrong(&self->_URL, l);
  overrideURL = self->_overrideURL;
  self->_overrideURL = lCopy;

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setUnderlyingBackgroundColor:(id)color
{
  objc_storeStrong(&self->_underlyingBackgroundColor, color);

  [(LPLinkView *)self themeParametersDidChange];
}

- (void)_setOverrideBackgroundColor:(id)color
{
  colorCopy = color;
  if (colorCopy | self->_overrideBackgroundColor && ([colorCopy isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideBackgroundColor, color);
    [(LPLinkView *)self _updateBackgroundColor];
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setOverrideMediaBackgroundColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (colorCopy | self->_overrideMediaBackgroundColor)
  {
    v10 = colorCopy;
    v7 = [colorCopy isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_overrideMediaBackgroundColor, color);
      _mediaBackgroundColor = [(LPLinkView *)self _mediaBackgroundColor];
      mediaBackground = [(LPLinkViewComponents *)self->_components mediaBackground];
      [mediaBackground setColor:_mediaBackgroundColor];

      v6 = v10;
    }
  }
}

- (void)_setOverrideActionButtonColor:(id)color
{
  objc_storeStrong(&self->_overrideActionButtonColor, color);

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setOverrideSubtitleButtonColor:(id)color
{
  objc_storeStrong(&self->_overrideSubtitleButtonColor, color);

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setContactsForAttribution:(id)attribution
{
  attributionCopy = attribution;
  if (([(NSArray *)self->_contactsForAttribution isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contactsForAttribution, attribution);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setHighlightedForAttribution:(BOOL)attribution
{
  if (self->_highlightedForAttribution != attribution)
  {
    self->_highlightedForAttribution = attribution;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setCollaborationFooterViewModel:(id)model action:(id)action
{
  modelCopy = model;
  actionCopy = action;
  if (modelCopy)
  {
    v7 = objc_alloc_init(LPCollaborationFooterPresentationProperties);
    optionsSummary = [modelCopy optionsSummary];
    [(LPCollaborationFooterPresentationProperties *)v7 setTitle:optionsSummary];

    metadata = [modelCopy metadata];
    v10 = metadata;
    if (metadata)
    {
      initiatorHandle = [(LPCollaborationFooterPresentationProperties *)metadata initiatorHandle];
      [(LPCollaborationFooterPresentationProperties *)v7 setInitiatorName:initiatorHandle];

      initiatorNameComponents = [(LPCollaborationFooterPresentationProperties *)v10 initiatorNameComponents];
      [(LPCollaborationFooterPresentationProperties *)v7 setInitiatorNameComponents:initiatorNameComponents];
    }

    [(LPCollaborationFooterPresentationProperties *)v7 setAction:actionCopy];
    collaborationFooter = self->_collaborationFooter;
    self->_collaborationFooter = v7;
  }

  else
  {
    v10 = self->_collaborationFooter;
    self->_collaborationFooter = 0;
  }

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setShowingDisclosureView:(BOOL)view
{
  if (self->_showingDisclosureView != view)
  {
    self->_showingDisclosureView = view;
    captionBar = [(LPLinkViewComponents *)self->_components captionBar];
    [captionBar updateDisclosureIndicators];
  }
}

- (void)_setLastResortIcon:(id)icon
{
  iconCopy = icon;
  if (self->_lastResortIcon != iconCopy)
  {
    objc_storeStrong(&self->_lastResortIcon, icon);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setMediaOverlayIcon:(id)icon
{
  iconCopy = icon;
  if (self->_mediaOverlayIcon != iconCopy)
  {
    objc_storeStrong(&self->_mediaOverlayIcon, icon);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setInComposeContext:(BOOL)context
{
  if (self->_inComposeContext != context)
  {
    self->_inComposeContext = context;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setInSenderContext:(BOOL)context
{
  if (self->_inSenderContext != context)
  {
    self->_inSenderContext = context;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setCollaborative:(BOOL)collaborative
{
  if (self->_collaborative != collaborative)
  {
    self->_collaborative = collaborative;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setUseCPURenderingForMaterials:(BOOL)materials
{
  if (self->_useCPURenderingForMaterials != materials)
  {
    self->_useCPURenderingForMaterials = materials;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)setURL:(id)l
{
  objc_storeStrong(&self->_URL, l);

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (LPLinkMetadata)metadata
{
  metadata = self->_metadata;
  if (metadata)
  {
    v4 = [(LPLinkMetadata *)metadata copy];
  }

  else
  {
    v4 = objc_alloc_init(LPPlaceholderLinkMetadata);
    [(LPLinkMetadata *)v4 setURL:self->_URL];
    [(LPLinkMetadata *)v4 setOriginalURL:self->_URL];
  }

  return v4;
}

- (void)_setBytesLoaded:(unint64_t)loaded
{
  self->_bytesLoaded = loaded;
  if (!self->_metadata)
  {
    return;
  }

  v9 = [[LPLinkMetadataDownloadProgressTransformer alloc] initWithBytesLoaded:loaded downloadState:self->_sharedObjectDownloadState metadata:self->_metadata];
  v4 = [(LPLinkMetadataDownloadProgressTransformer *)v9 downloadProgressForTransformer:v9];
  v5 = v4;
  if (v4)
  {
    isFinished = [v4 isFinished];
    v7 = 1;
    if (isFinished)
    {
      v7 = 2;
    }

    self->_sharedObjectDownloadState = v7;
    goto LABEL_8;
  }

  sharedObjectDownloadState = self->_sharedObjectDownloadState;
  self->_sharedObjectDownloadState = 0;
  if (sharedObjectDownloadState)
  {
LABEL_8:
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)resetDownloadState
{
  self->_sharedObjectDownloadState = 0;
  self->_bytesLoaded = 0;
  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setMetadataInternal:(id)internal
{
  internalCopy = internal;
  self->_usesComputedPresentationProperties = 1;
  v6 = [internalCopy copy];
  metadata = self->_metadata;
  self->_metadata = v6;

  overrideURL = self->_overrideURL;
  if (overrideURL)
  {
    v9 = 0;
    v10 = self->_overrideURL;
  }

  else
  {
    originalURL = [internalCopy originalURL];
    v3 = originalURL;
    if (originalURL)
    {
      v9 = 0;
      v10 = originalURL;
    }

    else
    {
      v10 = [internalCopy URL];
      v3 = 0;
      v9 = 1;
    }
  }

  objc_storeStrong(&self->_URL, v10);
  if (v9)
  {
  }

  if (!overrideURL)
  {
  }

  if (self->_metadata)
  {
    self->_asynchronouslyLoadingMetadataFields = 1;
    v12 = ++_setMetadataInternal__currentAsyncLoadRequestID;
    v13 = [internalCopy copy];
    if ([internalCopy _isDeferringAsynchronousLoads])
    {
      _createAsynchronousLoadDeferralToken = [v13 _createAsynchronousLoadDeferralToken];
      [internalCopy _addFinishedDeferringAsynchronousLoadHandler:_createAsynchronousLoadDeferralToken];
    }

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __35__LPLinkView__setMetadataInternal___block_invoke;
    v19 = &unk_1E7A36FC8;
    v23 = v12;
    selfCopy = self;
    v21 = internalCopy;
    v15 = v13;
    v22 = v15;
    [v15 _loadAsynchronousFieldsWithUpdateHandler:&v16];
  }

  [(LPLinkView *)self _updateMetadataIsComplete:v16];
  if (!self->_metadata || self->_asynchronouslyLoadingMetadataFields)
  {
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

void __35__LPLinkView__setMetadataInternal___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 56) == _setMetadataInternal__currentAsyncLoadRequestID)
  {
    if (sizeClassAllowsSecondaryButton(*(*(a1 + 32) + 608)) && ([*(a1 + 40) specialization], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_canDeferAsynchronousFieldsMetadataUpdateUntilCompletion"), v4, v5) && !a2)
    {
      v6 = 0;
    }

    else
    {
      v7 = [*(a1 + 48) copy];
      v8 = *(a1 + 32);
      v9 = *(v8 + 424);
      *(v8 + 424) = v7;

      v6 = 1;
      if (a2)
      {
        *(*(a1 + 32) + 696) = 0;
        [*(a1 + 32) _updateMetadataIsComplete];
      }
    }

    if (v6)
    {
      v10 = *(a1 + 32);

      [v10 _invalidatePresentationPropertiesAndLayout];
    }
  }
}

- (LPLinkMetadata)_flattenedMetadata
{
  variants = [(LPLinkMetadata *)self->_metadata variants];
  unsignedIntegerValue = [(NSNumber *)self->_selectedVariantIndex unsignedIntegerValue];
  if (unsignedIntegerValue >= [variants count])
  {
    [(LPLinkView *)self metadata];
  }

  else
  {
    [variants objectAtIndexedSubscript:{-[NSNumber unsignedIntegerValue](self->_selectedVariantIndex, "unsignedIntegerValue")}];
  }
  v5 = ;

  return v5;
}

- (void)_setMetadata:(id)metadata isFinal:(BOOL)final
{
  self->_mayReceiveAdditionalMetadata = !final;
  selectedVariantIndex = self->_selectedVariantIndex;
  self->_selectedVariantIndex = 0;
  metadataCopy = metadata;

  [(LPLinkView *)self _setMetadataInternal:metadataCopy];
}

- (void)_setSelectedVariantIndex:(id)index
{
  indexCopy = index;
  if (([(NSNumber *)self->_selectedVariantIndex isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedVariantIndex, index);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setFindInteractionEnabled:(BOOL)enabled
{
  if (self->_findInteractionEnabled != enabled)
  {
    self->_findInteractionEnabled = enabled;
    if (enabled)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DCA08]) initWithSessionDelegate:self];
      findInteraction = self->_findInteraction;
      self->_findInteraction = v5;

      [(LPLinkView *)self addInteraction:self->_findInteraction];
    }

    else
    {
      [(LPLinkView *)self removeInteraction:self->_findInteraction];
      v7 = self->_findInteraction;
      self->_findInteraction = 0;
    }

    [(LPLinkView *)self _rebuildEntireView];
  }
}

- (void)_setMultipleMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([metadataCopy count] > 1)
  {
    firstObject = [[LPMultipleMetadataPresentationTransformer alloc] initWithMetadata:metadataCopy];
    [(LPMultipleMetadataPresentationTransformer *)firstObject setPreferredSizeClass:self->_preferredSizeClass];
    self->_mayReceiveAdditionalMetadata = 0;
    summaryMetadata = [(LPMultipleMetadataPresentationTransformer *)firstObject summaryMetadata];
    [(LPLinkView *)self _setMetadataInternal:summaryMetadata];
  }

  else
  {
    firstObject = [metadataCopy firstObject];
    [(LPLinkView *)self _setMetadataInternal:firstObject];
  }
}

- (void)_setPreferredSizeClass:(unint64_t)class
{
  if (self->_preferredSizeClass != class)
  {
    self->_preferredSizeClass = class;
    self->_effectiveSizeClass = class;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];

    [(LPLinkView *)self themeParametersDidChange];
  }
}

- (void)_setSizeClassParameters:(id)parameters
{
  parametersCopy = parameters;
  sizeClassParameters = self->_sizeClassParameters;
  v8 = parametersCopy;
  if (parametersCopy | sizeClassParameters && ![(LPLinkRendererSizeClassParameters *)sizeClassParameters isEqual:parametersCopy])
  {
    v6 = [v8 copy];
    v7 = self->_sizeClassParameters;
    self->_sizeClassParameters = v6;

    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
    [(LPLinkView *)self themeParametersDidChange];
  }
}

- (void)_setSourceBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_sourceBundleIdentifier != identifierCopy)
  {
    objc_storeStrong(&self->_sourceBundleIdentifier, identifier);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_addCaptionButton:(id)button
{
  buttonCopy = button;
  if ([buttonCopy type] == 1)
  {
    objc_storeStrong(&self->_captionButton, button);
    [(LPConcretePresentationProperties *)self->_properties setCaptionButton:buttonCopy];
  }

  else
  {
    objc_storeStrong(&self->_captionTextButton, button);
    [(LPConcretePresentationProperties *)self->_properties setCaptionTextButton:buttonCopy];
  }
}

- (void)_removeCaptionButtonWithType:(int64_t)type
{
  if (type == 1)
  {
    captionButton = self->_captionButton;
    self->_captionButton = 0;

    [(LPConcretePresentationProperties *)self->_properties setCaptionButton:0];
    captionBar = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    [captionBar setButton:0];
  }

  else
  {
    captionTextButton = self->_captionTextButton;
    self->_captionTextButton = 0;

    [(LPConcretePresentationProperties *)self->_properties setCaptionTextButton:0];
  }

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setAction:(id)action withText:(id)text buttonType:(int64_t)type
{
  actionCopy = action;
  textCopy = text;
  if (actionCopy && textCopy)
  {
    v9 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    [(LPCaptionButtonPresentationProperties *)v9 setText:textCopy];
    [(LPCaptionButtonPresentationProperties *)v9 setCallback:actionCopy];
    [(LPCaptionButtonPresentationProperties *)v9 setType:type];
    [(LPLinkView *)self _addCaptionButton:v9];
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }

  else
  {
    [(LPLinkView *)self _removeCaptionButtonWithType:type];
  }
}

- (void)_setAction:(id)action withAttributedText:(id)text buttonType:(int64_t)type
{
  actionCopy = action;
  textCopy = text;
  if (actionCopy && textCopy)
  {
    v9 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    [(LPCaptionButtonPresentationProperties *)v9 setAttributedText:textCopy];
    [(LPCaptionButtonPresentationProperties *)v9 setCallback:actionCopy];
    [(LPCaptionButtonPresentationProperties *)v9 setType:type];
    v10 = [(LPLinkView *)self _computeCollapsedButtonPropertiesForAttributedString:textCopy];
    [(LPCaptionButtonPresentationProperties *)v9 setCollapsedButton:v10];

    [(LPLinkView *)self _addCaptionButton:v9];
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }

  else
  {
    [(LPLinkView *)self _removeCaptionButtonWithType:type];
  }
}

- (void)_setButtonActions:(id)actions
{
  v23 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v5 = actionsCopy;
  if (actionsCopy && [actionsCopy count])
  {
    v6 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    [(LPCaptionButtonPresentationProperties *)v6 setActions:v5];
    [(LPCaptionButtonPresentationProperties *)v6 setType:1];
    [(LPCaptionButtonPresentationProperties *)v6 setCallback:&__block_literal_global_99];
    if ([v5 count] < 2)
    {
      actions = [(LPCaptionButtonPresentationProperties *)v6 actions];
      firstObject = [actions firstObject];
      handler = [firstObject handler];
      [(LPCaptionButtonPresentationProperties *)v6 setCallback:handler];

LABEL_27:
      [(LPLinkView *)self _addCaptionButton:v6];
      [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];

      goto LABEL_28;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    actions2 = [(LPCaptionButtonPresentationProperties *)v6 actions];
    v8 = [actions2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(actions2);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          if ((v9 & 1) != 0 || [*(*(&v18 + 1) + 8 * v12) isHeader])
          {
            [v13 setSelected:0];
          }

          else if ([v13 isSelected])
          {
            v9 = 1;
          }

          else
          {
            if (!v10)
            {
              v10 = v13;
            }

            v9 = 0;
          }

          ++v12;
        }

        while (v8 != v12);
        v14 = [actions2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v8 = v14;
      }

      while (v14);

      if (v9)
      {
        goto LABEL_26;
      }
    }

    else
    {

      v10 = 0;
    }

    [v10 setSelected:1];
LABEL_26:

    goto LABEL_27;
  }

  [(LPLinkView *)self _removeCaptionButtonWithType:1];
LABEL_28:
}

- (void)_setSecondaryButtonAction:(id)action
{
  v10[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (actionCopy)
  {
    v5 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    v10[0] = actionCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(LPCaptionButtonPresentationProperties *)v5 setActions:v6];

    [(LPCaptionButtonPresentationProperties *)v5 setType:1];
    handler = [actionCopy handler];
    [(LPCaptionButtonPresentationProperties *)v5 setCallback:handler];

    objc_storeStrong(&self->_secondaryCaptionButton, v5);
    [(LPConcretePresentationProperties *)self->_properties setSecondaryCaptionButton:v5];
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }

  else
  {
    secondaryCaptionButton = self->_secondaryCaptionButton;
    self->_secondaryCaptionButton = 0;

    [(LPConcretePresentationProperties *)self->_properties setSecondaryCaptionButton:0];
    captionBar = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    [captionBar setSecondaryButton:0];
  }
}

- (id)_computeCollapsedButtonPropertiesForAttributedString:(id)string
{
  stringCopy = string;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = &unk_1AE9D67E1;
  v4 = [stringCopy length];
  v5 = *MEMORY[0x1E69DB5F8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__LPLinkView__computeCollapsedButtonPropertiesForAttributedString___block_invoke;
  v9[3] = &unk_1E7A36FF0;
  v9[4] = &v16;
  v9[5] = &v10;
  [stringCopy enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v9}];
  if (v17[5])
  {
    v6 = objc_alloc_init(LPCaptionButtonCollapsedPresentationProperties);
    v7 = [stringCopy attributedSubstringFromRange:{v11[4], v11[5]}];
    [(LPCaptionButtonCollapsedPresentationProperties *)v6 setAttributedText:v7];

    [(LPCaptionButtonCollapsedPresentationProperties *)v6 setLayoutRatioThreshold:1.0];
    [(LPCaptionButtonCollapsedPresentationProperties *)v6 setShouldCollapseWhenCompressed:1];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return v6;
}

void __67__LPLinkView__computeCollapsedButtonPropertiesForAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v17 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v17;
    v10 = [v9 image];

    if (v10)
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      if (v12)
      {
        *(v11 + 40) = 0;

        *a5 = 1;
      }

      else
      {
        v13 = [v9 image];
        v14 = *(*(a1 + 32) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v16 = *(*(a1 + 40) + 8);
        *(v16 + 32) = a3;
        *(v16 + 40) = a4;
      }
    }
  }
}

- (void)_setOverrideSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v4 = [subtitleCopy copy];
  overrideSubtitle = self->_overrideSubtitle;
  self->_overrideSubtitle = v4;

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (CGRect)_rectForCaptionButtonType:(int64_t)type
{
  captionButton = [(LPConcretePresentationProperties *)self->_properties captionButton];
  type = [captionButton type];

  if (type == type)
  {
    captionBar = [(LPLinkViewComponents *)self->_components captionBar];
    button = [captionBar button];
  }

  else
  {
    captionTextButton = [(LPConcretePresentationProperties *)self->_properties captionTextButton];
    type2 = [captionTextButton type];

    if (type2 != type)
    {
      v11 = 0;
      goto LABEL_7;
    }

    captionBar = [(LPLinkViewComponents *)self->_components captionBar];
    button = [captionBar subtitleButton];
  }

  v11 = button;

LABEL_7:
  [v11 bounds];
  [v11 convertRect:self toView:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)_invalidatePresentationProperties
{
  self->_presentationPropertyState = -1;
  overrideURLFromProperties = self->_overrideURLFromProperties;
  self->_overrideURLFromProperties = 0;
}

- (void)_invalidatePresentationPropertiesAndLayout
{
  [(LPLinkView *)self _invalidatePresentationProperties];

  [(LPLinkView *)self _invalidateLayout];
}

- (void)_updateMetadataIsComplete
{
  if (self->_mayReceiveAdditionalMetadata || self->_asynchronouslyLoadingMetadataFields)
  {
    self->_metadataIsComplete = 0;
  }

  else
  {
    metadataIsComplete = self->_metadataIsComplete;
    _isDeferringAsynchronousLoads = [(LPLinkMetadata *)self->_metadata _isDeferringAsynchronousLoads];
    self->_metadataIsComplete = !_isDeferringAsynchronousLoads;
    if (!metadataIsComplete && !_isDeferringAsynchronousLoads)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained _linkViewMetadataDidBecomeComplete:self];
      }
    }
  }
}

- (void)_computePresentationPropertiesFromMetadataIfNeeded
{
  if (self->_usesComputedPresentationProperties && self->_presentationPropertyState)
  {
    v11 = objc_alloc_init(LPLinkMetadataPresentationTransformer);
    metadata = self->_metadata;
    if (metadata)
    {
      _flattenedMetadata = [(LPLinkView *)self _flattenedMetadata];
    }

    else
    {
      _flattenedMetadata = 0;
    }

    [(LPLinkMetadataPresentationTransformer *)v11 setMetadata:_flattenedMetadata];
    if (metadata)
    {
    }

    [(LPLinkMetadataPresentationTransformer *)v11 setURL:self->_URL];
    [(LPLinkMetadataPresentationTransformer *)v11 setComplete:self->_metadataIsComplete];
    [(LPLinkMetadataPresentationTransformer *)v11 setAllowsTapToLoad:self->_allowsTapToLoad];
    [(LPLinkMetadataPresentationTransformer *)v11 setPreferredSizeClass:self->_preferredSizeClass];
    [(LPLinkMetadataPresentationTransformer *)v11 setSizeClassParameters:self->_sizeClassParameters];
    [(LPLinkMetadataPresentationTransformer *)v11 setSourceBundleIdentifier:self->_sourceBundleIdentifier];
    [(UIView *)self _lp_backingScaleFactor];
    [(LPLinkMetadataPresentationTransformer *)v11 setScaleFactor:?];
    [(LPLinkMetadataPresentationTransformer *)v11 setAllowsTapping:!self->_disableTapGesture];
    v5 = !self->_disablePlayback && !self->_disablePlaybackControls;
    [(LPLinkMetadataPresentationTransformer *)v11 setAllowsPlayback:v5];
    [(LPLinkMetadataPresentationTransformer *)v11 setAllowsPlaybackControls:!self->_disablePlaybackControls];
    [(LPLinkMetadataPresentationTransformer *)v11 setSourceContextIcon:self->_lastResortIcon];
    [(LPLinkMetadataPresentationTransformer *)v11 setHasOverriddenBackgroundColor:self->_overrideBackgroundColor != 0];
    [(LPLinkMetadataPresentationTransformer *)v11 setUsesInferredAppearanceWithOverriddenBackgroundColor:self->_usesInferredAppearanceWithOverriddenBackgroundColor];
    [(LPLinkMetadataPresentationTransformer *)v11 setNeedsDominantBackgroundColor:self->_needsDominantBackgroundColor];
    [(LPLinkMetadataPresentationTransformer *)v11 setCollaborative:self->_collaborative];
    [(LPLinkMetadataPresentationTransformer *)v11 setInComposeContext:self->_inComposeContext];
    [(LPLinkMetadataPresentationTransformer *)v11 setInSenderContext:self->_inSenderContext];
    [(LPLinkMetadataPresentationTransformer *)v11 setBytesLoaded:self->_bytesLoaded];
    [(LPLinkMetadataPresentationTransformer *)v11 setSharedObjectDownloadState:self->_sharedObjectDownloadState];
    [(LPLinkMetadataPresentationTransformer *)v11 setTransferIndicatorDirection:self->_transferIndicatorDirection];
    actions = [(LPCaptionButtonPresentationProperties *)self->_captionButton actions];
    -[LPLinkMetadataPresentationTransformer setHasButtonActions:](v11, "setHasButtonActions:", [actions count] != 0);

    [(LPLinkMetadataPresentationTransformer *)v11 setHasButton:self->_captionButton != 0];
    [(LPLinkMetadataPresentationTransformer *)v11 setMediaOverlayIcon:self->_mediaOverlayIcon];
    _lp_appearance = [(UIView *)self _lp_appearance];
    [(LPLinkMetadataPresentationTransformer *)v11 setEffectiveAppearance:_lp_appearance];

    [(LPLinkMetadataPresentationTransformer *)v11 setIsSolariumEnabled:[LPSettings solariumIsEnabledForView:self]];
    traitCollection = [(LPLinkView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [(LPLinkMetadataPresentationTransformer *)v11 setPreferredContentSizeCategory:preferredContentSizeCategory];

    self->_effectiveSizeClass = [(LPLinkMetadataPresentationTransformer *)v11 effectiveSizeClass];
    presentationProperties = [(LPLinkMetadataPresentationTransformer *)v11 presentationProperties];
    [(LPLinkView *)self _setPresentationPropertiesInternal:presentationProperties];
  }
}

- (BOOL)_useProgressSpinner
{
  captionBar = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  leadingIcon = [captionBar leadingIcon];
  if (!leadingIcon)
  {
    goto LABEL_4;
  }

  captionBar2 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  leadingIcon2 = [captionBar2 leadingIcon];
  if ([leadingIcon2 _isFallbackIcon])
  {
    v14 = captionBar2;
LABEL_4:
    captionBar3 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    trailingIcon = [captionBar3 trailingIcon];
    if (trailingIcon)
    {
      captionBar4 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
      trailingIcon2 = [captionBar4 trailingIcon];
      v11 = [trailingIcon2 _isFallbackIcon] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    captionBar2 = v14;
    if (!leadingIcon)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:

LABEL_10:
  if (![(LPWebLinkPresentationProperties *)self->_properties isPreliminary]|| (v11 & 1) != 0)
  {
    return 0;
  }

  effectiveSizeClass = self->_effectiveSizeClass;

  return sizeClassAllowsProgressSpinner(effectiveSizeClass);
}

- (void)_setPresentationPropertiesInternal:(id)internal
{
  internalCopy = internal;
  presentationPropertyState = self->_presentationPropertyState;
  self->_presentationPropertyState = 0;
  v5 = [[LPConcretePresentationPropertiesParameters alloc] initWithUsesComputedPresentationProperties:self->_usesComputedPresentationProperties inComposeContext:self->_inComposeContext inSenderContext:self->_inSenderContext allowsTapping:!self->_disableTapGesture effectiveSizeClass:self->_effectiveSizeClass overrideSubtitleButtonColor:self->_overrideSubtitleButtonColor overrideActionButtonColor:self->_overrideActionButtonColor overrideSubtitle:self->_overrideSubtitle captionButton:self->_captionButton captionTextButton:self->_captionTextButton secondaryCaptionButton:self->_secondaryCaptionButton];
  v6 = [[LPConcretePresentationProperties alloc] initWithParameters:v5 properties:internalCopy];
  objc_storeStrong(&self->_properties, v6);
  overrideURL = [(LPWebLinkPresentationProperties *)self->_properties overrideURL];

  if (overrideURL)
  {
    overrideURL2 = [(LPWebLinkPresentationProperties *)self->_properties overrideURL];
    overrideURLFromProperties = self->_overrideURLFromProperties;
    self->_overrideURLFromProperties = overrideURL2;
  }

  if (presentationPropertyState == 1)
  {
    ++self->_suppressNeedsResizeCount;
  }

  if (!self->_theme || self->_sharedObjectDownloadState != 1)
  {
    [(LPLinkView *)self themeParametersDidChange];
  }

  if (presentationPropertyState != 1)
  {
    self->_shouldAnimateDuringNextBuild = self->_hasEverBuilt;
  }

  [(LPLinkView *)self _updateEffectiveAppearanceTraitsIfNeeded];
  [(LPLinkView *)self _rebuildEntireView];
  if (presentationPropertyState == 1)
  {
    --self->_suppressNeedsResizeCount;
  }
}

- (UIColor)_specializedBackgroundColor
{
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  properties = self->_properties;
  mediaImage = [(LPTheme *)self->_theme mediaImage];
  [mediaImage darkeningAmount];
  v5 = presentationOverrideBackgroundColorForProperties(properties);

  return v5;
}

- (int64_t)_style
{
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  properties = self->_properties;

  return [(LPWebLinkPresentationProperties *)properties style];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = LPLinkView;
  [(LPLinkView *)&v4 layoutSubviews];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__LPLinkView_layoutSubviews__block_invoke;
  v3[3] = &unk_1E7A35450;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(LPLinkView *)self _invalidateLayout];
  }
}

- (void)_setTextSafeAreaInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_textSafeAreaInset.top), vceqq_f64(v4, *&self->_textSafeAreaInset.bottom)))) & 1) == 0)
  {
    self->_textSafeAreaInset = inset;
    [(LPLinkView *)self _invalidateLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  if (+[LPApplicationCompatibilityQuirks supportsLPLinkViewAutolayout])
  {
    ++self->_suppressNeedsResizeCount;
    [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
    v12.receiver = self;
    v12.super_class = LPLinkView;
    [(LPLinkView *)&v12 intrinsicContentSize];
    v4 = v3;
    v6 = v5;
    --self->_suppressNeedsResizeCount;
  }

  else
  {
    maximumWidth = [(LPTheme *)self->_theme maximumWidth];
    [maximumWidth value];
    [(LPLinkView *)self sizeThatFits:?];
    v4 = v8;
    v6 = v9;
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v27 = *MEMORY[0x1E69E9840];
  ++self->_suppressNeedsResizeCount;
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  maximumWidth = [(LPTheme *)self->_theme maximumWidth];
  [maximumWidth value];
  v8 = fmin(width, v7);

  v9 = floor(v8);
  [(LPLinkView *)self _layoutLinkViewForSize:0 applyingLayout:v9 - (self->_contentInset.left + self->_contentInset.right), floor(height) - (self->_contentInset.top + self->_contentInset.bottom)];
  if (v10 > v9)
  {
    v19 = v11.f64[0];
    v20 = v10;
    v12 = LPLogChannelUI();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    v11.f64[0] = v19;
    v10 = v20;
    if (v13)
    {
      loggingID = self->_loggingID;
      *buf = 67109632;
      v22 = loggingID;
      v23 = 2048;
      v24 = v20;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(&dword_1AE886000, v12, OS_LOG_TYPE_DEFAULT, "LPLinkView<%d>: laid out to larger than maximum requested size (%g > %g)", buf, 0x1Cu);
      v11.f64[0] = v19;
      v10 = v20;
    }
  }

  v15 = *&self->_contentInset.top;
  v16 = *&self->_contentInset.bottom;
  --self->_suppressNeedsResizeCount;
  v11.f64[1] = v10;
  v17 = vsubq_f64(v11, vsubq_f64(vnegq_f64(v16), v15));
  v18 = v17.f64[1];
  result.height = v17.f64[0];
  result.width = v18;
  return result;
}

- (void)animateOutAndRemoveViews
{
  captionBar = [(LPLinkViewComponents *)self->_components captionBar];
  [captionBar animateOut];

  media = [(LPLinkViewComponents *)self->_components media];
  [media removeFromSuperview];

  quote = [(LPLinkViewComponents *)self->_components quote];
  [quote removeFromSuperview];

  domainNameIndicator = [(LPLinkViewComponents *)self->_components domainNameIndicator];
  [domainNameIndicator removeFromSuperview];

  mediaTopCaptionBar = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
  [mediaTopCaptionBar removeFromSuperview];

  mediaBottomCaptionBar = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
  [mediaBottomCaptionBar removeFromSuperview];

  backgroundImage = [(LPLinkViewComponents *)self->_components backgroundImage];
  [backgroundImage removeFromSuperview];

  contactsBadge = [(LPLinkViewComponents *)self->_components contactsBadge];
  [contactsBadge removeFromSuperview];

  progressSpinner = [(LPLinkViewComponents *)self->_components progressSpinner];
  [progressSpinner removeFromSuperview];

  textSearchingDimmingView = [(LPLinkViewComponents *)self->_components textSearchingDimmingView];
  [textSearchingDimmingView removeFromSuperview];

  textHighlightView = [(LPLinkViewComponents *)self->_components textHighlightView];
  [textHighlightView removeFromSuperview];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  v5 = [stopCopy valueForKey:@"associatedView"];
  [stopCopy setValue:0 forKey:@"associatedView"];
  layer = [v5 layer];
  v7 = [layer animationForKey:@"widthSpring"];
  if (v7 == stopCopy)
  {
  }

  else
  {
    layer2 = [v5 layer];
    v9 = [layer2 animationForKey:@"heightSpring"];

    if (v9 != stopCopy)
    {
      goto LABEL_6;
    }
  }

  layer3 = [(UIView *)self->_animationView layer];
  [layer3 removeAnimationForKey:@"widthSpring"];

  layer4 = [(UIView *)self->_animationView layer];
  [layer4 removeAnimationForKey:@"heightSpring"];

  [(LPLinkView *)self _setMaskEnabledForAnimation:0];
LABEL_6:
}

- (void)animateInViews
{
  layer = [(LPLinkView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  v36 = [MEMORY[0x1E69794A8] _lp_springWithMass:2.0 stiffness:100.0 damping:50.0];
  [v36 setKeyPath:@"opacity"];
  [v36 setFromValue:&unk_1F24835F0];
  [v36 setToValue:&unk_1F2483608];
  captionBar = [(LPLinkViewComponents *)self->_components captionBar];
  [captionBar animateInWithBaseAnimation:v36 currentTime:v4];

  mediaTopCaptionBar = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
  [mediaTopCaptionBar animateInWithBaseAnimation:v36 currentTime:v4];

  mediaBottomCaptionBar = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
  [mediaBottomCaptionBar animateInWithBaseAnimation:v36 currentTime:v4];

  media = [(LPLinkViewComponents *)self->_components media];
  layer2 = [media layer];
  v10 = v4 + 0.05;
  v11 = [v36 _lp_copyWithBeginTime:v4 + 0.05];
  [layer2 addAnimation:v11 forKey:@"fadeIn"];

  quote = [(LPLinkViewComponents *)self->_components quote];
  layer3 = [quote layer];
  v14 = v4 + 0.285;
  v15 = [v36 _lp_copyWithBeginTime:v14];
  [layer3 addAnimation:v15 forKey:@"fadeIn"];

  domainNameIndicator = [(LPLinkViewComponents *)self->_components domainNameIndicator];
  layer4 = [domainNameIndicator layer];
  v18 = [v36 _lp_copyWithBeginTime:v14];
  [layer4 addAnimation:v18 forKey:@"fadeIn"];

  backgroundImage = [(LPLinkViewComponents *)self->_components backgroundImage];
  layer5 = [backgroundImage layer];
  v21 = [v36 _lp_copyWithBeginTime:v14];
  [layer5 addAnimation:v21 forKey:@"fadeIn"];

  mediaBackground = [(LPLinkViewComponents *)self->_components mediaBackground];
  layer6 = [mediaBackground layer];
  [layer6 opacity];
  v25 = v24;

  if (v25 == 0.0)
  {
    mediaBackground2 = [(LPLinkViewComponents *)self->_components mediaBackground];
    layer7 = [mediaBackground2 layer];
    LODWORD(v28) = 1.0;
    [layer7 setOpacity:v28];

    mediaBackground3 = [(LPLinkViewComponents *)self->_components mediaBackground];
    layer8 = [mediaBackground3 layer];
    v31 = [v36 _lp_copyWithBeginTime:v10];
    [layer8 addAnimation:v31 forKey:@"fadeIn"];
  }

  contactsBadge = [(LPLinkViewComponents *)self->_components contactsBadge];
  layer9 = [contactsBadge layer];
  v34 = [v36 _lp_copyWithBeginTime:v14];
  [layer9 addAnimation:v34 forKey:@"fadeIn"];
}

- (void)_setMaskImage:(id)image
{
  imageCopy = image;
  animationMaskView = self->_animationMaskView;
  v9 = imageCopy;
  if (!animationMaskView)
  {
    v6 = [LPAnimationMaskView alloc];
    v7 = [(LPAnimationMaskView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = self->_animationMaskView;
    self->_animationMaskView = v7;

    animationMaskView = self->_animationMaskView;
    imageCopy = v9;
  }

  [(LPAnimationMaskView *)animationMaskView setImage:imageCopy];
  [(LPAnimationMaskView *)self->_animationMaskView setAnimationOrigin:self->_animationOrigin];
}

- (void)animateFromOldFrame:(CGRect)frame oldMediaBackgroundFrame:(CGRect)backgroundFrame oldCaptionBarView:(id)view
{
  height = backgroundFrame.size.height;
  width = backgroundFrame.size.width;
  y = backgroundFrame.origin.y;
  x = backgroundFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  viewCopy = view;
  [(LPLinkView *)self frame];
  v13 = v10 == v12;
  if (v9 != v14)
  {
    v13 = 0;
  }

  v129 = v13;
  v15 = [MEMORY[0x1E69794A8] _lp_springWithMass:2.0 stiffness:300.0 damping:37.0];
  [(LPLinkView *)self frame];
  if (v16 != v10)
  {
    v17 = [v15 copy];
    [v17 setKeyPath:@"bounds.size.width"];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [v17 setFromValue:v18];

    v19 = MEMORY[0x1E696AD98];
    [(LPLinkView *)self frame];
    v21 = [v19 numberWithDouble:v20];
    [v17 setToValue:v21];

    imageView = [(LPAnimationMaskView *)self->_animationMaskView imageView];
    layer = [imageView layer];
    [layer addAnimation:v17 forKey:@"maskWidthSpring"];

    v24 = [v15 copy];
    [v24 setDelegate:self];
    [v24 setRemovedOnCompletion:0];
    [v24 setValue:self->_animationView forKey:@"associatedView"];
    [v24 setKeyPath:@"bounds.size.width"];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [v24 setFromValue:v25];

    v26 = MEMORY[0x1E696AD98];
    [(LPLinkView *)self frame];
    v28 = [v26 numberWithDouble:v27];
    [v24 setToValue:v28];

    layer2 = [(UIView *)self->_animationView layer];
    [layer2 addAnimation:v24 forKey:@"widthSpring"];

    if ([(LPLinkView *)self _animationOrigin]== 1 && self->_needsMessagesTranscriptPushCounterAnimation)
    {
      v30 = [v17 copy];
      imageView2 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
      layer3 = [imageView2 layer];
      [layer3 addAnimation:v30 forKey:@"imageViewAnimation"];

      animation = [MEMORY[0x1E6979318] animation];
      [animation setDuration:0.3];
      v34 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [animation setTimingFunction:v34];

      [animation setKeyPath:@"transform.translation.x"];
      v35 = MEMORY[0x1E696AD98];
      [(LPLinkView *)self frame];
      v37 = [v35 numberWithDouble:v10 - v36];
      [animation setFromValue:v37];

      [animation setToValue:&unk_1F24835F0];
      layer4 = [(UIView *)self->_animationView layer];
      [layer4 addAnimation:animation forKey:@"horizontalSlide"];

      layer5 = [(LPAnimationMaskView *)self->_animationMaskView layer];
      [layer5 addAnimation:animation forKey:@"horizontalSlide"];
    }

    if (![(LPLinkView *)self _animationOrigin])
    {
      v40 = [v15 copy];
      [v40 setKeyPath:@"transform.translation.x"];
      v41 = MEMORY[0x1E696AD98];
      [(LPLinkView *)self frame];
      v43 = [v41 numberWithDouble:v42 - v10];
      [v40 setFromValue:v43];

      [v40 setToValue:&unk_1F24835F0];
      imageView3 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
      layer6 = [imageView3 layer];
      [layer6 addAnimation:v40 forKey:@"maskViewSpring"];
    }
  }

  mediaBackground = [(LPLinkViewComponents *)self->_components mediaBackground];
  if (mediaBackground && (v132.origin.x = x, v132.origin.y = y, v132.size.width = width, v132.size.height = height, IsNull = CGRectIsNull(v132), mediaBackground, !IsNull))
  {
    [(LPLinkView *)self frame];
    v55 = v54;
    mediaBackground2 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [mediaBackground2 frame];
    v49 = v55 - v56 - (v9 - height);
  }

  else
  {
    mediaBackground3 = [(LPLinkViewComponents *)self->_components mediaBackground];

    v49 = v9;
    if (!mediaBackground3)
    {
      goto LABEL_16;
    }

    [(LPLinkView *)self frame];
    v51 = v50;
    mediaBackground2 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [mediaBackground2 frame];
    v49 = v51 - v53;
  }

LABEL_16:
  [(LPLinkView *)self frame];
  if (v57 != v9)
  {
    v58 = [v15 copy];
    [v58 setKeyPath:@"bounds.size.height"];
    v59 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    [v58 setFromValue:v59];

    v60 = MEMORY[0x1E696AD98];
    [(LPLinkView *)self frame];
    v62 = [v60 numberWithDouble:v61];
    [v58 setToValue:v62];

    imageView4 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
    layer7 = [imageView4 layer];
    [layer7 addAnimation:v58 forKey:@"maskHeightSpring"];

    v65 = [v15 copy];
    [v65 setDelegate:self];
    [v65 setRemovedOnCompletion:0];
    [v65 setValue:self->_animationView forKey:@"associatedView"];
    [v65 setKeyPath:@"bounds.size.height"];
    v66 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    [v65 setFromValue:v66];

    v67 = MEMORY[0x1E696AD98];
    [(LPLinkView *)self frame];
    v69 = [v67 numberWithDouble:v68];
    [v65 setToValue:v69];

    layer8 = [(UIView *)self->_animationView layer];
    [layer8 addAnimation:v65 forKey:@"heightSpring"];

    v71 = [v15 copy];
    [v71 setKeyPath:@"transform.translation"];
    if ([(LPLinkView *)self _animationOrigin]== 1 && self->_needsMessagesTranscriptPushCounterAnimation)
    {
      v72 = objc_alloc_init(MEMORY[0x1E6979318]);
      [v72 setDuration:0.3];
      v73 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v72 setTimingFunction:v73];

      [v72 setKeyPath:@"transform.translation.y"];
      v74 = MEMORY[0x1E696AD98];
      [(LPLinkView *)self frame];
      v76 = [v74 numberWithDouble:v9 - v75];
      [v72 setFromValue:v76];

      [v72 setToValue:&unk_1F24835F0];
      layer9 = [(UIView *)self->_animationView layer];
      [layer9 addAnimation:v72 forKey:@"verticalSlide"];

      layer10 = [(LPAnimationMaskView *)self->_animationMaskView layer];
      [layer10 addAnimation:v72 forKey:@"verticalSlide"];
    }

    animationOrigin = self->_animationOrigin;
    if (animationOrigin == 2)
    {
      [(LPLinkView *)self frame];
      v80 = (v10 - v82) * 0.5;
    }

    else
    {
      v80 = 0.0;
      if (animationOrigin == 1)
      {
        [(LPLinkView *)self frame];
        v80 = v10 - v81;
      }
    }

    v83 = MEMORY[0x1E696B098];
    [(LPLinkView *)self frame];
    v85 = [v83 _lp_valueWithCGSize:{v80, v9 - v84}];
    [v71 setFromValue:v85];

    v86 = *MEMORY[0x1E695F060];
    v87 = *(MEMORY[0x1E695F060] + 8);
    v88 = [MEMORY[0x1E696B098] _lp_valueWithCGSize:{*MEMORY[0x1E695F060], v87}];
    [v71 setToValue:v88];

    captionBar = [(LPLinkViewComponents *)self->_components captionBar];
    layer11 = [captionBar layer];
    [layer11 addAnimation:v71 forKey:@"transformSpring"];

    domainNameIndicator = [(LPLinkViewComponents *)self->_components domainNameIndicator];
    layer12 = [domainNameIndicator layer];
    [layer12 addAnimation:v71 forKey:@"transformSpring"];

    v93 = [v71 copy];
    v94 = self->_animationOrigin;
    if (v94 == 2)
    {
      [(LPLinkView *)self frame];
      v95 = (v97 - v10) * 0.5;
    }

    else
    {
      v95 = 0.0;
      if (v94 == 1)
      {
        [(LPLinkView *)self frame];
        v95 = v96 - v10;
      }
    }

    v98 = MEMORY[0x1E696B098];
    [(LPLinkView *)self frame];
    v100 = [v98 _lp_valueWithCGSize:{v95, v99 - v9}];
    [v93 setToValue:v100];

    v101 = [MEMORY[0x1E696B098] _lp_valueWithCGSize:{v86, v87}];
    [v93 setFromValue:v101];

    layer13 = [viewCopy layer];
    [layer13 addAnimation:v93 forKey:@"previousCaptionBarPositionMaintaining"];

    v103 = [v71 copy];
    v104 = MEMORY[0x1E696B098];
    [(LPLinkView *)self frame];
    v106 = [v104 _lp_valueWithCGSize:{v80, v49 + v9 - v105}];
    [v103 setFromValue:v106];

    mediaBackground4 = [(LPLinkViewComponents *)self->_components mediaBackground];
    layer14 = [mediaBackground4 layer];
    [layer14 addAnimation:v103 forKey:@"captionBarAdjustedTransformSpring"];
  }

  if (![(LPLinkView *)self _animationOrigin])
  {
    v109 = [v15 copy];
    [v109 setKeyPath:@"transform.translation.y"];
    v110 = MEMORY[0x1E696AD98];
    [(LPLinkView *)self frame];
    v111 = [v110 numberWithDouble:v9 - v111];
    [v109 setFromValue:v111];

    [v109 setToValue:&unk_1F24835F0];
    imageView5 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
    layer15 = [imageView5 layer];
    [layer15 addAnimation:v109 forKey:@"maskViewYSpring"];

    layer16 = [(UIView *)self->_animationView layer];
    [layer16 addAnimation:v109 forKey:@"maskViewYSpring"];
  }

  v116 = [v15 copy];
  [v116 setKeyPath:@"transform.scale.x"];
  v117 = MEMORY[0x1E696AD98];
  mediaBackground5 = [(LPLinkViewComponents *)self->_components mediaBackground];
  [mediaBackground5 frame];
  v119 = [v117 numberWithDouble:v10 / v119];
  [v116 setFromValue:v119];

  [v116 setToValue:&unk_1F2483608];
  mediaBackground6 = [(LPLinkViewComponents *)self->_components mediaBackground];
  layer17 = [mediaBackground6 layer];
  [layer17 addAnimation:v116 forKey:@"mediaScaleSpring"];

  v123 = [v15 copy];
  [v123 setKeyPath:@"transform.scale.y"];
  v124 = MEMORY[0x1E696AD98];
  [(LPLinkView *)self frame];
  v125 = [v124 numberWithDouble:v9 / v125];
  [v123 setFromValue:v125];

  [v123 setToValue:&unk_1F2483608];
  mediaBackground7 = [(LPLinkViewComponents *)self->_components mediaBackground];
  layer18 = [mediaBackground7 layer];
  [layer18 addAnimation:v123 forKey:@"mediaScaleYSpring"];

  if (!v129)
  {
    [(LPLinkView *)self _setMaskEnabledForAnimation:1];
  }
}

- (void)_setSuppressChatKitMask:(BOOL)mask
{
  maskCopy = mask;
  superview = [(LPLinkView *)self superview];
  NSClassFromString(&cfstr_Ckballoonview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    superview2 = [(LPLinkView *)self superview];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      superview3 = [(LPLinkView *)self superview];
      [superview3 setSuppressMask:maskCopy];
    }
  }
}

- (void)_updateMasking
{
  maskView = [(LPLinkView *)self maskView];

  if (self->_maskEnabled)
  {
    if (maskView)
    {
      return;
    }

    [(LPLinkView *)self _setSuppressChatKitMask:1];
  }

  else
  {
    maskEnabledForAnimation = self->_maskEnabledForAnimation;
    if (((maskView == 0) ^ maskEnabledForAnimation))
    {
      return;
    }

    [(LPLinkView *)self _setSuppressChatKitMask:self->_maskEnabledForAnimation];
    if (!maskEnabledForAnimation)
    {
      animationMaskView = 0;
      goto LABEL_9;
    }
  }

  animationMaskView = self->_animationMaskView;
LABEL_9:

  [(LPLinkView *)self setMaskView:animationMaskView];
}

- (void)animateBackgroundColor
{
  v4 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v4 setDuration:0.65];
  [v4 setKeyPath:@"backgroundColor"];
  [v4 setToValue:{-[UIColor CGColor](self->_backgroundColor, "CGColor")}];
  layer = [(UIView *)self->_animationView layer];
  [layer addAnimation:v4 forKey:@"backgroundColorTransition"];
}

- (BOOL)_layoutHeightDependsOnWidth
{
  if (+[LPApplicationCompatibilityQuirks supportsLPLinkViewAutolayout])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = LPLinkView;
  return [(LPLinkView *)&v4 _layoutHeightDependsOnWidth];
}

- (unint64_t)_axesForDerivingIntrinsicContentSizeFromLayoutSize
{
  if (+[LPApplicationCompatibilityQuirks supportsLPLinkViewAutolayout])
  {
    return 3;
  }

  v4.receiver = self;
  v4.super_class = LPLinkView;
  return [(LPLinkView *)&v4 _axesForDerivingIntrinsicContentSizeFromLayoutSize];
}

- (id)_createComponents
{
  v3 = objc_alloc_init(LPLinkViewComponents);
  if ([(LPLinkView *)self _useProgressSpinner]&& (sizeClassAllowsLargeProgressSpinner(self->_preferredSizeClass) & 1) != 0)
  {
    findInteractionEnabled = self->_findInteractionEnabled;
    _createProgressSpinner = [(LPLinkView *)self _createProgressSpinner];
    [(LPLinkViewComponents *)v3 setProgressSpinner:_createProgressSpinner];

    if (!findInteractionEnabled)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  captionBar = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  hasAnyContent = [captionBar hasAnyContent];

  hasMedia = [(LPConcretePresentationProperties *)self->_properties hasMedia];
  quotedText = [(LPWebLinkPresentationProperties *)self->_properties quotedText];

  if (quotedText)
  {
    v10 = 1;
  }

  else
  {
    v10 = hasMedia;
  }

  if (v10 == 1)
  {
    mediaTopCaptionBar = [(LPWebLinkPresentationProperties *)self->_properties mediaTopCaptionBar];
    hasAnyContent2 = [mediaTopCaptionBar hasAnyContent];

    mediaBottomCaptionBar = [(LPWebLinkPresentationProperties *)self->_properties mediaBottomCaptionBar];
    hasAnyContent3 = [mediaBottomCaptionBar hasAnyContent];
  }

  else
  {
    hasAnyContent2 = 0;
    hasAnyContent3 = 0;
  }

  domainNameForIndicator = [(LPWebLinkPresentationProperties *)self->_properties domainNameForIndicator];

  backgroundImage = [(LPWebLinkPresentationProperties *)self->_properties backgroundImage];

  v17 = [(NSArray *)self->_contactsForAttribution count];
  v32 = self->_findInteractionEnabled;
  if (hasAnyContent)
  {
    _createCaptionBar = [(LPLinkView *)self _createCaptionBar];
    [(LPLinkViewComponents *)v3 setCaptionBar:_createCaptionBar];

    if (!hasMedia)
    {
      goto LABEL_13;
    }
  }

  else if (!hasMedia)
  {
LABEL_13:
    v19 = 0;
    if (hasAnyContent2)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  _createMediaView = [(LPLinkView *)self _createMediaView];
  [(LPLinkViewComponents *)v3 setMedia:_createMediaView];

  v19 = 1;
  if (hasAnyContent2)
  {
LABEL_14:
    _createMediaTopCaptionBarView = [(LPLinkView *)self _createMediaTopCaptionBarView];
    [(LPLinkViewComponents *)v3 setMediaTopCaptionBar:_createMediaTopCaptionBarView];

    if ((hasAnyContent3 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    _createMediaBottomCaptionBarView = [(LPLinkView *)self _createMediaBottomCaptionBarView];
    [(LPLinkViewComponents *)v3 setMediaBottomCaptionBar:_createMediaBottomCaptionBarView];

    if (quotedText)
    {
      goto LABEL_16;
    }

LABEL_21:
    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (hasAnyContent3)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!quotedText)
  {
    goto LABEL_21;
  }

LABEL_16:
  _createQuotedTextView = [(LPLinkView *)self _createQuotedTextView];
  [(LPLinkViewComponents *)v3 setQuote:_createQuotedTextView];

LABEL_22:
  mediaBackground = [(LPLinkViewComponents *)self->_components mediaBackground];
  v25 = mediaBackground;
  if (!mediaBackground)
  {
    v25 = objc_alloc_init(LPBackgroundColorView);
  }

  [(LPLinkViewComponents *)v3 setMediaBackground:v25];
  if (!mediaBackground)
  {
  }

LABEL_27:
  if (domainNameForIndicator)
  {
    _createDomainNameIndicator = [(LPLinkView *)self _createDomainNameIndicator];
    [(LPLinkViewComponents *)v3 setDomainNameIndicator:_createDomainNameIndicator];
  }

  if (backgroundImage)
  {
    _createBackgroundImageView = [(LPLinkView *)self _createBackgroundImageView];
    [(LPLinkViewComponents *)v3 setBackgroundImage:_createBackgroundImageView];
  }

  if (!v17)
  {
    if (!v32)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  _createContactsBadgeView = [(LPLinkView *)self _createContactsBadgeView];
  [(LPLinkViewComponents *)v3 setContactsBadge:_createContactsBadgeView];

  if (v32)
  {
LABEL_35:
    _createTextSearchingDimmingView = [(LPLinkView *)self _createTextSearchingDimmingView];
    [(LPLinkViewComponents *)v3 setTextSearchingDimmingView:_createTextSearchingDimmingView];

    _createTextHighlightView = [(LPLinkView *)self _createTextHighlightView];
    [(LPLinkViewComponents *)v3 setTextHighlightView:_createTextHighlightView];
  }

LABEL_36:

  return v3;
}

- (id)_mediaBackgroundColor
{
  imageProperties = [(LPWebLinkPresentationProperties *)self->_properties imageProperties];
  backgroundColor = [imageProperties backgroundColor];

  if (backgroundColor)
  {
    imageProperties2 = [(LPWebLinkPresentationProperties *)self->_properties imageProperties];
    backgroundColor2 = [imageProperties2 backgroundColor];
  }

  else
  {
    overrideMediaBackgroundColor = self->_overrideMediaBackgroundColor;
    if (overrideMediaBackgroundColor || (overrideMediaBackgroundColor = self->_overrideBackgroundColor) != 0)
    {
      clearColor = overrideMediaBackgroundColor;
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
    }

    backgroundColor2 = clearColor;
  }

  return backgroundColor2;
}

- (void)_rebuildSubviewsWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  self->_needsRebuild = 0;
  if (animation)
  {
    [(LPLinkView *)self animateOutAndRemoveViews];
  }

  else
  {
    while (1)
    {
      subviews = [(UIView *)self->_contentView subviews];
      v8 = [subviews count];

      if (!v8)
      {
        break;
      }

      subviews2 = [(UIView *)self->_contentView subviews];
      lastObject = [subviews2 lastObject];
      [lastObject removeFromSuperview];
    }

    while (1)
    {
      mediaBackground = [(LPLinkViewComponents *)self->_components mediaBackground];
      subviews3 = [mediaBackground subviews];
      v11 = [subviews3 count];

      if (!v11)
      {
        break;
      }

      mediaBackground2 = [(LPLinkViewComponents *)self->_components mediaBackground];
      subviews4 = [mediaBackground2 subviews];
      lastObject2 = [subviews4 lastObject];
      [lastObject2 removeFromSuperview];
    }
  }

  [(LPLinkView *)self _uninstallTapGestureRecognizers];
  [(LPLinkView *)self _uninstallHighlightGestureRecognizers];
  [(LPLinkView *)self _updateCornerRadius];
  _shouldClipAnimationView = [(LPLinkView *)self _shouldClipAnimationView];
  layer = [(UIView *)self->_animationView layer];
  [layer setMasksToBounds:_shouldClipAnimationView];

  v72 = self->_components;
  componentsForSizing = self->_componentsForSizing;
  if (componentsForSizing)
  {
    _createComponents = componentsForSizing;
  }

  else
  {
    _createComponents = [(LPLinkView *)self _createComponents];
  }

  components = self->_components;
  self->_components = _createComponents;

  [(LPLinkView *)self _setEmphasizedTextExpression:self->_emphasizedTextExpression];
  backgroundImage = [(LPLinkViewComponents *)self->_components backgroundImage];

  if (backgroundImage)
  {
    contentView = self->_contentView;
    backgroundImage2 = [(LPLinkViewComponents *)self->_components backgroundImage];
    [(UIView *)contentView addSubview:backgroundImage2];
  }

  mediaBackground3 = [(LPLinkViewComponents *)self->_components mediaBackground];

  if (mediaBackground3)
  {
    if ([(LPWebLinkPresentationProperties *)self->_properties style]!= 15 && animationCopy)
    {
      mediaBackground4 = [(LPLinkViewComponents *)v72 mediaBackground];

      if (!mediaBackground4)
      {
        mediaBackground5 = [(LPLinkViewComponents *)self->_components mediaBackground];
        layer2 = [mediaBackground5 layer];
        [layer2 setOpacity:0.0];
      }
    }

    v22 = self->_contentView;
    mediaBackground6 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [(UIView *)v22 addSubview:mediaBackground6];
  }

  else
  {
    mediaBackground6 = [(LPLinkViewComponents *)v72 mediaBackground];
    [mediaBackground6 removeFromSuperview];
  }

  captionBar = [(LPLinkViewComponents *)self->_components captionBar];

  if (captionBar)
  {
    v25 = self->_contentView;
    captionBar2 = [(LPLinkViewComponents *)self->_components captionBar];
    [(UIView *)v25 addSubview:captionBar2];

    captionBar3 = [(LPLinkViewComponents *)self->_components captionBar];
    button = [captionBar3 button];
    [button addTarget:self action:sel__captionBarButtonPressed_];

    captionBar4 = [(LPLinkViewComponents *)self->_components captionBar];
    secondaryButton = [captionBar4 secondaryButton];
    [secondaryButton addTarget:self action:sel__secondaryCaptionBarButtonPressed_];
  }

  _sizeClassParameters = [(LPLinkView *)self _sizeClassParameters];
  [_sizeClassParameters minimumMediaCornerRadius];
  if (v32 == 0.0)
  {
    v37 = 0.0;
  }

  else
  {
    [(LPLinkView *)self _effectiveCornerRadius];
    v34 = v33;
    _sizeClassParameters2 = [(LPLinkView *)self _sizeClassParameters];
    [_sizeClassParameters2 minimumMediaCornerRadius];
    v37 = fmax(v34, v36);
  }

  mediaBackground7 = [(LPLinkViewComponents *)self->_components mediaBackground];

  if (mediaBackground7)
  {
    _mediaBackgroundColor = [(LPLinkView *)self _mediaBackgroundColor];
    mediaBackground8 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [mediaBackground8 setColor:_mediaBackgroundColor];

    if (v37 != 0.0)
    {
      mediaBackground9 = [(LPLinkViewComponents *)self->_components mediaBackground];
      [mediaBackground9 _lp_setCornerRadius:v37];
    }

    v42 = self->_contentView;
    mediaBackground10 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [(UIView *)v42 _lp_bringSubviewToFront:mediaBackground10];
  }

  media = [(LPLinkViewComponents *)self->_components media];

  if (media)
  {
    mediaBackground11 = [(LPLinkViewComponents *)self->_components mediaBackground];
    media2 = [(LPLinkViewComponents *)self->_components media];
    [mediaBackground11 addSubview:media2];
  }

  mediaTopCaptionBar = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];

  if (mediaTopCaptionBar)
  {
    v48 = self->_contentView;
    mediaTopCaptionBar2 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
    [(UIView *)v48 addSubview:mediaTopCaptionBar2];
  }

  mediaBottomCaptionBar = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];

  if (mediaBottomCaptionBar)
  {
    v51 = self->_contentView;
    mediaBottomCaptionBar2 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
    [(UIView *)v51 addSubview:mediaBottomCaptionBar2];
  }

  quote = [(LPLinkViewComponents *)self->_components quote];

  if (quote)
  {
    mediaBackground12 = [(LPLinkViewComponents *)self->_components mediaBackground];
    quote2 = [(LPLinkViewComponents *)self->_components quote];
    [mediaBackground12 addSubview:quote2];
  }

  domainNameIndicator = [(LPLinkViewComponents *)self->_components domainNameIndicator];

  if (domainNameIndicator)
  {
    v57 = self->_contentView;
    domainNameIndicator2 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
    [(UIView *)v57 addSubview:domainNameIndicator2];
  }

  contactsBadge = [(LPLinkViewComponents *)self->_components contactsBadge];

  if (contactsBadge)
  {
    v60 = self->_contentView;
    contactsBadge2 = [(LPLinkViewComponents *)self->_components contactsBadge];
    [(UIView *)v60 addSubview:contactsBadge2];
  }

  progressSpinner = [(LPLinkViewComponents *)self->_components progressSpinner];

  if (progressSpinner)
  {
    v63 = self->_contentView;
    progressSpinner2 = [(LPLinkViewComponents *)self->_components progressSpinner];
    [(UIView *)v63 addSubview:progressSpinner2];
  }

  textSearchingDimmingView = [(LPLinkViewComponents *)self->_components textSearchingDimmingView];

  if (textSearchingDimmingView)
  {
    v66 = self->_contentView;
    textSearchingDimmingView2 = [(LPLinkViewComponents *)self->_components textSearchingDimmingView];
    [(UIView *)v66 addSubview:textSearchingDimmingView2];
  }

  textHighlightView = [(LPLinkViewComponents *)self->_components textHighlightView];

  if (textHighlightView)
  {
    v69 = self->_contentView;
    textHighlightView2 = [(LPLinkViewComponents *)self->_components textHighlightView];
    [(UIView *)v69 addSubview:textHighlightView2];
  }

  if (animationCopy)
  {
    [(LPLinkView *)self animateInViews];
    [(LPLinkView *)self animateBackgroundColor];
  }

  [(UIView *)self->_animationView _lp_setBackgroundColor:self->_backgroundColor];
  [(LPLinkView *)self _rebuildGestureRecognizersIfNeeded];
  self->_hasEverBuilt = 1;
}

- (BOOL)_shouldUseAnimations
{
  if (self->_disableAnimations)
  {
    return 0;
  }

  else
  {
    return ![LPSettings disableAnimations:v2];
  }
}

- (void)_layoutLinkView
{
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  if (!self->_hasEverBuilt)
  {
    [(LPLinkView *)self _setupView];
  }

  [(LPLinkView *)self _updateCornerRadius];
  v15 = self->_hasEverBuilt && [(LPLinkView *)self _shouldUseAnimations]&& ([(UIView *)self->_animationView frame], v4 = v3, v6 = v5, v8 = v7, v10 = v9, [(LPLinkView *)self bounds], v53.origin.x = v11, v53.origin.y = v12, v53.size.width = v13, v53.size.height = v14, v52.origin.x = v4, v52.origin.y = v6, v52.size.width = v8, v52.size.height = v10, !CGRectEqualToRect(v52, v53)) && self->_shouldAnimateDuringNextBuild;
  mediaBackground = [(LPLinkViewComponents *)self->_components mediaBackground];
  if (mediaBackground)
  {
    v49 = mediaBackground;
    mediaBackground2 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [mediaBackground2 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    mediaBackground = v49;
  }

  else
  {
    v19 = *MEMORY[0x1E695F050];
    v21 = *(MEMORY[0x1E695F050] + 8);
    v23 = *(MEMORY[0x1E695F050] + 16);
    v25 = *(MEMORY[0x1E695F050] + 24);
  }

  if (v15)
  {
    captionBar = [(LPLinkViewComponents *)self->_components captionBar];
    componentsForSizing = self->_componentsForSizing;
    self->_componentsForSizing = 0;

    v50 = captionBar;
  }

  else if (self->_needsRebuild)
  {
    v50 = 0;
  }

  else
  {
    v50 = 0;
    if (self->_hasEverBuilt)
    {
      goto LABEL_18;
    }
  }

  [(LPLinkView *)self _rebuildSubviewsWithAnimation:v15];
  if (v50)
  {
    [(UIView *)self _lp_bringSubviewToFront:?];
  }

  else
  {
    v50 = 0;
  }

LABEL_18:
  if ([(LPLinkView *)self _shouldUseAnimations])
  {
    animationOrigin = self->_animationOrigin;
    v29 = 0.0;
    v30 = 0.5;
    if (animationOrigin == 2)
    {
      v29 = 0.5;
    }

    else
    {
      v30 = 1.0;
    }

    if (animationOrigin == 1)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = v29;
    }

    if (animationOrigin == 1)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = v30;
    }

    [(UIView *)self->_animationView setAnchorPoint:v31, v32, v30];
    [(LPAnimationMaskView *)self->_animationMaskView setAnchorPoint:v31, v32];
    media = [(LPLinkViewComponents *)self->_components media];
    [media setAnchorPoint:{v31, v32}];

    mediaBackground3 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [mediaBackground3 setAnchorPoint:{v31, v32}];
  }

  [(LPLinkView *)self bounds];
  [(UIView *)self->_contentView setFrame:v35 + self->_contentInset.left, v36 + self->_contentInset.top, v37 - (self->_contentInset.left + self->_contentInset.right), v38 - (self->_contentInset.top + self->_contentInset.bottom)];
  [(LPLinkView *)self bounds];
  [(UIVisualEffectView *)self->_blurView setFrame:?];
  [(UIView *)self->_animationView frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  [(LPLinkView *)self bounds];
  [(UIView *)self->_animationView setFrame:?];
  [(LPLinkView *)self bounds];
  [(LPAnimationMaskView *)self->_animationMaskView setFrame:?];
  [(UIView *)self->_contentView bounds];
  [(LPLinkView *)self _layoutLinkViewForSize:1 applyingLayout:v47, v48];
  if (v15)
  {
    [(LPLinkView *)self animateFromOldFrame:v50 oldMediaBackgroundFrame:v40 oldCaptionBarView:v42, v44, v46, v19, v21, v23, v25];
    self->_shouldAnimateDuringNextBuild = 0;
  }
}

- (void)_rebuildEntireView
{
  self->_needsRebuild = 1;
  componentsForSizing = self->_componentsForSizing;
  self->_componentsForSizing = 0;

  [(LPLinkView *)self _invalidateLayout];
}

- (void)_invalidateLayout
{
  [(LPLinkView *)self invalidateIntrinsicContentSize];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!self->_suppressNeedsResizeCount && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained linkViewNeedsResize:self];
  }

  if (!self->_usesDeferredLayout)
  {
    [(UIView *)self _lp_setNeedsLayout];
    [(LPLinkViewComponents *)self->_components applyToAllViews:&__block_literal_global_218];
  }
}

- (void)_setEmphasizedTextExpression:(id)expression
{
  expressionCopy = expression;
  objc_storeStrong(&self->_emphasizedTextExpression, expression);
  captionBar = [(LPLinkViewComponents *)self->_components captionBar];
  [captionBar setEmphasizedTextExpression:expressionCopy];

  mediaTopCaptionBar = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
  [mediaTopCaptionBar setEmphasizedTextExpression:expressionCopy];

  mediaBottomCaptionBar = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
  [mediaBottomCaptionBar setEmphasizedTextExpression:expressionCopy];

  quote = [(LPLinkViewComponents *)self->_components quote];
  [quote setEmphasizedTextExpression:expressionCopy];
}

- (id)_createProgressSpinner
{
  v3 = [LPIndeterminateProgressSpinnerView alloc];
  progressSpinner = [(LPTheme *)self->_theme progressSpinner];
  progressSpinner2 = [(LPWebLinkPresentationProperties *)self->_properties progressSpinner];
  v6 = [(LPIndeterminateProgressSpinnerView *)v3 initWithHost:self style:progressSpinner properties:progressSpinner2];

  return v6;
}

- (id)_createCaptionBar
{
  v3 = [LPCaptionBarView alloc];
  captionBar = [(LPTheme *)self->_theme captionBar];
  captionBar2 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v6 = [(LPCaptionBarView *)v3 initWithHost:self style:captionBar presentationProperties:captionBar2 captionType:@"CaptionBar"];

  [(LPCaptionBarView *)v6 setEmphasizedTextExpression:self->_emphasizedTextExpression];
  [(LPCaptionBarView *)v6 setUseProgressSpinner:[(LPLinkView *)self _useProgressSpinner]];
  if (+[LPSettings showDebugIndicators])
  {
    blueColor = [MEMORY[0x1E69DC888] blueColor];
    cGColor = [blueColor CGColor];
    layer = [(LPCaptionBarView *)v6 layer];
    [layer setBorderColor:cGColor];

    layer2 = [(LPCaptionBarView *)v6 layer];
    [layer2 setBorderWidth:0.5];
  }

  if (!self->_disablePlayback && !self->_disablePlaybackControls)
  {
    inlinePlaybackInformation = [(LPWebLinkPresentationProperties *)self->_properties inlinePlaybackInformation];

    if (inlinePlaybackInformation)
    {
      inlinePlaybackInformation2 = [(LPWebLinkPresentationProperties *)self->_properties inlinePlaybackInformation];
      [(LPCaptionBarView *)v6 setPlaybackInformation:inlinePlaybackInformation2];
    }
  }

  if (self->_collaborationFooter)
  {
    v13 = [LPCollaborationFooterView alloc];
    collaborationFooter = self->_collaborationFooter;
    captionBar3 = [(LPTheme *)self->_theme captionBar];
    collaborationFooter = [captionBar3 collaborationFooter];
    v17 = [(LPCollaborationFooterView *)v13 initWithHost:self properties:collaborationFooter style:collaborationFooter];
    [(LPCaptionBarView *)v6 setCollaborationFooterView:v17];
  }

  return v6;
}

- (id)_createMediaTopCaptionBarView
{
  v3 = [LPCaptionBarView alloc];
  mediaTopCaptionBar = [(LPTheme *)self->_theme mediaTopCaptionBar];
  mediaTopCaptionBar2 = [(LPWebLinkPresentationProperties *)self->_properties mediaTopCaptionBar];
  v6 = [(LPCaptionBarView *)v3 initWithHost:self style:mediaTopCaptionBar presentationProperties:mediaTopCaptionBar2 captionType:@"MediaTopCaptionBar"];

  [(LPCaptionBarView *)v6 setEmphasizedTextExpression:self->_emphasizedTextExpression];
  quotedText = [(LPWebLinkPresentationProperties *)self->_properties quotedText];

  if (quotedText)
  {
    quotedText2 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];
    -[UIView _lp_setForceLTR:](v6, "_lp_setForceLTR:", [quotedText2 _lp_isLTRText]);
  }

  [(LPCaptionBarView *)v6 setUserInteractionEnabled:0];

  return v6;
}

- (id)_createMediaBottomCaptionBarView
{
  v3 = [LPCaptionBarView alloc];
  mediaBottomCaptionBar = [(LPTheme *)self->_theme mediaBottomCaptionBar];
  mediaBottomCaptionBar2 = [(LPWebLinkPresentationProperties *)self->_properties mediaBottomCaptionBar];
  v6 = [(LPCaptionBarView *)v3 initWithHost:self style:mediaBottomCaptionBar presentationProperties:mediaBottomCaptionBar2 captionType:@"MediaBottomCaptionBar"];

  [(LPCaptionBarView *)v6 setEmphasizedTextExpression:self->_emphasizedTextExpression];
  quotedText = [(LPWebLinkPresentationProperties *)self->_properties quotedText];

  if (quotedText)
  {
    quotedText2 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];
    -[UIView _lp_setForceLTR:](v6, "_lp_setForceLTR:", [quotedText2 _lp_isLTRText]);
  }

  [(LPCaptionBarView *)v6 setUserInteractionEnabled:0];

  return v6;
}

- (id)_createTapToLoadView
{
  v3 = [LPTapToLoadView alloc];
  tapToLoad = [(LPTheme *)self->_theme tapToLoad];
  v5 = [(LPTapToLoadView *)v3 initWithHost:self style:tapToLoad];

  [(LPTapToLoadView *)v5 setTapToLoadViewDelegate:self];

  return v5;
}

- (id)_videoViewConfiguration
{
  v3 = objc_alloc_init(LPVisualMediaViewConfiguration);
  [(LPVisualMediaViewConfiguration *)v3 setDisablePlayback:self->_disablePlayback];
  [(LPVisualMediaViewConfiguration *)v3 setDisablePlaybackControls:self->_disablePlaybackControls];
  [(LPVisualMediaViewConfiguration *)v3 setDisableAutoPlay:self->_disableAutoPlay];
  [(LPVisualMediaViewConfiguration *)v3 setAllowsLoadingMediaWithAutoPlayDisabled:self->_allowsLoadingMediaWithAutoPlayDisabled];
  _shouldApplyCornerRadius = [(LPLinkView *)self _shouldApplyCornerRadius];
  v5 = 28.0;
  if (_shouldApplyCornerRadius)
  {
    [(LPLinkView *)self _effectiveCornerRadius];
  }

  [(LPVisualMediaViewConfiguration *)v3 setFullScreenTransitionCornerRadius:v5];

  return v3;
}

- (id)_createMediaViewForProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy style] == 15)
  {
    _createTapToLoadView = [(LPLinkView *)self _createTapToLoadView];
    goto LABEL_12;
  }

  video = [propertiesCopy video];
  youTubeURL = [video youTubeURL];

  if (youTubeURL)
  {
    v8 = [LPYouTubeVideoView alloc];
    video2 = [propertiesCopy video];
    mediaVideo = [(LPTheme *)self->_theme mediaVideo];
    image = [propertiesCopy image];
    mediaImage = [(LPTheme *)self->_theme mediaImage];
    _videoViewConfiguration = [(LPLinkView *)self _videoViewConfiguration];
    v14 = [(LPYouTubeVideoView *)v8 initWithHost:self video:video2 style:mediaVideo posterFrame:image posterFrameStyle:mediaImage configuration:_videoViewConfiguration];
LABEL_9:
    _createTapToLoadView = v14;

LABEL_10:
LABEL_11:

    goto LABEL_12;
  }

  video3 = [propertiesCopy video];
  streamingURL = [video3 streamingURL];
  if (streamingURL)
  {

LABEL_8:
    v19 = [LPStreamingVideoView alloc];
    video2 = [propertiesCopy video];
    mediaVideo = [(LPTheme *)self->_theme mediaVideo];
    image = [propertiesCopy image];
    mediaImage = [(LPTheme *)self->_theme mediaImage];
    _videoViewConfiguration = [(LPLinkView *)self _videoViewConfiguration];
    v14 = [(LPStreamingVideoView *)v19 initWithHost:self video:video2 style:mediaVideo posterFrame:image posterFrameStyle:mediaImage configuration:_videoViewConfiguration];
    goto LABEL_9;
  }

  video4 = [propertiesCopy video];
  data = [video4 data];

  if (data)
  {
    goto LABEL_8;
  }

  image2 = [propertiesCopy image];
  _isFallbackIcon = [image2 _isFallbackIcon];

  if (_isFallbackIcon)
  {
    v23 = [LPImageView alloc];
    video2 = [propertiesCopy image];
    mediaVideo = [(LPTheme *)self->_theme placeholderImage];
    v24 = [(LPImageView *)v23 initWithHost:self image:video2 properties:0 style:mediaVideo];
    goto LABEL_20;
  }

  image3 = [propertiesCopy image];

  if (image3)
  {
    alternateImages = [propertiesCopy alternateImages];

    if (!alternateImages)
    {
      v30 = [LPImageView alloc];
      video2 = [propertiesCopy image];
      mediaVideo = [propertiesCopy imageProperties];
      image = [(LPTheme *)self->_theme mediaImage];
      _createTapToLoadView = [(LPImageView *)v30 initWithHost:self image:video2 properties:mediaVideo style:image];
      goto LABEL_10;
    }

    alternateImages2 = [propertiesCopy alternateImages];
    video2 = [alternateImages2 mutableCopy];

    image4 = [propertiesCopy image];
    [video2 insertObject:image4 atIndex:0];

    v29 = [LPMultipleImageView alloc];
    mediaVideo = [(LPTheme *)self->_theme mediaImage];
    v24 = [(LPMultipleImageView *)v29 initWithHost:self images:video2 style:mediaVideo];
LABEL_20:
    _createTapToLoadView = v24;
    goto LABEL_11;
  }

  _createTapToLoadView = 0;
LABEL_12:

  return _createTapToLoadView;
}

- (id)_createQuotedTextView
{
  v3 = [LPQuoteView alloc];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  quotedText = [(LPWebLinkPresentationProperties *)self->_properties quotedText];
  v6 = [v4 initWithString:quotedText];
  quotedText2 = [(LPTheme *)self->_theme quotedText];
  v8 = [(LPQuoteView *)v3 initWithHost:self text:v6 style:quotedText2];

  [(LPQuoteView *)v8 setEmphasizedTextExpression:self->_emphasizedTextExpression];
  quotedText3 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];
  -[UIView _lp_setForceLTR:](v8, "_lp_setForceLTR:", [quotedText3 _lp_isLTRText]);

  return v8;
}

- (id)_createDomainNameIndicator
{
  v3 = [LPDomainNameIndicator alloc];
  domainNameForIndicator = [(LPWebLinkPresentationProperties *)self->_properties domainNameForIndicator];
  v5 = [(LPDomainNameIndicator *)v3 initWithHost:self domainName:domainNameForIndicator theme:self->_theme];

  return v5;
}

- (id)_createBackgroundImageView
{
  if (self->_overrideBackgroundColor && (-[LPWebLinkPresentationProperties captionBar](self->_properties, "captionBar"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 usesBlurredBackground], v3, (v4 & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__LPLinkView__createBackgroundImageView__block_invoke;
    v11[3] = &unk_1E7A37038;
    v11[4] = self;
    v6 = __40__LPLinkView__createBackgroundImageView__block_invoke(v11);
    v7 = [LPImageView alloc];
    backgroundImageProperties = [(LPWebLinkPresentationProperties *)self->_properties backgroundImageProperties];
    backgroundImage = [(LPTheme *)self->_theme backgroundImage];
    v5 = [(LPImageView *)v7 initWithHost:self image:v6 properties:backgroundImageProperties style:backgroundImage];
  }

  return v5;
}

LPImage *__40__LPLinkView__createBackgroundImageView__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 504) backgroundImage];
  v3 = [*(*(a1 + 32) + 504) captionBar];
  v4 = [v3 usesBlurredBackground];

  if (v4)
  {
    if (*(*(a1 + 32) + 719) == 1)
    {
      v5 = mapsBackgroundImage(v2);
      v6 = [v2 _darkInterfaceAlternativeImage];

      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = [v2 _darkInterfaceAlternativeImage];
      v8 = mapsBackgroundImage(v7);
      [(LPImage *)v5 _setDarkInterfaceAlternativeImage:v8];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v10 = [v2 platformImage];
      v11 = [v10 _lp_CGImage];
      v12 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v12 scale];
      v7 = [v9 initWithCGImage:v11 scale:5 orientation:?];

      v5 = [[LPImage alloc] initWithPlatformImage:v7];
      v13 = [v2 _darkInterfaceAlternativeImage];

      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x1E69DCAB8]);
        v15 = [v2 _darkInterfaceAlternativeImage];
        v16 = [v15 platformImage];
        v17 = [v16 _lp_CGImage];
        v18 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v18 scale];
        v19 = [v14 initWithCGImage:v17 scale:5 orientation:?];

        v20 = [[LPImage alloc] initWithPlatformImage:v19];
        [(LPImage *)v5 _setDarkInterfaceAlternativeImage:v20];
      }
    }
  }

  else
  {
    v5 = v2;
  }

LABEL_9:

  return v5;
}

- (id)_createContactsBadgeView
{
  v3 = [LPContactsBadgeView alloc];
  contactsForAttribution = self->_contactsForAttribution;
  highlightedForAttribution = self->_highlightedForAttribution;
  contactsBadgeStyle = [(LPTheme *)self->_theme contactsBadgeStyle];
  v7 = [(LPContactsBadgeView *)v3 initWithHost:self contacts:contactsForAttribution highlighted:highlightedForAttribution style:contactsBadgeStyle];

  return v7;
}

- (id)_createTextSearchingDimmingView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD138]);
  [v2 setAlpha:0.0];

  return v2;
}

- (id)_createTextHighlightView
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E69DD0D0]);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __38__LPLinkView__createTextHighlightView__block_invoke;
  v8 = &unk_1E7A37060;
  objc_copyWeak(&v9, &location);
  v3 = [v2 initWithPreviewProvider:&v5];
  [v3 setHidden:{1, v5, v6, v7, v8}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

id __38__LPLinkView__createTextHighlightView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained targetedPreviewForHighlightedTextRange];

  return v2;
}

- (int64_t)componentView:(id)view allowedImageFilterForFilter:(int64_t)filter
{
  viewCopy = view;
  if (filter == 8 && ![(LPLinkView *)self _isUsingAppClipPresentation])
  {
    goto LABEL_5;
  }

  if ([(LPLinkView *)self _useLowMemoryImageFilters])
  {
    if ((filter & 0xFFFFFFFFFFFFFFFDLL) == 5)
    {
LABEL_5:
      filter = 3;
      goto LABEL_6;
    }

    if ((filter - 9) < 3)
    {
      filter = 1;
    }
  }

LABEL_6:

  return filter;
}

- (void)componentViewDidTapCaptionButton:(id)button buttonType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _linkView:self didTapCaptionButtonWithType:type];
  }
}

- (id)componentView:(id)view playerForAudio:(id)audio
{
  audioCopy = audio;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained _linkView:self playerForAudio:audioCopy], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [LPStreamingAudioPlayer playerWithAudio:audioCopy];
  }

  return v7;
}

- (id)downloadProgressForComponentView:(id)view
{
  v3 = [[LPLinkMetadataDownloadProgressTransformer alloc] initWithBytesLoaded:self->_bytesLoaded downloadState:self->_sharedObjectDownloadState metadata:self->_metadata];
  v4 = [(LPLinkMetadataDownloadProgressTransformer *)v3 downloadProgressForTransformer:v3];

  return v4;
}

- (CGSize)_layoutLinkViewForSize:(CGSize)size applyingLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = size.height;
  width = size.width;
  v7 = &OBJC_IVAR___LPLinkView__componentsForSizing;
  if (layout)
  {
    v7 = &OBJC_IVAR___LPLinkView__components;
  }

  _createComponents = *(&self->super.super.super.isa + *v7);
  if (!_createComponents)
  {
    _createComponents = [(LPLinkView *)self _createComponents];
    objc_storeStrong(&self->_componentsForSizing, _createComponents);
  }

  v289 = width;
  if (!layoutCopy)
  {
    if ([(LPWebLinkPresentationProperties *)self->_properties style]== 15)
    {
      tapToLoad = [(LPTheme *)self->_theme tapToLoad];
      width = [tapToLoad width];
      [width value];
      width = fmin(v11, width);
    }

    else if (self->_allowsSkinnyWidth)
    {
      media = [_createComponents media];

      if (media)
      {
        v324[0] = MEMORY[0x1E69E9820];
        v324[1] = 3221225472;
        v324[2] = __52__LPLinkView__layoutLinkViewForSize_applyingLayout___block_invoke;
        v324[3] = &unk_1E7A36CF8;
        v324[4] = self;
        if (__52__LPLinkView__layoutLinkViewForSize_applyingLayout___block_invoke(v324))
        {
          [(LPTheme *)self->_theme widthFractionForTallMedia];
          width = ceil(width * v13);
        }
      }
    }
  }

  captionBar = [_createComponents captionBar];
  v15 = *MEMORY[0x1E695F050];
  v16 = *(MEMORY[0x1E695F050] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v18 = *(MEMORY[0x1E695F050] + 24);

  r2_16 = v18;
  r2_24 = v17;
  v322 = v16;
  v323 = v15;
  if (captionBar)
  {
    top = self->_textSafeAreaInset.top;
    left = self->_textSafeAreaInset.left;
    bottom = self->_textSafeAreaInset.bottom;
    right = self->_textSafeAreaInset.right;
    captionBar2 = [_createComponents captionBar];
    [captionBar2 setTextSafeAreaInset:{top, left, bottom, right}];

    captionBar3 = [_createComponents captionBar];
    [captionBar3 sizeThatFits:{width, height}];
    r1 = v25;
    v27 = v26;

    if (self->_forceFlexibleWidth)
    {
      v28 = !layoutCopy;
    }

    else
    {
      style = [(LPWebLinkPresentationProperties *)self->_properties style];
      effectiveSizeClass = self->_effectiveSizeClass;
      quote = [_createComponents quote];
      media2 = [_createComponents media];
      v28 = shouldUseFlexibleWidth(style, effectiveSizeClass, quote != 0, media2 != 0) & !layoutCopy;
    }

    if (v28)
    {
      v34 = v27;
    }

    else
    {
      v34 = width;
    }

    v29 = height - r1;
    v295 = 0.0;
    v304 = 0.0;
    v305 = v34;
  }

  else
  {
    r1 = v18;
    v304 = v15;
    v305 = v17;
    v295 = v16;
    v29 = height;
  }

  quote2 = [_createComponents quote];

  if (quote2)
  {
    v36 = self->_textSafeAreaInset.top;
    v37 = self->_textSafeAreaInset.left;
    v38 = self->_textSafeAreaInset.bottom;
    v39 = self->_textSafeAreaInset.right;
    quote3 = [_createComponents quote];
    [quote3 setContentInset:{v36, v37, v38, v39}];

    quote4 = [_createComponents quote];
    [quote4 sizeThatFits:{width, v29}];
    v294 = v42;
    v44 = v43;

    [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters mediaFixedAspectRatio];
    if (v45 != 0.0)
    {
      [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters mediaFixedAspectRatio];
      v44 = width / v46;
    }

    v47 = fmin(v44, v29);
    if (layoutCopy)
    {
      media3 = [_createComponents media];

      if (!media3)
      {
        v47 = v29;
      }
    }

    v29 = v29 - v47;
    v49 = 0.0;
    rect = 0.0;
    v311 = width;
  }

  else
  {
    v47 = r2_16;
    v294 = r2_24;
    v311 = r2_24;
    rect = v322;
    v49 = v323;
  }

  r2 = v49;
  media4 = [_createComponents media];

  if (media4)
  {
    media5 = [_createComponents media];
    [media5 sizeThatFits:{width, v29}];
    v297 = v52;
    v54 = v53;

    [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters mediaFixedAspectRatio];
    if (v55 == 0.0)
    {
      if (layoutCopy)
      {
        v57 = v29;
      }

      else
      {
        v57 = v54;
      }
    }

    else
    {
      [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters mediaFixedAspectRatio];
      v57 = width / v56;
    }

    mediaTopCaptionBar = [_createComponents mediaTopCaptionBar];

    v299 = r2_24;
    v300 = r2_16;
    MinY = v322;
    v301 = v323;
    if (mediaTopCaptionBar)
    {
      v82 = self->_textSafeAreaInset.top;
      v83 = self->_textSafeAreaInset.left;
      v84 = self->_textSafeAreaInset.bottom;
      v85 = self->_textSafeAreaInset.right;
      mediaTopCaptionBar2 = [_createComponents mediaTopCaptionBar];
      [mediaTopCaptionBar2 setTextSafeAreaInset:{v82, v83, v84, v85}];

      mediaTopCaptionBar3 = [_createComponents mediaTopCaptionBar];
      [mediaTopCaptionBar3 sizeThatFits:{width, v57}];
      v89 = v88;

      v328.origin.x = 0.0;
      v301 = 0.0;
      v328.origin.y = 0.0;
      v328.size.width = width;
      v328.size.height = v57;
      MinY = CGRectGetMinY(v328);
      v299 = width;
      v300 = fmin(v89, v57);
    }

    domainNameIndicator = [_createComponents domainNameIndicator];

    v314 = r2_16;
    v316 = r2_24;
    v59 = v322;
    v312 = v323;
    if (domainNameIndicator)
    {
      domainNameIndicator2 = [_createComponents domainNameIndicator];
      [domainNameIndicator2 sizeThatFits:{width, v57}];
      v93 = v92;
      v95 = v94;

      v329.origin.x = 0.0;
      v329.origin.y = 0.0;
      v329.size.width = width;
      v329.size.height = v57;
      v59 = CGRectGetMinY(v329);
      _lp_isLTR = [(UIView *)self _lp_isLTR];
      v314 = fmin(v95, v57);
      v316 = fmin(v93, width);
      v97 = width - v316;
      if (_lp_isLTR)
      {
        v97 = 0.0;
      }

      v312 = v97;
    }

    mediaBottomCaptionBar = [_createComponents mediaBottomCaptionBar];

    if (mediaBottomCaptionBar)
    {
      v99 = self->_textSafeAreaInset.top;
      v100 = self->_textSafeAreaInset.left;
      v101 = self->_textSafeAreaInset.bottom;
      v102 = self->_textSafeAreaInset.right;
      mediaBottomCaptionBar2 = [_createComponents mediaBottomCaptionBar];
      [mediaBottomCaptionBar2 setTextSafeAreaInset:{v99, v100, v101, v102}];

      mediaBottomCaptionBar3 = [_createComponents mediaBottomCaptionBar];
      [mediaBottomCaptionBar3 sizeThatFits:{width, v57}];
      v106 = v105;

      v330.origin.x = 0.0;
      v293 = 0.0;
      v330.origin.y = 0.0;
      v330.size.width = width;
      v330.size.height = v57;
      v291 = width;
      v292 = fmin(v106, v57);
      v306 = CGRectGetMaxY(v330) - v292;
      v313 = width;
      v321 = 0.0;
      r2_8 = 0.0;
    }

    else
    {
      v321 = 0.0;
      v291 = r2_24;
      v292 = r2_16;
      v306 = v322;
      v293 = v323;
      r2_8 = 0.0;
      v313 = width;
    }
  }

  else
  {
    quote5 = [_createComponents quote];

    v57 = r2_16;
    v291 = r2_24;
    v292 = r2_16;
    v306 = v322;
    v293 = v323;
    v313 = r2_24;
    v314 = r2_16;
    v316 = r2_24;
    v59 = v322;
    v312 = v323;
    v299 = r2_24;
    v300 = r2_16;
    MinY = v322;
    v301 = v323;
    v297 = r2_24;
    v321 = v322;
    r2_8 = v323;
    if (quote5)
    {
      mediaTopCaptionBar4 = [_createComponents mediaTopCaptionBar];

      v299 = r2_24;
      v300 = r2_16;
      MinY = v322;
      v301 = v323;
      if (mediaTopCaptionBar4)
      {
        v61 = self->_textSafeAreaInset.top;
        v62 = self->_textSafeAreaInset.left;
        v63 = self->_textSafeAreaInset.bottom;
        v64 = self->_textSafeAreaInset.right;
        mediaTopCaptionBar5 = [_createComponents mediaTopCaptionBar];
        [mediaTopCaptionBar5 setTextSafeAreaInset:{v61, v62, v63, v64}];

        mediaTopCaptionBar6 = [_createComponents mediaTopCaptionBar];
        [mediaTopCaptionBar6 sizeThatFits:{v311, v47}];
        v68 = v67;

        v326.origin.x = r2;
        v326.origin.y = rect;
        v326.size.width = v311;
        v326.size.height = v47;
        MinY = CGRectGetMinY(v326);
        v299 = v311;
        v300 = fmin(v68, v47);
        v301 = r2;
      }

      mediaBottomCaptionBar4 = [_createComponents mediaBottomCaptionBar];

      if (mediaBottomCaptionBar4)
      {
        v70 = self->_textSafeAreaInset.top;
        v71 = self->_textSafeAreaInset.left;
        v72 = self->_textSafeAreaInset.bottom;
        v73 = self->_textSafeAreaInset.right;
        mediaBottomCaptionBar5 = [_createComponents mediaBottomCaptionBar];
        [mediaBottomCaptionBar5 setTextSafeAreaInset:{v70, v71, v72, v73}];

        mediaBottomCaptionBar6 = [_createComponents mediaBottomCaptionBar];
        [mediaBottomCaptionBar6 sizeThatFits:{v311, v47}];
        v77 = v76;

        v327.origin.x = r2;
        v327.origin.y = rect;
        v327.size.width = v311;
        v327.size.height = v47;
        v291 = v311;
        v292 = fmin(v77, v47);
        v293 = r2;
        v57 = r2_16;
        v314 = r2_16;
        v306 = CGRectGetMaxY(v327) - v292;
        v78 = r2_24;
        v316 = r2_24;
        v80 = v322;
        v79 = v323;
      }

      else
      {
        v57 = r2_16;
        v78 = r2_24;
        v291 = r2_24;
        v292 = r2_16;
        v80 = v322;
        v306 = v322;
        v79 = v323;
        v293 = v323;
        v314 = r2_16;
        v316 = r2_24;
      }

      v59 = v80;
      v312 = v79;
      v313 = v78;
      v297 = v78;
      v321 = v80;
      r2_8 = v79;
    }
  }

  progressSpinner = [_createComponents progressSpinner];

  v307 = r2_24;
  v308 = r2_16;
  if (progressSpinner)
  {
    progressSpinner2 = [_createComponents progressSpinner];
    [progressSpinner2 sizeThatFits:{v290, height}];
    v110 = v109;
    v112 = v111;

    v307 = v110;
    v323 = (v290 - v110) * 0.5;
    v308 = v112;
    v322 = (height - v112) * 0.5;
  }

  media6 = [_createComponents media];
  if (media6)
  {
    v114 = v47;

    v115 = rect;
  }

  else
  {
    domainNameIndicator3 = [_createComponents domainNameIndicator];

    v115 = rect;
    if (domainNameIndicator3)
    {
      v114 = v47;
      domainNameIndicator4 = [_createComponents domainNameIndicator];
      [domainNameIndicator4 sizeThatFits:{v316, v314}];
      v316 = v118;
      v314 = v119;

      _lp_isLTR2 = [(UIView *)self _lp_isLTR];
      v121 = width - v316;
      v59 = 0.0;
      if (_lp_isLTR2)
      {
        v121 = 0.0;
      }

      v312 = v121;
    }

    else
    {
      v114 = v47;
    }
  }

  media7 = [_createComponents media];

  if (media7)
  {
    v331.origin.x = r2_8;
    v331.origin.y = v321;
    v331.size.width = v313;
    v331.size.height = v57;
    MaxY = CGRectGetMaxY(v331);
  }

  else
  {
    MaxY = 0.0;
  }

  media8 = [_createComponents media];
  if (media8)
  {
  }

  else
  {
    domainNameIndicator5 = [_createComponents domainNameIndicator];

    if (domainNameIndicator5)
    {
      v332.origin.x = v312;
      v332.origin.y = v59;
      v332.size.width = v316;
      v332.size.height = v314;
      MaxY = CGRectGetMaxY(v332);
    }
  }

  quote6 = [_createComponents quote];

  if (quote6)
  {
    v333.origin.x = r2;
    v333.origin.y = MaxY;
    v333.size.width = v311;
    v333.size.height = v114;
    v127 = CGRectGetMaxY(v333);
  }

  else
  {
    v127 = MaxY;
    MaxY = v115;
  }

  captionBar4 = [_createComponents captionBar];

  v129 = v297;
  if (captionBar4)
  {
    v130 = v127;
  }

  else
  {
    v130 = v295;
  }

  v131 = v304;
  v132 = v305;
  recta = v130;
  v133 = r1;
  v134 = r2_8;
  v135 = v321;
  v136 = v57;
  v334 = CGRectUnion(*(&v130 - 1), *(&v129 - 2));
  v346.origin.x = r2;
  v346.origin.y = v115;
  v346.size.width = v294;
  v346.size.height = v114;
  v335 = CGRectUnion(v334, v346);
  v347.origin.y = v322;
  v347.origin.x = v323;
  v347.size.width = v307;
  v347.size.height = v308;
  v336 = CGRectUnion(v335, v347);
  v348.origin.x = v312;
  v348.origin.y = v59;
  v348.size.width = v316;
  v348.size.height = v314;
  v337 = CGRectUnion(v336, v348);
  v298 = v337.size.width;
  v137 = v337.size.height;
  v138 = [(LPWebLinkPresentationProperties *)self->_properties minimumHeight:v337.origin.x];
  if (v138)
  {
    minimumHeight = [(LPWebLinkPresentationProperties *)self->_properties minimumHeight];
    [minimumHeight doubleValue];
    v141 = v140;

    v142 = v137 < v141;
    v143 = v137;
    if (v142)
    {
      minimumHeight2 = [(LPWebLinkPresentationProperties *)self->_properties minimumHeight];
      [minimumHeight2 doubleValue];
      v143 = v145;
    }
  }

  else
  {
    v143 = v137;
  }

  quote7 = [_createComponents quote];

  v296 = v143;
  if (layoutCopy && v137 < height)
  {
    v147 = height - v137;
    if (!quote7)
    {
      v147 = v147 * 0.5;
    }

    v321 = v321 + v147;
    v59 = v59 + v147;
    MinY = MinY + v147;
    v306 = v306 + v147;
    recta = recta + v147;
    MaxY = MaxY + v147;
  }

  if (layoutCopy)
  {
    v338.origin.x = r2_8;
    v338.origin.y = v321;
    v338.size.width = v313;
    v338.size.height = v57;
    IsNull = CGRectIsNull(v338);
    v339.origin.x = r2;
    v339.origin.y = MaxY;
    v339.size.width = v311;
    v339.size.height = v114;
    v149 = CGRectIsNull(v339);
    if (IsNull || v149)
    {
      if (IsNull)
      {
        if (v149)
        {
          mediaBackground = [_createComponents mediaBackground];
          [mediaBackground setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        }

        else
        {
          mediaBackground = [_createComponents mediaBackground];
          [mediaBackground setFrame:{r2, MaxY, v311, v114}];
        }
      }

      else
      {
        mediaBackground = [_createComponents mediaBackground];
        [mediaBackground setFrame:{r2_8, v321, v313, v57}];
      }
    }

    else
    {
      v349.origin.x = r2;
      v340.origin.x = r2_8;
      v340.origin.y = v321;
      v340.size.width = v313;
      v340.size.height = v57;
      v349.origin.y = MaxY;
      v349.size.width = v311;
      v349.size.height = v114;
      v341 = CGRectUnion(v340, v349);
      x = v341.origin.x;
      y = v341.origin.y;
      v153 = v341.size.width;
      v154 = v341.size.height;
      mediaBackground = [_createComponents mediaBackground];
      [mediaBackground setFrame:{x, y, v153, v154}];
    }

    mediaBackground2 = [_createComponents mediaBackground];
    [mediaBackground2 convertRect:self->_contentView fromView:{r2_8, v321, v313, v57}];
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v163 = v162;
    media9 = [_createComponents media];
    [media9 setFrame:{v157, v159, v161, v163}];

    domainNameIndicator6 = [_createComponents domainNameIndicator];
    [domainNameIndicator6 setFrame:{v312, v59, v316, v314}];

    mediaTopCaptionBar7 = [_createComponents mediaTopCaptionBar];
    [mediaTopCaptionBar7 setFrame:{v301, MinY, v299, v300}];

    mediaBottomCaptionBar7 = [_createComponents mediaBottomCaptionBar];
    [mediaBottomCaptionBar7 setFrame:{v293, v306, v291, v292}];

    mediaBackground3 = [_createComponents mediaBackground];
    [mediaBackground3 convertRect:self->_contentView fromView:{r2, MaxY, v311, v114}];
    v170 = v169;
    v172 = v171;
    v174 = v173;
    v176 = v175;
    quote8 = [_createComponents quote];
    [quote8 setFrame:{v170, v172, v174, v176}];

    [(LPLinkView *)self bounds];
    [(LPLinkView *)self convertRect:self->_contentView toView:?];
    v179 = v178;
    v181 = v180;
    v183 = v182;
    v185 = v184;
    backgroundImage = [_createComponents backgroundImage];
    [backgroundImage setFrame:{v179, v181, v183, v185}];

    progressSpinner3 = [_createComponents progressSpinner];
    [progressSpinner3 setFrame:{v323, v322, v307, v308}];

    captionBar5 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    LODWORD(quote8) = [captionBar5 usesBlurredBackground];

    if (quote8)
    {
      backgroundImage2 = [_createComponents backgroundImage];
      [backgroundImage2 frame];
      v191 = v190;
      v193 = v192;
      v195 = v194;
      v197 = v196;

      backgroundImage3 = [_createComponents backgroundImage];
      [backgroundImage3 setFrame:{v191, v57 + v193, v195, v197}];
    }

    v200 = self->_contentInset.top;
    v199 = self->_contentInset.left;
    v201 = self->_contentInset.bottom;
    v202 = self->_contentInset.right;
    v342.origin.x = r2_8;
    v342.origin.y = v321;
    v342.size.width = v313;
    v342.size.height = v57;
    if (CGRectIsNull(v342))
    {
      v203 = v200;
    }

    else
    {
      v203 = 0.0;
    }

    v204 = self->_textSafeAreaInset.top;
    v205 = self->_textSafeAreaInset.left;
    v206 = self->_textSafeAreaInset.bottom;
    v207 = self->_textSafeAreaInset.right;
    captionBar6 = [_createComponents captionBar];
    [captionBar6 setTextSafeAreaInset:{v204, v205, v206, v207}];

    captionBar7 = [_createComponents captionBar];
    [captionBar7 setBackgroundOutset:{v203, v199, v201, v202}];

    captionBar8 = [_createComponents captionBar];
    [captionBar8 setFrame:{v304, recta, v305, r1}];

    animationView = self->_animationView;
    captionBar9 = [_createComponents captionBar];
    [captionBar9 frame];
    [(UIView *)animationView convertRect:self->_contentView fromView:v213 - v199, v214 - v203, v215 - (-v202 - v199), v216 - (-v201 - v203)];
    v218 = v217;

    textSearchingDimmingView = [_createComponents textSearchingDimmingView];

    if (textSearchingDimmingView)
    {
      [(UIView *)self->_contentView bounds];
      v221 = v220;
      v223 = v222;
      v225 = v224;
      v227 = v226;
      textSearchingDimmingView2 = [_createComponents textSearchingDimmingView];
      [textSearchingDimmingView2 setFrame:{v221, v223, v225, v227}];
    }

    textHighlightView = [_createComponents textHighlightView];

    if (textHighlightView)
    {
      [(LPLinkView *)self frameForHighlightedTextRange];
      v231 = v230;
      v233 = v232;
      v235 = v234;
      v237 = v236;
      textHighlightView2 = [_createComponents textHighlightView];
      [textHighlightView2 setFrame:{v231, v233, v235, v237}];
    }

    [(UIView *)self->_animationView bounds];
    v240 = v239;
    [(UIView *)self->_animationView bounds];
    v242 = v241;
    if (v218 == 0.0)
    {
      v243 = 0.0;
    }

    else
    {
      v243 = v240;
    }

    [(UIView *)self->_mediaHighlightView setFrame:0.0, 0.0, v243, v218];
    if (v242 - v218 == 0.0)
    {
      v244 = 0.0;
    }

    else
    {
      v244 = v240;
    }

    [(UIView *)self->_captionHighlightView setFrame:0.0, v218, v244, v242 - v218];
    contactsBadge = [_createComponents contactsBadge];

    if (contactsBadge)
    {
      contactsBadge2 = [_createComponents contactsBadge];
      [contactsBadge2 sizeThatFits:{r2_24, r2_16}];
      v248 = v247;
      v250 = v249;

      contactsBadgeStyle = [(LPTheme *)self->_theme contactsBadgeStyle];
      location = [contactsBadgeStyle location];

      if (location == 1)
      {
        captionBar10 = [_createComponents captionBar];
        [captionBar10 _lp_layoutIfNeeded];

        captionBar11 = [_createComponents captionBar];
        primaryIconView = [captionBar11 primaryIconView];
        captionBar12 = [_createComponents captionBar];
        primaryIconView2 = [captionBar12 primaryIconView];
        [primaryIconView2 bounds];
        [primaryIconView convertRect:self->_contentView toView:?];
        v259 = v258;
        v261 = v260;
        v263 = v262;
        v265 = v264;

        v343.origin.x = v259;
        v343.origin.y = v261;
        v343.size.width = v263;
        v343.size.height = v265;
        MaxX = CGRectGetMaxX(v343);
        v344.origin.x = v259;
        v344.origin.y = v261;
        v344.size.width = v263;
        v344.size.height = v265;
        v267 = CGRectGetMaxY(v344);
        contactsBadgeStyle2 = [(LPTheme *)self->_theme contactsBadgeStyle];
        [contactsBadgeStyle2 iconOffset];
        v270 = v269;

        contactsBadgeStyle3 = [(LPTheme *)self->_theme contactsBadgeStyle];
        [contactsBadgeStyle3 iconOffset];
        v272 = v267 - v250 * 0.5;
        MinX = MaxX - v248 * 0.5 + v270;
        v275 = v272 + v274;
      }

      else
      {
        mediaBackground4 = [_createComponents mediaBackground];
        [mediaBackground4 frame];
        v278 = v277;
        v280 = v279;
        v282 = v281;
        v284 = v283;

        _lp_isLTR3 = [(UIView *)self _lp_isLTR];
        v275 = *(MEMORY[0x1E695EFF8] + 8);
        if (_lp_isLTR3)
        {
          MinX = v282 - v248;
        }

        else
        {
          v345.origin.x = v278;
          v345.origin.y = v280;
          v345.size.width = v282;
          v345.size.height = v284;
          MinX = CGRectGetMinX(v345);
        }
      }

      contactsBadge3 = [_createComponents contactsBadge];
      [contactsBadge3 setFrame:{MinX, v275, v248, v250}];
    }

    if (self->_componentsNeedLayout)
    {
      self->_componentsNeedLayout = 0;
      [_createComponents applyToAllViews:&__block_literal_global_254];
    }
  }

  v288 = v296;
  v287 = v298;
  result.height = v288;
  result.width = v287;
  return result;
}

BOOL __52__LPLinkView__layoutLinkViewForSize_applyingLayout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  if (IsAccessibilityCategory)
  {
    return 0;
  }

  v6 = [*(*(a1 + 32) + 504) captionBar];
  v7 = [v6 buttonCaption];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [*(*(a1 + 32) + 504) captionButton];
    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v10 = [*(*(a1 + 32) + 504) captionTextButton];
      v8 = v10 != 0;
    }
  }

  v11 = [*(*(a1 + 32) + 504) style];
  v12 = [*(*(a1 + 32) + 504) quotedText];
  v13 = [*(*(a1 + 32) + 504) image];
  v14 = [*(*(a1 + 32) + 504) video];
  v5 = shouldUseSkinnyWidth(v11, v12, v13, v14, v8);

  return v5;
}

- (CGRect)_primaryCaptionBarFrame
{
  captionBar = [(LPLinkViewComponents *)self->_components captionBar];

  if (captionBar)
  {
    captionBar2 = [(LPLinkViewComponents *)self->_components captionBar];
    [captionBar2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    captionBar3 = [(LPLinkViewComponents *)self->_components captionBar];
    [(LPLinkView *)self convertRect:captionBar3 fromView:v6, v8, v10, v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = *MEMORY[0x1E695F050];
    v17 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v21 = *(MEMORY[0x1E695F050] + 24);
  }

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)_playable
{
  media = [(LPLinkViewComponents *)self->_components media];
  v4 = [media conformsToProtocol:&unk_1F2492198];

  components = self->_components;
  if (v4)
  {
    [(LPLinkViewComponents *)components media];
  }

  else
  {
    [(LPLinkViewComponents *)components captionBar];
  }
  v6 = ;
  playable = [v6 playable];

  return playable;
}

- (void)_playMedia
{
  _playable = [(LPLinkView *)self _playable];
  [_playable setPlaying:1];
}

- (void)_pauseMedia
{
  _playable = [(LPLinkView *)self _playable];
  [_playable setPlaying:0];
}

- (BOOL)_isPlayingMedia
{
  _playable = [(LPLinkView *)self _playable];
  isPlaying = [_playable isPlaying];

  return isPlaying;
}

- (BOOL)_hasMediaToPlay
{
  _playable = [(LPLinkView *)self _playable];
  v3 = _playable != 0;

  return v3;
}

- (void)_resetMediaPlayback
{
  _playable = [(LPLinkView *)self _playable];
  [_playable resetPlaybackState];
}

- (BOOL)_hasMedia
{
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  properties = self->_properties;

  return [(LPConcretePresentationProperties *)properties hasMedia];
}

- (id)_primaryMediaView
{
  media = [(LPLinkViewComponents *)self->_components media];
  v4 = media;
  if (media)
  {
    primaryIconView = media;
  }

  else
  {
    captionBar = [(LPLinkViewComponents *)self->_components captionBar];
    primaryIconView = [captionBar primaryIconView];
  }

  return primaryIconView;
}

- (void)componentViewDidChangeMediaState:(id)state
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__LPLinkView_componentViewDidChangeMediaState___block_invoke;
  v3[3] = &unk_1E7A35450;
  v3[4] = self;
  [(LPLinkView *)self _animateWithDuration:v3 animations:0.2];
}

void __47__LPLinkView_componentViewDidChangeMediaState___block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = [*(*(a1 + 32) + 856) contactsBadge];

  if (v2)
  {
    v5 = [*(v1[4] + 107) contactsBadge];
    v3 = [v1[4] _isPlayingMedia];
    if (v3)
    {
      v1 = [v1[4] _playable];
      v4 = [v1 hasMuteControl];
    }

    else
    {
      v4 = 0;
    }

    [v5 _lp_setOpacity:(v4 ^ 1u)];
    if (v3)
    {
    }
  }
}

- (id)layoutExclusionsForView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contactsBadge = [(LPLinkViewComponents *)self->_components contactsBadge];

  if (contactsBadge)
  {
    v7 = MEMORY[0x1E69DC728];
    contactsBadge2 = [(LPLinkViewComponents *)self->_components contactsBadge];
    contactsBadge3 = [(LPLinkViewComponents *)self->_components contactsBadge];
    [contactsBadge3 layoutExclusionRect];
    [contactsBadge2 convertRect:viewCopy toView:?];
    v10 = [v7 bezierPathWithRect:?];
    [v5 addObject:v10];
  }

  mediaTopCaptionBar = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];

  if (mediaTopCaptionBar)
  {
    mediaTopCaptionBar2 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
    v13 = [mediaTopCaptionBar2 layoutExclusionsForView:viewCopy];
    [v5 addObjectsFromArray:v13];
  }

  mediaBottomCaptionBar = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];

  if (mediaBottomCaptionBar)
  {
    mediaBottomCaptionBar2 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
    v16 = [mediaBottomCaptionBar2 layoutExclusionsForView:viewCopy];
    [v5 addObjectsFromArray:v16];
  }

  if ([v5 count])
  {
    v17 = v5;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)allowsVibrancyForComponentView:(id)view
{
  v7 = !self->_useCPURenderingForMaterials && self->_allowsVibrancy && (-[LPLinkView _themePlatform](self, "_themePlatform") != 5 || (-[LPLinkView traitCollection](self, "traitCollection"), v5 = v4 = view;

  return v7;
}

- (BOOL)allowsBadgingIconEdgeForComponentView:(id)view
{
  contactsBadgeStyle = [(LPTheme *)self->_theme contactsBadgeStyle];
  v5 = [contactsBadgeStyle location] != 1 || -[NSArray count](self->_contactsForAttribution, "count") == 0;

  return v5;
}

- (void)_installHighlightGestureRecognizers
{
  captionBar = [(LPLinkViewComponents *)self->_components captionBar];

  if (captionBar)
  {
    captionBar2 = [(LPLinkViewComponents *)self->_components captionBar];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }

  media = [(LPLinkViewComponents *)self->_components media];

  if (media)
  {
    media2 = [(LPLinkViewComponents *)self->_components media];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }

  domainNameIndicator = [(LPLinkViewComponents *)self->_components domainNameIndicator];

  if (domainNameIndicator)
  {
    domainNameIndicator2 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }

  quote = [(LPLinkViewComponents *)self->_components quote];

  if (quote)
  {
    quote2 = [(LPLinkViewComponents *)self->_components quote];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }

  progressSpinner = [(LPLinkViewComponents *)self->_components progressSpinner];

  if (progressSpinner)
  {
    progressSpinner2 = [(LPLinkViewComponents *)self->_components progressSpinner];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }
}

- (void)_installTapGestureRecognizers
{
  captionBar = [(LPLinkViewComponents *)self->_components captionBar];

  if (captionBar)
  {
    captionBar2 = [(LPLinkViewComponents *)self->_components captionBar];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }

  media = [(LPLinkViewComponents *)self->_components media];
  if (media)
  {
    v12 = media;
    media2 = [(LPLinkViewComponents *)self->_components media];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      media3 = [(LPLinkViewComponents *)self->_components media];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    media4 = [(LPLinkViewComponents *)self->_components media];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }

LABEL_8:
  domainNameIndicator = [(LPLinkViewComponents *)self->_components domainNameIndicator];

  if (domainNameIndicator)
  {
    domainNameIndicator2 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }

  quote = [(LPLinkViewComponents *)self->_components quote];

  if (quote)
  {
    quote2 = [(LPLinkViewComponents *)self->_components quote];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }

  progressSpinner = [(LPLinkViewComponents *)self->_components progressSpinner];

  if (progressSpinner)
  {
    progressSpinner2 = [(LPLinkViewComponents *)self->_components progressSpinner];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }
}

- (void)_uninstallHighlightGestureRecognizers
{
  for (i = self->_highlightGestureRecognizers; [(NSMutableArray *)i count]; i = self->_highlightGestureRecognizers)
  {
    lastObject = [(NSMutableArray *)self->_highlightGestureRecognizers lastObject];
    view = [lastObject view];
    [view removeGestureRecognizer:lastObject];

    [(NSMutableArray *)self->_highlightGestureRecognizers removeLastObject];
  }
}

- (void)_uninstallTapGestureRecognizers
{
  for (i = self->_tapGestureRecognizers; [(NSMutableArray *)i count]; i = self->_tapGestureRecognizers)
  {
    lastObject = [(NSMutableArray *)self->_tapGestureRecognizers lastObject];
    view = [lastObject view];
    [view removeGestureRecognizer:lastObject];

    [(NSMutableArray *)self->_tapGestureRecognizers removeLastObject];
  }
}

- (void)_rebuildGestureRecognizersIfNeeded
{
  v3 = [(NSMutableArray *)self->_highlightGestureRecognizers count];
  if ((([(LPLinkView *)self _disableHighlightGesture]^ (v3 != 0)) & 1) == 0)
  {
    if ([(LPLinkView *)self _disableHighlightGesture])
    {
      [(LPLinkView *)self _uninstallHighlightGestureRecognizers];
    }

    else
    {
      [(LPLinkView *)self _installHighlightGestureRecognizers];
    }
  }

  if (((([(NSMutableArray *)self->_tapGestureRecognizers count]!= 0) ^ self->_disableTapGesture) & 1) == 0)
  {
    if (self->_disableTapGesture)
    {
      [(LPLinkView *)self _uninstallTapGestureRecognizers];
    }

    else
    {
      [(LPLinkView *)self _installTapGestureRecognizers];
    }
  }

  contextMenuInteraction = self->_contextMenuInteraction;
  if ((([(LPLinkView *)self _disablePreviewGesture]^ (contextMenuInteraction != 0)) & 1) == 0)
  {
    if ([(LPLinkView *)self _disablePreviewGesture])
    {

      [(LPLinkView *)self _uninstallPreviewGestureRecognizer];
    }

    else
    {

      [(LPLinkView *)self _installPreviewGestureRecognizer];
    }
  }
}

- (void)_setDisableTapGesture:(BOOL)gesture
{
  if (self->_disableTapGesture != gesture)
  {
    self->_disableTapGesture = gesture;
    [(LPLinkView *)self _rebuildGestureRecognizersIfNeeded];
    [(UIView *)self->_animationView _lp_setHoverEffectEnabled:!self->_disableTapGesture];

    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setDisableHighlightGesture:(BOOL)gesture
{
  self->_hasSetDisableHighlightGesture = 1;
  if (self->_disableHighlightGesture != gesture)
  {
    self->_disableHighlightGesture = gesture;
    [(LPLinkView *)self _rebuildGestureRecognizersIfNeeded];
  }
}

- (BOOL)_disableHighlightGesture
{
  if (self->_hasSetDisableHighlightGesture)
  {
    v2 = &OBJC_IVAR___LPLinkView__disableHighlightGesture;
  }

  else
  {
    v2 = &OBJC_IVAR___LPLinkView__disableTapGesture;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)_setDisablePreviewGesture:(BOOL)gesture
{
  self->_hasSetDisablePreviewGesture = 1;
  if (self->_disablePreviewGesture != gesture)
  {
    self->_disablePreviewGesture = gesture;
    [(LPLinkView *)self _rebuildGestureRecognizersIfNeeded];
  }
}

- (BOOL)_disablePreviewGesture
{
  if (!sizeClassAllowsCornerRadius(self->_effectiveSizeClass) || [LPApplicationIdentification isKnownApplication:4])
  {
    return 1;
  }

  if (self->_hasSetDisablePreviewGesture)
  {
    v4 = &OBJC_IVAR___LPLinkView__disablePreviewGesture;
  }

  else
  {
    v4 = &OBJC_IVAR___LPLinkView__disableTapGesture;
  }

  return *(&self->super.super.super.isa + *v4);
}

- (void)_addTapRecognizerToView:(id)view forMedia:(BOOL)media
{
  mediaCopy = media;
  viewCopy = view;
  v6 = objc_alloc(MEMORY[0x1E69DD060]);
  v7 = &selRef__mediaTapRecognized_;
  if (!mediaCopy)
  {
    v7 = &selRef__captionTapRecognized_;
  }

  v8 = [v6 initWithTarget:self action:*v7];
  [v8 setDelegate:self];
  [v8 _setDelaysRecognitionForGreaterTapCounts:1];
  [v8 setName:@"LPLinkViewTap"];
  [viewCopy addGestureRecognizer:v8];
  [(NSMutableArray *)self->_tapGestureRecognizers addObject:v8];
}

- (void)_addHighlightRecognizerToView:(id)view forMedia:(BOOL)media
{
  mediaCopy = media;
  viewCopy = view;
  v6 = [LPHighlightGestureRecognizer alloc];
  v7 = &selRef__mediaHighlightRecognized_;
  if (!mediaCopy)
  {
    v7 = &selRef__captionHighlightRecognized_;
  }

  v8 = [(LPHighlightGestureRecognizer *)v6 initWithTarget:self action:*v7];
  [(LPHighlightGestureRecognizer *)v8 setDelegate:self];
  [(LPHighlightGestureRecognizer *)v8 setName:@"LPLinkViewHighlight"];
  [viewCopy addGestureRecognizer:v8];
  [(NSMutableArray *)self->_highlightGestureRecognizers addObject:v8];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (![(NSMutableArray *)self->_highlightGestureRecognizers containsObject:recognizerCopy])
  {
    goto LABEL_13;
  }

  view = [gestureRecognizerCopy view];
  media = [(LPLinkViewComponents *)self->_components media];
  if (![view isDescendantOfView:media])
  {
    goto LABEL_6;
  }

  media2 = [(LPLinkViewComponents *)self->_components media];
  if (![media2 shouldAllowHighlightToRecognizeSimultaneouslyWithGesture:gestureRecognizerCopy] || self->_disablePlayback)
  {

LABEL_6:
    goto LABEL_7;
  }

  disablePlaybackControls = self->_disablePlaybackControls;

  if (!disablePlaybackControls)
  {
    goto LABEL_13;
  }

LABEL_7:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    LOBYTE(v12) = 0;
    goto LABEL_14;
  }

  view2 = [gestureRecognizerCopy view];
  if ([view2 isDescendantOfView:self])
  {
    v12 = [(NSMutableArray *)self->_tapGestureRecognizers containsObject:gestureRecognizerCopy]^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

LABEL_14:
  return v12;
}

- (void)_cancelActiveHighlight
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_highlightGestureRecognizers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        [v6 setEnabled:{0, v7}];
        [v6 setEnabled:1];
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)_setHighlightMedia:(BOOL)media
{
  mediaCopy = media;
  captionBar = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  shouldHighlightIndependently = [captionBar shouldHighlightIndependently];

  if ((shouldHighlightIndependently & 1) == 0)
  {
    layer = [(UIView *)self->_captionHighlightView layer];
    [layer setHidden:!mediaCopy];
  }

  layer2 = [(UIView *)self->_mediaHighlightView layer];
  [layer2 setHidden:!mediaCopy];
}

- (void)_setHighlightCaption:(BOOL)caption
{
  captionCopy = caption;
  captionBar = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  shouldHighlightIndependently = [captionBar shouldHighlightIndependently];

  if ((shouldHighlightIndependently & 1) == 0)
  {
    layer = [(UIView *)self->_mediaHighlightView layer];
    [layer setHidden:!captionCopy];
  }

  layer2 = [(UIView *)self->_captionHighlightView layer];
  [layer2 setHidden:!captionCopy];
}

- (void)_mediaHighlightRecognized:(id)recognized
{
  recognizedCopy = recognized;
  state = [recognizedCopy state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  [(LPLinkView *)self _setHighlightMedia:v5];
LABEL_6:
}

- (void)_captionHighlightRecognized:(id)recognized
{
  recognizedCopy = recognized;
  state = [recognizedCopy state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  [(LPLinkView *)self _setHighlightCaption:v5];
LABEL_6:
}

- (void)_mediaTapRecognized:(id)recognized
{
  if (!self->_disableTapGesture)
  {
    [(LPLinkView *)self _openURL];
  }
}

- (void)_captionTapRecognized:(id)recognized
{
  if (!self->_disableTapGesture)
  {
    [(LPLinkView *)self _openURLAllowingSensitiveSchemes:self->_allowsOpeningSensitiveURLs allowingAssociatedApplications:1];
  }
}

- (void)_captionBarButtonPressed:(id)pressed
{
  captionButton = [(LPConcretePresentationProperties *)self->_properties captionButton];
  -[LPLinkView componentViewDidTapCaptionButton:buttonType:](self, "componentViewDidTapCaptionButton:buttonType:", self, [captionButton type]);

  captionButton2 = [(LPConcretePresentationProperties *)self->_properties captionButton];
  callback = [captionButton2 callback];

  if (callback)
  {
    captionButton3 = [(LPConcretePresentationProperties *)self->_properties captionButton];
    callback2 = [captionButton3 callback];
    callback2[2]();
  }

  else if (!self->_disableTapGesture)
  {
    allowsOpeningSensitiveURLs = self->_allowsOpeningSensitiveURLs;

    [(LPLinkView *)self _openURLAllowingSensitiveSchemes:allowsOpeningSensitiveURLs allowingAssociatedApplications:1];
  }
}

- (void)_secondaryCaptionBarButtonPressed:(id)pressed
{
  secondaryCaptionButton = [(LPConcretePresentationProperties *)self->_properties secondaryCaptionButton];
  -[LPLinkView componentViewDidTapCaptionButton:buttonType:](self, "componentViewDidTapCaptionButton:buttonType:", self, [secondaryCaptionButton type]);

  secondaryCaptionButton2 = [(LPConcretePresentationProperties *)self->_properties secondaryCaptionButton];
  callback = [secondaryCaptionButton2 callback];

  if (callback)
  {
    secondaryCaptionButton3 = [(LPConcretePresentationProperties *)self->_properties secondaryCaptionButton];
    callback2 = [secondaryCaptionButton3 callback];
    callback2[2]();
  }
}

- (void)tapToLoadViewWasTapped:(id)tapped
{
  if (![(NSHashTable *)self->_pendingMetadataProviders count])
  {
    v4 = [(NSURL *)self->_URL _lp_requestWithAttribution:1];
    [(LPLinkView *)self _fetchMetadataForRequest:?];
  }
}

- (BOOL)_isUsingAppClipPresentation
{
  if ([(LPWebLinkPresentationProperties *)self->_properties style]!= 41)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getCPSClipURLClass_softClass_0;
  v13 = getCPSClipURLClass_softClass_0;
  if (!getCPSClipURLClass_softClass_0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getCPSClipURLClass_block_invoke_0;
    v9[3] = &unk_1E7A35518;
    v9[4] = &v10;
    __getCPSClipURLClass_block_invoke_0(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  if (![v3 isSupported])
  {
    return 0;
  }

  associatedApplication = [(LPLinkMetadata *)self->_metadata associatedApplication];
  bundleIdentifier = [associatedApplication bundleIdentifier];
  v7 = bundleIdentifier != 0;

  return v7;
}

- (id)_URLToOpen
{
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  overrideURLFromProperties = self->_overrideURLFromProperties;
  if (!overrideURLFromProperties)
  {
    overrideURLFromProperties = self->_URL;
  }

  return [LPPresentationSpecializations URLToOpenForURL:overrideURLFromProperties];
}

- (void)_openURLAllowingSensitiveSchemes:(BOOL)schemes allowingAssociatedApplications:(BOOL)applications
{
  applicationsCopy = applications;
  v54 = *MEMORY[0x1E69E9840];
  _URLToOpen = [(LPLinkView *)self _URLToOpen];
  if (![(LPLinkView *)self _disableLinkFollowing])
  {
    overrideAllowsOpeningSensitiveURLs = self->_overrideAllowsOpeningSensitiveURLs;
    if (overrideAllowsOpeningSensitiveURLs)
    {
      schemes = [(NSNumber *)overrideAllowsOpeningSensitiveURLs BOOLValue];
    }

    metadata = [(LPLinkView *)self metadata];
    originatingSynapseContentItem = [metadata originatingSynapseContentItem];

    if (originatingSynapseContentItem)
    {
      mEMORY[0x1E69D5400] = [MEMORY[0x1E69D5400] sharedManager];
      metadata2 = [(LPLinkView *)self metadata];
      originatingSynapseContentItem2 = [metadata2 originatingSynapseContentItem];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke;
      v44[3] = &unk_1E7A37088;
      v44[4] = self;
      [mEMORY[0x1E69D5400] navigateToContentItem:originatingSynapseContentItem2 completion:v44];

      goto LABEL_32;
    }

    if (_URLToOpen)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        specialization = [(LPLinkMetadata *)self->_metadata specialization];
        _disallowsURLOverrideByDelegate = [specialization _disallowsURLOverrideByDelegate];

        if ((_disallowsURLOverrideByDelegate & 1) == 0)
        {
          v17 = [WeakRetained _linkView:self overrideURLForOpeningURL:_URLToOpen];
          v18 = v17;
          if (!v17)
          {
            v35 = LPLogChannelUI();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              loggingID = self->_loggingID;
              *buf = 67109120;
              *&buf[4] = loggingID;
              _os_log_impl(&dword_1AE886000, v35, OS_LOG_TYPE_DEFAULT, "LPLinkView<%d>: delegate handled openURL", buf, 8u);
            }

            goto LABEL_28;
          }

          if (([v17 isEqual:_URLToOpen] & 1) == 0)
          {
            v19 = LPLogChannelUI();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = self->_loggingID;
              *buf = 67109120;
              *&buf[4] = v20;
              _os_log_impl(&dword_1AE886000, v19, OS_LOG_TYPE_DEFAULT, "LPLinkView<%d>: delegate overrode link to open", buf, 8u);
            }
          }

          _URLToOpen = v18;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained _linkView:self willOpenURL:_URLToOpen];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke_283;
      aBlock[3] = &unk_1E7A370B0;
      schemesCopy = schemes;
      _URLToOpen = _URLToOpen;
      v42 = _URLToOpen;
      v21 = _Block_copy(aBlock);
      if (applicationsCopy && [(LPLinkView *)self _isUsingAppClipPresentation])
      {
        v22 = LPLogChannelUI();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->_loggingID;
          *buf = 67109120;
          *&buf[4] = v23;
          _os_log_impl(&dword_1AE886000, v22, OS_LOG_TYPE_DEFAULT, "LPLinkView<%d>: attempting to follow an App Clip link", buf, 8u);
        }

        v45 = 0;
        v46 = &v45;
        v47 = 0x2050000000;
        v24 = getCPSClipRequestClass_softClass;
        v48 = getCPSClipRequestClass_softClass;
        if (!getCPSClipRequestClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          v50 = 3221225472;
          v51 = __getCPSClipRequestClass_block_invoke;
          v52 = &unk_1E7A35518;
          v53 = &v45;
          __getCPSClipRequestClass_block_invoke(buf);
          v24 = v46[3];
        }

        v25 = v24;
        _Block_object_dispose(&v45, 8);
        v26 = [v24 alloc];
        v27 = [(LPLinkMetadata *)self->_metadata URL];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = _URLToOpen;
        }

        associatedApplication = [(LPLinkMetadata *)self->_metadata associatedApplication];
        bundleIdentifier = [associatedApplication bundleIdentifier];
        v32 = [v26 initWithURL:v29 fallbackClipBundleID:bundleIdentifier];

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke_286;
        v37[3] = &unk_1E7A370D8;
        v38 = v32;
        selfCopy = self;
        v40 = v21;
        v33 = v32;
        [v33 requestClipWithCompletion:v37];
      }

      else
      {
        v21[2](v21);
      }

LABEL_28:
      goto LABEL_32;
    }

    v34 = LPLogChannelUI();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [LPLinkView _openURLAllowingSensitiveSchemes:v34 allowingAssociatedApplications:?];
    }

    _URLToOpen = 0;
  }

LABEL_32:
}

void __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = LPLogChannelUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

void __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke_283(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
  }

  else
  {
    v2 = [MEMORY[0x1E69DC668] sharedApplication];
    [v2 openURL:*(a1 + 32) options:MEMORY[0x1E695E0F8] completionHandler:0];
  }
}

void __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke_286(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5 || !a2)
  {
    v9 = LPLogChannelUI();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 40) + 408);
      v11 = 67109120;
      v12 = v10;
      _os_log_impl(&dword_1AE886000, v9, OS_LOG_TYPE_DEFAULT, "LPLinkView<%d>: falling back from App Clip link to openURL", &v11, 8u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = LPLogChannelUI();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 40) + 408);
      v11 = 67109120;
      v12 = v8;
      _os_log_impl(&dword_1AE886000, v7, OS_LOG_TYPE_DEFAULT, "LPLinkView<%d>: successfully followed an App Clip link", &v11, 8u);
    }
  }
}

- (void)_installPreviewGestureRecognizer
{
  if (self->_animationView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    contextMenuInteraction = self->_contextMenuInteraction;
    self->_contextMenuInteraction = v3;

    animationView = self->_animationView;
    v6 = self->_contextMenuInteraction;

    [(UIView *)animationView addInteraction:v6];
  }
}

- (void)_uninstallPreviewGestureRecognizer
{
  [(UIView *)self->_animationView removeInteraction:self->_contextMenuInteraction];
  contextMenuInteraction = self->_contextMenuInteraction;
  self->_contextMenuInteraction = 0;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  v8 = [(LPLinkView *)self hitTest:0 withEvent:x, y];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v11 = getDDContextMenuActionClass_softClass;
    v43 = getDDContextMenuActionClass_softClass;
    if (!getDDContextMenuActionClass_softClass)
    {
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __getDDContextMenuActionClass_block_invoke;
      v38 = &unk_1E7A35518;
      v39 = &v40;
      __getDDContextMenuActionClass_block_invoke(&v35);
      v11 = v41[3];
    }

    v12 = v11;
    _Block_object_dispose(&v40, 8);
    [(UIView *)self->_animationView bounds];
    v13 = [v11 updateContext:0 withSourceRect:?];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v15 = [WeakRetained _contextMenuActionsForLinkView:self];
      v16 = [v15 copy];

      v17 = [v13 mutableCopy];
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v18 = getkDDContextMenuActionsKeySymbolLoc_ptr;
      v43 = getkDDContextMenuActionsKeySymbolLoc_ptr;
      if (!getkDDContextMenuActionsKeySymbolLoc_ptr)
      {
        v35 = MEMORY[0x1E69E9820];
        v36 = 3221225472;
        v37 = __getkDDContextMenuActionsKeySymbolLoc_block_invoke;
        v38 = &unk_1E7A35518;
        v39 = &v40;
        v19 = DataDetectorsUILibrary();
        v20 = dlsym(v19, "kDDContextMenuActionsKey");
        *(v39[1] + 24) = v20;
        getkDDContextMenuActionsKeySymbolLoc_ptr = *(v39[1] + 24);
        v18 = v41[3];
      }

      _Block_object_dispose(&v40, 8);
      if (!v18)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDDContextMenuActionsKey(void)"];
        [currentHandler handleFailureInFunction:v34 file:@"LPLinkView.m" lineNumber:107 description:{@"%s", dlerror()}];
        goto LABEL_24;
      }

      [v17 setObject:v16 forKey:*v18];
      v21 = [v17 copy];

      v13 = v21;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_15:
      v29 = [(LPLinkView *)self URL];
      v30 = [v11 contextMenuConfigurationWithURL:v29 inView:self->_animationView context:v13 menuIdentifier:0];

      if (objc_opt_respondsToSelector())
      {
        v31 = [WeakRetained _linkView:self contextMenuConfigurationForSuggestedConfiguration:v30];
      }

      else
      {
        v31 = v30;
      }

      v10 = v31;

      goto LABEL_19;
    }

    v22 = [WeakRetained _wantsContextMenuPreviewForLinkView:self];
    v23 = [v13 mutableCopy];
    v24 = [MEMORY[0x1E696AD98] numberWithBool:v22];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v25 = getkDDContextMenuWantsPreviewKeySymbolLoc_ptr;
    v43 = getkDDContextMenuWantsPreviewKeySymbolLoc_ptr;
    if (!getkDDContextMenuWantsPreviewKeySymbolLoc_ptr)
    {
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __getkDDContextMenuWantsPreviewKeySymbolLoc_block_invoke;
      v38 = &unk_1E7A35518;
      v39 = &v40;
      v26 = DataDetectorsUILibrary();
      v27 = dlsym(v26, "kDDContextMenuWantsPreviewKey");
      *(v39[1] + 24) = v27;
      getkDDContextMenuWantsPreviewKeySymbolLoc_ptr = *(v39[1] + 24);
      v25 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (v25)
    {
      [v23 setObject:v24 forKey:*v25];

      v28 = [v23 copy];
      v13 = v28;
      goto LABEL_15;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDDContextMenuWantsPreviewKey(void)"];
    [currentHandler handleFailureInFunction:v34 file:@"LPLinkView.m" lineNumber:109 description:{@"%s", dlerror()}];
LABEL_24:

    __break(1u);
    return result;
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (BOOL)captionTextIsTruncated
{
  components = [(LPLinkView *)self components];
  captionBar = [components captionBar];
  captionTextIsTruncated = [captionBar captionTextIsTruncated];

  return captionTextIsTruncated;
}

- (UIEdgeInsets)_textSafeAreaInset
{
  top = self->_textSafeAreaInset.top;
  left = self->_textSafeAreaInset.left;
  bottom = self->_textSafeAreaInset.bottom;
  right = self->_textSafeAreaInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (LPLinkViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)targetedPreviewForHighlightedTextRange
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  highlightedTextRange = [(LPLinkView *)selfCopy highlightedTextRange];
  if (highlightedTextRange)
  {
    v5 = highlightedTextRange;
    type metadata accessor for LPTextRange();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      sub_1AE969B54(0, &qword_1EB5E6800);
      v8 = sub_1AE9843C0(v7);

      v9 = v8;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (CGRect)frameForHighlightedTextRange
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = sub_1AE97B444();
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

- (UITextRange)selectedTextRange
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LPTextRange();
  v8 = swift_dynamicCastClassUnconditional();
  v9 = swift_dynamicCastClassUnconditional();
  v10 = sub_1AE969B54(0, &qword_1EB5E6800);
  rangeCopy = range;
  toRangeCopy = toRange;
  selfCopy = self;
  v14 = sub_1AE982EAC(v8, v9, v10, &off_1F2447470);

  return v14;
}

- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_1AE9886E4();
  v10 = v9;
  optionsCopy = options;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AE97BCB8(v8, v10, optionsCopy, aggregator);

  swift_unknownObjectRelease();
}

- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  rangeCopy = range;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AE97CF04(rangeCopy, style);

  swift_unknownObjectRelease();
}

- (void)clearAllDecoratedFoundText
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1AE97C330();
}

- (id)findInteraction:(id)interaction sessionForView:(id)view
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  initWithSearchableObject_ = [objc_allocWithZone(MEMORY[0x1E69DD140]) initWithSearchableObject_];

  return initWithSearchableObject_;
}

- (void)_openURLAllowingSensitiveSchemes:(uint64_t)a1 allowingAssociatedApplications:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 408);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LPLinkView<%d>: opening a link that has nil URL", v3, 8u);
}

void __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 408);
  v4[0] = 67109378;
  v4[1] = v3;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LPLinkView<%d>: opening a SYContentItem has failed: %@ ", v4, 0x12u);
}

@end