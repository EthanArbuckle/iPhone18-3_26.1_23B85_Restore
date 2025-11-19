@interface LPLinkView
- (BOOL)_backgroundColorSupportsVibrancy:(id)a3;
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
- (BOOL)allowsBadgingIconEdgeForComponentView:(id)a3;
- (BOOL)allowsVibrancyForComponentView:(id)a3;
- (BOOL)captionTextIsTruncated;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (CGRect)_primaryCaptionBarFrame;
- (CGRect)_rectForCaptionButtonType:(int64_t)a3;
- (CGRect)frameForHighlightedTextRange;
- (CGSize)_layoutLinkViewForSize:(CGSize)a3 applyingLayout:(BOOL)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPLinkMetadata)_flattenedMetadata;
- (LPLinkMetadata)metadata;
- (LPLinkView)init;
- (LPLinkView)initWithFrame:(CGRect)a3;
- (LPLinkView)initWithMetadata:(LPLinkMetadata *)metadata;
- (LPLinkView)initWithMetadataLoadedFromRequest:(id)a3;
- (LPLinkView)initWithMetadataLoadedFromURL:(id)a3;
- (LPLinkView)initWithPresentationProperties:(id)a3;
- (LPLinkView)initWithPresentationProperties:(id)a3 URL:(id)a4;
- (LPLinkViewDelegate)delegate;
- (UIColor)_dominantBackgroundColor;
- (UIColor)_resolvedBackgroundColor;
- (UIColor)_specializedBackgroundColor;
- (UIEdgeInsets)_textSafeAreaInset;
- (UIEdgeInsets)contentInset;
- (UITextRange)selectedTextRange;
- (double)_effectiveCornerRadius;
- (double)minimumCornerRadiusForComponentView:(id)a3;
- (id)_URLToOpen;
- (id)_computeCollapsedButtonPropertiesForAttributedString:(id)a3;
- (id)_createBackgroundImageView;
- (id)_createCaptionBar;
- (id)_createComponents;
- (id)_createContactsBadgeView;
- (id)_createDomainNameIndicator;
- (id)_createMediaBottomCaptionBarView;
- (id)_createMediaTopCaptionBarView;
- (id)_createMediaViewForProperties:(id)a3;
- (id)_createProgressSpinner;
- (id)_createQuotedTextView;
- (id)_createTapToLoadView;
- (id)_createTextHighlightView;
- (id)_createTextSearchingDimmingView;
- (id)_fetchMetadataForRequest:(id)a3 withSubresources:(BOOL)a4 completionHandler:(id)a5;
- (id)_initWithMetadataLoadedFromRequests:(id)a3;
- (id)_initWithMetadataLoadedFromURLs:(id)a3;
- (id)_initWithMultipleMetadata:(id)a3;
- (id)_initWithNullableURL:(id)a3;
- (id)_initWithSynapseContentItem:(id)a3;
- (id)_mediaBackgroundColor;
- (id)_playable;
- (id)_primaryMediaView;
- (id)_videoViewConfiguration;
- (id)appearanceForComponentView:(id)a3;
- (id)componentView:(id)a3 playerForAudio:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)downloadProgressForComponentView:(id)a3;
- (id)findInteraction:(id)a3 sessionForView:(id)a4;
- (id)layoutExclusionsForView:(id)a3;
- (id)targetedPreviewForHighlightedTextRange;
- (int64_t)_style;
- (int64_t)compareFoundRange:(id)a3 toRange:(id)a4 inDocument:(id)a5;
- (int64_t)componentView:(id)a3 allowedImageFilterForFilter:(int64_t)a4;
- (unint64_t)_axesForDerivingIntrinsicContentSizeFromLayoutSize;
- (void)_addCaptionButton:(id)a3;
- (void)_addHighlightRecognizerToView:(id)a3 forMedia:(BOOL)a4;
- (void)_addTapRecognizerToView:(id)a3 forMedia:(BOOL)a4;
- (void)_cancelActiveHighlight;
- (void)_captionBarButtonPressed:(id)a3;
- (void)_captionHighlightRecognized:(id)a3;
- (void)_captionTapRecognized:(id)a3;
- (void)_commonInitWithURL:(id)a3;
- (void)_computePresentationPropertiesFromMetadataIfNeeded;
- (void)_configureWithoutLoadingMetadataFromURLs:(id)a3;
- (void)_disableBlur;
- (void)_enableBlur;
- (void)_fetchMetadataForRequest:(id)a3;
- (void)_installHighlightGestureRecognizers;
- (void)_installPreviewGestureRecognizer;
- (void)_installTapGestureRecognizers;
- (void)_invalidateLayout;
- (void)_invalidatePresentationProperties;
- (void)_invalidatePresentationPropertiesAndLayout;
- (void)_layoutLinkView;
- (void)_mediaHighlightRecognized:(id)a3;
- (void)_mediaTapRecognized:(id)a3;
- (void)_openURLAllowingSensitiveSchemes:(BOOL)a3 allowingAssociatedApplications:(BOOL)a4;
- (void)_pauseMedia;
- (void)_playMedia;
- (void)_rebuildEntireView;
- (void)_rebuildGestureRecognizersIfNeeded;
- (void)_rebuildSubviewsWithAnimation:(BOOL)a3;
- (void)_removeCaptionButtonWithType:(int64_t)a3;
- (void)_resetMediaPlayback;
- (void)_secondaryCaptionBarButtonPressed:(id)a3;
- (void)_setAction:(id)a3 withAttributedText:(id)a4 buttonType:(int64_t)a5;
- (void)_setAction:(id)a3 withText:(id)a4 buttonType:(int64_t)a5;
- (void)_setButtonActions:(id)a3;
- (void)_setBytesLoaded:(unint64_t)a3;
- (void)_setCollaborationFooterViewModel:(id)a3 action:(id)a4;
- (void)_setCollaborative:(BOOL)a3;
- (void)_setContactsForAttribution:(id)a3;
- (void)_setDisableHighlightGesture:(BOOL)a3;
- (void)_setDisablePreviewGesture:(BOOL)a3;
- (void)_setDisableTapGesture:(BOOL)a3;
- (void)_setEffectiveAppearanceTraits:(id)a3;
- (void)_setEffectiveCornerRadius:(double)a3;
- (void)_setEmphasizedTextExpression:(id)a3;
- (void)_setFindInteractionEnabled:(BOOL)a3;
- (void)_setHighlightCaption:(BOOL)a3;
- (void)_setHighlightMedia:(BOOL)a3;
- (void)_setHighlightedForAttribution:(BOOL)a3;
- (void)_setInComposeContext:(BOOL)a3;
- (void)_setInSenderContext:(BOOL)a3;
- (void)_setLastResortIcon:(id)a3;
- (void)_setMaskImage:(id)a3;
- (void)_setMediaOverlayIcon:(id)a3;
- (void)_setMetadata:(id)a3 isFinal:(BOOL)a4;
- (void)_setMetadataInternal:(id)a3;
- (void)_setMultipleMetadata:(id)a3;
- (void)_setOverrideActionButtonColor:(id)a3;
- (void)_setOverrideBackgroundColor:(id)a3;
- (void)_setOverrideMediaBackgroundColor:(id)a3;
- (void)_setOverrideSubtitle:(id)a3;
- (void)_setOverrideSubtitleButtonColor:(id)a3;
- (void)_setOverrideURL:(id)a3;
- (void)_setPreferredSizeClass:(unint64_t)a3;
- (void)_setPresentationPropertiesInternal:(id)a3;
- (void)_setSecondaryButtonAction:(id)a3;
- (void)_setSelectedVariantIndex:(id)a3;
- (void)_setShowingDisclosureView:(BOOL)a3;
- (void)_setSizeClassParameters:(id)a3;
- (void)_setSourceBundleIdentifier:(id)a3;
- (void)_setSuppressChatKitMask:(BOOL)a3;
- (void)_setTextSafeAreaInset:(UIEdgeInsets)a3;
- (void)_setUnderlyingBackgroundColor:(id)a3;
- (void)_setUseCPURenderingForMaterials:(BOOL)a3;
- (void)_setUsesInferredAppearanceWithOverriddenBackgroundColor:(BOOL)a3;
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
- (void)animateFromOldFrame:(CGRect)a3 oldMediaBackgroundFrame:(CGRect)a4 oldCaptionBarView:(id)a5;
- (void)animateInViews;
- (void)animateOutAndRemoveViews;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)clearAllDecoratedFoundText;
- (void)componentViewDidChangeMediaState:(id)a3;
- (void)componentViewDidTapCaptionButton:(id)a3 buttonType:(int64_t)a4;
- (void)dealloc;
- (void)decorateFoundTextRange:(id)a3 inDocument:(id)a4 usingStyle:(int64_t)a5;
- (void)layoutSubviews;
- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5;
- (void)resetDownloadState;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setURL:(id)a3;
- (void)tapToLoadViewWasTapped:(id)a3;
- (void)themeParametersDidChange;
@end

@implementation LPLinkView

- (LPLinkView)init
{
  v3 = objc_alloc_init(LPLinkMetadata);
  v4 = [(LPLinkView *)self initWithMetadata:v3];

  return v4;
}

- (LPLinkView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = LPLinkView;
  v3 = [(LPLinkView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (LPLinkView)initWithMetadataLoadedFromURL:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:v4];
  v6 = [(LPLinkView *)self initWithMetadataLoadedFromRequest:v5];

  return v6;
}

- (LPLinkView)initWithMetadataLoadedFromRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 URL];
  v6 = [(LPLinkView *)self _initWithNullableURL:v5];
  v7 = v6;
  if (v6)
  {
    [(LPLinkView *)v6 _fetchMetadataForRequest:v4];
    v8 = v7;
  }

  return v7;
}

- (id)_initWithMetadataLoadedFromURLs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
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

- (id)_initWithMetadataLoadedFromRequests:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = LPLinkView;
  v5 = [(LPLinkView *)&v29 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(LPLinkView *)v5 _commonInitWithURL:0];
    v6->_usesComputedPresentationProperties = 1;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v4;
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

- (id)_initWithNullableURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LPLinkView;
  v5 = [(LPLinkView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(LPLinkView *)v5 _commonInitWithURL:v4];
    v6->_usesComputedPresentationProperties = 1;
    v6->_metadataIsComplete = 1;
    v7 = v6;
  }

  return v6;
}

- (LPLinkView)initWithMetadata:(LPLinkMetadata *)metadata
{
  v4 = metadata;
  v5 = [(LPLinkMetadata *)v4 originalURL];
  v6 = [(LPLinkView *)self _initWithNullableURL:v5];

  if (v6)
  {
    [(LPLinkView *)v6 setMetadata:v4];
    v7 = v6;
  }

  return v6;
}

- (id)_initWithMultipleMetadata:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LPLinkView;
  v5 = [(LPLinkView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(LPLinkView *)v5 _commonInitWithURL:0];
    v6->_usesComputedPresentationProperties = 1;
    v6->_metadataIsComplete = 1;
    [(LPLinkView *)v6 _setMultipleMetadata:v4];
    v7 = v6;
  }

  return v6;
}

- (LPLinkView)initWithPresentationProperties:(id)a3
{
  v3 = [(LPLinkView *)self initWithPresentationProperties:a3 URL:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (LPLinkView)initWithPresentationProperties:(id)a3 URL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = LPLinkView;
  v8 = [(LPLinkView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(LPLinkView *)v8 _commonInitWithURL:v7];
    [(LPLinkView *)v9 _setPresentationProperties:v6];
    v10 = v9;
  }

  return v9;
}

- (id)_initWithSynapseContentItem:(id)a3
{
  v4 = a3;
  v5 = [[LPLinkMetadata alloc] _initWithSynapseContentItem:v4];
  v6 = [(LPLinkView *)self initWithMetadata:v5];

  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (void)_commonInitWithURL:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  pendingMetadataProviders = self->_pendingMetadataProviders;
  self->_pendingMetadataProviders = v6;

  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  self->_sourceBundleIdentifier = v9;

  self->_loggingID = ++generateLoggingID_nextLoggingID;
  objc_storeStrong(&self->_URL, a3);
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

- (void)_setEffectiveCornerRadius:(double)a3
{
  self->_hasOverrideCornerRadius = 1;
  self->_overrideCornerRadius = a3;
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
    v4 = [(LPTheme *)self->_theme cornerRadius];
    [v4 value];
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
  v4 = [(LPLinkView *)self _shouldApplyCornerRadius];
  v5 = 0.0;
  if (v4)
  {
    [(LPLinkView *)self _effectiveCornerRadius];
  }

  [(UIView *)animationView _lp_setCornerRadius:v5];
}

- (void)_configureWithoutLoadingMetadataFromURLs:(id)a3
{
  v9 = a3;
  v4 = objc_alloc_init(LPLinkMetadata);
  v5 = MEMORY[0x1E696AEC0];
  v6 = LPLocalizedString(@"%ld Document(s)");
  v7 = [v5 localizedStringWithFormat:v6, objc_msgSend(v9, "count")];
  [(LPLinkMetadata *)v4 setTitle:v7];

  v8 = objc_alloc_init(LPSummarizedLinkMetadata);
  [(LPLinkMetadata *)v4 setSpecialization:v8];

  [(LPLinkView *)self _setMetadata:v4 isFinal:1];
}

- (id)_fetchMetadataForRequest:(id)a3 withSubresources:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(LPLinkView *)self _updateMetadataIsComplete];
  v10 = objc_alloc_init(LPMetadataProvider);
  [(NSHashTable *)self->_pendingMetadataProviders addObject:v10];
  [(LPMetadataProvider *)v10 setShouldFetchSubresources:v6];
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
  v12 = v9;
  v19 = v12;
  v20 = &v21;
  v13 = [(LPMetadataProvider *)v11 _startFetchingMetadataForRequest:v8 completionHandler:v17];
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

- (void)_fetchMetadataForRequest:(id)a3
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__LPLinkView__fetchMetadataForRequest___block_invoke;
  v7[3] = &unk_1E7A36F38;
  v7[4] = self;
  v4 = [(LPLinkView *)self _fetchMetadataForRequest:a3 withSubresources:1 completionHandler:v7];
  self->_allowsTapToLoad = 0;
  v5 = [(LPLinkViewComponents *)self->_components media];
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
  v3 = [MEMORY[0x1E69DD250] _lp_createFlippedView];
  animationView = self->_animationView;
  self->_animationView = v3;

  v5 = [(UIView *)self->_animationView layer];
  [v5 setMasksToBounds:1];

  [(LPLinkView *)self addSubview:self->_animationView];
  v6 = [MEMORY[0x1E69DD250] _lp_createFlippedView];
  contentView = self->_contentView;
  self->_contentView = v6;

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
    v17 = [MEMORY[0x1E69DC888] redColor];
    v18 = [v17 CGColor];
    v19 = [(LPLinkView *)self layer];
    [v19 setBorderColor:v18];

    v20 = [(LPLinkView *)self layer];
    [v20 setBorderWidth:0.5];

    v21 = [MEMORY[0x1E69DC888] greenColor];
    v22 = [v21 CGColor];
    v23 = [(UIView *)self->_animationView layer];
    [v23 setBorderColor:v22];

    v24 = [(UIView *)self->_animationView layer];
    [v24 setBorderWidth:0.5];
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
    v7 = [(UIVisualEffectView *)self->_blurView contentView];
    [v7 addSubview:self->_contentView];
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

- (double)minimumCornerRadiusForComponentView:(id)a3
{
  v4 = a3;
  v5 = [(LPLinkViewComponents *)self->_components captionBar];
  if (([v5 hasIconViewEqualToComponentView:v4] & 1) == 0)
  {
    v6 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
    if (![v6 hasIconViewEqualToComponentView:v4])
    {
      v10 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
      v11 = [v10 hasIconViewEqualToComponentView:v4];

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

- (id)appearanceForComponentView:(id)a3
{
  v3 = [(UIView *)self _lp_appearance];

  return v3;
}

- (UIColor)_resolvedBackgroundColor
{
  v3 = [(LPTheme *)self->_theme backgroundColor];
  if ([(LPLinkView *)self _themePlatform]== 5)
  {
    v4 = [(LPLinkView *)self traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 != 2)
    {
      v6 = [LPTheme defaultBackgroundColorForPlatform:0];

      v3 = v6;
    }
  }

  overrideBackgroundColor = self->_overrideBackgroundColor;
  if (overrideBackgroundColor)
  {
    v8 = overrideBackgroundColor;
  }

  else
  {
    v9 = [(LPLinkView *)self _specializedBackgroundColor];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
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

- (BOOL)_backgroundColorSupportsVibrancy:(id)a3
{
  v4 = a3;
  v5 = [(LPLinkView *)self traitCollection];
  v6 = [v4 resolvedColorWithTraitCollection:v5];

  v7 = [MEMORY[0x1E69DC888] clearColor];
  LOBYTE(v5) = [v6 isEqual:v7];

  return v5;
}

- (void)_updateBackgroundColor
{
  v3 = [(LPLinkView *)self _resolvedBackgroundColor];
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v3;

  self->_backgroundColorSupportsVibrancy = [(LPLinkView *)self _backgroundColorSupportsVibrancy:self->_backgroundColor];

  [(LPLinkView *)self _updateEffectiveAppearanceTraitsIfNeeded];
}

- (void)_setEffectiveAppearanceTraits:(id)a3
{
  v7 = a3;
  v5 = [(LPLinkView *)self _effectiveAppearanceTraits];
  v6 = [v5 isEqual:v7];

  if ((v6 & 1) == 0)
  {
    [(LPLinkView *)self willChangeValueForKey:@"_effectiveTraitCollection"];
    objc_storeStrong(&self->_effectiveTraitCollection, a3);
    [(LPLinkView *)self didChangeValueForKey:@"_effectiveTraitCollection"];
  }
}

- (void)_setUsesInferredAppearanceWithOverriddenBackgroundColor:(BOOL)a3
{
  if (self->_usesInferredAppearanceWithOverriddenBackgroundColor != a3)
  {
    self->_usesInferredAppearanceWithOverriddenBackgroundColor = a3;
    [(LPLinkView *)self _updateEffectiveAppearanceTraitsIfNeeded];

    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (BOOL)_shouldUseInferredAppearance
{
  v3 = [(LPWebLinkPresentationProperties *)self->_properties dominantImageBackgroundColor];
  if (v3)
  {
    v4 = v3;
    v5 = [(LPWebLinkPresentationProperties *)self->_properties allowsDominantImageBackgroundColorAsCaptionBackground];

    if (!v5 || self->_overrideBackgroundColor && !self->_usesInferredAppearanceWithOverriddenBackgroundColor)
    {
      goto LABEL_8;
    }

    v6 = [(LPWebLinkPresentationProperties *)self->_properties image];
    v7 = [v6 _darkInterfaceAlternativeImage];
    if (v7)
    {

LABEL_8:
      LOBYTE(v3) = 0;
      return v3;
    }

    v8 = [(LPWebLinkPresentationProperties *)self->_properties backgroundImage];
    v9 = [v8 _darkInterfaceAlternativeImage];

    if (v9)
    {
      goto LABEL_8;
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)_updateEffectiveAppearanceTraitsIfNeeded
{
  if ([(LPLinkView *)self _shouldUseInferredAppearance])
  {
    v3 = [(LPWebLinkPresentationProperties *)self->_properties dominantImageBackgroundColor];
    v4 = [v3 _lp_luminosityLevelForUserInterfaceStyle];

    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = [(LPLinkView *)self traitCollection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__LPLinkView__updateEffectiveAppearanceTraitsIfNeeded__block_invoke;
    v17[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v17[4] = v5;
    v7 = [v6 traitCollectionByModifyingTraits:v17];
    [(LPLinkView *)self _setEffectiveAppearanceTraits:v7];

    v8 = [(LPLinkView *)self _effectiveAppearanceTraits];
    v9 = [v8 userInterfaceStyle];
    v10 = [(UIView *)self->_contentView traitOverrides];
    [v10 setUserInterfaceStyle:v9];
  }

  else
  {
    v11 = [(UIView *)self _lp_appearance];
    [(LPLinkView *)self _setEffectiveAppearanceTraits:v11];

    v12 = [(UIView *)self->_contentView traitOverrides];
    v13 = objc_opt_self();
    v14 = [v12 containsTrait:v13];

    if (v14)
    {
      v16 = [(UIView *)self->_contentView traitOverrides];
      v15 = objc_opt_self();
      [v16 removeTrait:v15];
    }
  }
}

- (void)themeParametersDidChange
{
  v3 = [(LPLinkView *)self _themePlatform];
  v4 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v5 = [v4 button];

  v6 = [(LPWebLinkPresentationProperties *)self->_properties style];
  v16 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v7 = [v16 trailingIcon];
  v17 = v7;
  if (!v7)
  {
    v15 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    v17 = [v15 leadingIcon];
  }

  v8 = v6;
  effectiveSizeClass = self->_effectiveSizeClass;
  sizeClassParameters = self->_sizeClassParameters;
  v11 = [(LPLinkView *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = [LPTheme themeWithStyle:v8 icon:v17 platform:v3 sizeClass:effectiveSizeClass sizeClassParameters:sizeClassParameters hasButton:v5 != 0 preferredContentSizeCategory:v12];
  theme = self->_theme;
  self->_theme = v13;

  if (!v7)
  {
  }

  [(LPLinkView *)self _updateBackgroundColor];
  [(LPLinkView *)self _updateBlur];

  [(LPLinkView *)self _rebuildEntireView];
}

- (void)_setOverrideURL:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_URL, a3);
  overrideURL = self->_overrideURL;
  self->_overrideURL = v5;

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setUnderlyingBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_underlyingBackgroundColor, a3);

  [(LPLinkView *)self themeParametersDidChange];
}

- (void)_setOverrideBackgroundColor:(id)a3
{
  v5 = a3;
  if (v5 | self->_overrideBackgroundColor && ([v5 isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideBackgroundColor, a3);
    [(LPLinkView *)self _updateBackgroundColor];
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setOverrideMediaBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 | self->_overrideMediaBackgroundColor)
  {
    v10 = v5;
    v7 = [v5 isEqual:?];
    v6 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_overrideMediaBackgroundColor, a3);
      v8 = [(LPLinkView *)self _mediaBackgroundColor];
      v9 = [(LPLinkViewComponents *)self->_components mediaBackground];
      [v9 setColor:v8];

      v6 = v10;
    }
  }
}

- (void)_setOverrideActionButtonColor:(id)a3
{
  objc_storeStrong(&self->_overrideActionButtonColor, a3);

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setOverrideSubtitleButtonColor:(id)a3
{
  objc_storeStrong(&self->_overrideSubtitleButtonColor, a3);

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setContactsForAttribution:(id)a3
{
  v5 = a3;
  if (([(NSArray *)self->_contactsForAttribution isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contactsForAttribution, a3);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setHighlightedForAttribution:(BOOL)a3
{
  if (self->_highlightedForAttribution != a3)
  {
    self->_highlightedForAttribution = a3;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setCollaborationFooterViewModel:(id)a3 action:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    v7 = objc_alloc_init(LPCollaborationFooterPresentationProperties);
    v8 = [v14 optionsSummary];
    [(LPCollaborationFooterPresentationProperties *)v7 setTitle:v8];

    v9 = [v14 metadata];
    v10 = v9;
    if (v9)
    {
      v11 = [(LPCollaborationFooterPresentationProperties *)v9 initiatorHandle];
      [(LPCollaborationFooterPresentationProperties *)v7 setInitiatorName:v11];

      v12 = [(LPCollaborationFooterPresentationProperties *)v10 initiatorNameComponents];
      [(LPCollaborationFooterPresentationProperties *)v7 setInitiatorNameComponents:v12];
    }

    [(LPCollaborationFooterPresentationProperties *)v7 setAction:v6];
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

- (void)_setShowingDisclosureView:(BOOL)a3
{
  if (self->_showingDisclosureView != a3)
  {
    self->_showingDisclosureView = a3;
    v3 = [(LPLinkViewComponents *)self->_components captionBar];
    [v3 updateDisclosureIndicators];
  }
}

- (void)_setLastResortIcon:(id)a3
{
  v5 = a3;
  if (self->_lastResortIcon != v5)
  {
    objc_storeStrong(&self->_lastResortIcon, a3);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setMediaOverlayIcon:(id)a3
{
  v5 = a3;
  if (self->_mediaOverlayIcon != v5)
  {
    objc_storeStrong(&self->_mediaOverlayIcon, a3);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setInComposeContext:(BOOL)a3
{
  if (self->_inComposeContext != a3)
  {
    self->_inComposeContext = a3;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setInSenderContext:(BOOL)a3
{
  if (self->_inSenderContext != a3)
  {
    self->_inSenderContext = a3;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setCollaborative:(BOOL)a3
{
  if (self->_collaborative != a3)
  {
    self->_collaborative = a3;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setUseCPURenderingForMaterials:(BOOL)a3
{
  if (self->_useCPURenderingForMaterials != a3)
  {
    self->_useCPURenderingForMaterials = a3;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)setURL:(id)a3
{
  objc_storeStrong(&self->_URL, a3);

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

- (void)_setBytesLoaded:(unint64_t)a3
{
  self->_bytesLoaded = a3;
  if (!self->_metadata)
  {
    return;
  }

  v9 = [[LPLinkMetadataDownloadProgressTransformer alloc] initWithBytesLoaded:a3 downloadState:self->_sharedObjectDownloadState metadata:self->_metadata];
  v4 = [(LPLinkMetadataDownloadProgressTransformer *)v9 downloadProgressForTransformer:v9];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isFinished];
    v7 = 1;
    if (v6)
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

- (void)_setMetadataInternal:(id)a3
{
  v5 = a3;
  self->_usesComputedPresentationProperties = 1;
  v6 = [v5 copy];
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
    v11 = [v5 originalURL];
    v3 = v11;
    if (v11)
    {
      v9 = 0;
      v10 = v11;
    }

    else
    {
      v10 = [v5 URL];
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
    v13 = [v5 copy];
    if ([v5 _isDeferringAsynchronousLoads])
    {
      v14 = [v13 _createAsynchronousLoadDeferralToken];
      [v5 _addFinishedDeferringAsynchronousLoadHandler:v14];
    }

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __35__LPLinkView__setMetadataInternal___block_invoke;
    v19 = &unk_1E7A36FC8;
    v23 = v12;
    v20 = self;
    v21 = v5;
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
  v3 = [(LPLinkMetadata *)self->_metadata variants];
  v4 = [(NSNumber *)self->_selectedVariantIndex unsignedIntegerValue];
  if (v4 >= [v3 count])
  {
    [(LPLinkView *)self metadata];
  }

  else
  {
    [v3 objectAtIndexedSubscript:{-[NSNumber unsignedIntegerValue](self->_selectedVariantIndex, "unsignedIntegerValue")}];
  }
  v5 = ;

  return v5;
}

- (void)_setMetadata:(id)a3 isFinal:(BOOL)a4
{
  self->_mayReceiveAdditionalMetadata = !a4;
  selectedVariantIndex = self->_selectedVariantIndex;
  self->_selectedVariantIndex = 0;
  v6 = a3;

  [(LPLinkView *)self _setMetadataInternal:v6];
}

- (void)_setSelectedVariantIndex:(id)a3
{
  v5 = a3;
  if (([(NSNumber *)self->_selectedVariantIndex isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_selectedVariantIndex, a3);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setFindInteractionEnabled:(BOOL)a3
{
  if (self->_findInteractionEnabled != a3)
  {
    self->_findInteractionEnabled = a3;
    if (a3)
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

- (void)_setMultipleMetadata:(id)a3
{
  v6 = a3;
  if ([v6 count] > 1)
  {
    v4 = [[LPMultipleMetadataPresentationTransformer alloc] initWithMetadata:v6];
    [(LPMultipleMetadataPresentationTransformer *)v4 setPreferredSizeClass:self->_preferredSizeClass];
    self->_mayReceiveAdditionalMetadata = 0;
    v5 = [(LPMultipleMetadataPresentationTransformer *)v4 summaryMetadata];
    [(LPLinkView *)self _setMetadataInternal:v5];
  }

  else
  {
    v4 = [v6 firstObject];
    [(LPLinkView *)self _setMetadataInternal:v4];
  }
}

- (void)_setPreferredSizeClass:(unint64_t)a3
{
  if (self->_preferredSizeClass != a3)
  {
    self->_preferredSizeClass = a3;
    self->_effectiveSizeClass = a3;
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];

    [(LPLinkView *)self themeParametersDidChange];
  }
}

- (void)_setSizeClassParameters:(id)a3
{
  v4 = a3;
  sizeClassParameters = self->_sizeClassParameters;
  v8 = v4;
  if (v4 | sizeClassParameters && ![(LPLinkRendererSizeClassParameters *)sizeClassParameters isEqual:v4])
  {
    v6 = [v8 copy];
    v7 = self->_sizeClassParameters;
    self->_sizeClassParameters = v6;

    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
    [(LPLinkView *)self themeParametersDidChange];
  }
}

- (void)_setSourceBundleIdentifier:(id)a3
{
  v5 = a3;
  if (self->_sourceBundleIdentifier != v5)
  {
    objc_storeStrong(&self->_sourceBundleIdentifier, a3);
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_addCaptionButton:(id)a3
{
  v5 = a3;
  if ([v5 type] == 1)
  {
    objc_storeStrong(&self->_captionButton, a3);
    [(LPConcretePresentationProperties *)self->_properties setCaptionButton:v5];
  }

  else
  {
    objc_storeStrong(&self->_captionTextButton, a3);
    [(LPConcretePresentationProperties *)self->_properties setCaptionTextButton:v5];
  }
}

- (void)_removeCaptionButtonWithType:(int64_t)a3
{
  if (a3 == 1)
  {
    captionButton = self->_captionButton;
    self->_captionButton = 0;

    [(LPConcretePresentationProperties *)self->_properties setCaptionButton:0];
    v5 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    [v5 setButton:0];
  }

  else
  {
    captionTextButton = self->_captionTextButton;
    self->_captionTextButton = 0;

    [(LPConcretePresentationProperties *)self->_properties setCaptionTextButton:0];
  }

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (void)_setAction:(id)a3 withText:(id)a4 buttonType:(int64_t)a5
{
  v10 = a3;
  v8 = a4;
  if (v10 && v8)
  {
    v9 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    [(LPCaptionButtonPresentationProperties *)v9 setText:v8];
    [(LPCaptionButtonPresentationProperties *)v9 setCallback:v10];
    [(LPCaptionButtonPresentationProperties *)v9 setType:a5];
    [(LPLinkView *)self _addCaptionButton:v9];
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }

  else
  {
    [(LPLinkView *)self _removeCaptionButtonWithType:a5];
  }
}

- (void)_setAction:(id)a3 withAttributedText:(id)a4 buttonType:(int64_t)a5
{
  v11 = a3;
  v8 = a4;
  if (v11 && v8)
  {
    v9 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    [(LPCaptionButtonPresentationProperties *)v9 setAttributedText:v8];
    [(LPCaptionButtonPresentationProperties *)v9 setCallback:v11];
    [(LPCaptionButtonPresentationProperties *)v9 setType:a5];
    v10 = [(LPLinkView *)self _computeCollapsedButtonPropertiesForAttributedString:v8];
    [(LPCaptionButtonPresentationProperties *)v9 setCollapsedButton:v10];

    [(LPLinkView *)self _addCaptionButton:v9];
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }

  else
  {
    [(LPLinkView *)self _removeCaptionButtonWithType:a5];
  }
}

- (void)_setButtonActions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    [(LPCaptionButtonPresentationProperties *)v6 setActions:v5];
    [(LPCaptionButtonPresentationProperties *)v6 setType:1];
    [(LPCaptionButtonPresentationProperties *)v6 setCallback:&__block_literal_global_99];
    if ([v5 count] < 2)
    {
      v15 = [(LPCaptionButtonPresentationProperties *)v6 actions];
      v16 = [v15 firstObject];
      v17 = [v16 handler];
      [(LPCaptionButtonPresentationProperties *)v6 setCallback:v17];

LABEL_27:
      [(LPLinkView *)self _addCaptionButton:v6];
      [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];

      goto LABEL_28;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(LPCaptionButtonPresentationProperties *)v6 actions];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v7);
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
        v14 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)_setSecondaryButtonAction:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(LPCaptionButtonPresentationProperties);
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(LPCaptionButtonPresentationProperties *)v5 setActions:v6];

    [(LPCaptionButtonPresentationProperties *)v5 setType:1];
    v7 = [v4 handler];
    [(LPCaptionButtonPresentationProperties *)v5 setCallback:v7];

    objc_storeStrong(&self->_secondaryCaptionButton, v5);
    [(LPConcretePresentationProperties *)self->_properties setSecondaryCaptionButton:v5];
    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }

  else
  {
    secondaryCaptionButton = self->_secondaryCaptionButton;
    self->_secondaryCaptionButton = 0;

    [(LPConcretePresentationProperties *)self->_properties setSecondaryCaptionButton:0];
    v9 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    [v9 setSecondaryButton:0];
  }
}

- (id)_computeCollapsedButtonPropertiesForAttributedString:(id)a3
{
  v3 = a3;
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
  v4 = [v3 length];
  v5 = *MEMORY[0x1E69DB5F8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__LPLinkView__computeCollapsedButtonPropertiesForAttributedString___block_invoke;
  v9[3] = &unk_1E7A36FF0;
  v9[4] = &v16;
  v9[5] = &v10;
  [v3 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v9}];
  if (v17[5])
  {
    v6 = objc_alloc_init(LPCaptionButtonCollapsedPresentationProperties);
    v7 = [v3 attributedSubstringFromRange:{v11[4], v11[5]}];
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

- (void)_setOverrideSubtitle:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  overrideSubtitle = self->_overrideSubtitle;
  self->_overrideSubtitle = v4;

  [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
}

- (CGRect)_rectForCaptionButtonType:(int64_t)a3
{
  v5 = [(LPConcretePresentationProperties *)self->_properties captionButton];
  v6 = [v5 type];

  if (v6 == a3)
  {
    v7 = [(LPLinkViewComponents *)self->_components captionBar];
    v8 = [v7 button];
  }

  else
  {
    v9 = [(LPConcretePresentationProperties *)self->_properties captionTextButton];
    v10 = [v9 type];

    if (v10 != a3)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v7 = [(LPLinkViewComponents *)self->_components captionBar];
    v8 = [v7 subtitleButton];
  }

  v11 = v8;

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
    v4 = [(LPLinkMetadata *)self->_metadata _isDeferringAsynchronousLoads];
    self->_metadataIsComplete = !v4;
    if (!metadataIsComplete && !v4)
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
      v4 = [(LPLinkView *)self _flattenedMetadata];
    }

    else
    {
      v4 = 0;
    }

    [(LPLinkMetadataPresentationTransformer *)v11 setMetadata:v4];
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
    v6 = [(LPCaptionButtonPresentationProperties *)self->_captionButton actions];
    -[LPLinkMetadataPresentationTransformer setHasButtonActions:](v11, "setHasButtonActions:", [v6 count] != 0);

    [(LPLinkMetadataPresentationTransformer *)v11 setHasButton:self->_captionButton != 0];
    [(LPLinkMetadataPresentationTransformer *)v11 setMediaOverlayIcon:self->_mediaOverlayIcon];
    v7 = [(UIView *)self _lp_appearance];
    [(LPLinkMetadataPresentationTransformer *)v11 setEffectiveAppearance:v7];

    [(LPLinkMetadataPresentationTransformer *)v11 setIsSolariumEnabled:[LPSettings solariumIsEnabledForView:self]];
    v8 = [(LPLinkView *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    [(LPLinkMetadataPresentationTransformer *)v11 setPreferredContentSizeCategory:v9];

    self->_effectiveSizeClass = [(LPLinkMetadataPresentationTransformer *)v11 effectiveSizeClass];
    v10 = [(LPLinkMetadataPresentationTransformer *)v11 presentationProperties];
    [(LPLinkView *)self _setPresentationPropertiesInternal:v10];
  }
}

- (BOOL)_useProgressSpinner
{
  v4 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v5 = [v4 leadingIcon];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v2 = [v6 leadingIcon];
  if ([v2 _isFallbackIcon])
  {
    v14 = v6;
LABEL_4:
    v7 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    v8 = [v7 trailingIcon];
    if (v8)
    {
      v9 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
      v10 = [v9 trailingIcon];
      v11 = [v10 _isFallbackIcon] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v6 = v14;
    if (!v5)
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

- (void)_setPresentationPropertiesInternal:(id)a3
{
  v10 = a3;
  presentationPropertyState = self->_presentationPropertyState;
  self->_presentationPropertyState = 0;
  v5 = [[LPConcretePresentationPropertiesParameters alloc] initWithUsesComputedPresentationProperties:self->_usesComputedPresentationProperties inComposeContext:self->_inComposeContext inSenderContext:self->_inSenderContext allowsTapping:!self->_disableTapGesture effectiveSizeClass:self->_effectiveSizeClass overrideSubtitleButtonColor:self->_overrideSubtitleButtonColor overrideActionButtonColor:self->_overrideActionButtonColor overrideSubtitle:self->_overrideSubtitle captionButton:self->_captionButton captionTextButton:self->_captionTextButton secondaryCaptionButton:self->_secondaryCaptionButton];
  v6 = [[LPConcretePresentationProperties alloc] initWithParameters:v5 properties:v10];
  objc_storeStrong(&self->_properties, v6);
  v7 = [(LPWebLinkPresentationProperties *)self->_properties overrideURL];

  if (v7)
  {
    v8 = [(LPWebLinkPresentationProperties *)self->_properties overrideURL];
    overrideURLFromProperties = self->_overrideURLFromProperties;
    self->_overrideURLFromProperties = v8;
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
  v4 = [(LPTheme *)self->_theme mediaImage];
  [v4 darkeningAmount];
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

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(LPLinkView *)self _invalidateLayout];
  }
}

- (void)_setTextSafeAreaInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_textSafeAreaInset.top), vceqq_f64(v4, *&self->_textSafeAreaInset.bottom)))) & 1) == 0)
  {
    self->_textSafeAreaInset = a3;
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
    v7 = [(LPTheme *)self->_theme maximumWidth];
    [v7 value];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v27 = *MEMORY[0x1E69E9840];
  ++self->_suppressNeedsResizeCount;
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  v6 = [(LPTheme *)self->_theme maximumWidth];
  [v6 value];
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
  v3 = [(LPLinkViewComponents *)self->_components captionBar];
  [v3 animateOut];

  v4 = [(LPLinkViewComponents *)self->_components media];
  [v4 removeFromSuperview];

  v5 = [(LPLinkViewComponents *)self->_components quote];
  [v5 removeFromSuperview];

  v6 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
  [v6 removeFromSuperview];

  v7 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
  [v7 removeFromSuperview];

  v8 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
  [v8 removeFromSuperview];

  v9 = [(LPLinkViewComponents *)self->_components backgroundImage];
  [v9 removeFromSuperview];

  v10 = [(LPLinkViewComponents *)self->_components contactsBadge];
  [v10 removeFromSuperview];

  v11 = [(LPLinkViewComponents *)self->_components progressSpinner];
  [v11 removeFromSuperview];

  v12 = [(LPLinkViewComponents *)self->_components textSearchingDimmingView];
  [v12 removeFromSuperview];

  v13 = [(LPLinkViewComponents *)self->_components textHighlightView];
  [v13 removeFromSuperview];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v12 = a3;
  v5 = [v12 valueForKey:@"associatedView"];
  [v12 setValue:0 forKey:@"associatedView"];
  v6 = [v5 layer];
  v7 = [v6 animationForKey:@"widthSpring"];
  if (v7 == v12)
  {
  }

  else
  {
    v8 = [v5 layer];
    v9 = [v8 animationForKey:@"heightSpring"];

    if (v9 != v12)
    {
      goto LABEL_6;
    }
  }

  v10 = [(UIView *)self->_animationView layer];
  [v10 removeAnimationForKey:@"widthSpring"];

  v11 = [(UIView *)self->_animationView layer];
  [v11 removeAnimationForKey:@"heightSpring"];

  [(LPLinkView *)self _setMaskEnabledForAnimation:0];
LABEL_6:
}

- (void)animateInViews
{
  v35 = [(LPLinkView *)self layer];
  [v35 convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  v36 = [MEMORY[0x1E69794A8] _lp_springWithMass:2.0 stiffness:100.0 damping:50.0];
  [v36 setKeyPath:@"opacity"];
  [v36 setFromValue:&unk_1F24835F0];
  [v36 setToValue:&unk_1F2483608];
  v5 = [(LPLinkViewComponents *)self->_components captionBar];
  [v5 animateInWithBaseAnimation:v36 currentTime:v4];

  v6 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
  [v6 animateInWithBaseAnimation:v36 currentTime:v4];

  v7 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
  [v7 animateInWithBaseAnimation:v36 currentTime:v4];

  v8 = [(LPLinkViewComponents *)self->_components media];
  v9 = [v8 layer];
  v10 = v4 + 0.05;
  v11 = [v36 _lp_copyWithBeginTime:v4 + 0.05];
  [v9 addAnimation:v11 forKey:@"fadeIn"];

  v12 = [(LPLinkViewComponents *)self->_components quote];
  v13 = [v12 layer];
  v14 = v4 + 0.285;
  v15 = [v36 _lp_copyWithBeginTime:v14];
  [v13 addAnimation:v15 forKey:@"fadeIn"];

  v16 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
  v17 = [v16 layer];
  v18 = [v36 _lp_copyWithBeginTime:v14];
  [v17 addAnimation:v18 forKey:@"fadeIn"];

  v19 = [(LPLinkViewComponents *)self->_components backgroundImage];
  v20 = [v19 layer];
  v21 = [v36 _lp_copyWithBeginTime:v14];
  [v20 addAnimation:v21 forKey:@"fadeIn"];

  v22 = [(LPLinkViewComponents *)self->_components mediaBackground];
  v23 = [v22 layer];
  [v23 opacity];
  v25 = v24;

  if (v25 == 0.0)
  {
    v26 = [(LPLinkViewComponents *)self->_components mediaBackground];
    v27 = [v26 layer];
    LODWORD(v28) = 1.0;
    [v27 setOpacity:v28];

    v29 = [(LPLinkViewComponents *)self->_components mediaBackground];
    v30 = [v29 layer];
    v31 = [v36 _lp_copyWithBeginTime:v10];
    [v30 addAnimation:v31 forKey:@"fadeIn"];
  }

  v32 = [(LPLinkViewComponents *)self->_components contactsBadge];
  v33 = [v32 layer];
  v34 = [v36 _lp_copyWithBeginTime:v14];
  [v33 addAnimation:v34 forKey:@"fadeIn"];
}

- (void)_setMaskImage:(id)a3
{
  v4 = a3;
  animationMaskView = self->_animationMaskView;
  v9 = v4;
  if (!animationMaskView)
  {
    v6 = [LPAnimationMaskView alloc];
    v7 = [(LPAnimationMaskView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = self->_animationMaskView;
    self->_animationMaskView = v7;

    animationMaskView = self->_animationMaskView;
    v4 = v9;
  }

  [(LPAnimationMaskView *)animationMaskView setImage:v4];
  [(LPAnimationMaskView *)self->_animationMaskView setAnimationOrigin:self->_animationOrigin];
}

- (void)animateFromOldFrame:(CGRect)a3 oldMediaBackgroundFrame:(CGRect)a4 oldCaptionBarView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v130 = a5;
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

    v22 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
    v23 = [v22 layer];
    [v23 addAnimation:v17 forKey:@"maskWidthSpring"];

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

    v29 = [(UIView *)self->_animationView layer];
    [v29 addAnimation:v24 forKey:@"widthSpring"];

    if ([(LPLinkView *)self _animationOrigin]== 1 && self->_needsMessagesTranscriptPushCounterAnimation)
    {
      v30 = [v17 copy];
      v31 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
      v32 = [v31 layer];
      [v32 addAnimation:v30 forKey:@"imageViewAnimation"];

      v33 = [MEMORY[0x1E6979318] animation];
      [v33 setDuration:0.3];
      v34 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v33 setTimingFunction:v34];

      [v33 setKeyPath:@"transform.translation.x"];
      v35 = MEMORY[0x1E696AD98];
      [(LPLinkView *)self frame];
      v37 = [v35 numberWithDouble:v10 - v36];
      [v33 setFromValue:v37];

      [v33 setToValue:&unk_1F24835F0];
      v38 = [(UIView *)self->_animationView layer];
      [v38 addAnimation:v33 forKey:@"horizontalSlide"];

      v39 = [(LPAnimationMaskView *)self->_animationMaskView layer];
      [v39 addAnimation:v33 forKey:@"horizontalSlide"];
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
      v44 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
      v45 = [v44 layer];
      [v45 addAnimation:v40 forKey:@"maskViewSpring"];
    }
  }

  v46 = [(LPLinkViewComponents *)self->_components mediaBackground];
  if (v46 && (v132.origin.x = x, v132.origin.y = y, v132.size.width = width, v132.size.height = height, IsNull = CGRectIsNull(v132), v46, !IsNull))
  {
    [(LPLinkView *)self frame];
    v55 = v54;
    v52 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [v52 frame];
    v49 = v55 - v56 - (v9 - height);
  }

  else
  {
    v48 = [(LPLinkViewComponents *)self->_components mediaBackground];

    v49 = v9;
    if (!v48)
    {
      goto LABEL_16;
    }

    [(LPLinkView *)self frame];
    v51 = v50;
    v52 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [v52 frame];
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

    v63 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
    v64 = [v63 layer];
    [v64 addAnimation:v58 forKey:@"maskHeightSpring"];

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

    v70 = [(UIView *)self->_animationView layer];
    [v70 addAnimation:v65 forKey:@"heightSpring"];

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
      v77 = [(UIView *)self->_animationView layer];
      [v77 addAnimation:v72 forKey:@"verticalSlide"];

      v78 = [(LPAnimationMaskView *)self->_animationMaskView layer];
      [v78 addAnimation:v72 forKey:@"verticalSlide"];
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

    v89 = [(LPLinkViewComponents *)self->_components captionBar];
    v90 = [v89 layer];
    [v90 addAnimation:v71 forKey:@"transformSpring"];

    v91 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
    v92 = [v91 layer];
    [v92 addAnimation:v71 forKey:@"transformSpring"];

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

    v102 = [v130 layer];
    [v102 addAnimation:v93 forKey:@"previousCaptionBarPositionMaintaining"];

    v103 = [v71 copy];
    v104 = MEMORY[0x1E696B098];
    [(LPLinkView *)self frame];
    v106 = [v104 _lp_valueWithCGSize:{v80, v49 + v9 - v105}];
    [v103 setFromValue:v106];

    v107 = [(LPLinkViewComponents *)self->_components mediaBackground];
    v108 = [v107 layer];
    [v108 addAnimation:v103 forKey:@"captionBarAdjustedTransformSpring"];
  }

  if (![(LPLinkView *)self _animationOrigin])
  {
    v109 = [v15 copy];
    [v109 setKeyPath:@"transform.translation.y"];
    v110 = MEMORY[0x1E696AD98];
    [(LPLinkView *)self frame];
    v112 = [v110 numberWithDouble:v9 - v111];
    [v109 setFromValue:v112];

    [v109 setToValue:&unk_1F24835F0];
    v113 = [(LPAnimationMaskView *)self->_animationMaskView imageView];
    v114 = [v113 layer];
    [v114 addAnimation:v109 forKey:@"maskViewYSpring"];

    v115 = [(UIView *)self->_animationView layer];
    [v115 addAnimation:v109 forKey:@"maskViewYSpring"];
  }

  v116 = [v15 copy];
  [v116 setKeyPath:@"transform.scale.x"];
  v117 = MEMORY[0x1E696AD98];
  v118 = [(LPLinkViewComponents *)self->_components mediaBackground];
  [v118 frame];
  v120 = [v117 numberWithDouble:v10 / v119];
  [v116 setFromValue:v120];

  [v116 setToValue:&unk_1F2483608];
  v121 = [(LPLinkViewComponents *)self->_components mediaBackground];
  v122 = [v121 layer];
  [v122 addAnimation:v116 forKey:@"mediaScaleSpring"];

  v123 = [v15 copy];
  [v123 setKeyPath:@"transform.scale.y"];
  v124 = MEMORY[0x1E696AD98];
  [(LPLinkView *)self frame];
  v126 = [v124 numberWithDouble:v9 / v125];
  [v123 setFromValue:v126];

  [v123 setToValue:&unk_1F2483608];
  v127 = [(LPLinkViewComponents *)self->_components mediaBackground];
  v128 = [v127 layer];
  [v128 addAnimation:v123 forKey:@"mediaScaleYSpring"];

  if (!v129)
  {
    [(LPLinkView *)self _setMaskEnabledForAnimation:1];
  }
}

- (void)_setSuppressChatKitMask:(BOOL)a3
{
  v3 = a3;
  v7 = [(LPLinkView *)self superview];
  NSClassFromString(&cfstr_Ckballoonview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(LPLinkView *)self superview];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v9 = [(LPLinkView *)self superview];
      [v9 setSuppressMask:v3];
    }
  }
}

- (void)_updateMasking
{
  v3 = [(LPLinkView *)self maskView];

  if (self->_maskEnabled)
  {
    if (v3)
    {
      return;
    }

    [(LPLinkView *)self _setSuppressChatKitMask:1];
  }

  else
  {
    maskEnabledForAnimation = self->_maskEnabledForAnimation;
    if (((v3 == 0) ^ maskEnabledForAnimation))
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
  v3 = [(UIView *)self->_animationView layer];
  [v3 addAnimation:v4 forKey:@"backgroundColorTransition"];
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
    v5 = [(LPLinkView *)self _createProgressSpinner];
    [(LPLinkViewComponents *)v3 setProgressSpinner:v5];

    if (!findInteractionEnabled)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v6 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v7 = [v6 hasAnyContent];

  v8 = [(LPConcretePresentationProperties *)self->_properties hasMedia];
  v9 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  if (v10 == 1)
  {
    v11 = [(LPWebLinkPresentationProperties *)self->_properties mediaTopCaptionBar];
    v12 = [v11 hasAnyContent];

    v13 = [(LPWebLinkPresentationProperties *)self->_properties mediaBottomCaptionBar];
    v14 = [v13 hasAnyContent];
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [(LPWebLinkPresentationProperties *)self->_properties domainNameForIndicator];

  v16 = [(LPWebLinkPresentationProperties *)self->_properties backgroundImage];

  v17 = [(NSArray *)self->_contactsForAttribution count];
  v32 = self->_findInteractionEnabled;
  if (v7)
  {
    v18 = [(LPLinkView *)self _createCaptionBar];
    [(LPLinkViewComponents *)v3 setCaptionBar:v18];

    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else if (!v8)
  {
LABEL_13:
    v19 = 0;
    if (v12)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v22 = [(LPLinkView *)self _createMediaView];
  [(LPLinkViewComponents *)v3 setMedia:v22];

  v19 = 1;
  if (v12)
  {
LABEL_14:
    v20 = [(LPLinkView *)self _createMediaTopCaptionBarView];
    [(LPLinkViewComponents *)v3 setMediaTopCaptionBar:v20];

    if ((v14 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v23 = [(LPLinkView *)self _createMediaBottomCaptionBarView];
    [(LPLinkViewComponents *)v3 setMediaBottomCaptionBar:v23];

    if (v9)
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
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_16:
  v21 = [(LPLinkView *)self _createQuotedTextView];
  [(LPLinkViewComponents *)v3 setQuote:v21];

LABEL_22:
  v24 = [(LPLinkViewComponents *)self->_components mediaBackground];
  v25 = v24;
  if (!v24)
  {
    v25 = objc_alloc_init(LPBackgroundColorView);
  }

  [(LPLinkViewComponents *)v3 setMediaBackground:v25];
  if (!v24)
  {
  }

LABEL_27:
  if (v15)
  {
    v26 = [(LPLinkView *)self _createDomainNameIndicator];
    [(LPLinkViewComponents *)v3 setDomainNameIndicator:v26];
  }

  if (v16)
  {
    v27 = [(LPLinkView *)self _createBackgroundImageView];
    [(LPLinkViewComponents *)v3 setBackgroundImage:v27];
  }

  if (!v17)
  {
    if (!v32)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v28 = [(LPLinkView *)self _createContactsBadgeView];
  [(LPLinkViewComponents *)v3 setContactsBadge:v28];

  if (v32)
  {
LABEL_35:
    v29 = [(LPLinkView *)self _createTextSearchingDimmingView];
    [(LPLinkViewComponents *)v3 setTextSearchingDimmingView:v29];

    v30 = [(LPLinkView *)self _createTextHighlightView];
    [(LPLinkViewComponents *)v3 setTextHighlightView:v30];
  }

LABEL_36:

  return v3;
}

- (id)_mediaBackgroundColor
{
  v3 = [(LPWebLinkPresentationProperties *)self->_properties imageProperties];
  v4 = [v3 backgroundColor];

  if (v4)
  {
    v5 = [(LPWebLinkPresentationProperties *)self->_properties imageProperties];
    v6 = [v5 backgroundColor];
  }

  else
  {
    overrideMediaBackgroundColor = self->_overrideMediaBackgroundColor;
    if (overrideMediaBackgroundColor || (overrideMediaBackgroundColor = self->_overrideBackgroundColor) != 0)
    {
      v8 = overrideMediaBackgroundColor;
    }

    else
    {
      v8 = [MEMORY[0x1E69DC888] clearColor];
    }

    v6 = v8;
  }

  return v6;
}

- (void)_rebuildSubviewsWithAnimation:(BOOL)a3
{
  v3 = a3;
  self->_needsRebuild = 0;
  if (a3)
  {
    [(LPLinkView *)self animateOutAndRemoveViews];
  }

  else
  {
    while (1)
    {
      v73 = [(UIView *)self->_contentView subviews];
      v8 = [v73 count];

      if (!v8)
      {
        break;
      }

      v74 = [(UIView *)self->_contentView subviews];
      v9 = [v74 lastObject];
      [v9 removeFromSuperview];
    }

    while (1)
    {
      v75 = [(LPLinkViewComponents *)self->_components mediaBackground];
      v10 = [v75 subviews];
      v11 = [v10 count];

      if (!v11)
      {
        break;
      }

      v76 = [(LPLinkViewComponents *)self->_components mediaBackground];
      v12 = [v76 subviews];
      v13 = [v12 lastObject];
      [v13 removeFromSuperview];
    }
  }

  [(LPLinkView *)self _uninstallTapGestureRecognizers];
  [(LPLinkView *)self _uninstallHighlightGestureRecognizers];
  [(LPLinkView *)self _updateCornerRadius];
  v5 = [(LPLinkView *)self _shouldClipAnimationView];
  v71 = [(UIView *)self->_animationView layer];
  [v71 setMasksToBounds:v5];

  v72 = self->_components;
  componentsForSizing = self->_componentsForSizing;
  if (componentsForSizing)
  {
    v7 = componentsForSizing;
  }

  else
  {
    v7 = [(LPLinkView *)self _createComponents];
  }

  components = self->_components;
  self->_components = v7;

  [(LPLinkView *)self _setEmphasizedTextExpression:self->_emphasizedTextExpression];
  v15 = [(LPLinkViewComponents *)self->_components backgroundImage];

  if (v15)
  {
    contentView = self->_contentView;
    v17 = [(LPLinkViewComponents *)self->_components backgroundImage];
    [(UIView *)contentView addSubview:v17];
  }

  v18 = [(LPLinkViewComponents *)self->_components mediaBackground];

  if (v18)
  {
    if ([(LPWebLinkPresentationProperties *)self->_properties style]!= 15 && v3)
    {
      v19 = [(LPLinkViewComponents *)v72 mediaBackground];

      if (!v19)
      {
        v20 = [(LPLinkViewComponents *)self->_components mediaBackground];
        v21 = [v20 layer];
        [v21 setOpacity:0.0];
      }
    }

    v22 = self->_contentView;
    v23 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [(UIView *)v22 addSubview:v23];
  }

  else
  {
    v23 = [(LPLinkViewComponents *)v72 mediaBackground];
    [v23 removeFromSuperview];
  }

  v24 = [(LPLinkViewComponents *)self->_components captionBar];

  if (v24)
  {
    v25 = self->_contentView;
    v26 = [(LPLinkViewComponents *)self->_components captionBar];
    [(UIView *)v25 addSubview:v26];

    v27 = [(LPLinkViewComponents *)self->_components captionBar];
    v28 = [v27 button];
    [v28 addTarget:self action:sel__captionBarButtonPressed_];

    v29 = [(LPLinkViewComponents *)self->_components captionBar];
    v30 = [v29 secondaryButton];
    [v30 addTarget:self action:sel__secondaryCaptionBarButtonPressed_];
  }

  v31 = [(LPLinkView *)self _sizeClassParameters];
  [v31 minimumMediaCornerRadius];
  if (v32 == 0.0)
  {
    v37 = 0.0;
  }

  else
  {
    [(LPLinkView *)self _effectiveCornerRadius];
    v34 = v33;
    v35 = [(LPLinkView *)self _sizeClassParameters];
    [v35 minimumMediaCornerRadius];
    v37 = fmax(v34, v36);
  }

  v38 = [(LPLinkViewComponents *)self->_components mediaBackground];

  if (v38)
  {
    v39 = [(LPLinkView *)self _mediaBackgroundColor];
    v40 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [v40 setColor:v39];

    if (v37 != 0.0)
    {
      v41 = [(LPLinkViewComponents *)self->_components mediaBackground];
      [v41 _lp_setCornerRadius:v37];
    }

    v42 = self->_contentView;
    v43 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [(UIView *)v42 _lp_bringSubviewToFront:v43];
  }

  v44 = [(LPLinkViewComponents *)self->_components media];

  if (v44)
  {
    v45 = [(LPLinkViewComponents *)self->_components mediaBackground];
    v46 = [(LPLinkViewComponents *)self->_components media];
    [v45 addSubview:v46];
  }

  v47 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];

  if (v47)
  {
    v48 = self->_contentView;
    v49 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
    [(UIView *)v48 addSubview:v49];
  }

  v50 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];

  if (v50)
  {
    v51 = self->_contentView;
    v52 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
    [(UIView *)v51 addSubview:v52];
  }

  v53 = [(LPLinkViewComponents *)self->_components quote];

  if (v53)
  {
    v54 = [(LPLinkViewComponents *)self->_components mediaBackground];
    v55 = [(LPLinkViewComponents *)self->_components quote];
    [v54 addSubview:v55];
  }

  v56 = [(LPLinkViewComponents *)self->_components domainNameIndicator];

  if (v56)
  {
    v57 = self->_contentView;
    v58 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
    [(UIView *)v57 addSubview:v58];
  }

  v59 = [(LPLinkViewComponents *)self->_components contactsBadge];

  if (v59)
  {
    v60 = self->_contentView;
    v61 = [(LPLinkViewComponents *)self->_components contactsBadge];
    [(UIView *)v60 addSubview:v61];
  }

  v62 = [(LPLinkViewComponents *)self->_components progressSpinner];

  if (v62)
  {
    v63 = self->_contentView;
    v64 = [(LPLinkViewComponents *)self->_components progressSpinner];
    [(UIView *)v63 addSubview:v64];
  }

  v65 = [(LPLinkViewComponents *)self->_components textSearchingDimmingView];

  if (v65)
  {
    v66 = self->_contentView;
    v67 = [(LPLinkViewComponents *)self->_components textSearchingDimmingView];
    [(UIView *)v66 addSubview:v67];
  }

  v68 = [(LPLinkViewComponents *)self->_components textHighlightView];

  if (v68)
  {
    v69 = self->_contentView;
    v70 = [(LPLinkViewComponents *)self->_components textHighlightView];
    [(UIView *)v69 addSubview:v70];
  }

  if (v3)
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
  v16 = [(LPLinkViewComponents *)self->_components mediaBackground];
  if (v16)
  {
    v49 = v16;
    v17 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [v17 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v16 = v49;
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
    v26 = [(LPLinkViewComponents *)self->_components captionBar];
    componentsForSizing = self->_componentsForSizing;
    self->_componentsForSizing = 0;

    v50 = v26;
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
    v33 = [(LPLinkViewComponents *)self->_components media];
    [v33 setAnchorPoint:{v31, v32}];

    v34 = [(LPLinkViewComponents *)self->_components mediaBackground];
    [v34 setAnchorPoint:{v31, v32}];
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

- (void)_setEmphasizedTextExpression:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_emphasizedTextExpression, a3);
  v5 = [(LPLinkViewComponents *)self->_components captionBar];
  [v5 setEmphasizedTextExpression:v9];

  v6 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
  [v6 setEmphasizedTextExpression:v9];

  v7 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
  [v7 setEmphasizedTextExpression:v9];

  v8 = [(LPLinkViewComponents *)self->_components quote];
  [v8 setEmphasizedTextExpression:v9];
}

- (id)_createProgressSpinner
{
  v3 = [LPIndeterminateProgressSpinnerView alloc];
  v4 = [(LPTheme *)self->_theme progressSpinner];
  v5 = [(LPWebLinkPresentationProperties *)self->_properties progressSpinner];
  v6 = [(LPIndeterminateProgressSpinnerView *)v3 initWithHost:self style:v4 properties:v5];

  return v6;
}

- (id)_createCaptionBar
{
  v3 = [LPCaptionBarView alloc];
  v4 = [(LPTheme *)self->_theme captionBar];
  v5 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v6 = [(LPCaptionBarView *)v3 initWithHost:self style:v4 presentationProperties:v5 captionType:@"CaptionBar"];

  [(LPCaptionBarView *)v6 setEmphasizedTextExpression:self->_emphasizedTextExpression];
  [(LPCaptionBarView *)v6 setUseProgressSpinner:[(LPLinkView *)self _useProgressSpinner]];
  if (+[LPSettings showDebugIndicators])
  {
    v7 = [MEMORY[0x1E69DC888] blueColor];
    v8 = [v7 CGColor];
    v9 = [(LPCaptionBarView *)v6 layer];
    [v9 setBorderColor:v8];

    v10 = [(LPCaptionBarView *)v6 layer];
    [v10 setBorderWidth:0.5];
  }

  if (!self->_disablePlayback && !self->_disablePlaybackControls)
  {
    v11 = [(LPWebLinkPresentationProperties *)self->_properties inlinePlaybackInformation];

    if (v11)
    {
      v12 = [(LPWebLinkPresentationProperties *)self->_properties inlinePlaybackInformation];
      [(LPCaptionBarView *)v6 setPlaybackInformation:v12];
    }
  }

  if (self->_collaborationFooter)
  {
    v13 = [LPCollaborationFooterView alloc];
    collaborationFooter = self->_collaborationFooter;
    v15 = [(LPTheme *)self->_theme captionBar];
    v16 = [v15 collaborationFooter];
    v17 = [(LPCollaborationFooterView *)v13 initWithHost:self properties:collaborationFooter style:v16];
    [(LPCaptionBarView *)v6 setCollaborationFooterView:v17];
  }

  return v6;
}

- (id)_createMediaTopCaptionBarView
{
  v3 = [LPCaptionBarView alloc];
  v4 = [(LPTheme *)self->_theme mediaTopCaptionBar];
  v5 = [(LPWebLinkPresentationProperties *)self->_properties mediaTopCaptionBar];
  v6 = [(LPCaptionBarView *)v3 initWithHost:self style:v4 presentationProperties:v5 captionType:@"MediaTopCaptionBar"];

  [(LPCaptionBarView *)v6 setEmphasizedTextExpression:self->_emphasizedTextExpression];
  v7 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];

  if (v7)
  {
    v8 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];
    -[UIView _lp_setForceLTR:](v6, "_lp_setForceLTR:", [v8 _lp_isLTRText]);
  }

  [(LPCaptionBarView *)v6 setUserInteractionEnabled:0];

  return v6;
}

- (id)_createMediaBottomCaptionBarView
{
  v3 = [LPCaptionBarView alloc];
  v4 = [(LPTheme *)self->_theme mediaBottomCaptionBar];
  v5 = [(LPWebLinkPresentationProperties *)self->_properties mediaBottomCaptionBar];
  v6 = [(LPCaptionBarView *)v3 initWithHost:self style:v4 presentationProperties:v5 captionType:@"MediaBottomCaptionBar"];

  [(LPCaptionBarView *)v6 setEmphasizedTextExpression:self->_emphasizedTextExpression];
  v7 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];

  if (v7)
  {
    v8 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];
    -[UIView _lp_setForceLTR:](v6, "_lp_setForceLTR:", [v8 _lp_isLTRText]);
  }

  [(LPCaptionBarView *)v6 setUserInteractionEnabled:0];

  return v6;
}

- (id)_createTapToLoadView
{
  v3 = [LPTapToLoadView alloc];
  v4 = [(LPTheme *)self->_theme tapToLoad];
  v5 = [(LPTapToLoadView *)v3 initWithHost:self style:v4];

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
  v4 = [(LPLinkView *)self _shouldApplyCornerRadius];
  v5 = 28.0;
  if (v4)
  {
    [(LPLinkView *)self _effectiveCornerRadius];
  }

  [(LPVisualMediaViewConfiguration *)v3 setFullScreenTransitionCornerRadius:v5];

  return v3;
}

- (id)_createMediaViewForProperties:(id)a3
{
  v4 = a3;
  if ([v4 style] == 15)
  {
    v5 = [(LPLinkView *)self _createTapToLoadView];
    goto LABEL_12;
  }

  v6 = [v4 video];
  v7 = [v6 youTubeURL];

  if (v7)
  {
    v8 = [LPYouTubeVideoView alloc];
    v9 = [v4 video];
    v10 = [(LPTheme *)self->_theme mediaVideo];
    v11 = [v4 image];
    v12 = [(LPTheme *)self->_theme mediaImage];
    v13 = [(LPLinkView *)self _videoViewConfiguration];
    v14 = [(LPYouTubeVideoView *)v8 initWithHost:self video:v9 style:v10 posterFrame:v11 posterFrameStyle:v12 configuration:v13];
LABEL_9:
    v5 = v14;

LABEL_10:
LABEL_11:

    goto LABEL_12;
  }

  v15 = [v4 video];
  v16 = [v15 streamingURL];
  if (v16)
  {

LABEL_8:
    v19 = [LPStreamingVideoView alloc];
    v9 = [v4 video];
    v10 = [(LPTheme *)self->_theme mediaVideo];
    v11 = [v4 image];
    v12 = [(LPTheme *)self->_theme mediaImage];
    v13 = [(LPLinkView *)self _videoViewConfiguration];
    v14 = [(LPStreamingVideoView *)v19 initWithHost:self video:v9 style:v10 posterFrame:v11 posterFrameStyle:v12 configuration:v13];
    goto LABEL_9;
  }

  v17 = [v4 video];
  v18 = [v17 data];

  if (v18)
  {
    goto LABEL_8;
  }

  v21 = [v4 image];
  v22 = [v21 _isFallbackIcon];

  if (v22)
  {
    v23 = [LPImageView alloc];
    v9 = [v4 image];
    v10 = [(LPTheme *)self->_theme placeholderImage];
    v24 = [(LPImageView *)v23 initWithHost:self image:v9 properties:0 style:v10];
    goto LABEL_20;
  }

  v25 = [v4 image];

  if (v25)
  {
    v26 = [v4 alternateImages];

    if (!v26)
    {
      v30 = [LPImageView alloc];
      v9 = [v4 image];
      v10 = [v4 imageProperties];
      v11 = [(LPTheme *)self->_theme mediaImage];
      v5 = [(LPImageView *)v30 initWithHost:self image:v9 properties:v10 style:v11];
      goto LABEL_10;
    }

    v27 = [v4 alternateImages];
    v9 = [v27 mutableCopy];

    v28 = [v4 image];
    [v9 insertObject:v28 atIndex:0];

    v29 = [LPMultipleImageView alloc];
    v10 = [(LPTheme *)self->_theme mediaImage];
    v24 = [(LPMultipleImageView *)v29 initWithHost:self images:v9 style:v10];
LABEL_20:
    v5 = v24;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (id)_createQuotedTextView
{
  v3 = [LPQuoteView alloc];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];
  v6 = [v4 initWithString:v5];
  v7 = [(LPTheme *)self->_theme quotedText];
  v8 = [(LPQuoteView *)v3 initWithHost:self text:v6 style:v7];

  [(LPQuoteView *)v8 setEmphasizedTextExpression:self->_emphasizedTextExpression];
  v9 = [(LPWebLinkPresentationProperties *)self->_properties quotedText];
  -[UIView _lp_setForceLTR:](v8, "_lp_setForceLTR:", [v9 _lp_isLTRText]);

  return v8;
}

- (id)_createDomainNameIndicator
{
  v3 = [LPDomainNameIndicator alloc];
  v4 = [(LPWebLinkPresentationProperties *)self->_properties domainNameForIndicator];
  v5 = [(LPDomainNameIndicator *)v3 initWithHost:self domainName:v4 theme:self->_theme];

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
    v8 = [(LPWebLinkPresentationProperties *)self->_properties backgroundImageProperties];
    v9 = [(LPTheme *)self->_theme backgroundImage];
    v5 = [(LPImageView *)v7 initWithHost:self image:v6 properties:v8 style:v9];
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
  v6 = [(LPTheme *)self->_theme contactsBadgeStyle];
  v7 = [(LPContactsBadgeView *)v3 initWithHost:self contacts:contactsForAttribution highlighted:highlightedForAttribution style:v6];

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

- (int64_t)componentView:(id)a3 allowedImageFilterForFilter:(int64_t)a4
{
  v6 = a3;
  if (a4 == 8 && ![(LPLinkView *)self _isUsingAppClipPresentation])
  {
    goto LABEL_5;
  }

  if ([(LPLinkView *)self _useLowMemoryImageFilters])
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 5)
    {
LABEL_5:
      a4 = 3;
      goto LABEL_6;
    }

    if ((a4 - 9) < 3)
    {
      a4 = 1;
    }
  }

LABEL_6:

  return a4;
}

- (void)componentViewDidTapCaptionButton:(id)a3 buttonType:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _linkView:self didTapCaptionButtonWithType:a4];
  }
}

- (id)componentView:(id)a3 playerForAudio:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained _linkView:self playerForAudio:v5], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [LPStreamingAudioPlayer playerWithAudio:v5];
  }

  return v7;
}

- (id)downloadProgressForComponentView:(id)a3
{
  v3 = [[LPLinkMetadataDownloadProgressTransformer alloc] initWithBytesLoaded:self->_bytesLoaded downloadState:self->_sharedObjectDownloadState metadata:self->_metadata];
  v4 = [(LPLinkMetadataDownloadProgressTransformer *)v3 downloadProgressForTransformer:v3];

  return v4;
}

- (CGSize)_layoutLinkViewForSize:(CGSize)a3 applyingLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v7 = &OBJC_IVAR___LPLinkView__componentsForSizing;
  if (a4)
  {
    v7 = &OBJC_IVAR___LPLinkView__components;
  }

  v8 = *(&self->super.super.super.isa + *v7);
  if (!v8)
  {
    v8 = [(LPLinkView *)self _createComponents];
    objc_storeStrong(&self->_componentsForSizing, v8);
  }

  v289 = width;
  if (!v4)
  {
    if ([(LPWebLinkPresentationProperties *)self->_properties style]== 15)
    {
      v9 = [(LPTheme *)self->_theme tapToLoad];
      v10 = [v9 width];
      [v10 value];
      width = fmin(v11, width);
    }

    else if (self->_allowsSkinnyWidth)
    {
      v12 = [v8 media];

      if (v12)
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

  v14 = [v8 captionBar];
  v15 = *MEMORY[0x1E695F050];
  v16 = *(MEMORY[0x1E695F050] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v18 = *(MEMORY[0x1E695F050] + 24);

  r2_16 = v18;
  r2_24 = v17;
  v322 = v16;
  v323 = v15;
  if (v14)
  {
    top = self->_textSafeAreaInset.top;
    left = self->_textSafeAreaInset.left;
    bottom = self->_textSafeAreaInset.bottom;
    right = self->_textSafeAreaInset.right;
    v23 = [v8 captionBar];
    [v23 setTextSafeAreaInset:{top, left, bottom, right}];

    v24 = [v8 captionBar];
    [v24 sizeThatFits:{width, height}];
    r1 = v25;
    v27 = v26;

    if (self->_forceFlexibleWidth)
    {
      v28 = !v4;
    }

    else
    {
      v30 = [(LPWebLinkPresentationProperties *)self->_properties style];
      effectiveSizeClass = self->_effectiveSizeClass;
      v32 = [v8 quote];
      v33 = [v8 media];
      v28 = shouldUseFlexibleWidth(v30, effectiveSizeClass, v32 != 0, v33 != 0) & !v4;
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

  v35 = [v8 quote];

  if (v35)
  {
    v36 = self->_textSafeAreaInset.top;
    v37 = self->_textSafeAreaInset.left;
    v38 = self->_textSafeAreaInset.bottom;
    v39 = self->_textSafeAreaInset.right;
    v40 = [v8 quote];
    [v40 setContentInset:{v36, v37, v38, v39}];

    v41 = [v8 quote];
    [v41 sizeThatFits:{width, v29}];
    v294 = v42;
    v44 = v43;

    [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters mediaFixedAspectRatio];
    if (v45 != 0.0)
    {
      [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters mediaFixedAspectRatio];
      v44 = width / v46;
    }

    v47 = fmin(v44, v29);
    if (v4)
    {
      v48 = [v8 media];

      if (!v48)
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
  v50 = [v8 media];

  if (v50)
  {
    v51 = [v8 media];
    [v51 sizeThatFits:{width, v29}];
    v297 = v52;
    v54 = v53;

    [(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters mediaFixedAspectRatio];
    if (v55 == 0.0)
    {
      if (v4)
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

    v81 = [v8 mediaTopCaptionBar];

    v299 = r2_24;
    v300 = r2_16;
    MinY = v322;
    v301 = v323;
    if (v81)
    {
      v82 = self->_textSafeAreaInset.top;
      v83 = self->_textSafeAreaInset.left;
      v84 = self->_textSafeAreaInset.bottom;
      v85 = self->_textSafeAreaInset.right;
      v86 = [v8 mediaTopCaptionBar];
      [v86 setTextSafeAreaInset:{v82, v83, v84, v85}];

      v87 = [v8 mediaTopCaptionBar];
      [v87 sizeThatFits:{width, v57}];
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

    v90 = [v8 domainNameIndicator];

    v314 = r2_16;
    v316 = r2_24;
    v59 = v322;
    v312 = v323;
    if (v90)
    {
      v91 = [v8 domainNameIndicator];
      [v91 sizeThatFits:{width, v57}];
      v93 = v92;
      v95 = v94;

      v329.origin.x = 0.0;
      v329.origin.y = 0.0;
      v329.size.width = width;
      v329.size.height = v57;
      v59 = CGRectGetMinY(v329);
      v96 = [(UIView *)self _lp_isLTR];
      v314 = fmin(v95, v57);
      v316 = fmin(v93, width);
      v97 = width - v316;
      if (v96)
      {
        v97 = 0.0;
      }

      v312 = v97;
    }

    v98 = [v8 mediaBottomCaptionBar];

    if (v98)
    {
      v99 = self->_textSafeAreaInset.top;
      v100 = self->_textSafeAreaInset.left;
      v101 = self->_textSafeAreaInset.bottom;
      v102 = self->_textSafeAreaInset.right;
      v103 = [v8 mediaBottomCaptionBar];
      [v103 setTextSafeAreaInset:{v99, v100, v101, v102}];

      v104 = [v8 mediaBottomCaptionBar];
      [v104 sizeThatFits:{width, v57}];
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
    v58 = [v8 quote];

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
    if (v58)
    {
      v60 = [v8 mediaTopCaptionBar];

      v299 = r2_24;
      v300 = r2_16;
      MinY = v322;
      v301 = v323;
      if (v60)
      {
        v61 = self->_textSafeAreaInset.top;
        v62 = self->_textSafeAreaInset.left;
        v63 = self->_textSafeAreaInset.bottom;
        v64 = self->_textSafeAreaInset.right;
        v65 = [v8 mediaTopCaptionBar];
        [v65 setTextSafeAreaInset:{v61, v62, v63, v64}];

        v66 = [v8 mediaTopCaptionBar];
        [v66 sizeThatFits:{v311, v47}];
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

      v69 = [v8 mediaBottomCaptionBar];

      if (v69)
      {
        v70 = self->_textSafeAreaInset.top;
        v71 = self->_textSafeAreaInset.left;
        v72 = self->_textSafeAreaInset.bottom;
        v73 = self->_textSafeAreaInset.right;
        v74 = [v8 mediaBottomCaptionBar];
        [v74 setTextSafeAreaInset:{v70, v71, v72, v73}];

        v75 = [v8 mediaBottomCaptionBar];
        [v75 sizeThatFits:{v311, v47}];
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

  v107 = [v8 progressSpinner];

  v307 = r2_24;
  v308 = r2_16;
  if (v107)
  {
    v108 = [v8 progressSpinner];
    [v108 sizeThatFits:{v290, height}];
    v110 = v109;
    v112 = v111;

    v307 = v110;
    v323 = (v290 - v110) * 0.5;
    v308 = v112;
    v322 = (height - v112) * 0.5;
  }

  v113 = [v8 media];
  if (v113)
  {
    v114 = v47;

    v115 = rect;
  }

  else
  {
    v116 = [v8 domainNameIndicator];

    v115 = rect;
    if (v116)
    {
      v114 = v47;
      v117 = [v8 domainNameIndicator];
      [v117 sizeThatFits:{v316, v314}];
      v316 = v118;
      v314 = v119;

      v120 = [(UIView *)self _lp_isLTR];
      v121 = width - v316;
      v59 = 0.0;
      if (v120)
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

  v122 = [v8 media];

  if (v122)
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

  v124 = [v8 media];
  if (v124)
  {
  }

  else
  {
    v125 = [v8 domainNameIndicator];

    if (v125)
    {
      v332.origin.x = v312;
      v332.origin.y = v59;
      v332.size.width = v316;
      v332.size.height = v314;
      MaxY = CGRectGetMaxY(v332);
    }
  }

  v126 = [v8 quote];

  if (v126)
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

  v128 = [v8 captionBar];

  v129 = v297;
  if (v128)
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
    v139 = [(LPWebLinkPresentationProperties *)self->_properties minimumHeight];
    [v139 doubleValue];
    v141 = v140;

    v142 = v137 < v141;
    v143 = v137;
    if (v142)
    {
      v144 = [(LPWebLinkPresentationProperties *)self->_properties minimumHeight];
      [v144 doubleValue];
      v143 = v145;
    }
  }

  else
  {
    v143 = v137;
  }

  v146 = [v8 quote];

  v296 = v143;
  if (v4 && v137 < height)
  {
    v147 = height - v137;
    if (!v146)
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

  if (v4)
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
          v150 = [v8 mediaBackground];
          [v150 setFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        }

        else
        {
          v150 = [v8 mediaBackground];
          [v150 setFrame:{r2, MaxY, v311, v114}];
        }
      }

      else
      {
        v150 = [v8 mediaBackground];
        [v150 setFrame:{r2_8, v321, v313, v57}];
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
      v150 = [v8 mediaBackground];
      [v150 setFrame:{x, y, v153, v154}];
    }

    v155 = [v8 mediaBackground];
    [v155 convertRect:self->_contentView fromView:{r2_8, v321, v313, v57}];
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v164 = [v8 media];
    [v164 setFrame:{v157, v159, v161, v163}];

    v165 = [v8 domainNameIndicator];
    [v165 setFrame:{v312, v59, v316, v314}];

    v166 = [v8 mediaTopCaptionBar];
    [v166 setFrame:{v301, MinY, v299, v300}];

    v167 = [v8 mediaBottomCaptionBar];
    [v167 setFrame:{v293, v306, v291, v292}];

    v168 = [v8 mediaBackground];
    [v168 convertRect:self->_contentView fromView:{r2, MaxY, v311, v114}];
    v170 = v169;
    v172 = v171;
    v174 = v173;
    v176 = v175;
    v177 = [v8 quote];
    [v177 setFrame:{v170, v172, v174, v176}];

    [(LPLinkView *)self bounds];
    [(LPLinkView *)self convertRect:self->_contentView toView:?];
    v179 = v178;
    v181 = v180;
    v183 = v182;
    v185 = v184;
    v186 = [v8 backgroundImage];
    [v186 setFrame:{v179, v181, v183, v185}];

    v187 = [v8 progressSpinner];
    [v187 setFrame:{v323, v322, v307, v308}];

    v188 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
    LODWORD(v177) = [v188 usesBlurredBackground];

    if (v177)
    {
      v189 = [v8 backgroundImage];
      [v189 frame];
      v191 = v190;
      v193 = v192;
      v195 = v194;
      v197 = v196;

      v198 = [v8 backgroundImage];
      [v198 setFrame:{v191, v57 + v193, v195, v197}];
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
    v208 = [v8 captionBar];
    [v208 setTextSafeAreaInset:{v204, v205, v206, v207}];

    v209 = [v8 captionBar];
    [v209 setBackgroundOutset:{v203, v199, v201, v202}];

    v210 = [v8 captionBar];
    [v210 setFrame:{v304, recta, v305, r1}];

    animationView = self->_animationView;
    v212 = [v8 captionBar];
    [v212 frame];
    [(UIView *)animationView convertRect:self->_contentView fromView:v213 - v199, v214 - v203, v215 - (-v202 - v199), v216 - (-v201 - v203)];
    v218 = v217;

    v219 = [v8 textSearchingDimmingView];

    if (v219)
    {
      [(UIView *)self->_contentView bounds];
      v221 = v220;
      v223 = v222;
      v225 = v224;
      v227 = v226;
      v228 = [v8 textSearchingDimmingView];
      [v228 setFrame:{v221, v223, v225, v227}];
    }

    v229 = [v8 textHighlightView];

    if (v229)
    {
      [(LPLinkView *)self frameForHighlightedTextRange];
      v231 = v230;
      v233 = v232;
      v235 = v234;
      v237 = v236;
      v238 = [v8 textHighlightView];
      [v238 setFrame:{v231, v233, v235, v237}];
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
    v245 = [v8 contactsBadge];

    if (v245)
    {
      v246 = [v8 contactsBadge];
      [v246 sizeThatFits:{r2_24, r2_16}];
      v248 = v247;
      v250 = v249;

      v251 = [(LPTheme *)self->_theme contactsBadgeStyle];
      v252 = [v251 location];

      if (v252 == 1)
      {
        v253 = [v8 captionBar];
        [v253 _lp_layoutIfNeeded];

        v254 = [v8 captionBar];
        v255 = [v254 primaryIconView];
        v256 = [v8 captionBar];
        v257 = [v256 primaryIconView];
        [v257 bounds];
        [v255 convertRect:self->_contentView toView:?];
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
        v268 = [(LPTheme *)self->_theme contactsBadgeStyle];
        [v268 iconOffset];
        v270 = v269;

        v271 = [(LPTheme *)self->_theme contactsBadgeStyle];
        [v271 iconOffset];
        v272 = v267 - v250 * 0.5;
        MinX = MaxX - v248 * 0.5 + v270;
        v275 = v272 + v274;
      }

      else
      {
        v276 = [v8 mediaBackground];
        [v276 frame];
        v278 = v277;
        v280 = v279;
        v282 = v281;
        v284 = v283;

        v285 = [(UIView *)self _lp_isLTR];
        v275 = *(MEMORY[0x1E695EFF8] + 8);
        if (v285)
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

      v286 = [v8 contactsBadge];
      [v286 setFrame:{MinX, v275, v248, v250}];
    }

    if (self->_componentsNeedLayout)
    {
      self->_componentsNeedLayout = 0;
      [v8 applyToAllViews:&__block_literal_global_254];
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
  v3 = [(LPLinkViewComponents *)self->_components captionBar];

  if (v3)
  {
    v4 = [(LPLinkViewComponents *)self->_components captionBar];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(LPLinkViewComponents *)self->_components captionBar];
    [(LPLinkView *)self convertRect:v13 fromView:v6, v8, v10, v12];
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
  v3 = [(LPLinkViewComponents *)self->_components media];
  v4 = [v3 conformsToProtocol:&unk_1F2492198];

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
  v7 = [v6 playable];

  return v7;
}

- (void)_playMedia
{
  v2 = [(LPLinkView *)self _playable];
  [v2 setPlaying:1];
}

- (void)_pauseMedia
{
  v2 = [(LPLinkView *)self _playable];
  [v2 setPlaying:0];
}

- (BOOL)_isPlayingMedia
{
  v2 = [(LPLinkView *)self _playable];
  v3 = [v2 isPlaying];

  return v3;
}

- (BOOL)_hasMediaToPlay
{
  v2 = [(LPLinkView *)self _playable];
  v3 = v2 != 0;

  return v3;
}

- (void)_resetMediaPlayback
{
  v2 = [(LPLinkView *)self _playable];
  [v2 resetPlaybackState];
}

- (BOOL)_hasMedia
{
  [(LPLinkView *)self _computePresentationPropertiesFromMetadataIfNeeded];
  properties = self->_properties;

  return [(LPConcretePresentationProperties *)properties hasMedia];
}

- (id)_primaryMediaView
{
  v3 = [(LPLinkViewComponents *)self->_components media];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(LPLinkViewComponents *)self->_components captionBar];
    v5 = [v6 primaryIconView];
  }

  return v5;
}

- (void)componentViewDidChangeMediaState:(id)a3
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

- (id)layoutExclusionsForView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(LPLinkViewComponents *)self->_components contactsBadge];

  if (v6)
  {
    v7 = MEMORY[0x1E69DC728];
    v8 = [(LPLinkViewComponents *)self->_components contactsBadge];
    v9 = [(LPLinkViewComponents *)self->_components contactsBadge];
    [v9 layoutExclusionRect];
    [v8 convertRect:v4 toView:?];
    v10 = [v7 bezierPathWithRect:?];
    [v5 addObject:v10];
  }

  v11 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];

  if (v11)
  {
    v12 = [(LPLinkViewComponents *)self->_components mediaTopCaptionBar];
    v13 = [v12 layoutExclusionsForView:v4];
    [v5 addObjectsFromArray:v13];
  }

  v14 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];

  if (v14)
  {
    v15 = [(LPLinkViewComponents *)self->_components mediaBottomCaptionBar];
    v16 = [v15 layoutExclusionsForView:v4];
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

- (BOOL)allowsVibrancyForComponentView:(id)a3
{
  v7 = !self->_useCPURenderingForMaterials && self->_allowsVibrancy && (-[LPLinkView _themePlatform](self, "_themePlatform") != 5 || (-[LPLinkView traitCollection](self, "traitCollection"), v5 = v4 = a3;

  return v7;
}

- (BOOL)allowsBadgingIconEdgeForComponentView:(id)a3
{
  v4 = [(LPTheme *)self->_theme contactsBadgeStyle];
  v5 = [v4 location] != 1 || -[NSArray count](self->_contactsForAttribution, "count") == 0;

  return v5;
}

- (void)_installHighlightGestureRecognizers
{
  v3 = [(LPLinkViewComponents *)self->_components captionBar];

  if (v3)
  {
    v8 = [(LPLinkViewComponents *)self->_components captionBar];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }

  v4 = [(LPLinkViewComponents *)self->_components media];

  if (v4)
  {
    v9 = [(LPLinkViewComponents *)self->_components media];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }

  v5 = [(LPLinkViewComponents *)self->_components domainNameIndicator];

  if (v5)
  {
    v10 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }

  v6 = [(LPLinkViewComponents *)self->_components quote];

  if (v6)
  {
    v11 = [(LPLinkViewComponents *)self->_components quote];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }

  v7 = [(LPLinkViewComponents *)self->_components progressSpinner];

  if (v7)
  {
    v12 = [(LPLinkViewComponents *)self->_components progressSpinner];
    [LPLinkView _addHighlightRecognizerToView:"_addHighlightRecognizerToView:forMedia:" forMedia:?];
  }
}

- (void)_installTapGestureRecognizers
{
  v3 = [(LPLinkViewComponents *)self->_components captionBar];

  if (v3)
  {
    v11 = [(LPLinkViewComponents *)self->_components captionBar];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }

  v4 = [(LPLinkViewComponents *)self->_components media];
  if (v4)
  {
    v12 = v4;
    v5 = [(LPLinkViewComponents *)self->_components media];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v6 = [(LPLinkViewComponents *)self->_components media];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v13 = [(LPLinkViewComponents *)self->_components media];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }

LABEL_8:
  v8 = [(LPLinkViewComponents *)self->_components domainNameIndicator];

  if (v8)
  {
    v14 = [(LPLinkViewComponents *)self->_components domainNameIndicator];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }

  v9 = [(LPLinkViewComponents *)self->_components quote];

  if (v9)
  {
    v15 = [(LPLinkViewComponents *)self->_components quote];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }

  v10 = [(LPLinkViewComponents *)self->_components progressSpinner];

  if (v10)
  {
    v16 = [(LPLinkViewComponents *)self->_components progressSpinner];
    [LPLinkView _addTapRecognizerToView:"_addTapRecognizerToView:forMedia:" forMedia:?];
  }
}

- (void)_uninstallHighlightGestureRecognizers
{
  for (i = self->_highlightGestureRecognizers; [(NSMutableArray *)i count]; i = self->_highlightGestureRecognizers)
  {
    v4 = [(NSMutableArray *)self->_highlightGestureRecognizers lastObject];
    v5 = [v4 view];
    [v5 removeGestureRecognizer:v4];

    [(NSMutableArray *)self->_highlightGestureRecognizers removeLastObject];
  }
}

- (void)_uninstallTapGestureRecognizers
{
  for (i = self->_tapGestureRecognizers; [(NSMutableArray *)i count]; i = self->_tapGestureRecognizers)
  {
    v4 = [(NSMutableArray *)self->_tapGestureRecognizers lastObject];
    v5 = [v4 view];
    [v5 removeGestureRecognizer:v4];

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

- (void)_setDisableTapGesture:(BOOL)a3
{
  if (self->_disableTapGesture != a3)
  {
    self->_disableTapGesture = a3;
    [(LPLinkView *)self _rebuildGestureRecognizersIfNeeded];
    [(UIView *)self->_animationView _lp_setHoverEffectEnabled:!self->_disableTapGesture];

    [(LPLinkView *)self _invalidatePresentationPropertiesAndLayout];
  }
}

- (void)_setDisableHighlightGesture:(BOOL)a3
{
  self->_hasSetDisableHighlightGesture = 1;
  if (self->_disableHighlightGesture != a3)
  {
    self->_disableHighlightGesture = a3;
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

- (void)_setDisablePreviewGesture:(BOOL)a3
{
  self->_hasSetDisablePreviewGesture = 1;
  if (self->_disablePreviewGesture != a3)
  {
    self->_disablePreviewGesture = a3;
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

- (void)_addTapRecognizerToView:(id)a3 forMedia:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = objc_alloc(MEMORY[0x1E69DD060]);
  v7 = &selRef__mediaTapRecognized_;
  if (!v4)
  {
    v7 = &selRef__captionTapRecognized_;
  }

  v8 = [v6 initWithTarget:self action:*v7];
  [v8 setDelegate:self];
  [v8 _setDelaysRecognitionForGreaterTapCounts:1];
  [v8 setName:@"LPLinkViewTap"];
  [v9 addGestureRecognizer:v8];
  [(NSMutableArray *)self->_tapGestureRecognizers addObject:v8];
}

- (void)_addHighlightRecognizerToView:(id)a3 forMedia:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [LPHighlightGestureRecognizer alloc];
  v7 = &selRef__mediaHighlightRecognized_;
  if (!v4)
  {
    v7 = &selRef__captionHighlightRecognized_;
  }

  v8 = [(LPHighlightGestureRecognizer *)v6 initWithTarget:self action:*v7];
  [(LPHighlightGestureRecognizer *)v8 setDelegate:self];
  [(LPHighlightGestureRecognizer *)v8 setName:@"LPLinkViewHighlight"];
  [v9 addGestureRecognizer:v8];
  [(NSMutableArray *)self->_highlightGestureRecognizers addObject:v8];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(NSMutableArray *)self->_highlightGestureRecognizers containsObject:v6])
  {
    goto LABEL_13;
  }

  v8 = [v7 view];
  v9 = [(LPLinkViewComponents *)self->_components media];
  if (![v8 isDescendantOfView:v9])
  {
    goto LABEL_6;
  }

  v10 = [(LPLinkViewComponents *)self->_components media];
  if (![v10 shouldAllowHighlightToRecognizeSimultaneouslyWithGesture:v7] || self->_disablePlayback)
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

  v11 = [v7 view];
  if ([v11 isDescendantOfView:self])
  {
    v12 = [(NSMutableArray *)self->_tapGestureRecognizers containsObject:v7]^ 1;
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

- (void)_setHighlightMedia:(BOOL)a3
{
  v3 = a3;
  v6 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v5 = [v6 shouldHighlightIndependently];

  if ((v5 & 1) == 0)
  {
    v7 = [(UIView *)self->_captionHighlightView layer];
    [v7 setHidden:!v3];
  }

  v8 = [(UIView *)self->_mediaHighlightView layer];
  [v8 setHidden:!v3];
}

- (void)_setHighlightCaption:(BOOL)a3
{
  v3 = a3;
  v6 = [(LPWebLinkPresentationProperties *)self->_properties captionBar];
  v5 = [v6 shouldHighlightIndependently];

  if ((v5 & 1) == 0)
  {
    v7 = [(UIView *)self->_mediaHighlightView layer];
    [v7 setHidden:!v3];
  }

  v8 = [(UIView *)self->_captionHighlightView layer];
  [v8 setHidden:!v3];
}

- (void)_mediaHighlightRecognized:(id)a3
{
  v6 = a3;
  v4 = [v6 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 1)
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

- (void)_captionHighlightRecognized:(id)a3
{
  v6 = a3;
  v4 = [v6 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 != 1)
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

- (void)_mediaTapRecognized:(id)a3
{
  if (!self->_disableTapGesture)
  {
    [(LPLinkView *)self _openURL];
  }
}

- (void)_captionTapRecognized:(id)a3
{
  if (!self->_disableTapGesture)
  {
    [(LPLinkView *)self _openURLAllowingSensitiveSchemes:self->_allowsOpeningSensitiveURLs allowingAssociatedApplications:1];
  }
}

- (void)_captionBarButtonPressed:(id)a3
{
  v7 = [(LPConcretePresentationProperties *)self->_properties captionButton];
  -[LPLinkView componentViewDidTapCaptionButton:buttonType:](self, "componentViewDidTapCaptionButton:buttonType:", self, [v7 type]);

  v8 = [(LPConcretePresentationProperties *)self->_properties captionButton];
  v4 = [v8 callback];

  if (v4)
  {
    v9 = [(LPConcretePresentationProperties *)self->_properties captionButton];
    v5 = [v9 callback];
    v5[2]();
  }

  else if (!self->_disableTapGesture)
  {
    allowsOpeningSensitiveURLs = self->_allowsOpeningSensitiveURLs;

    [(LPLinkView *)self _openURLAllowingSensitiveSchemes:allowsOpeningSensitiveURLs allowingAssociatedApplications:1];
  }
}

- (void)_secondaryCaptionBarButtonPressed:(id)a3
{
  v6 = [(LPConcretePresentationProperties *)self->_properties secondaryCaptionButton];
  -[LPLinkView componentViewDidTapCaptionButton:buttonType:](self, "componentViewDidTapCaptionButton:buttonType:", self, [v6 type]);

  v7 = [(LPConcretePresentationProperties *)self->_properties secondaryCaptionButton];
  v4 = [v7 callback];

  if (v4)
  {
    v8 = [(LPConcretePresentationProperties *)self->_properties secondaryCaptionButton];
    v5 = [v8 callback];
    v5[2]();
  }
}

- (void)tapToLoadViewWasTapped:(id)a3
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

  v5 = [(LPLinkMetadata *)self->_metadata associatedApplication];
  v6 = [v5 bundleIdentifier];
  v7 = v6 != 0;

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

- (void)_openURLAllowingSensitiveSchemes:(BOOL)a3 allowingAssociatedApplications:(BOOL)a4
{
  v4 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v7 = [(LPLinkView *)self _URLToOpen];
  if (![(LPLinkView *)self _disableLinkFollowing])
  {
    overrideAllowsOpeningSensitiveURLs = self->_overrideAllowsOpeningSensitiveURLs;
    if (overrideAllowsOpeningSensitiveURLs)
    {
      a3 = [(NSNumber *)overrideAllowsOpeningSensitiveURLs BOOLValue];
    }

    v9 = [(LPLinkView *)self metadata];
    v10 = [v9 originatingSynapseContentItem];

    if (v10)
    {
      v11 = [MEMORY[0x1E69D5400] sharedManager];
      v12 = [(LPLinkView *)self metadata];
      v13 = [v12 originatingSynapseContentItem];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke;
      v44[3] = &unk_1E7A37088;
      v44[4] = self;
      [v11 navigateToContentItem:v13 completion:v44];

      goto LABEL_32;
    }

    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v15 = [(LPLinkMetadata *)self->_metadata specialization];
        v16 = [v15 _disallowsURLOverrideByDelegate];

        if ((v16 & 1) == 0)
        {
          v17 = [WeakRetained _linkView:self overrideURLForOpeningURL:v7];
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

          if (([v17 isEqual:v7] & 1) == 0)
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

          v7 = v18;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained _linkView:self willOpenURL:v7];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke_283;
      aBlock[3] = &unk_1E7A370B0;
      v43 = a3;
      v7 = v7;
      v42 = v7;
      v21 = _Block_copy(aBlock);
      if (v4 && [(LPLinkView *)self _isUsingAppClipPresentation])
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
          v29 = v7;
        }

        v30 = [(LPLinkMetadata *)self->_metadata associatedApplication];
        v31 = [v30 bundleIdentifier];
        v32 = [v26 initWithURL:v29 fallbackClipBundleID:v31];

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __78__LPLinkView__openURLAllowingSensitiveSchemes_allowingAssociatedApplications___block_invoke_286;
        v37[3] = &unk_1E7A370D8;
        v38 = v32;
        v39 = self;
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

    v7 = 0;
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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
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
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDDContextMenuActionsKey(void)"];
        [v33 handleFailureInFunction:v34 file:@"LPLinkView.m" lineNumber:107 description:{@"%s", dlerror()}];
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

    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDDContextMenuWantsPreviewKey(void)"];
    [v33 handleFailureInFunction:v34 file:@"LPLinkView.m" lineNumber:109 description:{@"%s", dlerror()}];
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
  v2 = [(LPLinkView *)self components];
  v3 = [v2 captionBar];
  v4 = [v3 captionTextIsTruncated];

  return v4;
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

  v3 = self;
  v4 = [(LPLinkView *)v3 highlightedTextRange];
  if (v4)
  {
    v5 = v4;
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

  v3 = self;
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

- (int64_t)compareFoundRange:(id)a3 toRange:(id)a4 inDocument:(id)a5
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
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = sub_1AE982EAC(v8, v9, v10, &off_1F2447470);

  return v14;
}

- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5
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
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = self;
  sub_1AE97BCB8(v8, v10, v11, a5);

  swift_unknownObjectRelease();
}

- (void)decorateFoundTextRange:(id)a3 inDocument:(id)a4 usingStyle:(int64_t)a5
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1AE97CF04(v8, a5);

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

  v3 = self;
  sub_1AE97C330();
}

- (id)findInteraction:(id)a3 sessionForView:(id)a4
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69DD140]) initWithSearchableObject_];

  return v5;
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