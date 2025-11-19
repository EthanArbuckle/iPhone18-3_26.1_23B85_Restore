@interface CNContactHeaderStaticDisplayView
+ (BOOL)_bundleIDIsInAllowListForColorCaching;
+ (BOOL)_colorCachingEnabledForProcess;
+ (id)blurGradient;
+ (id)contactHeaderViewWithContact:(id)a3 allowsPhotoDrops:(BOOL)a4 showingNavBar:(BOOL)a5 monogramOnly:(BOOL)a6 delegate:(id)a7;
+ (id)descriptorForRequiredKeysForContactFormatter:(id)a3;
+ (id)makeBlurGradient;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5;
+ (id)sizeAttributesShowingNavBar:(BOOL)a3;
- (BOOL)canSensitiveContentHelpButtonBlockContact:(id)a3;
- (BOOL)canSensitiveContentHelpButtonViewHidePhoto:(id)a3;
- (BOOL)identifierForBackgroundColorIsCurrent:(id)a3;
- (BOOL)shouldShowPoster;
- (BOOL)shouldUseFixedHeight;
- (CGRect)layerContentsRectForConfiguration:(id)a3;
- (CNContactHeaderStaticDisplayView)initWithContact:(id)a3 frame:(CGRect)a4 shouldAllowImageDrops:(BOOL)a5 showingNavBar:(BOOL)a6 monogramOnly:(BOOL)a7 delegate:(id)a8;
- (double)avatarHeightPhoneLandscape;
- (double)bottomMargin;
- (double)height;
- (double)nameFontSize;
- (double)staticHeaderPhotoMaxHeight;
- (double)staticHeaderPhotoMinBottomMargin;
- (double)staticHeaderPhotoMinHeight;
- (double)staticHeaderPhotoMinTopMargin;
- (double)staticHeaderPhotoTopMarginOffset;
- (id)_headerStringForContacts:(id)a3;
- (id)_importantString;
- (id)_savedContactActionForGeminiViewForDualSimParity;
- (id)_unknownContactActionForGeminiView;
- (id)attributedTaglineForContacts:(id)a3;
- (id)descriptorForRequiredKeys;
- (id)imageDataForColorFetchingIsImageDataOrThumbnail:(BOOL *)a3 bitmapFormat:(id *)a4;
- (id)nameFont;
- (unint64_t)avatarStyle;
- (void)_assignActionToGeminiView;
- (void)_geminiViewBehaviorForSavedContact;
- (void)_geminiViewBehaviorForUnknownContact;
- (void)_updateDowntimeView;
- (void)_updateImportantLabel;
- (void)_updatePhotoView;
- (void)assignImageColorsToAvatarBackgroundView:(id)a3 animated:(BOOL)a4;
- (void)assignSnapshotImageToPosterView:(id)a3 configuration:(id)a4 contentIsSensitive:(BOOL)a5;
- (void)calculateLabelSizes;
- (void)calculateLabelSizesIfNeeded;
- (void)configureSensitiveContentHelpButtonHidden:(BOOL)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)copy:(id)a3;
- (void)createGeminiViewIfNeeded;
- (void)dealloc;
- (void)didFinishUsing;
- (void)didTapSensitiveContentHelpButton;
- (void)disablePhotoTapGesture;
- (void)geminiViewDidPickPreferredChannel:(id)a3;
- (void)handleGeminiViewTouch:(id)a3;
- (void)handleNameLabelLongPress:(id)a3;
- (void)handleNameLabelTap:(id)a3;
- (void)layoutSubviews;
- (void)menuWillHide:(id)a3;
- (void)notifyDelegateOfUpdatedHiddenSensitiveContent:(BOOL)a3;
- (void)picker:(id)a3 didPickItem:(id)a4;
- (void)pickerDidCancel:(id)a3;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)sensitiveContentBlurView:(id)a3 wantsToPresentInterventionController:(id)a4;
- (void)sensitiveContentHelpButtonView:(id)a3 didRequestToBlockContact:(BOOL)a4;
- (void)sensitiveContentHelpButtonView:(id)a3 didRequestToPresentMenu:(id)a4;
- (void)sensitiveContentHelpButtonView:(id)a3 didRequestToPresentMoreHelp:(id)a4;
- (void)setActionsWrapperView:(id)a3;
- (void)setAvatarStyle:(unint64_t)a3;
- (void)setBlurViewGradient;
- (void)setDefaultLabelColors;
- (void)setDowntimeTextAttributes:(id)a3;
- (void)setGeminiTextAttributes:(id)a3;
- (void)setImportantMessage:(id)a3;
- (void)setImportantTextAttributes:(id)a3;
- (void)setIsDowntimeContact:(BOOL)a3;
- (void)setIsEmergencyContact:(BOOL)a3;
- (void)setIsRestrictedContact:(BOOL)a3;
- (void)setMessage:(id)a3;
- (void)setNameTextAttributes:(id)a3;
- (void)setPosterViewHidden:(BOOL)a3;
- (void)setShouldShowGemini:(BOOL)a3;
- (void)setUpAvatarBackgroundView;
- (void)setUpPosterView;
- (void)setUsesBrandedCallFormat:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateAvatarBackgroundViewVisibility;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateGeminiResult:(id)a3;
- (void)updateImageViewVisiblity;
- (void)updateLabelColorsForImageColors:(id)a3;
- (void)updateLabelColorsForPosterSnapshot:(id)a3;
- (void)updatePosterImageViewForScrollOffset:(CGPoint)a3;
- (void)updatePosterViewImage;
- (void)updateSensitiveContentBlurVisibility:(BOOL)a3;
- (void)updateSizeDependentAttributes;
- (void)updateWithContacts:(id)a3;
@end

@implementation CNContactHeaderStaticDisplayView

+ (id)makeBlurGradient
{
  v36[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E6979380]);
  [v2 setFrame:{0.0, 0.0, 1.0, 500.0}];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.0];
  v36[0] = [v4 CGColor];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.0];
  v36[1] = [v6 CGColor];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  v8 = [v7 colorWithAlphaComponent:0.1];
  v36[2] = [v8 CGColor];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = [v9 colorWithAlphaComponent:1.0];
  v36[3] = [v10 CGColor];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  [v2 setColors:v11];

  [v2 setLocations:&unk_1F0D4B8B0];
  v12 = [MEMORY[0x1E69966E8] currentEnvironment];
  v13 = [v12 timeProvider];
  [v13 timestamp];
  v15 = v14;

  v16 = objc_alloc(MEMORY[0x1E69DCA78]);
  [v2 bounds];
  v19 = [v16 initWithSize:{v17, v18}];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52__CNContactHeaderStaticDisplayView_makeBlurGradient__block_invoke;
  v30[3] = &unk_1E74E2660;
  v20 = v2;
  v31 = v20;
  v21 = [v19 imageWithActions:v30];
  v22 = [MEMORY[0x1E69966E8] currentEnvironment];
  v23 = [v22 timeProvider];
  [v23 timestamp];
  v25 = v24;

  v26 = CNUILogPosters();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [v21 size];
    v28 = NSStringFromCGSize(v38);
    v29 = [MEMORY[0x1E6996858] stringForTimeInterval:v25 - v15];
    *buf = 138412546;
    v33 = v28;
    v34 = 2112;
    v35 = v29;
    _os_log_debug_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEBUG, "Time to draw %@ variable blur image: %@", buf, 0x16u);
  }

  return v21;
}

uint64_t __52__CNContactHeaderStaticDisplayView_makeBlurGradient__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];

  return [v2 renderInContext:v3];
}

+ (id)blurGradient
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CNContactHeaderStaticDisplayView_blurGradient__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (blurGradient_cn_once_token_30 != -1)
  {
    dispatch_once(&blurGradient_cn_once_token_30, block);
  }

  v2 = blurGradient_cn_once_object_30;

  return v2;
}

uint64_t __48__CNContactHeaderStaticDisplayView_blurGradient__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) makeBlurGradient];
  v2 = blurGradient_cn_once_object_30;
  blurGradient_cn_once_object_30 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (BOOL)_bundleIDIsInAllowListForColorCaching
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [&unk_1F0D4B898 containsObject:v3];

  return v4;
}

+ (BOOL)_colorCachingEnabledForProcess
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CNContactHeaderStaticDisplayView__colorCachingEnabledForProcess__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_colorCachingEnabledForProcess_cn_once_token_14 != -1)
  {
    dispatch_once(&_colorCachingEnabledForProcess_cn_once_token_14, block);
  }

  return [_colorCachingEnabledForProcess_cn_once_object_14 BOOLValue];
}

uint64_t __66__CNContactHeaderStaticDisplayView__colorCachingEnabledForProcess__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_bundleIDIsInAllowListForColorCaching")}];
  v2 = _colorCachingEnabledForProcess_cn_once_object_14;
  _colorCachingEnabledForProcess_cn_once_object_14 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)sizeAttributesShowingNavBar:(BOOL)a3
{
  if (a3)
  {
    +[CNContactHeaderViewSizeAttributes staticDisplayAttributesWithNavBar];
  }

  else
  {
    +[CNContactHeaderViewSizeAttributes staticDisplayAttributes];
  }
  v3 = ;

  return v3;
}

+ (id)contactHeaderViewWithContact:(id)a3 allowsPhotoDrops:(BOOL)a4 showingNavBar:(BOOL)a5 monogramOnly:(BOOL)a6 delegate:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a7;
  v14 = [sStaticDisplayContactHeaderView delegate];
  if (v14)
  {

LABEL_4:
    v15 = [a1 alloc];
    v16 = [v15 initWithContact:v12 frame:v10 shouldAllowImageDrops:v9 showingNavBar:v8 monogramOnly:v13 delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_5:
    v17 = v16;
    goto LABEL_6;
  }

  if ([sStaticDisplayContactHeaderView showMonogramsOnly] != v8)
  {
    goto LABEL_4;
  }

  if (!sStaticDisplayContactHeaderView)
  {
    v19 = [a1 alloc];
    v20 = [v19 initWithContact:v12 frame:v10 shouldAllowImageDrops:v9 showingNavBar:v8 monogramOnly:v13 delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v21 = sStaticDisplayContactHeaderView;
    sStaticDisplayContactHeaderView = v20;

    v16 = sStaticDisplayContactHeaderView;
    goto LABEL_5;
  }

  v17 = sStaticDisplayContactHeaderView;
  [v17 setDelegate:v13];
  [v17 prepareForReuse];
  [v17 updateForShowingNavBar:v9];
  [v17 updateWithNewContact:v12];
LABEL_6:

  return v17;
}

+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  v9 = [v8 inProcessContactStore];

  v10 = +[CNUIContactsEnvironment currentEnvironment];
  v11 = v10;
  if (v5)
  {
    [v10 cachingMonogramRenderer];
  }

  else
  {
    [v10 cachingLikenessRenderer];
  }
  v12 = ;

  v13 = [CNContactPhotoView alloc];
  v14 = [(CNContactPhotoView *)v13 initWithFrame:v7 shouldAllowTakePhotoAction:1 threeDTouchEnabled:v9 contactStore:v6 allowsImageDrops:v12 imageRenderer:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v14;
}

+ (id)descriptorForRequiredKeysForContactFormatter:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___CNContactHeaderStaticDisplayView;
  v6 = objc_msgSendSuper2(&v13, sel_descriptorForRequiredKeys);
  v7 = [v5 arrayWithObject:v6];

  if (v4)
  {
    v8 = [v4 descriptorForRequiredKeys];
    [v7 addObject:v8];
  }

  v9 = MEMORY[0x1E695CD58];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactHeaderStaticDisplayView descriptorForRequiredKeysForContactFormatter:]"];
  v11 = [v9 descriptorWithKeyDescriptors:v7 description:v10];

  return v11;
}

- (void)sensitiveContentHelpButtonView:(id)a3 didRequestToBlockContact:(BOOL)a4
{
  v4 = a4;
  v6 = [(CNContactHeaderView *)self delegate];
  [v6 headerView:self didRequestToBlockContact:v4];
}

- (void)notifyDelegateOfUpdatedHiddenSensitiveContent:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactHeaderView *)self delegate];
  [v5 headerView:self didUpdateSensitiveContentOverride:!v3];
}

- (void)sensitiveContentHelpButtonView:(id)a3 didRequestToPresentMoreHelp:(id)a4
{
  v5 = a4;
  v6 = [(CNContactHeaderView *)self presenterDelegate];
  [v6 sender:self presentViewController:v5];
}

- (BOOL)canSensitiveContentHelpButtonBlockContact:(id)a3
{
  v3 = self;
  v4 = [(CNContactHeaderView *)self delegate];
  LOBYTE(v3) = [v4 isHeaderViewContactBlocked:v3];

  return v3;
}

- (BOOL)canSensitiveContentHelpButtonViewHidePhoto:(id)a3
{
  v3 = [(CNContactHeaderView *)self contacts];
  v4 = [v3 firstObject];
  v5 = [v4 overrideSensitiveContent];

  return v5;
}

- (void)sensitiveContentHelpButtonView:(id)a3 didRequestToPresentMenu:(id)a4
{
  v5 = a4;
  v6 = [(CNContactHeaderView *)self presenterDelegate];
  [v6 sender:self presentViewController:v5];
}

- (void)sensitiveContentBlurView:(id)a3 wantsToPresentInterventionController:(id)a4
{
  v5 = a4;
  v6 = [(CNContactHeaderView *)self presenterDelegate];
  [v6 sender:self presentViewController:v5];
}

- (void)dealloc
{
  v3 = [(CNContactHeaderStaticDisplayView *)self traitChangeRegistration];
  [(CNContactHeaderStaticDisplayView *)self unregisterForTraitChanges:v3];

  v4.receiver = self;
  v4.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v4 dealloc];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(CNContactHeaderStaticDisplayView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = [v5 userInterfaceStyle];

  if (v7 != v8)
  {
    v9 = [(CNContactHeaderView *)self contacts];
    v10 = [v9 firstObject];
    v11 = [v10 hasBeenPersisted];

    if ((v11 & 1) == 0)
    {
      v12 = [(CNContactHeaderStaticDisplayView *)self geminiView];
      v13 = [v12 contextMenuInteraction];
      [v13 dismissMenu];

      v14 = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
      [v14 updateGeminiIcons];

      [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForUnknownContact];
    }

    [(CNContactHeaderStaticDisplayView *)self updateAvatarBackgroundViewVisibility];
  }
}

- (void)pickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNContactHeaderView *)self presenterDelegate];
  [v5 sender:self dismissViewController:v4];

  v6 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v6 setHighlighted:0];

  [(CNContactHeaderStaticDisplayView *)self setGeminiPicker:0];
}

- (void)picker:(id)a3 didPickItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v8 setNeedsCalculateLayout];

  v9 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v9 calculateLayoutIfNeeded];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderStaticDisplayView *)self setNeedsLayout];
  v13 = [MEMORY[0x1E695CEB0] channelStringFromSenderIdentity:v6];

  v10 = [(CNContactHeaderView *)self delegate];
  [v10 headerViewDidPickPreferredChannel:v13];

  v11 = [(CNContactHeaderView *)self presenterDelegate];
  [v11 sender:self dismissViewController:v7];

  v12 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v12 setHighlighted:0];

  [(CNContactHeaderStaticDisplayView *)self setGeminiPicker:0];
}

- (void)handleGeminiViewTouch:(id)a3
{
  v4 = a3;
  v5 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v10 bounds];
  v24.x = v7;
  v24.y = v9;
  v11 = CGRectContainsPoint(v25, v24);

  v12 = [v4 state];
  switch(v12)
  {
    case 4:
      goto LABEL_11;
    case 3:
      if (!v11)
      {
LABEL_12:
        v22 = [(CNContactHeaderStaticDisplayView *)self geminiView];
        [v22 setHighlighted:v11];

        return;
      }

      v16 = [(CNContactHeaderStaticDisplayView *)self geminiView];
      v17 = [v16 allowsPickerActions];

      if (v17)
      {
        v18 = [CNGeminiPickerController alloc];
        v19 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
        v20 = [(CNGeminiPickerController *)v18 initWithGeminiResult:v19];

        [(CNContactHeaderStaticDisplayView *)self setGeminiPicker:v20];
        [(CNGeminiPickerController *)v20 setDelegate:self];
        v21 = [(CNContactHeaderView *)self presenterDelegate];
        [v21 sender:self presentViewController:v20];
      }

LABEL_11:
      v11 = 0;
      goto LABEL_12;
    case 2:
      if (v11)
      {
        v13 = [(CNContactHeaderStaticDisplayView *)self geminiView];
        v11 = [v13 allowsPickerActions];
      }

      v14 = [(CNContactHeaderStaticDisplayView *)self geminiView];
      v15 = [v14 isHighlighted];

      if (v11 != v15)
      {
        goto LABEL_12;
      }

      break;
  }
}

- (void)geminiViewDidPickPreferredChannel:(id)a3
{
  v4 = a3;
  v5 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v5 setNeedsCalculateLayout];

  v6 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v6 calculateLayoutIfNeeded];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderStaticDisplayView *)self setNeedsLayout];
  v7 = [(CNContactHeaderView *)self delegate];
  [v7 headerViewDidPickPreferredChannel:v4];
}

- (id)_savedContactActionForGeminiViewForDualSimParity
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
  v4 = [v3 availableChannels];

  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v32 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v32)
  {
    v30 = *v40;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v39 + 1) + 8 * i);
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __84__CNContactHeaderStaticDisplayView__savedContactActionForGeminiViewForDualSimParity__block_invoke;
        aBlock[3] = &unk_1E74E25C0;
        objc_copyWeak(&v37, &location);
        aBlock[4] = v6;
        v7 = _Block_copy(aBlock);
        v8 = MEMORY[0x1E69DC628];
        v9 = [v6 localizedLabel];
        v10 = [v8 actionWithTitle:v9 image:0 identifier:0 handler:v7];

        v11 = MEMORY[0x1E695CEB0];
        v12 = [v6 senderIdentity];
        v13 = [v11 channelStringFromSenderIdentity:v12];

        v14 = [(CNContactHeaderStaticDisplayView *)self selectedChannel];

        if (v14)
        {
          v15 = [(CNContactHeaderStaticDisplayView *)self selectedChannel];
          [v10 setState:{objc_msgSend(v13, "isEqualToString:", v15)}];
        }

        else
        {
          v15 = [v6 senderIdentity];
          v16 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
          v17 = [v16 channel];
          v18 = [v17 senderIdentity];
          [v10 setState:v15 == v18];
        }

        v19 = [v6 senderIdentity];
        v20 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
        v21 = [v20 channel];
        v22 = [v21 senderIdentity];
        v23 = &stru_1F0CE7398;
        if (v19 == v22)
        {
          v34 = [(CNContactHeaderStaticDisplayView *)self geminiView];
          v35 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
          v33 = [v34 localizedChannelSubtitleForGeminiResult:v35];
          v23 = v33;
        }

        [v10 setSubtitle:v23];
        if (v19 == v22)
        {
        }

        v24 = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
        v25 = [v6 channelIdentifier];
        v26 = [v24 geminiIconForGeminiChannelIdentifier:v25];
        [v10 setImage:v26];

        [v31 addObject:v10];
        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
      }

      v32 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v32);
  }

  v27 = [v31 copy];

  return v27;
}

void __84__CNContactHeaderStaticDisplayView__savedContactActionForGeminiViewForDualSimParity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = MEMORY[0x1E695CEB0];
  v3 = [*(a1 + 32) senderIdentity];
  v4 = [v2 channelStringFromSenderIdentity:v3];

  [WeakRetained setSelectedChannel:v4];
  v5 = [WeakRetained geminiView];
  [v5 setGeminiChannel:*(a1 + 32)];

  [WeakRetained geminiViewDidPickPreferredChannel:v4];
  [WeakRetained _geminiViewBehaviorForSavedContact];
}

- (id)_unknownContactActionForGeminiView
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
  v4 = [v3 availableChannels];

  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v23 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v23)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __70__CNContactHeaderStaticDisplayView__unknownContactActionForGeminiView__block_invoke;
        aBlock[3] = &unk_1E74E25C0;
        objc_copyWeak(&v25, &location);
        aBlock[4] = v6;
        v7 = _Block_copy(aBlock);
        v8 = MEMORY[0x1E69DC628];
        v9 = [v6 localizedLabel];
        v10 = [v8 actionWithTitle:v9 image:0 identifier:0 handler:v7];

        v11 = [v6 senderIdentity];
        v12 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
        v13 = [v12 channel];
        v14 = [v13 senderIdentity];
        [v10 setState:v11 == v14];

        v15 = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
        v16 = [v6 channelIdentifier];
        v17 = [v15 geminiIconForGeminiChannelIdentifier:v16];
        [v10 setImage:v17];

        [v22 addObject:v10];
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }

      v23 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v23);
  }

  v18 = [v22 copy];

  return v18;
}

void __70__CNContactHeaderStaticDisplayView__unknownContactActionForGeminiView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained metricsReporter];
  v3 = [WeakRetained geminiResult];
  v4 = [v3 channel];
  [v2 logUnknownContactGeminiViewDifferentChannelSelected:{objc_msgSend(v4, "isEqual:", *(a1 + 32)) ^ 1}];

  v5 = [*(a1 + 32) senderIdentity];
  v6 = [MEMORY[0x1E695CEB0] channelStringFromSenderIdentity:v5];
  [WeakRetained geminiViewDidPickPreferredChannel:v6];
}

- (void)_geminiViewBehaviorForUnknownContact
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:14];

  if (v5)
  {
    v9 = [(CNContactHeaderStaticDisplayView *)self _unknownContactActionForGeminiView];
    v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:v9];
    v7 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v7 setMenu:v6];

    v8 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v8 setShowsMenuAsPrimaryAction:1];
  }
}

- (void)_geminiViewBehaviorForSavedContact
{
  if ([(CNContactHeaderView *)self useDualSimParity])
  {
    v7 = [(CNContactHeaderStaticDisplayView *)self _savedContactActionForGeminiViewForDualSimParity];
    v3 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:?];
    v4 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v4 setMenu:v3];

    v5 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v5 setShowsMenuAsPrimaryAction:1];
  }

  else
  {
    v6 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v6 setMenu:0];

    v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleGeminiViewTouch_];
    [v7 setMinimumPressDuration:0.001];
    v5 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v5 addGestureRecognizer:v7];
  }
}

- (void)_assignActionToGeminiView
{
  v3 = [(CNContactHeaderView *)self contacts];
  v4 = [v3 firstObject];
  v5 = [v4 hasBeenPersisted];

  if (v5)
  {
    [(CNContactHeaderStaticDisplayView *)self setSelectedChannel:0];

    [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForSavedContact];
  }

  else
  {

    [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForUnknownContact];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(CNContactHeaderView *)self isAXSize];
  v5 = [(CNContactHeaderView *)self nameLabel];
  v7 = v5;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [v5 setNumberOfLines:v6];
}

- (void)menuWillHide:(id)a3
{
  v3 = [(CNContactHeaderView *)self nameLabel];
  [v3 setHighlighted:0];
}

- (void)handleNameLabelLongPress:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v29 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v29;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [v6 state] == 1 && -[CNContactHeaderStaticDisplayView becomeFirstResponder](self, "becomeFirstResponder"))
  {
    v7 = [MEMORY[0x1E69DCC68] sharedMenuController];
    v8 = [(CNContactHeaderView *)self nameLabel];
    v9 = [(CNContactHeaderView *)self nameLabel];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(CNContactHeaderView *)self nameLabel];
    [v8 textRectForBounds:objc_msgSend(v18 limitedToNumberOfLines:{"numberOfLines"), v11, v13, v15, v17}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = [(CNContactHeaderView *)self nameLabel];
    [v7 showMenuFromView:v27 rect:{v20, v22, v24, v26}];

    v28 = [(CNContactHeaderView *)self nameLabel];
    [v28 setHighlighted:1];
  }
}

- (void)handleNameLabelTap:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v10 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    if ([v6 state] == 3)
    {
      v7 = [(CNContactHeaderView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(CNContactHeaderView *)self delegate];
        [v9 headerViewDidTapNameLabel:self];
      }
    }
  }
}

- (id)_importantString
{
  v3 = [(CNContactHeaderStaticDisplayView *)self importantMessage];
  if ([(CNContactHeaderStaticDisplayView *)self isEmergencyContact])
  {
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:@"CARD_NAME_EMERGENCY_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];

    if ((*(*MEMORY[0x1E6996570] + 16))())
    {
      v6 = [v3 stringByAppendingFormat:@"\n%@", v5];
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;

    v3 = v7;
  }

  return v3;
}

- (id)attributedTaglineForContacts:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  v8 = [v7 isFeatureEnabled:29];

  if (v8)
  {
    goto LABEL_41;
  }

  if ([v4 count] != 1)
  {
    v10 = +[CNNumberFormatting localizedStringWithInteger:](CNNumberFormatting, "localizedStringWithInteger:", [v4 count]);
    v11 = MEMORY[0x1E696AEC0];
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"CARD_NAME_GROUP_MEMBERS_COUNT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v14 = [v11 stringWithFormat:v13, v10];
    [v5 cnui_appendTaglineString:v14];

    v15 = *MEMORY[0x1E6996570];
    goto LABEL_39;
  }

  v9 = [v4 firstObject];
  if ([v9 contactType] == 1)
  {
    if ([(CNContactHeaderStaticDisplayView *)self usesBrandedCallFormat])
    {
      [v9 organizationName];
    }

    else
    {
      [v9 personName];
    }
    v19 = ;
    v15 = *MEMORY[0x1E6996570];
    if (!(*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], v19))
    {
      goto LABEL_38;
    }

    goto LABEL_12;
  }

  v15 = *MEMORY[0x1E6996570];
  v16 = [v9 personName];
  if (((*(v15 + 16))(v15, v16) & 1) == 0)
  {

LABEL_14:
    v19 = [MEMORY[0x1E695CD80] stringFromContact:v9 style:1];
    if ((*(v15 + 16))(v15, v19))
    {
      [v5 cnui_appendTaglineString:v19];
    }

    v20 = [v9 nickname];
    if ((*(v15 + 16))(v15, v20))
    {
      v21 = [(CNContactHeaderView *)self delegate];
      v22 = [v21 isNicknameProhibited];

      if (v22)
      {
        goto LABEL_20;
      }

      v20 = [v9 nickname];
      v23 = +[CNUIFontRepository contactCardStaticHeaderNicknameTaglineFont];
      [v5 cnui_appendTaglineString:v20 withFont:v23];
    }

LABEL_20:
    v24 = [v9 previousFamilyName];
    v25 = (*(v15 + 16))(v15, v24);

    if (v25)
    {
      v26 = [v9 previousFamilyName];
      [v5 cnui_appendTaglineString:v26];
    }

    v27 = [v9 jobTitle];
    v28 = (*(v15 + 16))(v15, v27);

    v29 = [v9 departmentName];
    v30 = (*(v15 + 16))(v15, v29);

    if (v28)
    {
      if (v30)
      {
        v49 = MEMORY[0x1E696AEC0];
        v31 = [v9 jobTitle];
        v50 = CNContactsUIBundle();
        v48 = [v50 localizedStringForKey:@"CARD_NAME_JOB_TITLE_DEPARTMENT_SEPARATOR" value:&stru_1F0CE7398 table:@"Localized"];
        v32 = [v9 departmentName];
        v33 = [v49 stringWithFormat:@"%@%@%@", v31, v48, v32];
        [v5 cnui_appendTaglineString:v33];
      }

      else
      {
        v31 = [v9 jobTitle];
        [v5 cnui_appendTaglineString:v31];
      }

      v34 = 0x1E6996000uLL;
    }

    else
    {
      v34 = 0x1E6996000;
      if (!v30)
      {
        goto LABEL_30;
      }

      v31 = [v9 departmentName];
      [v5 cnui_appendTaglineString:v31];
    }

LABEL_30:
    v35 = [v9 organizationName];
    v36 = (*(v15 + 16))(v15, v35);

    if (v36)
    {
      v37 = [v9 organizationName];
      [v5 cnui_appendTaglineString:v37];
    }

    v38 = [*(v34 + 1768) currentEnvironment];
    v39 = [v38 featureFlags];
    if ([v39 isFeatureEnabled:23] && (objc_msgSend(v9, "isKeyAvailable:", *MEMORY[0x1E695C1C0]) & 1) != 0)
    {
      v51 = v19;
      v40 = *MEMORY[0x1E6996530];
      v41 = [v9 termsOfAddress];
      LOBYTE(v40) = (*(v40 + 16))(v40, v41);

      if (v40)
      {
        v19 = v51;
        goto LABEL_38;
      }

      v46 = MEMORY[0x1E696AEE0];
      v47 = [v9 termsOfAddress];
      v38 = [v46 localizedDescriptionForAddressingGrammars:v47 uppercased:1];

      v19 = v51;
      if ((*(v15 + 16))(v15, v38))
      {
        [v5 cnui_appendTaglineString:v38 uppercased:0];
      }
    }

    else
    {
    }

    goto LABEL_38;
  }

  v17 = [(CNContactHeaderStaticDisplayView *)self alternateName];
  v18 = (*(v15 + 16))(v15, v17);

  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = [(CNContactHeaderStaticDisplayView *)self alternateName];
LABEL_12:
  [v5 cnui_appendTaglineString:v19];
LABEL_38:

LABEL_39:
  v42 = [(CNContactHeaderStaticDisplayView *)self message];
  v43 = (*(v15 + 16))(v15, v42);

  if (v43)
  {
    v44 = [(CNContactHeaderStaticDisplayView *)self message];
    [v5 cnui_appendTaglineString:v44];
  }

LABEL_41:

  return v5;
}

- (id)_headerStringForContacts:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    if ([(CNContactHeaderStaticDisplayView *)self usesBrandedCallFormat])
    {
      v5 = *MEMORY[0x1E6996530];
      v6 = [v4 firstObject];
      v7 = [v6 phoneNumbers];
      LOBYTE(v5) = (*(v5 + 16))(v5, v7);

      if ((v5 & 1) == 0)
      {
        v8 = [v4 firstObject];
        v9 = [v8 phoneNumbers];
        v10 = [v9 firstObject];

        v11 = [v10 value];
        v12 = [v11 formattedStringValue];

        if ((*(*MEMORY[0x1E6996570] + 16))())
        {
          v13 = v12;

          goto LABEL_12;
        }
      }
    }

    v15 = [(CNContactHeaderStaticDisplayView *)self contactFormatter];
    v16 = [v4 firstObject];
    v14 = [v15 stringFromContact:v16];
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    v17 = [(CNContactHeaderStaticDisplayView *)self alternateName];

    v14 = v17;
  }

  v13 = v14;
LABEL_12:

  return v13;
}

- (void)copy:(id)a3
{
  v3 = [(CNContactHeaderView *)self nameLabel];
  v4 = [v3 text];
  v6 = [v4 mutableCopy];

  v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v5 setString:v6];
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  v3 = a3;
  v5 = CNUILogContactCard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEFAULT, "Reload data preserving changes", buf, 2u);
  }

  v26.receiver = self;
  v26.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v26 reloadDataPreservingChanges:v3];
  [(CNContactHeaderStaticDisplayView *)self _assignActionToGeminiView];
  v6 = [(CNContactHeaderView *)self contacts];
  v7 = [(CNContactHeaderStaticDisplayView *)self _headerStringForContacts:v6];

  v8 = [(CNContactHeaderView *)self contacts];
  v9 = [(CNContactHeaderStaticDisplayView *)self attributedTaglineForContacts:v8];

  v10 = [(CNContactHeaderStaticDisplayView *)self _importantString];
  [(CNContactHeaderStaticDisplayView *)self _updateImportantLabel];
  [(CNContactHeaderStaticDisplayView *)self _updateDowntimeView];
  v11 = [v9 string];
  v12 = [(CNContactHeaderStaticDisplayView *)self message];
  if ([v11 isEqualToString:v12])
  {
    v13 = [v7 length];

    if (v13)
    {
      goto LABEL_7;
    }

    [v9 string];
    v12 = v7;
    v7 = v11 = v9;
    v9 = 0;
  }

LABEL_7:
  if (![v9 length])
  {

    v9 = 0;
  }

  v14 = [(CNContactHeaderView *)self nameLabel];
  v15 = [v14 text];
  v16 = v15;
  if (v7)
  {
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else if (v15)
  {
    goto LABEL_18;
  }

  v17 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  v18 = [v17 text];
  v19 = v18;
  if (!v9)
  {
    if (!v18)
    {
      goto LABEL_20;
    }

    if (!v7)
    {
LABEL_19:

LABEL_27:
      [(CNContactHeaderStaticDisplayView *)self setNeedsUpdateConstraints];
      goto LABEL_28;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!v18)
  {
    v20 = 1;
    goto LABEL_23;
  }

LABEL_20:
  v21 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  v22 = [v21 text];
  if (v10)
  {
    if (v22)
    {

      v20 = 0;
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v20 = 1;
    if (v9)
    {
LABEL_23:
    }
  }

  else
  {
    v20 = v22 != 0;

    if (v9)
    {
      goto LABEL_23;
    }
  }

LABEL_24:

  if (v7)
  {
  }

  if (v20)
  {
    goto LABEL_27;
  }

LABEL_28:
  v23 = [(CNContactHeaderView *)self nameLabel];
  [v23 setAb_text:v7];

  v24 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  [v24 setAttributedText:v9];

  v25 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  [v25 setAb_text:v10];

  [(CNContactHeaderStaticDisplayView *)self _updatePhotoView];
  [(CNContactHeaderStaticDisplayView *)self updatePosterViewImage];
  [(CNContactHeaderStaticDisplayView *)self updateAvatarBackgroundViewVisibility];
  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderStaticDisplayView *)self calculateLabelSizes];
  [(CNContactHeaderStaticDisplayView *)self setNeedsLayout];
}

- (void)setUsesBrandedCallFormat:(BOOL)a3
{
  if (self->_usesBrandedCallFormat != a3)
  {
    self->_usesBrandedCallFormat = a3;
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)updateGeminiResult:(id)a3
{
  v18 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:14];

  v7 = [(CNContactHeaderStaticDisplayView *)self allowsPickerActions];
  v8 = v7;
  if (v6)
  {
    v5 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v5 setAllowsPickerActions:v8];
LABEL_8:

    goto LABEL_9;
  }

  if (v7)
  {
    v5 = [(CNContactHeaderView *)self contacts];
    v6 = [v5 firstObject];
    v9 = [v6 hasBeenPersisted];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v10 setAllowsPickerActions:v9];

  if (v8)
  {

    goto LABEL_8;
  }

LABEL_9:
  [(CNContactHeaderStaticDisplayView *)self setGeminiResult:v18];
  v11 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v11 setGeminiResult:v18];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  v12 = [(CNContactHeaderView *)self contacts];
  v13 = [v12 firstObject];
  v14 = [v13 hasBeenPersisted];

  if (v14)
  {
    if ([(CNContactHeaderView *)self useDualSimParity])
    {
      [(CNContactHeaderStaticDisplayView *)self setSelectedChannel:0];
      v15 = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
      [v15 setGeminiResult:v18];

      [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForSavedContact];
    }

    else
    {
      v17 = [(CNContactHeaderStaticDisplayView *)self geminiPicker];
      [v17 setGeminiResult:v18];
    }
  }

  else
  {
    v16 = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
    [v16 setGeminiResult:v18];

    [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForUnknownContact];
  }
}

- (void)_updateDowntimeView
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
  if (v3)
  {
    v4 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    v5 = [v4 isHidden];
  }

  else
  {
    v5 = 1;
  }

  if ([(CNContactHeaderStaticDisplayView *)self isDowntimeContact]|| [(CNContactHeaderStaticDisplayView *)self isRestrictedContact])
  {
    v6 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (![(CNContactHeaderStaticDisplayView *)self isDowntimeContact])
  {
    v8 = [(CNContactHeaderStaticDisplayView *)self isRestrictedContact]^ 1;
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = 0;
  if (v7)
  {
LABEL_12:
    v9 = [CNContactDowntimeView alloc];
    v10 = [(CNContactDowntimeView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNContactHeaderStaticDisplayView *)self setDowntimeView:v10];

    v11 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22[0] = *MEMORY[0x1E69DDD80];
    v12 = *MEMORY[0x1E69DB650];
    v21[0] = @"ABTextStyleAttributeName";
    v21[1] = v12;
    v13 = [(CNContactHeaderView *)self contactStyle];
    v14 = [v13 taglineTextColor];
    v22[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [(CNContactHeaderStaticDisplayView *)self setDowntimeTextAttributes:v15];

    v16 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    [(CNContactHeaderStaticDisplayView *)self addSubview:v16];
  }

LABEL_13:
  if ([(CNContactHeaderStaticDisplayView *)self isDowntimeContact])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(CNContactHeaderStaticDisplayView *)self isRestrictedContact];
  v19 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
  [v19 setElements:v17 | v18];

  v20 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
  [v20 setHidden:v8];

  if (v5)
  {
    [(CNContactHeaderStaticDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateImportantLabel
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  if (v3)
  {
    v4 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
    v5 = [v4 isHidden];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(CNContactHeaderStaticDisplayView *)self _importantString];
  if (v6)
  {
    v7 = [(CNContactHeaderStaticDisplayView *)self importantLabel];

    if (!v7)
    {
      v8 = *MEMORY[0x1E69DDD80];
      v9 = *MEMORY[0x1E69DB650];
      v22[0] = @"ABTextStyleAttributeName";
      v22[1] = v9;
      v23[0] = v8;
      v10 = +[CNUIColorRepository contactListEmergencyContactGlyphColor];
      v23[1] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [(CNContactHeaderStaticDisplayView *)self setImportantTextAttributes:v11];

      v12 = objc_alloc(MEMORY[0x1E69DCC10]);
      v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CNContactHeaderStaticDisplayView *)self setImportantLabel:v13];

      v14 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

      v15 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [v15 setTextAlignment:1];

      v16 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [v16 setNumberOfLines:0];

      v17 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [v17 _setUseShortcutIntrinsicContentSize:1];

      v18 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [v18 _cnui_applyContactStyle];

      v19 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [(CNContactHeaderStaticDisplayView *)self addSubview:v19];
    }
  }

  v20 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  [v20 setHidden:v6 == 0];

  v21 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  LODWORD(v20) = [v21 isHidden];

  if (v5 != v20)
  {
    [(CNContactHeaderStaticDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updatePhotoView
{
  v8 = [(CNContactHeaderView *)self contacts];
  v6 = v5 <= 1 && (-[CNContactHeaderView contacts](self, "contacts"), v2 = v5 = [v8 count];
  v7 = [(CNContactHeaderView *)self photoView];
  [v7 setHidden:v6];

  if (v5 <= 1)
  {
  }
}

- (void)setGeminiTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_geminiTextAttributes != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_geminiTextAttributes, a3);
    v6 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v6 setAb_textAttributes:v7];

    v5 = v7;
  }
}

- (void)setDowntimeTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_downtimeTextAttributes != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_downtimeTextAttributes, a3);
    v6 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    [v6 setAb_textAttributes:v7];

    v5 = v7;
  }
}

- (void)setImportantTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_importantTextAttributes != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_importantTextAttributes, a3);
    v6 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
    [v6 setAb_textAttributes:v7];

    v5 = v7;
  }
}

- (void)setNameTextAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNContactHeaderStaticDisplayView;
  v4 = a3;
  [(CNContactHeaderView *)&v6 setNameTextAttributes:v4];
  v5 = [(CNContactHeaderView *)self nameLabel:v6.receiver];
  [v5 setAb_textAttributes:v4];
}

- (void)didTapSensitiveContentHelpButton
{
  v3 = [(CNContactHeaderView *)self delegate];
  [v3 headerView:self didUpdateSensitiveContentOverride:0];
}

- (void)configureSensitiveContentHelpButtonHidden:(BOOL)a3
{
  v3 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentManager];
  v6 = [v5 shouldShowUIForPosterWithSensitiveContent:!v3 forContact:0];

  v7 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentHelpButton];
  v8 = v7;
  if (v6)
  {

    if (!v8)
    {
      v9 = [CNSensitiveContentHelpButtonView alloc];
      v10 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentManager];
      v11 = [(CNSensitiveContentHelpButtonView *)v9 initWithManager:v10];
      sensitiveContentHelpButton = self->_sensitiveContentHelpButton;
      self->_sensitiveContentHelpButton = v11;

      [(CNSensitiveContentHelpButtonView *)self->_sensitiveContentHelpButton setDelegate:self];
      [(CNSensitiveContentHelpButtonView *)self->_sensitiveContentHelpButton setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v13 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentHelpButton];
    [(CNContactHeaderStaticDisplayView *)self addSubview:v13];

    v24 = MEMORY[0x1E696ACD8];
    v14 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentHelpButton];
    v15 = [v14 bottomAnchor];
    v16 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
    v17 = [v16 topAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:-10.0];
    v25[0] = v18;
    v19 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentHelpButton];
    v20 = [v19 centerXAnchor];
    v21 = [(CNContactHeaderStaticDisplayView *)self centerXAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v25[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v24 activateConstraints:v23];
  }

  else
  {
    [v7 removeFromSuperview];

    [(CNContactHeaderStaticDisplayView *)self setSensitiveContentHelpButton:0];
  }
}

- (void)updateSensitiveContentBlurVisibility:(BOOL)a3
{
  v47[4] = *MEMORY[0x1E69E9840];
  [(CNContactHeaderStaticDisplayView *)self configureSensitiveContentHelpButtonHidden:!a3];
  if (a3)
  {
    v5 = [(CNContactHeaderView *)self contacts];
    v6 = [v5 firstObject];

    v7 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentManager];
    v8 = [v7 shouldShowUIForPosterWithSensitiveContent:1 forContact:v6];

    v9 = [(CNContactHeaderView *)self posterView];
    if ([v9 isHidden])
    {
    }

    else
    {
      v11 = [(CNContactHeaderView *)self posterView];
      v12 = [v11 image];

      if (v12)
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = [(CNContactHeaderView *)self sensitiveContentBlurView];

        if (!v14)
        {
          v15 = [CNSensitiveContentBlurView alloc];
          v16 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentManager];
          v17 = [(CNSensitiveContentBlurView *)v15 initWithManager:v16];
          [(CNContactHeaderView *)self setSensitiveContentBlurView:v17];

          v18 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          [v18 setCanRevealContent:1];

          v19 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          [v19 setDelegate:self];

          v20 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

          v21 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          v22 = [(CNContactHeaderView *)self nameLabel];
          [(CNContactHeaderStaticDisplayView *)self insertSubview:v21 belowSubview:v22];

          v37 = MEMORY[0x1E696ACD8];
          v46 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          v44 = [v46 topAnchor];
          v45 = [(CNContactHeaderView *)self posterView];
          v43 = [v45 topAnchor];
          v42 = [v44 constraintEqualToAnchor:v43];
          v47[0] = v42;
          v41 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          v39 = [v41 bottomAnchor];
          v40 = [(CNContactHeaderView *)self posterView];
          v38 = [v40 bottomAnchor];
          v36 = [v39 constraintEqualToAnchor:v38];
          v47[1] = v36;
          v35 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          v33 = [v35 trailingAnchor];
          v34 = [(CNContactHeaderView *)self posterView];
          v23 = [v34 trailingAnchor];
          v24 = [v33 constraintEqualToAnchor:v23];
          v47[2] = v24;
          v25 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          v26 = [v25 leadingAnchor];
          v27 = [(CNContactHeaderView *)self posterView];
          v28 = [v27 leadingAnchor];
          v29 = [v26 constraintEqualToAnchor:v28];
          v47[3] = v29;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
          [v37 activateConstraints:v30];
        }

        v31 = [(CNContactHeaderView *)self sensitiveContentBlurView];
        [v31 resetRevealState];

        goto LABEL_15;
      }
    }

    v32 = [(CNContactHeaderView *)self sensitiveContentBlurView];
    [v32 removeFromSuperview];

    [(CNContactHeaderView *)self setSensitiveContentBlurView:0];
LABEL_15:

    return;
  }

  v10 = [(CNContactHeaderView *)self sensitiveContentBlurView];
  [v10 removeFromSuperview];

  [(CNContactHeaderView *)self setSensitiveContentBlurView:0];
}

- (void)updateSizeDependentAttributes
{
  v2 = [MEMORY[0x1E69DCC68] sharedMenuController];
  if ([v2 isMenuVisible])
  {
    [v2 hideMenu];
  }
}

- (void)setBlurViewGradient
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderView *)self contacts];
  v4 = [v3 firstObject];
  v5 = [v4 wallpaper];
  v6 = [v5 wallpaperType];

  if (![(CNContactHeaderStaticDisplayView *)self shouldShowPoster]|| (v6 != *MEMORY[0x1E695CCE0] ? (v7 = v6 == *MEMORY[0x1E695CCE8]) : (v7 = 1), v7))
  {
    v8 = [(CNContactHeaderView *)self posterView];
    v9 = [v8 layer];
    [v9 setFilters:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v10 = [objc_opt_class() blurGradient];
    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D70]];
    [v11 setValue:objc_msgSend(v10 forKey:{"CGImage"), @"inputMaskImage"}];
    v12 = MEMORY[0x1E695E118];
    [v11 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [v11 setValue:v12 forKey:@"inputDither"];
    [v11 setValue:&unk_1F0D4B358 forKey:@"inputRadius"];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v14 = [(CNContactHeaderView *)self posterView];
    v15 = [v14 layer];
    [v15 setFilters:v13];
  }
}

- (void)updatePosterImageViewForScrollOffset:(CGPoint)a3
{
  y = a3.y;
  if ([(CNContactHeaderStaticDisplayView *)self shouldShowPoster])
  {
    [(CNContactHeaderView *)self posterView];
  }

  else
  {
    [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  }
  v5 = ;
  v6 = v5;
  if (y >= 0.0)
  {
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&v20.a = *MEMORY[0x1E695EFD0];
    v14 = *&v20.a;
    *&v20.c = v13;
    *&v20.tx = *(MEMORY[0x1E695EFD0] + 32);
    v12 = *&v20.tx;
    [v5 setTransform:&v20];
    v9 = [(CNContactHeaderView *)self sensitiveContentBlurView];
    v10 = v9;
    *&v20.a = v14;
    *&v20.c = v13;
    *&v20.tx = v12;
    p_t1 = &v20;
  }

  else
  {
    [v5 bounds];
    memset(&v20, 0, sizeof(v20));
    v8 = fmax(fabs(y) / v7 + 1.0, 1.0);
    CGAffineTransformMakeScale(&v20, v8, v8);
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeTranslation(&v19, 0.0, y * 0.5);
    t1 = v20;
    memset(&v18, 0, sizeof(v18));
    t2 = v19;
    CGAffineTransformConcat(&v18, &t1, &t2);
    t1 = v18;
    [v6 setTransform:&t1];
    v15 = v18;
    v9 = [(CNContactHeaderView *)self sensitiveContentBlurView];
    v10 = v9;
    t1 = v15;
    p_t1 = &t1;
  }

  [v9 setTransform:p_t1];
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v25 layoutSubviews];
  [(CNContactHeaderStaticDisplayView *)self calculateLabelSizes];
  [(CNContactHeaderStaticDisplayView *)self setBlurViewGradient];
  v3 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinTopMargin];
  v14 = v13;
  v15 = [(CNContactHeaderView *)self photoTopConstraint];
  [v15 constant];
  v17 = v16;

  if (v17 != v14)
  {
    v18 = [(CNContactHeaderView *)self photoTopConstraint];
    [v18 setConstant:v14];
  }

  if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
  {
    [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMaxHeight];
    v20 = v19;
    v21 = [(CNContactHeaderView *)self photoHeightConstraint];
    [v21 constant];
    v23 = v22;

    if (v23 != v20)
    {
      v24 = [(CNContactHeaderView *)self photoHeightConstraint];
      [v24 setConstant:v20];
    }
  }
}

- (void)calculateLabelSizes
{
  if ([(CNContactHeaderView *)self needsLabelSizeCalculation])
  {
    [(CNContactHeaderStaticDisplayView *)self frame];
    v4 = v3;
    if (v3 == 0.0)
    {
      v5 = [(CNContactHeaderStaticDisplayView *)self superview];

      if (v5)
      {
        v6 = [(CNContactHeaderStaticDisplayView *)self superview];
        [v6 frame];
        v4 = v7;
      }
    }

    if (v4 != 0.0)
    {
      [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:0];
      [(CNContactHeaderStaticDisplayView *)self layoutMargins];
      v9 = v8;
      [(CNContactHeaderStaticDisplayView *)self layoutMargins];
      v11 = v4 - (v9 + v10);
      [(CNContactHeaderStaticDisplayView *)self updateFontSizes];
      v12 = [(CNContactHeaderView *)self nameLabel];
      [v12 sizeThatFits:{v11, 1000.0}];
      v14 = v13;

      v15 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
      [v15 sizeThatFits:{v11, 1000.0}];
      v17 = v16;

      v18 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [v18 sizeThatFits:{v11, 1000.0}];
      v20 = v19;

      v21 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
      v22 = [v21 isHidden];
      v23 = MEMORY[0x1E695F060];
      if (v22)
      {
        v24 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        v25 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
        [v25 sizeThatFits:{v11, 1000.0}];
        v24 = v26;
      }

      v27 = [(CNContactHeaderStaticDisplayView *)self geminiView];
      [v27 calculateLayoutIfNeeded];

      if ([(CNContactHeaderStaticDisplayView *)self shouldShowGemini])
      {
        v28 = [(CNContactHeaderStaticDisplayView *)self geminiView];
        [v28 sizeThatFits:{v11, 1000.0}];
        v30 = v29;
      }

      else
      {
        v30 = *(v23 + 8);
      }

      v31 = v14 + v17 + v20 + v24 + v30;
      v32 = [(CNContactHeaderStaticDisplayView *)self _screen];
      [v32 scale];
      if (v33 == 0.0)
      {
        if (RoundToScale_onceToken != -1)
        {
          dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
        }

        v33 = *&RoundToScale___s;
      }

      v34 = v33 == 1.0;
      v35 = round(v33 * v31) / v33;
      v36 = round(v31);
      if (v34)
      {
        v37 = v36;
      }

      else
      {
        v37 = v35;
      }

      [(CNContactHeaderStaticDisplayView *)self setLabelsHeight:v37];
      v38 = [(CNContactHeaderView *)self delegate];
      [v38 headerViewDidUpdateLabelSizes];
    }
  }
}

- (void)calculateLabelSizesIfNeeded
{
  v3.receiver = self;
  v3.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v3 calculateLabelSizesIfNeeded];
  [(CNContactHeaderStaticDisplayView *)self calculateLabelSizes];
}

- (void)disablePhotoTapGesture
{
  v2 = [(CNContactHeaderView *)self photoView];
  [v2 disablePhotoTapGesture];
}

- (void)setIsDowntimeContact:(BOOL)a3
{
  if (self->_isDowntimeContact != a3)
  {
    self->_isDowntimeContact = a3;
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)setIsRestrictedContact:(BOOL)a3
{
  if (self->_isRestrictedContact != a3)
  {
    self->_isRestrictedContact = a3;
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)setIsEmergencyContact:(BOOL)a3
{
  if (self->_isEmergencyContact != a3)
  {
    self->_isEmergencyContact = a3;
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)setImportantMessage:(id)a3
{
  v5 = a3;
  if (self->_importantMessage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_importantMessage, a3);
    [(CNContactHeaderView *)self setNeedsReload];
    v5 = v6;
  }
}

- (void)setMessage:(id)a3
{
  v5 = a3;
  if (self->_message != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_message, a3);
    [(CNContactHeaderView *)self setNeedsReload];
    v5 = v6;
  }
}

- (void)setActionsWrapperView:(id)a3
{
  v5 = a3;
  if (self->_actionsWrapperView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_actionsWrapperView, a3);
    [(CNContactHeaderStaticDisplayView *)self addSubview:v6];
    [(CNContactHeaderStaticDisplayView *)self setNeedsUpdateConstraints];
    v5 = v6;
  }
}

- (void)updateConstraints
{
  v189[1] = *MEMORY[0x1E69E9840];
  v187.receiver = self;
  v187.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v187 updateConstraints];
  v3 = [(CNContactHeaderView *)self isAXSize];
  [(CNContactHeaderStaticDisplayView *)self bottomMargin];
  v5 = v4;
  v6 = MEMORY[0x1E695DF70];
  v7 = [(CNContactHeaderView *)self activatedConstraints];
  v8 = [v6 arrayWithArray:v7];

  v9 = MEMORY[0x1E696ACD8];
  v10 = [(CNContactHeaderView *)self photoHeightConstraint];
  v189[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:1];
  [v9 deactivateConstraints:v11];

  v12 = [(CNContactHeaderView *)self photoHeightConstraint];
  [v8 removeObject:v12];

  v13 = MEMORY[0x1E696ACD8];
  v14 = [(CNContactHeaderView *)self photoTopConstraint];
  v188 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v188 count:1];
  [v13 deactivateConstraints:v15];

  v16 = [(CNContactHeaderView *)self photoTopConstraint];
  [v8 removeObject:v16];

  v17 = [(CNContactHeaderView *)self posterView];
  LOBYTE(v14) = [v17 isHidden];

  if ((v14 & 1) == 0)
  {
    v18 = [(CNContactHeaderView *)self posterView];
    v19 = [v18 topAnchor];
    v20 = [(CNContactHeaderStaticDisplayView *)self topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v8 addObject:v21];

    v22 = [(CNContactHeaderView *)self posterView];
    v23 = [v22 leadingAnchor];
    v24 = [(CNContactHeaderStaticDisplayView *)self leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v8 addObject:v25];

    v26 = [(CNContactHeaderView *)self posterView];
    v27 = [v26 trailingAnchor];
    v28 = [(CNContactHeaderStaticDisplayView *)self trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v8 addObject:v29];

    v30 = [(CNContactHeaderView *)self posterView];
    v31 = [v30 bottomAnchor];
    if (v3)
    {
      v32 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
      v33 = [v32 topAnchor];
      v34 = [v31 constraintEqualToAnchor:v33];
      [v8 addObject:v34];
    }

    else
    {
      v32 = [(CNContactHeaderStaticDisplayView *)self bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32 constant:-v5];
      [v8 addObject:v33];
    }

    v35 = [(CNContactHeaderStaticDisplayView *)self blurView];
    v36 = [v35 topAnchor];
    v37 = [(CNContactHeaderView *)self posterView];
    v38 = [v37 topAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
    [v8 addObject:v39];

    v40 = [(CNContactHeaderStaticDisplayView *)self blurView];
    v41 = [v40 bottomAnchor];
    v42 = [(CNContactHeaderView *)self posterView];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
    [v8 addObject:v44];

    v45 = [(CNContactHeaderStaticDisplayView *)self blurView];
    v46 = [v45 leadingAnchor];
    v47 = [(CNContactHeaderView *)self posterView];
    v48 = [v47 leadingAnchor];
    v49 = [v46 constraintEqualToAnchor:v48];
    [v8 addObject:v49];

    v50 = [(CNContactHeaderStaticDisplayView *)self blurView];
    v51 = [v50 trailingAnchor];
    v52 = [(CNContactHeaderView *)self posterView];
    v53 = [v52 trailingAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v8 addObject:v54];
  }

  v55 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  v56 = [v55 topAnchor];
  v57 = [(CNContactHeaderStaticDisplayView *)self topAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  [v8 addObject:v58];

  v59 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  v60 = [v59 leadingAnchor];
  v61 = [(CNContactHeaderStaticDisplayView *)self leadingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  [v8 addObject:v62];

  v63 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  v64 = [v63 trailingAnchor];
  v65 = [(CNContactHeaderStaticDisplayView *)self trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];
  [v8 addObject:v66];

  v67 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  v68 = [v67 bottomAnchor];
  v69 = [(CNContactHeaderStaticDisplayView *)self bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:-v5];
  [v8 addObject:v70];

  v71 = [(CNContactHeaderView *)self photoView];
  v72 = [v71 centerXAnchor];
  v73 = [(CNContactHeaderStaticDisplayView *)self centerXAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];
  [v8 addObject:v74];

  v75 = [(CNContactHeaderView *)self photoView];
  v76 = [v75 leadingAnchor];
  v77 = [(CNContactHeaderStaticDisplayView *)self layoutMarginsGuide];
  v78 = [v77 leadingAnchor];
  v79 = [v76 constraintGreaterThanOrEqualToAnchor:v78];
  [v8 addObject:v79];

  v80 = [(CNContactHeaderView *)self photoView];
  v81 = [v80 trailingAnchor];
  v82 = [(CNContactHeaderStaticDisplayView *)self layoutMarginsGuide];
  v83 = [v82 trailingAnchor];
  v84 = [v81 constraintLessThanOrEqualToAnchor:v83];
  [v8 addObject:v84];

  v85 = [(CNContactHeaderView *)self photoView];
  v86 = [v85 bottomAnchor];
  v87 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  v88 = [v87 topAnchor];
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinBottomMargin];
  v90 = [v86 constraintEqualToAnchor:v88 constant:-v89];
  [v8 addObject:v90];

  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMaxHeight];
  v92 = v91;
  LODWORD(v87) = [(CNContactHeaderView *)self isOrientationPhoneLandscape];
  v93 = [(CNContactHeaderView *)self photoView];
  v94 = [v93 heightAnchor];
  v95 = v94;
  if (v87)
  {
    [v94 constraintEqualToConstant:v92];
  }

  else
  {
    [v94 constraintLessThanOrEqualToConstant:v92];
  }
  v96 = ;
  [(CNContactHeaderView *)self setPhotoHeightConstraint:v96];

  v97 = [(CNContactHeaderView *)self photoHeightConstraint];
  [v8 addObject:v97];

  v98 = [(CNContactHeaderView *)self photoView];
  v99 = [v98 topAnchor];
  v100 = [(CNContactHeaderStaticDisplayView *)self topAnchor];
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinTopMargin];
  v101 = [v99 constraintEqualToAnchor:v100 constant:?];
  [(CNContactHeaderView *)self setPhotoTopConstraint:v101];

  if ([(CNContactHeaderView *)self isPadRegularHorizontalSize])
  {
    v102 = [(CNContactHeaderView *)self photoTopConstraint];
    LODWORD(v103) = 1148829696;
    [v102 setPriority:v103];

    v104 = [(CNContactHeaderView *)self photoView];
    v105 = [v104 topAnchor];
    v106 = [(CNContactHeaderStaticDisplayView *)self topAnchor];
    [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinTopMargin];
    v107 = [v105 constraintGreaterThanOrEqualToAnchor:v106 constant:?];
    [v8 addObject:v107];
  }

  v108 = [(CNContactHeaderView *)self photoTopConstraint];
  [v8 addObject:v108];

  v109 = [(CNContactHeaderView *)self photoView];
  LODWORD(v110) = 1132068864;
  [v109 setContentHuggingPriority:1 forAxis:v110];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__CNContactHeaderStaticDisplayView_updateConstraints__block_invoke;
  aBlock[3] = &unk_1E74E2570;
  aBlock[4] = self;
  v111 = v8;
  v186 = v111;
  v112 = _Block_copy(aBlock);
  v113 = [(CNContactHeaderView *)self nameLabel];
  v112[2](v112, v113);

  v114 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  v182 = v112;
  v112[2](v112, v114);

  v115 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  LODWORD(v116) = 1148846080;
  [v115 setContentHuggingPriority:1 forAxis:v116];

  v117 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  LODWORD(v118) = 1148846080;
  [v117 setContentCompressionResistancePriority:1 forAxis:v118];

  v119 = [(CNContactHeaderView *)self nameLabel];
  LODWORD(v120) = 1148846080;
  [v119 setContentHuggingPriority:1 forAxis:v120];

  v121 = [(CNContactHeaderView *)self nameLabel];
  LODWORD(v122) = 1148846080;
  [v121 setContentCompressionResistancePriority:1 forAxis:v122];

  v123 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  if (v123)
  {
    v124 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
    v125 = [v124 isHidden] ^ 1;
  }

  else
  {
    v125 = 0;
  }

  v126 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
  if (v126)
  {
    v127 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    v128 = [v127 isHidden] ^ 1;
  }

  else
  {
    v128 = 0;
  }

  v129 = [(CNContactHeaderStaticDisplayView *)self shouldShowGemini];
  v130 = [MEMORY[0x1E695DF70] array];
  if (v125)
  {
    v131 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
    [v130 addObject:v131];
  }

  if (v128)
  {
    v132 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    [v130 addObject:v132];
  }

  v133 = v3;
  if (v129)
  {
    v134 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [v130 addObject:v134];
  }

  v135 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  v136 = [v135 bottomAnchor];

  v183[0] = MEMORY[0x1E69E9820];
  v183[1] = 3221225472;
  v183[2] = __53__CNContactHeaderStaticDisplayView_updateConstraints__block_invoke_2;
  v183[3] = &unk_1E74E2598;
  v183[4] = self;
  v137 = v111;
  v184 = v137;
  v138 = [v130 _cn_reduce:v183 initialValue:v136];
  v139 = [(CNContactHeaderView *)self nameLabel];
  v140 = [v139 topAnchor];
  v141 = [v138 constraintEqualToAnchor:v140];
  [v137 addObject:v141];

  v142 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];

  if (v142)
  {
    v181 = v136;
    v143 = [(CNContactHeaderStaticDisplayView *)self leadingAnchor];
    v144 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    v145 = [v144 leadingAnchor];
    v146 = [v143 constraintEqualToAnchor:v145];
    [v137 addObject:v146];

    v147 = [(CNContactHeaderStaticDisplayView *)self trailingAnchor];
    v148 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    v149 = [v148 trailingAnchor];
    v150 = [v147 constraintEqualToAnchor:v149];
    [v137 addObject:v150];

    v151 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    LODWORD(v152) = 1148846080;
    [v151 setContentHuggingPriority:1 forAxis:v152];

    v153 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    LODWORD(v154) = 1148846080;
    [v153 setContentCompressionResistancePriority:1 forAxis:v154];

    if (!v133)
    {
      v166 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
      v167 = [v166 topAnchor];
      v168 = [(CNContactHeaderView *)self nameLabel];
      v169 = [v168 bottomAnchor];
      v170 = [v167 constraintEqualToAnchor:v169];
      [v137 addObject:v170];

      v171 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
      v172 = [v171 bottomAnchor];
      v173 = [(CNContactHeaderStaticDisplayView *)self bottomAnchor];
      v174 = [v172 constraintEqualToAnchor:v173 constant:-v5];
LABEL_32:
      v180 = v174;
      [v137 addObject:v174];

      v136 = v181;
      goto LABEL_33;
    }

    v155 = [(CNContactHeaderView *)self nameLabel];
    v156 = [v155 text];
    if (v156)
    {
      v157 = v156;
      v158 = [(CNContactHeaderView *)self nameLabel];
      v159 = [v158 text];
      v160 = [v159 length];

      if (v160)
      {
        v161 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
        v162 = [v161 topAnchor];
        v163 = [(CNContactHeaderView *)self nameLabel];
        v164 = [v163 bottomAnchor];
        v165 = [v162 constraintEqualToAnchor:v164 constant:v5];
        [v137 addObject:v165];

LABEL_31:
        v171 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
        v172 = [v171 bottomAnchor];
        v173 = [(CNContactHeaderStaticDisplayView *)self bottomAnchor];
        v174 = [v172 constraintEqualToAnchor:v173];
        goto LABEL_32;
      }
    }

    else
    {
    }

    v175 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    v176 = [v175 topAnchor];
    v177 = [(CNContactHeaderView *)self nameLabel];
    v178 = [v177 topAnchor];
    v161 = [v176 constraintEqualToAnchor:v178];

    LODWORD(v179) = 1132068864;
    [v161 setPriority:v179];
    [v137 addObject:v161];
    goto LABEL_31;
  }

LABEL_33:
  [MEMORY[0x1E696ACD8] activateConstraints:v137];
  [(CNContactHeaderView *)self setActivatedConstraints:v137];
}

void __53__CNContactHeaderStaticDisplayView_updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 leadingAnchor];
  v5 = [*(a1 + 32) layoutMarginsGuide];
  v6 = [v5 leadingAnchor];
  v12 = [v4 constraintEqualToAnchor:v6];

  [*(a1 + 40) addObject:v12];
  v7 = [v3 trailingAnchor];
  v8 = [*(a1 + 32) layoutMarginsGuide];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];

  [*(a1 + 40) addObject:v10];
  LODWORD(v11) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v11];
}

id __53__CNContactHeaderStaticDisplayView_updateConstraints__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v20 = [v5 leadingAnchor];
  v21 = [*(a1 + 32) layoutMarginsGuide];
  v19 = [v21 leadingAnchor];
  v7 = [v20 constraintEqualToAnchor:v19];
  v22[0] = v7;
  v8 = [v5 trailingAnchor];
  v9 = [*(a1 + 32) layoutMarginsGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v22[1] = v11;
  v12 = [v5 topAnchor];
  v13 = [v6 constraintEqualToAnchor:v12];

  v22[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];

  [*(a1 + 40) addObjectsFromArray:v14];
  LODWORD(v15) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v16];
  v17 = [v5 bottomAnchor];

  return v17;
}

- (double)staticHeaderPhotoMinBottomMargin
{
  if ([(CNContactHeaderView *)self isPadCompactHorizontalSize])
  {
    v3 = [(CNContactHeaderView *)self sizeAttributes];
    [v3 photoMinBottomMarginPadCompact];
  }

  else if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
  {
    v3 = [(CNContactHeaderView *)self sizeAttributes];
    [v3 photoMinBottomMarginPhoneLandscape];
  }

  else
  {
    v5 = [(CNContactHeaderStaticDisplayView *)self shouldUseFixedHeight];
    v6 = [(CNContactHeaderView *)self sizeAttributes];
    v3 = v6;
    if (v5)
    {
      [v6 photoMinBottomMarginLowQuality];
    }

    else
    {
      [v6 photoMinBottomMargin];
    }
  }

  v7 = v4;

  return v7;
}

- (double)avatarHeightPhoneLandscape
{
  [(CNContactHeaderStaticDisplayView *)self frame];
  v4 = v3;
  if (v3 == 0.0)
  {
    v5 = [(CNContactHeaderStaticDisplayView *)self superview];

    if (v5)
    {
      v6 = [(CNContactHeaderStaticDisplayView *)self superview];
      [v6 frame];
      v4 = v7;
    }
  }

  if (v4 == 0.0)
  {
    return 0.0;
  }

  [(CNContactHeaderStaticDisplayView *)self layoutMargins];
  v9 = v8;
  [(CNContactHeaderStaticDisplayView *)self layoutMargins];
  v11 = v4 - (v9 + v10);
  v12 = [(CNContactHeaderView *)self nameLabel];
  [v12 sizeThatFits:{v11, 3.40282347e38}];
  v14 = v13;

  v15 = [(CNContactHeaderView *)self nameLabel];
  v16 = [v15 font];
  [v16 lineHeight];
  v18 = ceil(v17);

  v19 = [(CNContactHeaderView *)self sizeAttributes];
  v20 = v19;
  if (v14 <= v18)
  {
    [v19 photoMaxHeightPhoneLandscape];
  }

  else
  {
    [v19 photoMinHeight];
  }

  v22 = v21;

  return v22;
}

- (double)staticHeaderPhotoMaxHeight
{
  if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
  {
    [(CNContactHeaderStaticDisplayView *)self avatarHeightPhoneLandscape];
    v4 = v3;
  }

  else
  {
    v5 = [(CNContactHeaderView *)self sizeAttributes];
    [v5 photoMaxHeight];
    v4 = v6;
  }

  if ([(CNContactHeaderView *)self isPhotoLowQuality])
  {
    if (![(CNContactHeaderStaticDisplayView *)self shouldShowPoster])
    {
      v7 = [(CNContactHeaderView *)self sizeAttributes];
      [v7 photoMaxHeightLowQuality];
      v9 = v8;

      if (v4 >= v9)
      {
        return v9;
      }
    }
  }

  return v4;
}

- (double)staticHeaderPhotoMinHeight
{
  if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
  {
    [(CNContactHeaderStaticDisplayView *)self avatarHeightPhoneLandscape];
    v4 = v3;
  }

  else
  {
    v5 = [(CNContactHeaderView *)self isPadCompactHorizontalSize];
    v6 = [(CNContactHeaderView *)self sizeAttributes];
    v7 = v6;
    if (v5)
    {
      [v6 photoMaxHeightPadCompact];
    }

    else
    {
      [v6 photoMinHeight];
    }

    v4 = v8;
  }

  if ([(CNContactHeaderView *)self isPhotoLowQuality])
  {
    if (![(CNContactHeaderStaticDisplayView *)self shouldShowPoster])
    {
      v9 = [(CNContactHeaderView *)self sizeAttributes];
      [v9 photoMaxHeightLowQuality];
      v11 = v10;

      if (v4 >= v11)
      {
        return v11;
      }
    }
  }

  return v4;
}

- (BOOL)shouldUseFixedHeight
{
  if ([(CNContactHeaderView *)self isOrientationPhoneLandscape]|| [(CNContactHeaderView *)self isPadCompactHorizontalSize]|| (v3 = [(CNContactHeaderStaticDisplayView *)self shouldShowPoster], [(CNContactHeaderView *)self isPhotoLowQuality]) && !v3 || !(v3 | ![(CNContactHeaderView *)self isAXSize]))
  {
    v7 = 1;
  }

  else
  {
    v4 = [(CNContactHeaderView *)self contacts];
    v5 = [v4 firstObject];
    v6 = [v5 imageDataAvailable] | v3;

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

- (double)staticHeaderPhotoMinTopMargin
{
  if ([(CNContactHeaderView *)self isPadRegularHorizontalSize])
  {
    v3 = [(CNContactHeaderView *)self sizeAttributes];
    [v3 photoMinTopMargin];
    v5 = v4;
    goto LABEL_9;
  }

  if ([(CNContactHeaderView *)self isPadCompactHorizontalSize])
  {
    [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoTopMarginOffset];
    v7 = v6;
    v3 = [(CNContactHeaderView *)self sizeAttributes];
    [v3 photoMinTopMarginPadCompact];
  }

  else
  {
    if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
    {
      v3 = [(CNContactHeaderStaticDisplayView *)self superview];
      [v3 frame];
      v5 = v9 * 0.1;
      goto LABEL_9;
    }

    [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoTopMarginOffset];
    v7 = v10;
    v3 = [(CNContactHeaderView *)self sizeAttributes];
    [v3 photoMinTopMargin];
  }

  v5 = v7 + v8;
LABEL_9:

  result = 0.0;
  if (((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF)
  {
    return v5;
  }

  return result;
}

- (double)staticHeaderPhotoTopMarginOffset
{
  v3 = [(CNContactHeaderView *)self delegate];
  [v3 navigationBarHeight];
  v5 = v4;

  v6 = [(CNContactHeaderView *)self delegate];
  [v6 headerViewSafeAreaInsets];
  v8 = v7;

  return v5 + v8;
}

- (double)nameFontSize
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD58]];
  [v2 pointSize];
  v4 = v3 + 6.0;

  return v4;
}

- (id)nameFont
{
  v3 = +[CNUIFontRepository contactCardStaticHeaderDefaultNameFont];
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:29];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v8 = [(CNContactHeaderView *)self contacts];
    v9 = [v8 firstObject];
    v10 = [v9 wallpaper];
    v11 = [v10 font];

    if (v11)
    {
      v12 = [v11 fontDescriptor];
      v13 = [v12 fontDescriptorWithSymbolicTraits:0x8000];

      v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v7 = v3;
    }
  }

  return v7;
}

- (void)updateFontSizes
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderView *)self isAXSize];
  v4 = [(CNContactHeaderView *)self nameLabel];
  [v4 setAdjustsFontSizeToFitWidth:!v3];

  if (v3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.7;
  }

  v6 = [(CNContactHeaderView *)self nameLabel];
  [v6 setMinimumScaleFactor:v5];

  v7 = [(CNContactHeaderStaticDisplayView *)self nameFont];
  v8 = sCurrentNameFont;
  sCurrentNameFont = v7;

  [(CNContactHeaderStaticDisplayView *)self nameFontSize];
  v9 = sCurrentNameFont;
  [sCurrentNameFont _scaledValueForValue:?];
  v10 = [v9 fontWithSize:?];
  v26 = *MEMORY[0x1E69DB648];
  v11 = v26;
  v27[0] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v12];

  v13 = +[CNUIFontRepository contactCardStaticHeaderDefaultTaglineFont];
  v14 = sCurrentTaglineFont;
  sCurrentTaglineFont = v13;

  v24 = v11;
  v25 = sCurrentTaglineFont;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [self cn_updateDictionaryForKey:@"importantTextAttributes" withChanges:v15];

  v22 = v11;
  v23 = sCurrentTaglineFont;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [self cn_updateDictionaryForKey:@"downtimeTextAttributes" withChanges:v16];

  v20 = v11;
  v21 = sCurrentTaglineFont;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [self cn_updateDictionaryForKey:@"geminiTextAttributes" withChanges:v17];

  v18 = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
  [v18 updateGeminiIcons];

  v19 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v19 setNeedsCalculateLayout];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderStaticDisplayView *)&v7 tintColorDidChange];
  v3 = [(CNContactHeaderStaticDisplayView *)self tintColor];
  v4 = [(CNContactHeaderView *)self nameLabel];
  [v4 setHighlightedTextColor:v3];

  v5 = [(CNContactHeaderStaticDisplayView *)self tintColor];
  v6 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [v6 setHighlightedColor:v5];
}

- (unint64_t)avatarStyle
{
  v2 = [(CNContactHeaderView *)self photoView];
  v3 = [v2 avatarView];
  v4 = [v3 style];

  return v4;
}

- (void)setAvatarStyle:(unint64_t)a3
{
  v5 = [(CNContactHeaderView *)self photoView];
  v4 = [v5 avatarView];
  [v4 setStyle:a3];
}

- (BOOL)shouldShowPoster
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5 & 1) != 0 || -[CNContactHeaderView showMonogramsOnly](self, "showMonogramsOnly") || -[CNContactHeaderView isPad](self, "isPad") || (-[CNContactHeaderView delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isOrientationPhoneLandscape], v6, (v7) || (-[CNContactHeaderView contacts](self, "contacts"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 != 1))
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v10 = [(CNContactHeaderView *)self contacts];
    v11 = [v10 firstObject];

    v12 = *MEMORY[0x1E6996540];
    v13 = [v11 wallpaper];
    v14 = [v13 posterArchiveData];
    v15 = (*(v12 + 16))(v12, v14) ^ 1;
  }

  return v15;
}

- (void)setShouldShowGemini:(BOOL)a3
{
  if (self->_shouldShowGemini != a3)
  {
    if (a3)
    {
      [(CNContactHeaderStaticDisplayView *)self createGeminiViewIfNeeded];
      v5 = [(CNContactHeaderStaticDisplayView *)self geminiView];
      [(CNContactHeaderStaticDisplayView *)self addSubview:v5];
    }

    else
    {
      v5 = [(CNContactHeaderStaticDisplayView *)self geminiView];
      [v5 removeFromSuperview];
    }

    [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
    self->_shouldShowGemini = a3;

    [(CNContactHeaderStaticDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)createGeminiViewIfNeeded
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (!self->_geminiView)
  {
    v3 = [CNContactGeminiView alloc];
    v4 = [(CNContactGeminiView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    geminiView = self->_geminiView;
    self->_geminiView = v4;

    if ([(CNContactHeaderView *)self useDualSimParity])
    {
      [(CNContactGeminiView *)self->_geminiView setUseDualSimParity];
    }

    [(CNContactGeminiView *)self->_geminiView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNContactGeminiView *)self->_geminiView setUserInteractionEnabled:1];
    v6 = [(CNContactHeaderStaticDisplayView *)self tintColor];
    [(CNContactGeminiView *)self->_geminiView setHighlightedColor:v6];

    v7 = +[CNUIColorRepository contactCardStaticHeaderGeminiTextColor];
    [(CNContactGeminiView *)self->_geminiView setBackgroundColor:v7];

    v12[0] = *MEMORY[0x1E69DDD80];
    v8 = *MEMORY[0x1E69DB650];
    v11[0] = @"ABTextStyleAttributeName";
    v11[1] = v8;
    v9 = +[CNUIColorRepository contactCardStaticHeaderGeminiTextColor];
    v12[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(CNContactHeaderStaticDisplayView *)self setGeminiTextAttributes:v10];
  }
}

- (id)imageDataForColorFetchingIsImageDataOrThumbnail:(BOOL *)a3 bitmapFormat:(id *)a4
{
  MmappedBitmapContext = self;
  v7 = [(CNContactHeaderView *)self contacts];
  v8 = [v7 firstObject];

  if ([v8 isKeyAvailable:*MEMORY[0x1E695C400]])
  {
    v9 = *MEMORY[0x1E6996540];
    v10 = [v8 thumbnailImageData];
    LOBYTE(v9) = (*(v9 + 16))(v9, v10);

    if ((v9 & 1) == 0)
    {
      v11 = [v8 thumbnailImageData];
      goto LABEL_11;
    }
  }

  if ([v8 isKeyAvailable:*MEMORY[0x1E695C278]])
  {
    v11 = [v8 imageData];
LABEL_11:
    v22 = v11;
    v28 = [MmappedBitmapContext dataForBackgroundColorService:v11];
    LOBYTE(MmappedBitmapContext) = 1;
    goto LABEL_12;
  }

  v12 = [MmappedBitmapContext photoView];
  v13 = [v12 avatarView];
  v14 = [v13 displayedImageState];

  if (v14 == 2)
  {
    v15 = [MmappedBitmapContext photoView];
    v16 = [v15 avatarView];
    v17 = [v16 contentImage];
    v18 = [v17 CGImage];

    Width = CGImageGetWidth(v18);
    Height = CGImageGetHeight(v18);
    CGImageGetBitsPerComponent(v18);
    MmappedBitmapContext = CNImageUtilsCreateMmappedBitmapContext();
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = Width;
    v31.size.height = Height;
    CGContextDrawImage(MmappedBitmapContext, v31, v18);
    v21 = [objc_alloc(MEMORY[0x1E695CED0]) initWithBitmapContext:MmappedBitmapContext];
    v22 = v21;
    if (a4)
    {
      v23 = v21;
      *a4 = v22;
    }

    Data = CGBitmapContextGetData(MmappedBitmapContext);
    BytesPerRow = CGBitmapContextGetBytesPerRow(MmappedBitmapContext);
    v26 = CGBitmapContextGetHeight(MmappedBitmapContext) * BytesPerRow;
    v27 = dispatch_get_global_queue(0, 0);
    v28 = dispatch_data_create(Data, v26, v27, *MEMORY[0x1E69E9650]);

    if (MmappedBitmapContext)
    {
      CFRelease(MmappedBitmapContext);
      LOBYTE(MmappedBitmapContext) = 0;
    }

LABEL_12:

    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v28 = 0;
  LOBYTE(MmappedBitmapContext) = 1;
  if (a3)
  {
LABEL_13:
    *a3 = MmappedBitmapContext;
  }

LABEL_14:

  return v28;
}

- (void)assignImageColorsToAvatarBackgroundView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v33 = a3;
  v6 = [MEMORY[0x1E6996B28] colorArraySize];
  if ([v33 count] == v6)
  {
    v7 = v33;
  }

  else
  {
    v8 = MEMORY[0x1E695DEC8];
    v9 = [v33 firstObject];
    v10 = v9;
    if (!v9)
    {
      v10 = [MEMORY[0x1E69DC888] clearColor];
    }

    v11 = [v8 _cn_arrayWithObject:v10 count:v6];

    if (!v9)
    {
    }

    v4 = 0;
    v7 = v11;
  }

  v34 = v7;
  v12 = [v7 _cn_map:&__block_literal_global_11379];
  v13 = [v12 _cn_reversed];

  lastBackgroundColors = self->_lastBackgroundColors;
  if (lastBackgroundColors != v13 && (!lastBackgroundColors || ![(NSArray *)v13 isEqualToArray:?]))
  {
    objc_storeStrong(&self->_lastBackgroundColors, v13);
    v15 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
    [v15 removeAnimationForKey:@"gradientAnimation"];

    if (v4 && (-[CNContactHeaderStaticDisplayView avatarBackgroundGradientLayer](self, "avatarBackgroundGradientLayer"), v16 = objc_claimAutoreleasedReturnValue(), [v16 colors], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
    {
      v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"colors"];
      [v18 setToValue:v13];
      [v18 setDuration:0.2];
      [v18 setFillMode:*MEMORY[0x1E69797E8]];
      [v18 setRemovedOnCompletion:0];
      v19 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
      [v19 addAnimation:v18 forKey:@"gradientAnimation"];
    }

    else
    {
      v18 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
      [v18 setColors:v13];
    }

    v20 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
    [v29 setFrame:{v22, v24, v26, v28}];
  }

  v30 = [(CNContactHeaderView *)self delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = [(CNContactHeaderView *)self delegate];
    [v32 headerView:self didSetBackgroundAsGradientColors:v34];
  }
}

uint64_t __85__CNContactHeaderStaticDisplayView_assignImageColorsToAvatarBackgroundView_animated___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (void)updateLabelColorsForImageColors:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([CNImageDerivedColorBackgroundUtilities backgroundColorsPreferWhiteForegroundText:a3])
  {
    v4 = +[CNUIColorRepository contactCardStaticAvatarHeaderDefaultTextColor];
    +[CNUIColorRepository contactCardStaticHeaderDefaultTaglineTextColor];
  }

  else
  {
    v4 = +[CNUIColorRepository contactCardStaticAvatarHeaderDefaultDarkTextColor];
    +[CNUIColorRepository contactCardStaticHeaderDefaultTaglineDarkTextColor];
  }
  v5 = ;
  v11 = *MEMORY[0x1E69DB650];
  v12[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v6];

  v7 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  [v7 setTextColor:v5];

  v8 = [(CNContactHeaderView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CNContactHeaderView *)self delegate];
    [v10 headerView:self didSetNameLabelColor:v4];
  }
}

- (void)updateAvatarBackgroundViewVisibility
{
  v3 = [(CNContactHeaderStaticDisplayView *)self shouldShowPoster];
  v4 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  [v4 setHidden:v3];

  if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
  *&v7 = v5;
  [v6 setOpacity:v7];

  if (![(CNContactHeaderStaticDisplayView *)self shouldShowPoster])
  {
    [(CNContactHeaderStaticDisplayView *)self setPosterViewHidden:1];
    v8 = [(CNContactHeaderView *)self contacts];
    v9 = [v8 firstObject];
    v10 = [v9 backgroundColors];
    v11 = [v10 contactImage];

    v12 = [(CNContactHeaderView *)self contacts];
    v13 = [v12 firstObject];
    v14 = [v13 identifier];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__CNContactHeaderStaticDisplayView_updateAvatarBackgroundViewVisibility__block_invoke;
    aBlock[3] = &unk_1E74E2638;
    aBlock[4] = self;
    v15 = v14;
    v24 = v15;
    v16 = _Block_copy(aBlock);
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v22 = 0;
      v21 = 0;
      v17 = [(CNContactHeaderStaticDisplayView *)self imageDataForColorFetchingIsImageDataOrThumbnail:&v22 bitmapFormat:&v21];
      v18 = v21;
      v19 = (*(*MEMORY[0x1E6996540] + 16))();
      if ((v19 & 1) != 0 || ![(CNContactHeaderStaticDisplayView *)self identifierForBackgroundColorIsCurrent:v15])
      {
        objc_storeStrong(&self->_lastBackgroundColorsContactIdentifier, v14);
        v20 = [(CNContactHeaderView *)self backgroundGradientDefaultGrayColors];
        (*(v16 + 2))(v16, v20, 0, v19 ^ 1u);
      }
    }

    else
    {
      objc_storeStrong(&self->_lastBackgroundColorsContactIdentifier, v14);
      (*(v16 + 2))(v16, v11, 0, 1);
    }
  }
}

void __72__CNContactHeaderStaticDisplayView_updateAvatarBackgroundViewVisibility__block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = a2;
  if ([*(a1 + 32) identifierForBackgroundColorIsCurrent:*(a1 + 40)])
  {
    if (a4)
    {
      v8 = [MEMORY[0x1E6996B28] tintedUIColorsFromUIColors:v7 isLight:0];
    }

    else
    {
      v8 = v7;
    }

    v9 = v8;
    [*(a1 + 32) assignImageColorsToAvatarBackgroundView:v8 animated:a3];
    v10 = MEMORY[0x1E69DD250];
    if (a3)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72__CNContactHeaderStaticDisplayView_updateAvatarBackgroundViewVisibility__block_invoke_2;
      v18[3] = &unk_1E74E77C0;
      v11 = *(a1 + 32);
      v12 = &v19;
      v18[4] = v11;
      v19 = v9;
      v13 = v9;
      [v10 animateWithDuration:v18 animations:0.2];
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __72__CNContactHeaderStaticDisplayView_updateAvatarBackgroundViewVisibility__block_invoke_3;
      v16[3] = &unk_1E74E77C0;
      v14 = *(a1 + 32);
      v12 = &v17;
      v16[4] = v14;
      v17 = v9;
      v15 = v9;
      [v10 performWithoutAnimation:v16];
    }
  }
}

- (BOOL)identifierForBackgroundColorIsCurrent:(id)a3
{
  v4 = a3;
  lastBackgroundColorsContactIdentifier = self->_lastBackgroundColorsContactIdentifier;
  if (lastBackgroundColorsContactIdentifier == v4)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [(NSString *)lastBackgroundColorsContactIdentifier isEqualToString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUpAvatarBackgroundView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v10 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNContactHeaderStaticDisplayView *)self addSubview:v10];
  [(CNContactHeaderStaticDisplayView *)self sendSubviewToBack:v10];
  [(CNContactHeaderStaticDisplayView *)self setAvatarBackgroundView:v10];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  [v5 setBackgroundColor:v4];

  v6 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  [v6 setHidden:1];

  v7 = [MEMORY[0x1E6979380] layer];
  v8 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  v9 = [v8 layer];
  [v9 addSublayer:v7];

  [(CNContactHeaderStaticDisplayView *)self setAvatarBackgroundGradientLayer:v7];
}

- (CGRect)layerContentsRectForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695CFC8] wallpaperTypeFromConfiguration:v4];
  v6 = [(CNContactHeaderStaticDisplayView *)self window];
  [CNIncomingCallSnapshotViewController horizontalNameLabelBoundingRectForName:&stru_1F0CE7398 window:v6];
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 bounds];
  v13 = (v8 + v10) * 0.125 / v12;

  if ([v5 isEqualToString:*MEMORY[0x1E695CCF0]])
  {
    v14 = [[CNPhotosPosterConfigurationReader alloc] initWithPosterConfiguration:v4];
    if ([(CNPhotosPosterConfigurationReader *)v14 hasFaceRectInPosterSnapshot])
    {
      [(CNPhotosPosterConfigurationReader *)v14 faceRectInPosterSnapshotPercentFromTop];
      v13 = v15 + -0.35;
    }

    v16 = 1.0;
  }

  else
  {
    if ([v5 isEqualToString:*MEMORY[0x1E695CCE0]])
    {
      v16 = 1.0;
      v17 = 0.65;
      v13 = 0.12;
      goto LABEL_8;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E695CCE8]])
    {
      v13 = -v13;
      v16 = 1.0;
    }

    else
    {
      v16 = 1.0;
      v13 = 0.0;
    }
  }

  v17 = 1.0;
LABEL_8:

  v18 = 0.0;
  v19 = v13;
  v20 = v16;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)updateLabelColorsForPosterSnapshot:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CNContactHeaderStaticDisplayView_updateLabelColorsForPosterSnapshot___block_invoke;
  v7[3] = &unk_1E74E77C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __71__CNContactHeaderStaticDisplayView_updateLabelColorsForPosterSnapshot___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E6996B28] colorsForUIImage:*(a1 + 40)];
  [v1 updateLabelColorsForImageColors:v2];
}

- (void)assignSnapshotImageToPosterView:(id)a3 configuration:(id)a4 contentIsSensitive:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__CNContactHeaderStaticDisplayView_assignSnapshotImageToPosterView_configuration_contentIsSensitive___block_invoke;
  v13[3] = &unk_1E74E2610;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a5;
  v11 = v8;
  v12 = v9;
  [v10 performBlock:v13];
}

void __101__CNContactHeaderStaticDisplayView_assignSnapshotImageToPosterView_configuration_contentIsSensitive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) posterView];
  [v2 setContentMode:2];

  v3 = [*(a1 + 32) posterView];
  [v3 setClipsToBounds:1];

  [*(a1 + 32) layerContentsRectForConfiguration:*(a1 + 40)];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) posterView];
  v13 = [v12 layer];
  [v13 setContentsRect:{v5, v7, v9, v11}];

  v14 = *(a1 + 48);
  v15 = [*(a1 + 32) posterView];
  [v15 setImage:v14];

  [*(a1 + 32) updateSensitiveContentBlurVisibility:*(a1 + 56)];
  v16 = [*(a1 + 32) delegate];
  LOBYTE(v15) = objc_opt_respondsToSelector();

  if (v15)
  {
    v17 = [*(a1 + 32) delegate];
    [v17 headerView:*(a1 + 32) didSetBackgroundAsPosterSnapshotImage:*(a1 + 48)];
  }
}

- (void)updateImageViewVisiblity
{
  [(CNContactHeaderStaticDisplayView *)self _updatePhotoView];
  [(CNContactHeaderStaticDisplayView *)self updateAvatarBackgroundViewVisibility];
  v3 = [(CNContactHeaderStaticDisplayView *)self shouldShowPoster]^ 1;
  [(CNContactHeaderStaticDisplayView *)self setPosterViewHidden:v3];
  if ((v3 & 1) == 0)
  {
    v4 = [(CNContactHeaderView *)self posterView];
    v5 = [v4 image];

    if (v5)
    {
      v6 = [(CNContactHeaderView *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v10 = [(CNContactHeaderView *)self delegate];
        v8 = [(CNContactHeaderView *)self posterView];
        v9 = [v8 image];
        [v10 headerView:self didSetBackgroundAsPosterSnapshotImage:v9];
      }
    }

    else
    {

      [(CNContactHeaderStaticDisplayView *)self updatePosterViewImage];
    }
  }
}

- (void)setPosterViewHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactHeaderView *)self posterView];
  [v5 setHidden:v3];

  v6 = [(CNContactHeaderStaticDisplayView *)self blurView];
  [v6 setHidden:v3];

  if (v3)
  {
    v7 = [(CNContactHeaderView *)self posterView];
    [v7 setImage:0];

    [(CNContactHeaderStaticDisplayView *)self updateSensitiveContentBlurVisibility:0];
  }
}

- (void)updatePosterViewImage
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderStaticDisplayView *)self shouldShowPoster];
  v4 = CNUILogPosters();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Poster should be shown", buf, 2u);
    }

    v6 = [(CNContactHeaderView *)self posterView];
    [v6 setHidden:0];

    v7 = [(CNContactHeaderStaticDisplayView *)self blurView];
    [v7 setHidden:0];

    v8 = [(CNContactHeaderView *)self contacts];
    v9 = [v8 firstObject];

    v10 = [v9 identifier];
    v11 = [(CNContactHeaderStaticDisplayView *)self currentlyDisplayedPosterContactIdentifier];
    v12 = [v10 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [(CNContactHeaderView *)self posterView];
      [v13 setImage:0];
    }

    v14 = [(CNContactHeaderStaticDisplayView *)self cachedPosterConfiguration];
    v15 = v14 == 0;

    if (v15)
    {
      v16 = CNUILogPosters();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEFAULT, "No cached snapshot, requesting cached configuraiton", buf, 2u);
      }

      v17 = [v9 wallpaper];
      v18 = [v17 posterArchiveData];
      v55 = 0;
      v19 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:v18 error:&v55];
      v20 = v55;
      cachedPosterConfiguration = self->_cachedPosterConfiguration;
      self->_cachedPosterConfiguration = v19;

      v22 = self->_cachedPosterConfiguration;
      v23 = CNUILogPosters();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&dword_199A75000, v23, OS_LOG_TYPE_DEFAULT, "Unarchived poster configuration successfully", buf, 2u);
        }
      }

      else if (v24)
      {
        v25 = [v20 localizedDescription];
        *buf = 138412290;
        v57 = v25;
        _os_log_impl(&dword_199A75000, v23, OS_LOG_TYPE_DEFAULT, "Unable to unarchive poster configuration from data, %@", buf, 0xCu);
      }
    }

    v26 = [(CNContactHeaderStaticDisplayView *)self cachedPosterConfiguration];
    if (!v26)
    {
      goto LABEL_33;
    }

    v27 = [v9 identifier];
    [(CNContactHeaderStaticDisplayView *)self setCurrentlyDisplayedPosterContactIdentifier:v27];

    v47 = [[CNPRUISIncomingCallPosterContext alloc] initWithContact:v9 showName:0];
    v28 = [CNPRUISIncomingCallSnapshotDefinition contentsOnlySnapshotDefinitionWithContext:v47 attachmentIdentifiers:0];
    v48 = [CNPRUISPosterSnapshotRequest requestForConfiguration:v26 definition:v28 interfaceOrientation:1];
    v29 = objc_alloc_init(CNPRUISPosterSnapshotController);
    v54 = 0;
    v30 = [(CNPRUISPosterSnapshotController *)v29 latestSnapshotBundleForRequest:v48 error:&v54];
    v46 = v54;
    if (v30)
    {
      v31 = [v28 levelSets];
      v32 = [v31 firstObject];
      v33 = [v30 snapshotForLevelSet:v32];

      v34 = CNUILogPosters();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v34, OS_LOG_TYPE_DEFAULT, "Returning cached snapshot", buf, 2u);
      }

      if (v33)
      {
        v35 = CNUILogPosters();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v9 identifier];
          v45 = [v26 wrappedPosterConfiguration];
          v42 = [v45 serverUUID];
          v44 = [v9 wallpaper];
          v36 = [v44 posterArchiveData];
          v37 = [v36 length];
          [v33 size];
          v41 = NSStringFromCGSize(v65);
          *buf = 138413058;
          v57 = v43;
          v58 = 2112;
          v59 = v42;
          v60 = 2048;
          v61 = v37;
          v62 = 2112;
          v63 = v41;
          _os_log_impl(&dword_199A75000, v35, OS_LOG_TYPE_DEFAULT, "[1] Will assign snapshot image for contact identifier %@. Poster config ID %@. Wallpaper posterArchiveData has length %ld, snapshot image has size %@.", buf, 0x2Au);
        }

        v38 = [v9 wallpaper];
        -[CNContactHeaderStaticDisplayView assignSnapshotImageToPosterView:configuration:contentIsSensitive:](self, "assignSnapshotImageToPosterView:configuration:contentIsSensitive:", v33, v26, [v38 contentIsSensitive]);

        [(CNContactHeaderStaticDisplayView *)self updateLabelColorsForPosterSnapshot:v33];
LABEL_32:

LABEL_33:
        return;
      }
    }

    else
    {
      v39 = CNUILogPosters();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v39, OS_LOG_TYPE_DEFAULT, "No snapshot found in cache", buf, 2u);
      }
    }

    v40 = CNUILogPosters();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v40, OS_LOG_TYPE_DEFAULT, "Requesting poster snapshot", buf, 2u);
    }

    objc_initWeak(buf, self);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __57__CNContactHeaderStaticDisplayView_updatePosterViewImage__block_invoke;
    v49[3] = &unk_1E74E25E8;
    objc_copyWeak(&v53, buf);
    v50 = v28;
    v51 = v9;
    v52 = v26;
    [(CNPRUISPosterSnapshotController *)v29 executeSnapshotRequest:v48 completion:v49];

    objc_destroyWeak(&v53);
    objc_destroyWeak(buf);
    goto LABEL_32;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Poster should not be shown", buf, 2u);
  }

  [(CNContactHeaderStaticDisplayView *)self setPosterViewHidden:1];
}

void __57__CNContactHeaderStaticDisplayView_updatePosterViewImage__block_invoke(id *a1, uint64_t a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v9 = [v6 snapshotBundle];
    v10 = [a1[4] levelSets];
    v11 = [v10 firstObject];
    v12 = [v9 snapshotForLevelSet:v11];

    v13 = CNUILogPosters();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [a1[5] identifier];
        v23 = [a1[6] wrappedPosterConfiguration];
        v21 = [v23 serverUUID];
        v22 = [a1[5] wallpaper];
        v16 = [v22 posterArchiveData];
        v17 = [v16 length];
        [v12 size];
        NSStringFromCGSize(v33);
        *buf = 138413058;
        v25 = v15;
        v26 = 2112;
        v27 = v21;
        v28 = 2048;
        v29 = v17;
        v31 = v30 = 2112;
        v18 = v31;
        _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[2] Will assign snapshot image for contact identifier %@. Poster config ID %@. Wallpaper posterArchiveData has length %ld, snapshot image has size %@.", buf, 0x2Au);
      }

      v19 = a1[6];
      v20 = [a1[5] wallpaper];
      -[NSObject assignSnapshotImageToPosterView:configuration:contentIsSensitive:](WeakRetained, "assignSnapshotImageToPosterView:configuration:contentIsSensitive:", v12, v19, [v20 contentIsSensitive]);

      [WeakRetained updateLabelColorsForPosterSnapshot:v12];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "Snapshot result returned a nil image with error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    WeakRetained = CNUILogPosters();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, WeakRetained, OS_LOG_TYPE_ERROR, "Snapshot request returned no result", buf, 2u);
    }
  }
}

- (void)setUpPosterView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAccessibilityIdentifier:@"ContactPosterView"];
  [(CNContactHeaderStaticDisplayView *)self addSubview:v8];
  [(CNContactHeaderStaticDisplayView *)self sendSubviewToBack:v8];
  [(CNContactHeaderView *)self setPosterView:v8];
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v5 = [MEMORY[0x1E69DD248] effectForBlurEffect:v4 style:1];
  v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(CNContactHeaderView *)self nameLabel];
  [(CNContactHeaderStaticDisplayView *)self insertSubview:v6 belowSubview:v7];

  [(CNContactHeaderStaticDisplayView *)self setBlurView:v6];
}

- (void)setDefaultLabelColors
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = +[CNUIColorRepository contactCardStaticAvatarHeaderDefaultTextColor];
  v4 = +[CNUIColorRepository contactCardStaticHeaderDefaultTaglineTextColor];
  v7 = *MEMORY[0x1E69DB650];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v5];

  v6 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  [v6 setTextColor:v4];
}

- (double)height
{
  [(CNContactHeaderStaticDisplayView *)self labelsHeight];
  if (v3 == 0.0)
  {
    [(CNContactHeaderStaticDisplayView *)self calculateLabelSizesIfNeeded];
  }

  v4 = [(CNContactHeaderView *)self isAXSize];
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinTopMargin];
  v6 = v5;
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinHeight];
  v8 = v7;
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinBottomMargin];
  v10 = v9;
  [(CNContactHeaderStaticDisplayView *)self labelsHeight];
  v12 = v11;
  v13 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
  [v13 frame];
  v15 = v14;

  v16 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
  if (v16 == 0 || v4)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v15;
  }

  v18 = [(CNContactHeaderView *)self sizeAttributes];
  [v18 headerBottomMargin];
  v20 = v19;

  return v6 + v8 + v10 + v12 + v17 + v20;
}

- (double)bottomMargin
{
  v2 = [(CNContactHeaderView *)self sizeAttributes];
  [v2 headerBottomMargin];
  v4 = v3;

  return v4;
}

- (void)updateWithContacts:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v5 updateWithContacts:a3];
  cachedPosterConfiguration = self->_cachedPosterConfiguration;
  self->_cachedPosterConfiguration = 0;
}

- (void)didFinishUsing
{
  if (sStaticDisplayContactHeaderView == self)
  {
    sStaticDisplayContactHeaderView = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CNContactHeaderStaticDisplayView)initWithContact:(id)a3 frame:(CGRect)a4 shouldAllowImageDrops:(BOOL)a5 showingNavBar:(BOOL)a6 monogramOnly:(BOOL)a7 delegate:(id)a8
{
  v45[1] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = CNContactHeaderStaticDisplayView;
  v8 = [(CNContactHeaderView *)&v44 initWithContact:a3 frame:0 shouldAllowTakePhotoAction:a5 shouldAllowImageDrops:a6 showingNavBar:a7 monogramOnly:a8 delegate:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v8 action:sel_handleNameLabelTap_];
    v10 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v8 action:sel_handleNameLabelLongPress_];
    v11 = objc_alloc(MEMORY[0x1E69DCC10]);
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
    [(CNContactHeaderView *)v8 setNameLabel:v16];

    v17 = [(CNContactHeaderView *)v8 nameLabel];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(CNContactHeaderView *)v8 nameLabel];
    [v18 setTextAlignment:1];

    if ([(CNContactHeaderView *)v8 isAXSize])
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    v20 = [(CNContactHeaderView *)v8 nameLabel];
    [v20 setNumberOfLines:v19];

    v21 = [(CNContactHeaderView *)v8 nameLabel];
    [v21 setUserInteractionEnabled:1];

    v22 = [(CNContactHeaderStaticDisplayView *)v8 tintColor];
    v23 = [(CNContactHeaderView *)v8 nameLabel];
    [v23 setHighlightedTextColor:v22];

    v24 = [(CNContactHeaderView *)v8 nameLabel];
    [v24 addGestureRecognizer:v9];

    v25 = [(CNContactHeaderView *)v8 nameLabel];
    [v25 addGestureRecognizer:v10];

    v26 = [(CNContactHeaderView *)v8 nameLabel];
    [v26 _cnui_applyContactStyle];

    v27 = [(CNContactHeaderView *)v8 nameLabel];
    [(CNContactHeaderStaticDisplayView *)v8 addSubview:v27];

    v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
    taglineLabel = v8->_taglineLabel;
    v8->_taglineLabel = v28;

    [(UILabel *)v8->_taglineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_taglineLabel setTextAlignment:1];
    [(UILabel *)v8->_taglineLabel setNumberOfLines:0];
    [(UILabel *)v8->_taglineLabel setLineBreakMode:0];
    v30 = [(CNContactHeaderView *)v8 contactStyle];
    v31 = [v30 taglineTextColor];
    [(UILabel *)v8->_taglineLabel setTextColor:v31];

    [(UILabel *)v8->_taglineLabel _cnui_applyContactStyle];
    [(CNContactHeaderStaticDisplayView *)v8 addSubview:v8->_taglineLabel];
    [(CNContactHeaderStaticDisplayView *)v8 updateFontSizes];
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v8 selector:sel_menuWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

    v33 = [MEMORY[0x1E696AD88] defaultCenter];
    [v33 addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v8->_allowsPickerActions = 1;
    [(CNContactHeaderStaticDisplayView *)v8 setUpPosterView];
    [(CNContactHeaderStaticDisplayView *)v8 setUpAvatarBackgroundView];
    [(CNContactHeaderStaticDisplayView *)v8 setDefaultLabelColors];
    v45[0] = objc_opt_class();
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v35 = [(CNContactHeaderStaticDisplayView *)v8 registerForTraitChanges:v34 withTarget:v8 action:sel_traitEnvironment_didChangeTraitCollection_];
    traitChangeRegistration = v8->_traitChangeRegistration;
    v8->_traitChangeRegistration = v35;

    v37 = objc_alloc_init(CNContactGeminiIconProvider);
    geminiIconProvider = v8->_geminiIconProvider;
    v8->_geminiIconProvider = v37;

    v39 = objc_alloc_init(MEMORY[0x1E69968C0]);
    metricsReporter = v8->_metricsReporter;
    v8->_metricsReporter = v39;

    v41 = +[CNSensitiveContentAnalysisManager defaultManager];
    sensitiveContentManager = v8->_sensitiveContentManager;
    v8->_sensitiveContentManager = v41;
  }

  return v8;
}

- (id)descriptorForRequiredKeys
{
  v3 = objc_opt_class();
  v4 = [(CNContactHeaderStaticDisplayView *)self contactFormatter];
  v5 = [v3 descriptorForRequiredKeysForContactFormatter:v4];

  return v5;
}

@end