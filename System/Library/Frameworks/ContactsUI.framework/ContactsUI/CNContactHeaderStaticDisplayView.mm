@interface CNContactHeaderStaticDisplayView
+ (BOOL)_bundleIDIsInAllowListForColorCaching;
+ (BOOL)_colorCachingEnabledForProcess;
+ (id)blurGradient;
+ (id)contactHeaderViewWithContact:(id)contact allowsPhotoDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate;
+ (id)descriptorForRequiredKeysForContactFormatter:(id)formatter;
+ (id)makeBlurGradient;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only;
+ (id)sizeAttributesShowingNavBar:(BOOL)bar;
- (BOOL)canSensitiveContentHelpButtonBlockContact:(id)contact;
- (BOOL)canSensitiveContentHelpButtonViewHidePhoto:(id)photo;
- (BOOL)identifierForBackgroundColorIsCurrent:(id)current;
- (BOOL)shouldShowPoster;
- (BOOL)shouldUseFixedHeight;
- (CGRect)layerContentsRectForConfiguration:(id)configuration;
- (CNContactHeaderStaticDisplayView)initWithContact:(id)contact frame:(CGRect)frame shouldAllowImageDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate;
- (double)avatarHeightPhoneLandscape;
- (double)bottomMargin;
- (double)height;
- (double)nameFontSize;
- (double)staticHeaderPhotoMaxHeight;
- (double)staticHeaderPhotoMinBottomMargin;
- (double)staticHeaderPhotoMinHeight;
- (double)staticHeaderPhotoMinTopMargin;
- (double)staticHeaderPhotoTopMarginOffset;
- (id)_headerStringForContacts:(id)contacts;
- (id)_importantString;
- (id)_savedContactActionForGeminiViewForDualSimParity;
- (id)_unknownContactActionForGeminiView;
- (id)attributedTaglineForContacts:(id)contacts;
- (id)descriptorForRequiredKeys;
- (id)imageDataForColorFetchingIsImageDataOrThumbnail:(BOOL *)thumbnail bitmapFormat:(id *)format;
- (id)nameFont;
- (unint64_t)avatarStyle;
- (void)_assignActionToGeminiView;
- (void)_geminiViewBehaviorForSavedContact;
- (void)_geminiViewBehaviorForUnknownContact;
- (void)_updateDowntimeView;
- (void)_updateImportantLabel;
- (void)_updatePhotoView;
- (void)assignImageColorsToAvatarBackgroundView:(id)view animated:(BOOL)animated;
- (void)assignSnapshotImageToPosterView:(id)view configuration:(id)configuration contentIsSensitive:(BOOL)sensitive;
- (void)calculateLabelSizes;
- (void)calculateLabelSizesIfNeeded;
- (void)configureSensitiveContentHelpButtonHidden:(BOOL)hidden;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)copy:(id)copy;
- (void)createGeminiViewIfNeeded;
- (void)dealloc;
- (void)didFinishUsing;
- (void)didTapSensitiveContentHelpButton;
- (void)disablePhotoTapGesture;
- (void)geminiViewDidPickPreferredChannel:(id)channel;
- (void)handleGeminiViewTouch:(id)touch;
- (void)handleNameLabelLongPress:(id)press;
- (void)handleNameLabelTap:(id)tap;
- (void)layoutSubviews;
- (void)menuWillHide:(id)hide;
- (void)notifyDelegateOfUpdatedHiddenSensitiveContent:(BOOL)content;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)sensitiveContentBlurView:(id)view wantsToPresentInterventionController:(id)controller;
- (void)sensitiveContentHelpButtonView:(id)view didRequestToBlockContact:(BOOL)contact;
- (void)sensitiveContentHelpButtonView:(id)view didRequestToPresentMenu:(id)menu;
- (void)sensitiveContentHelpButtonView:(id)view didRequestToPresentMoreHelp:(id)help;
- (void)setActionsWrapperView:(id)view;
- (void)setAvatarStyle:(unint64_t)style;
- (void)setBlurViewGradient;
- (void)setDefaultLabelColors;
- (void)setDowntimeTextAttributes:(id)attributes;
- (void)setGeminiTextAttributes:(id)attributes;
- (void)setImportantMessage:(id)message;
- (void)setImportantTextAttributes:(id)attributes;
- (void)setIsDowntimeContact:(BOOL)contact;
- (void)setIsEmergencyContact:(BOOL)contact;
- (void)setIsRestrictedContact:(BOOL)contact;
- (void)setMessage:(id)message;
- (void)setNameTextAttributes:(id)attributes;
- (void)setPosterViewHidden:(BOOL)hidden;
- (void)setShouldShowGemini:(BOOL)gemini;
- (void)setUpAvatarBackgroundView;
- (void)setUpPosterView;
- (void)setUsesBrandedCallFormat:(BOOL)format;
- (void)tintColorDidChange;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)updateAvatarBackgroundViewVisibility;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateGeminiResult:(id)result;
- (void)updateImageViewVisiblity;
- (void)updateLabelColorsForImageColors:(id)colors;
- (void)updateLabelColorsForPosterSnapshot:(id)snapshot;
- (void)updatePosterImageViewForScrollOffset:(CGPoint)offset;
- (void)updatePosterViewImage;
- (void)updateSensitiveContentBlurVisibility:(BOOL)visibility;
- (void)updateSizeDependentAttributes;
- (void)updateWithContacts:(id)contacts;
@end

@implementation CNContactHeaderStaticDisplayView

+ (id)makeBlurGradient
{
  v36[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E6979380]);
  [v2 setFrame:{0.0, 0.0, 1.0, 500.0}];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [whiteColor colorWithAlphaComponent:0.0];
  v36[0] = [v4 CGColor];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [whiteColor2 colorWithAlphaComponent:0.0];
  v36[1] = [v6 CGColor];
  whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
  v8 = [whiteColor3 colorWithAlphaComponent:0.1];
  v36[2] = [v8 CGColor];
  whiteColor4 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = [whiteColor4 colorWithAlphaComponent:1.0];
  v36[3] = [v10 CGColor];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  [v2 setColors:v11];

  [v2 setLocations:&unk_1F0D4B8B0];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  timeProvider = [currentEnvironment timeProvider];
  [timeProvider timestamp];
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
  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  timeProvider2 = [currentEnvironment2 timeProvider];
  [timeProvider2 timestamp];
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
  block[4] = self;
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [&unk_1F0D4B898 containsObject:bundleIdentifier];

  return v4;
}

+ (BOOL)_colorCachingEnabledForProcess
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CNContactHeaderStaticDisplayView__colorCachingEnabledForProcess__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)sizeAttributesShowingNavBar:(BOOL)bar
{
  if (bar)
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

+ (id)contactHeaderViewWithContact:(id)contact allowsPhotoDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate
{
  onlyCopy = only;
  barCopy = bar;
  dropsCopy = drops;
  contactCopy = contact;
  delegateCopy = delegate;
  delegate = [sStaticDisplayContactHeaderView delegate];
  if (delegate)
  {

LABEL_4:
    v15 = [self alloc];
    v16 = [v15 initWithContact:contactCopy frame:dropsCopy shouldAllowImageDrops:barCopy showingNavBar:onlyCopy monogramOnly:delegateCopy delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_5:
    v17 = v16;
    goto LABEL_6;
  }

  if ([sStaticDisplayContactHeaderView showMonogramsOnly] != onlyCopy)
  {
    goto LABEL_4;
  }

  if (!sStaticDisplayContactHeaderView)
  {
    v19 = [self alloc];
    v20 = [v19 initWithContact:contactCopy frame:dropsCopy shouldAllowImageDrops:barCopy showingNavBar:onlyCopy monogramOnly:delegateCopy delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v21 = sStaticDisplayContactHeaderView;
    sStaticDisplayContactHeaderView = v20;

    v16 = sStaticDisplayContactHeaderView;
    goto LABEL_5;
  }

  v17 = sStaticDisplayContactHeaderView;
  [v17 setDelegate:delegateCopy];
  [v17 prepareForReuse];
  [v17 updateForShowingNavBar:barCopy];
  [v17 updateWithNewContact:contactCopy];
LABEL_6:

  return v17;
}

+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only
{
  onlyCopy = only;
  dropsCopy = drops;
  actionCopy = action;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  inProcessContactStore = [v8 inProcessContactStore];

  v10 = +[CNUIContactsEnvironment currentEnvironment];
  v11 = v10;
  if (onlyCopy)
  {
    [v10 cachingMonogramRenderer];
  }

  else
  {
    [v10 cachingLikenessRenderer];
  }
  v12 = ;

  v13 = [CNContactPhotoView alloc];
  v14 = [(CNContactPhotoView *)v13 initWithFrame:actionCopy shouldAllowTakePhotoAction:1 threeDTouchEnabled:inProcessContactStore contactStore:dropsCopy allowsImageDrops:v12 imageRenderer:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v14;
}

+ (id)descriptorForRequiredKeysForContactFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = MEMORY[0x1E695DF70];
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___CNContactHeaderStaticDisplayView;
  v6 = objc_msgSendSuper2(&v13, sel_descriptorForRequiredKeys);
  v7 = [v5 arrayWithObject:v6];

  if (formatterCopy)
  {
    descriptorForRequiredKeys = [formatterCopy descriptorForRequiredKeys];
    [v7 addObject:descriptorForRequiredKeys];
  }

  v9 = MEMORY[0x1E695CD58];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactHeaderStaticDisplayView descriptorForRequiredKeysForContactFormatter:]"];
  v11 = [v9 descriptorWithKeyDescriptors:v7 description:v10];

  return v11;
}

- (void)sensitiveContentHelpButtonView:(id)view didRequestToBlockContact:(BOOL)contact
{
  contactCopy = contact;
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerView:self didRequestToBlockContact:contactCopy];
}

- (void)notifyDelegateOfUpdatedHiddenSensitiveContent:(BOOL)content
{
  contentCopy = content;
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerView:self didUpdateSensitiveContentOverride:!contentCopy];
}

- (void)sensitiveContentHelpButtonView:(id)view didRequestToPresentMoreHelp:(id)help
{
  helpCopy = help;
  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  [presenterDelegate sender:self presentViewController:helpCopy];
}

- (BOOL)canSensitiveContentHelpButtonBlockContact:(id)contact
{
  selfCopy = self;
  delegate = [(CNContactHeaderView *)self delegate];
  LOBYTE(selfCopy) = [delegate isHeaderViewContactBlocked:selfCopy];

  return selfCopy;
}

- (BOOL)canSensitiveContentHelpButtonViewHidePhoto:(id)photo
{
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject = [contacts firstObject];
  overrideSensitiveContent = [firstObject overrideSensitiveContent];

  return overrideSensitiveContent;
}

- (void)sensitiveContentHelpButtonView:(id)view didRequestToPresentMenu:(id)menu
{
  menuCopy = menu;
  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  [presenterDelegate sender:self presentViewController:menuCopy];
}

- (void)sensitiveContentBlurView:(id)view wantsToPresentInterventionController:(id)controller
{
  controllerCopy = controller;
  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  [presenterDelegate sender:self presentViewController:controllerCopy];
}

- (void)dealloc
{
  traitChangeRegistration = [(CNContactHeaderStaticDisplayView *)self traitChangeRegistration];
  [(CNContactHeaderStaticDisplayView *)self unregisterForTraitChanges:traitChangeRegistration];

  v4.receiver = self;
  v4.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v4 dealloc];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(CNContactHeaderStaticDisplayView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    contacts = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts firstObject];
    hasBeenPersisted = [firstObject hasBeenPersisted];

    if ((hasBeenPersisted & 1) == 0)
    {
      geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
      contextMenuInteraction = [geminiView contextMenuInteraction];
      [contextMenuInteraction dismissMenu];

      geminiIconProvider = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
      [geminiIconProvider updateGeminiIcons];

      [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForUnknownContact];
    }

    [(CNContactHeaderStaticDisplayView *)self updateAvatarBackgroundViewVisibility];
  }
}

- (void)pickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  [presenterDelegate sender:self dismissViewController:cancelCopy];

  geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView setHighlighted:0];

  [(CNContactHeaderStaticDisplayView *)self setGeminiPicker:0];
}

- (void)picker:(id)picker didPickItem:(id)item
{
  itemCopy = item;
  pickerCopy = picker;
  geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView setNeedsCalculateLayout];

  geminiView2 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView2 calculateLayoutIfNeeded];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderStaticDisplayView *)self setNeedsLayout];
  v13 = [MEMORY[0x1E695CEB0] channelStringFromSenderIdentity:itemCopy];

  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerViewDidPickPreferredChannel:v13];

  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  [presenterDelegate sender:self dismissViewController:pickerCopy];

  geminiView3 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView3 setHighlighted:0];

  [(CNContactHeaderStaticDisplayView *)self setGeminiPicker:0];
}

- (void)handleGeminiViewTouch:(id)touch
{
  touchCopy = touch;
  geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [touchCopy locationInView:geminiView];
  v7 = v6;
  v9 = v8;

  geminiView2 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView2 bounds];
  v24.x = v7;
  v24.y = v9;
  allowsPickerActions2 = CGRectContainsPoint(v25, v24);

  state = [touchCopy state];
  switch(state)
  {
    case 4:
      goto LABEL_11;
    case 3:
      if (!allowsPickerActions2)
      {
LABEL_12:
        geminiView3 = [(CNContactHeaderStaticDisplayView *)self geminiView];
        [geminiView3 setHighlighted:allowsPickerActions2];

        return;
      }

      geminiView4 = [(CNContactHeaderStaticDisplayView *)self geminiView];
      allowsPickerActions = [geminiView4 allowsPickerActions];

      if (allowsPickerActions)
      {
        v18 = [CNGeminiPickerController alloc];
        geminiResult = [(CNContactHeaderStaticDisplayView *)self geminiResult];
        v20 = [(CNGeminiPickerController *)v18 initWithGeminiResult:geminiResult];

        [(CNContactHeaderStaticDisplayView *)self setGeminiPicker:v20];
        [(CNGeminiPickerController *)v20 setDelegate:self];
        presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
        [presenterDelegate sender:self presentViewController:v20];
      }

LABEL_11:
      allowsPickerActions2 = 0;
      goto LABEL_12;
    case 2:
      if (allowsPickerActions2)
      {
        geminiView5 = [(CNContactHeaderStaticDisplayView *)self geminiView];
        allowsPickerActions2 = [geminiView5 allowsPickerActions];
      }

      geminiView6 = [(CNContactHeaderStaticDisplayView *)self geminiView];
      isHighlighted = [geminiView6 isHighlighted];

      if (allowsPickerActions2 != isHighlighted)
      {
        goto LABEL_12;
      }

      break;
  }
}

- (void)geminiViewDidPickPreferredChannel:(id)channel
{
  channelCopy = channel;
  geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView setNeedsCalculateLayout];

  geminiView2 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView2 calculateLayoutIfNeeded];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderStaticDisplayView *)self setNeedsLayout];
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerViewDidPickPreferredChannel:channelCopy];
}

- (id)_savedContactActionForGeminiViewForDualSimParity
{
  v44 = *MEMORY[0x1E69E9840];
  geminiResult = [(CNContactHeaderStaticDisplayView *)self geminiResult];
  availableChannels = [geminiResult availableChannels];

  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(availableChannels, "count")}];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = availableChannels;
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
        localizedLabel = [v6 localizedLabel];
        v10 = [v8 actionWithTitle:localizedLabel image:0 identifier:0 handler:v7];

        v11 = MEMORY[0x1E695CEB0];
        senderIdentity = [v6 senderIdentity];
        v13 = [v11 channelStringFromSenderIdentity:senderIdentity];

        selectedChannel = [(CNContactHeaderStaticDisplayView *)self selectedChannel];

        if (selectedChannel)
        {
          selectedChannel2 = [(CNContactHeaderStaticDisplayView *)self selectedChannel];
          [v10 setState:{objc_msgSend(v13, "isEqualToString:", selectedChannel2)}];
        }

        else
        {
          selectedChannel2 = [v6 senderIdentity];
          geminiResult2 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
          channel = [geminiResult2 channel];
          senderIdentity2 = [channel senderIdentity];
          [v10 setState:selectedChannel2 == senderIdentity2];
        }

        senderIdentity3 = [v6 senderIdentity];
        geminiResult3 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
        channel2 = [geminiResult3 channel];
        senderIdentity4 = [channel2 senderIdentity];
        v23 = &stru_1F0CE7398;
        if (senderIdentity3 == senderIdentity4)
        {
          geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
          geminiResult4 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
          v33 = [geminiView localizedChannelSubtitleForGeminiResult:geminiResult4];
          v23 = v33;
        }

        [v10 setSubtitle:v23];
        if (senderIdentity3 == senderIdentity4)
        {
        }

        geminiIconProvider = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
        channelIdentifier = [v6 channelIdentifier];
        v26 = [geminiIconProvider geminiIconForGeminiChannelIdentifier:channelIdentifier];
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
  geminiResult = [(CNContactHeaderStaticDisplayView *)self geminiResult];
  availableChannels = [geminiResult availableChannels];

  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(availableChannels, "count")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = availableChannels;
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
        localizedLabel = [v6 localizedLabel];
        v10 = [v8 actionWithTitle:localizedLabel image:0 identifier:0 handler:v7];

        senderIdentity = [v6 senderIdentity];
        geminiResult2 = [(CNContactHeaderStaticDisplayView *)self geminiResult];
        channel = [geminiResult2 channel];
        senderIdentity2 = [channel senderIdentity];
        [v10 setState:senderIdentity == senderIdentity2];

        geminiIconProvider = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
        channelIdentifier = [v6 channelIdentifier];
        v17 = [geminiIconProvider geminiIconForGeminiChannelIdentifier:channelIdentifier];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:14];

  if (v5)
  {
    _unknownContactActionForGeminiView = [(CNContactHeaderStaticDisplayView *)self _unknownContactActionForGeminiView];
    v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:_unknownContactActionForGeminiView];
    geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [geminiView setMenu:v6];

    geminiView2 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [geminiView2 setShowsMenuAsPrimaryAction:1];
  }
}

- (void)_geminiViewBehaviorForSavedContact
{
  if ([(CNContactHeaderView *)self useDualSimParity])
  {
    _savedContactActionForGeminiViewForDualSimParity = [(CNContactHeaderStaticDisplayView *)self _savedContactActionForGeminiViewForDualSimParity];
    v3 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:?];
    geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [geminiView setMenu:v3];

    geminiView2 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [geminiView2 setShowsMenuAsPrimaryAction:1];
  }

  else
  {
    geminiView3 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [geminiView3 setMenu:0];

    _savedContactActionForGeminiViewForDualSimParity = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleGeminiViewTouch_];
    [_savedContactActionForGeminiViewForDualSimParity setMinimumPressDuration:0.001];
    geminiView2 = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [geminiView2 addGestureRecognizer:_savedContactActionForGeminiViewForDualSimParity];
  }
}

- (void)_assignActionToGeminiView
{
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject = [contacts firstObject];
  hasBeenPersisted = [firstObject hasBeenPersisted];

  if (hasBeenPersisted)
  {
    [(CNContactHeaderStaticDisplayView *)self setSelectedChannel:0];

    [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForSavedContact];
  }

  else
  {

    [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForUnknownContact];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  isAXSize = [(CNContactHeaderView *)self isAXSize];
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  v7 = nameLabel;
  if (isAXSize)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [nameLabel setNumberOfLines:v6];
}

- (void)menuWillHide:(id)hide
{
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  [nameLabel setHighlighted:0];
}

- (void)handleNameLabelLongPress:(id)press
{
  pressCopy = press;
  objc_opt_class();
  v29 = pressCopy;
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
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    nameLabel = [(CNContactHeaderView *)self nameLabel];
    nameLabel2 = [(CNContactHeaderView *)self nameLabel];
    [nameLabel2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    nameLabel3 = [(CNContactHeaderView *)self nameLabel];
    [nameLabel textRectForBounds:objc_msgSend(nameLabel3 limitedToNumberOfLines:{"numberOfLines"), v11, v13, v15, v17}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    nameLabel4 = [(CNContactHeaderView *)self nameLabel];
    [mEMORY[0x1E69DCC68] showMenuFromView:nameLabel4 rect:{v20, v22, v24, v26}];

    nameLabel5 = [(CNContactHeaderView *)self nameLabel];
    [nameLabel5 setHighlighted:1];
  }
}

- (void)handleNameLabelTap:(id)tap
{
  tapCopy = tap;
  objc_opt_class();
  v10 = tapCopy;
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
      delegate = [(CNContactHeaderView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate2 = [(CNContactHeaderView *)self delegate];
        [delegate2 headerViewDidTapNameLabel:self];
      }
    }
  }
}

- (id)_importantString
{
  importantMessage = [(CNContactHeaderStaticDisplayView *)self importantMessage];
  if ([(CNContactHeaderStaticDisplayView *)self isEmergencyContact])
  {
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:@"CARD_NAME_EMERGENCY_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];

    if ((*(*MEMORY[0x1E6996570] + 16))())
    {
      v6 = [importantMessage stringByAppendingFormat:@"\n%@", v5];
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;

    importantMessage = v7;
  }

  return importantMessage;
}

- (id)attributedTaglineForContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = objc_opt_new();
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v8 = [featureFlags isFeatureEnabled:29];

  if (v8)
  {
    goto LABEL_41;
  }

  if ([contactsCopy count] != 1)
  {
    v10 = +[CNNumberFormatting localizedStringWithInteger:](CNNumberFormatting, "localizedStringWithInteger:", [contactsCopy count]);
    v11 = MEMORY[0x1E696AEC0];
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"CARD_NAME_GROUP_MEMBERS_COUNT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v14 = [v11 stringWithFormat:v13, v10];
    [v5 cnui_appendTaglineString:v14];

    v15 = *MEMORY[0x1E6996570];
    goto LABEL_39;
  }

  firstObject = [contactsCopy firstObject];
  if ([firstObject contactType] == 1)
  {
    if ([(CNContactHeaderStaticDisplayView *)self usesBrandedCallFormat])
    {
      [firstObject organizationName];
    }

    else
    {
      [firstObject personName];
    }
    alternateName2 = ;
    v15 = *MEMORY[0x1E6996570];
    if (!(*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], alternateName2))
    {
      goto LABEL_38;
    }

    goto LABEL_12;
  }

  v15 = *MEMORY[0x1E6996570];
  personName = [firstObject personName];
  if (((*(v15 + 16))(v15, personName) & 1) == 0)
  {

LABEL_14:
    alternateName2 = [MEMORY[0x1E695CD80] stringFromContact:firstObject style:1];
    if ((*(v15 + 16))(v15, alternateName2))
    {
      [v5 cnui_appendTaglineString:alternateName2];
    }

    nickname = [firstObject nickname];
    if ((*(v15 + 16))(v15, nickname))
    {
      delegate = [(CNContactHeaderView *)self delegate];
      isNicknameProhibited = [delegate isNicknameProhibited];

      if (isNicknameProhibited)
      {
        goto LABEL_20;
      }

      nickname = [firstObject nickname];
      v23 = +[CNUIFontRepository contactCardStaticHeaderNicknameTaglineFont];
      [v5 cnui_appendTaglineString:nickname withFont:v23];
    }

LABEL_20:
    previousFamilyName = [firstObject previousFamilyName];
    v25 = (*(v15 + 16))(v15, previousFamilyName);

    if (v25)
    {
      previousFamilyName2 = [firstObject previousFamilyName];
      [v5 cnui_appendTaglineString:previousFamilyName2];
    }

    jobTitle = [firstObject jobTitle];
    v28 = (*(v15 + 16))(v15, jobTitle);

    departmentName = [firstObject departmentName];
    v30 = (*(v15 + 16))(v15, departmentName);

    if (v28)
    {
      if (v30)
      {
        v49 = MEMORY[0x1E696AEC0];
        jobTitle2 = [firstObject jobTitle];
        v50 = CNContactsUIBundle();
        v48 = [v50 localizedStringForKey:@"CARD_NAME_JOB_TITLE_DEPARTMENT_SEPARATOR" value:&stru_1F0CE7398 table:@"Localized"];
        departmentName2 = [firstObject departmentName];
        v33 = [v49 stringWithFormat:@"%@%@%@", jobTitle2, v48, departmentName2];
        [v5 cnui_appendTaglineString:v33];
      }

      else
      {
        jobTitle2 = [firstObject jobTitle];
        [v5 cnui_appendTaglineString:jobTitle2];
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

      jobTitle2 = [firstObject departmentName];
      [v5 cnui_appendTaglineString:jobTitle2];
    }

LABEL_30:
    organizationName = [firstObject organizationName];
    v36 = (*(v15 + 16))(v15, organizationName);

    if (v36)
    {
      organizationName2 = [firstObject organizationName];
      [v5 cnui_appendTaglineString:organizationName2];
    }

    currentEnvironment2 = [*(v34 + 1768) currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    if ([featureFlags2 isFeatureEnabled:23] && (objc_msgSend(firstObject, "isKeyAvailable:", *MEMORY[0x1E695C1C0]) & 1) != 0)
    {
      v51 = alternateName2;
      v40 = *MEMORY[0x1E6996530];
      termsOfAddress = [firstObject termsOfAddress];
      LOBYTE(v40) = (*(v40 + 16))(v40, termsOfAddress);

      if (v40)
      {
        alternateName2 = v51;
        goto LABEL_38;
      }

      v46 = MEMORY[0x1E696AEE0];
      termsOfAddress2 = [firstObject termsOfAddress];
      currentEnvironment2 = [v46 localizedDescriptionForAddressingGrammars:termsOfAddress2 uppercased:1];

      alternateName2 = v51;
      if ((*(v15 + 16))(v15, currentEnvironment2))
      {
        [v5 cnui_appendTaglineString:currentEnvironment2 uppercased:0];
      }
    }

    else
    {
    }

    goto LABEL_38;
  }

  alternateName = [(CNContactHeaderStaticDisplayView *)self alternateName];
  v18 = (*(v15 + 16))(v15, alternateName);

  if (!v18)
  {
    goto LABEL_14;
  }

  alternateName2 = [(CNContactHeaderStaticDisplayView *)self alternateName];
LABEL_12:
  [v5 cnui_appendTaglineString:alternateName2];
LABEL_38:

LABEL_39:
  message = [(CNContactHeaderStaticDisplayView *)self message];
  v43 = (*(v15 + 16))(v15, message);

  if (v43)
  {
    message2 = [(CNContactHeaderStaticDisplayView *)self message];
    [v5 cnui_appendTaglineString:message2];
  }

LABEL_41:

  return v5;
}

- (id)_headerStringForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    if ([(CNContactHeaderStaticDisplayView *)self usesBrandedCallFormat])
    {
      v5 = *MEMORY[0x1E6996530];
      firstObject = [contactsCopy firstObject];
      phoneNumbers = [firstObject phoneNumbers];
      LOBYTE(v5) = (*(v5 + 16))(v5, phoneNumbers);

      if ((v5 & 1) == 0)
      {
        firstObject2 = [contactsCopy firstObject];
        phoneNumbers2 = [firstObject2 phoneNumbers];
        firstObject3 = [phoneNumbers2 firstObject];

        value = [firstObject3 value];
        formattedStringValue = [value formattedStringValue];

        if ((*(*MEMORY[0x1E6996570] + 16))())
        {
          v13 = formattedStringValue;

          goto LABEL_12;
        }
      }
    }

    contactFormatter = [(CNContactHeaderStaticDisplayView *)self contactFormatter];
    firstObject4 = [contactsCopy firstObject];
    v14 = [contactFormatter stringFromContact:firstObject4];
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    alternateName = [(CNContactHeaderStaticDisplayView *)self alternateName];

    v14 = alternateName;
  }

  v13 = v14;
LABEL_12:

  return v13;
}

- (void)copy:(id)copy
{
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  text = [nameLabel text];
  v6 = [text mutableCopy];

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setString:v6];
}

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  changesCopy = changes;
  v5 = CNUILogContactCard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEFAULT, "Reload data preserving changes", buf, 2u);
  }

  v26.receiver = self;
  v26.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v26 reloadDataPreservingChanges:changesCopy];
  [(CNContactHeaderStaticDisplayView *)self _assignActionToGeminiView];
  contacts = [(CNContactHeaderView *)self contacts];
  v7 = [(CNContactHeaderStaticDisplayView *)self _headerStringForContacts:contacts];

  contacts2 = [(CNContactHeaderView *)self contacts];
  v9 = [(CNContactHeaderStaticDisplayView *)self attributedTaglineForContacts:contacts2];

  _importantString = [(CNContactHeaderStaticDisplayView *)self _importantString];
  [(CNContactHeaderStaticDisplayView *)self _updateImportantLabel];
  [(CNContactHeaderStaticDisplayView *)self _updateDowntimeView];
  string = [v9 string];
  message = [(CNContactHeaderStaticDisplayView *)self message];
  if ([string isEqualToString:message])
  {
    v13 = [v7 length];

    if (v13)
    {
      goto LABEL_7;
    }

    [v9 string];
    message = v7;
    v7 = string = v9;
    v9 = 0;
  }

LABEL_7:
  if (![v9 length])
  {

    v9 = 0;
  }

  nameLabel = [(CNContactHeaderView *)self nameLabel];
  text = [nameLabel text];
  v16 = text;
  if (v7)
  {
    if (!text)
    {
      goto LABEL_19;
    }
  }

  else if (text)
  {
    goto LABEL_18;
  }

  taglineLabel = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  text2 = [taglineLabel text];
  v19 = text2;
  if (!v9)
  {
    if (!text2)
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

  if (!text2)
  {
    v20 = 1;
    goto LABEL_23;
  }

LABEL_20:
  importantLabel = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  text3 = [importantLabel text];
  if (_importantString)
  {
    if (text3)
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
    v20 = text3 != 0;

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
  nameLabel2 = [(CNContactHeaderView *)self nameLabel];
  [nameLabel2 setAb_text:v7];

  taglineLabel2 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  [taglineLabel2 setAttributedText:v9];

  importantLabel2 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  [importantLabel2 setAb_text:_importantString];

  [(CNContactHeaderStaticDisplayView *)self _updatePhotoView];
  [(CNContactHeaderStaticDisplayView *)self updatePosterViewImage];
  [(CNContactHeaderStaticDisplayView *)self updateAvatarBackgroundViewVisibility];
  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderStaticDisplayView *)self calculateLabelSizes];
  [(CNContactHeaderStaticDisplayView *)self setNeedsLayout];
}

- (void)setUsesBrandedCallFormat:(BOOL)format
{
  if (self->_usesBrandedCallFormat != format)
  {
    self->_usesBrandedCallFormat = format;
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)updateGeminiResult:(id)result
{
  resultCopy = result;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  firstObject = [featureFlags isFeatureEnabled:14];

  allowsPickerActions = [(CNContactHeaderStaticDisplayView *)self allowsPickerActions];
  v8 = allowsPickerActions;
  if (firstObject)
  {
    featureFlags = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [featureFlags setAllowsPickerActions:v8];
LABEL_8:

    goto LABEL_9;
  }

  if (allowsPickerActions)
  {
    featureFlags = [(CNContactHeaderView *)self contacts];
    firstObject = [featureFlags firstObject];
    hasBeenPersisted = [firstObject hasBeenPersisted];
  }

  else
  {
    hasBeenPersisted = 0;
  }

  geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView setAllowsPickerActions:hasBeenPersisted];

  if (v8)
  {

    goto LABEL_8;
  }

LABEL_9:
  [(CNContactHeaderStaticDisplayView *)self setGeminiResult:resultCopy];
  geminiView2 = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView2 setGeminiResult:resultCopy];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject2 = [contacts firstObject];
  hasBeenPersisted2 = [firstObject2 hasBeenPersisted];

  if (hasBeenPersisted2)
  {
    if ([(CNContactHeaderView *)self useDualSimParity])
    {
      [(CNContactHeaderStaticDisplayView *)self setSelectedChannel:0];
      geminiIconProvider = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
      [geminiIconProvider setGeminiResult:resultCopy];

      [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForSavedContact];
    }

    else
    {
      geminiPicker = [(CNContactHeaderStaticDisplayView *)self geminiPicker];
      [geminiPicker setGeminiResult:resultCopy];
    }
  }

  else
  {
    geminiIconProvider2 = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
    [geminiIconProvider2 setGeminiResult:resultCopy];

    [(CNContactHeaderStaticDisplayView *)self _geminiViewBehaviorForUnknownContact];
  }
}

- (void)_updateDowntimeView
{
  v22[2] = *MEMORY[0x1E69E9840];
  downtimeView = [(CNContactHeaderStaticDisplayView *)self downtimeView];
  if (downtimeView)
  {
    downtimeView2 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    isHidden = [downtimeView2 isHidden];
  }

  else
  {
    isHidden = 1;
  }

  if ([(CNContactHeaderStaticDisplayView *)self isDowntimeContact]|| [(CNContactHeaderStaticDisplayView *)self isRestrictedContact])
  {
    downtimeView3 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    v7 = downtimeView3 == 0;
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

    downtimeView4 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    [downtimeView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22[0] = *MEMORY[0x1E69DDD80];
    v12 = *MEMORY[0x1E69DB650];
    v21[0] = @"ABTextStyleAttributeName";
    v21[1] = v12;
    contactStyle = [(CNContactHeaderView *)self contactStyle];
    taglineTextColor = [contactStyle taglineTextColor];
    v22[1] = taglineTextColor;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [(CNContactHeaderStaticDisplayView *)self setDowntimeTextAttributes:v15];

    downtimeView5 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    [(CNContactHeaderStaticDisplayView *)self addSubview:downtimeView5];
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

  isRestrictedContact = [(CNContactHeaderStaticDisplayView *)self isRestrictedContact];
  downtimeView6 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
  [downtimeView6 setElements:v17 | isRestrictedContact];

  downtimeView7 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
  [downtimeView7 setHidden:v8];

  if (isHidden)
  {
    [(CNContactHeaderStaticDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateImportantLabel
{
  v23[2] = *MEMORY[0x1E69E9840];
  importantLabel = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  if (importantLabel)
  {
    importantLabel2 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
    isHidden = [importantLabel2 isHidden];
  }

  else
  {
    isHidden = 1;
  }

  _importantString = [(CNContactHeaderStaticDisplayView *)self _importantString];
  if (_importantString)
  {
    importantLabel3 = [(CNContactHeaderStaticDisplayView *)self importantLabel];

    if (!importantLabel3)
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

      importantLabel4 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [importantLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

      importantLabel5 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [importantLabel5 setTextAlignment:1];

      importantLabel6 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [importantLabel6 setNumberOfLines:0];

      importantLabel7 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [importantLabel7 _setUseShortcutIntrinsicContentSize:1];

      importantLabel8 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [importantLabel8 _cnui_applyContactStyle];

      importantLabel9 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [(CNContactHeaderStaticDisplayView *)self addSubview:importantLabel9];
    }
  }

  importantLabel10 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  [importantLabel10 setHidden:_importantString == 0];

  importantLabel11 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  LODWORD(importantLabel10) = [importantLabel11 isHidden];

  if (isHidden != importantLabel10)
  {
    [(CNContactHeaderStaticDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updatePhotoView
{
  contacts = [(CNContactHeaderView *)self contacts];
  v6 = v5 <= 1 && (-[CNContactHeaderView contacts](self, "contacts"), v2 = v5 = [contacts count];
  photoView = [(CNContactHeaderView *)self photoView];
  [photoView setHidden:v6];

  if (v5 <= 1)
  {
  }
}

- (void)setGeminiTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_geminiTextAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    objc_storeStrong(&self->_geminiTextAttributes, attributes);
    geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [geminiView setAb_textAttributes:v7];

    attributesCopy = v7;
  }
}

- (void)setDowntimeTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_downtimeTextAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    objc_storeStrong(&self->_downtimeTextAttributes, attributes);
    downtimeView = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    [downtimeView setAb_textAttributes:v7];

    attributesCopy = v7;
  }
}

- (void)setImportantTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_importantTextAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    objc_storeStrong(&self->_importantTextAttributes, attributes);
    importantLabel = [(CNContactHeaderStaticDisplayView *)self importantLabel];
    [importantLabel setAb_textAttributes:v7];

    attributesCopy = v7;
  }
}

- (void)setNameTextAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = CNContactHeaderStaticDisplayView;
  attributesCopy = attributes;
  [(CNContactHeaderView *)&v6 setNameTextAttributes:attributesCopy];
  v5 = [(CNContactHeaderView *)self nameLabel:v6.receiver];
  [v5 setAb_textAttributes:attributesCopy];
}

- (void)didTapSensitiveContentHelpButton
{
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerView:self didUpdateSensitiveContentOverride:0];
}

- (void)configureSensitiveContentHelpButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v25[2] = *MEMORY[0x1E69E9840];
  sensitiveContentManager = [(CNContactHeaderStaticDisplayView *)self sensitiveContentManager];
  v6 = [sensitiveContentManager shouldShowUIForPosterWithSensitiveContent:!hiddenCopy forContact:0];

  sensitiveContentHelpButton = [(CNContactHeaderStaticDisplayView *)self sensitiveContentHelpButton];
  v8 = sensitiveContentHelpButton;
  if (v6)
  {

    if (!v8)
    {
      v9 = [CNSensitiveContentHelpButtonView alloc];
      sensitiveContentManager2 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentManager];
      v11 = [(CNSensitiveContentHelpButtonView *)v9 initWithManager:sensitiveContentManager2];
      sensitiveContentHelpButton = self->_sensitiveContentHelpButton;
      self->_sensitiveContentHelpButton = v11;

      [(CNSensitiveContentHelpButtonView *)self->_sensitiveContentHelpButton setDelegate:self];
      [(CNSensitiveContentHelpButtonView *)self->_sensitiveContentHelpButton setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    sensitiveContentHelpButton2 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentHelpButton];
    [(CNContactHeaderStaticDisplayView *)self addSubview:sensitiveContentHelpButton2];

    v24 = MEMORY[0x1E696ACD8];
    sensitiveContentHelpButton3 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentHelpButton];
    bottomAnchor = [sensitiveContentHelpButton3 bottomAnchor];
    taglineLabel = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
    topAnchor = [taglineLabel topAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-10.0];
    v25[0] = v18;
    sensitiveContentHelpButton4 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentHelpButton];
    centerXAnchor = [sensitiveContentHelpButton4 centerXAnchor];
    centerXAnchor2 = [(CNContactHeaderStaticDisplayView *)self centerXAnchor];
    v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v24 activateConstraints:v23];
  }

  else
  {
    [sensitiveContentHelpButton removeFromSuperview];

    [(CNContactHeaderStaticDisplayView *)self setSensitiveContentHelpButton:0];
  }
}

- (void)updateSensitiveContentBlurVisibility:(BOOL)visibility
{
  v47[4] = *MEMORY[0x1E69E9840];
  [(CNContactHeaderStaticDisplayView *)self configureSensitiveContentHelpButtonHidden:!visibility];
  if (visibility)
  {
    contacts = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts firstObject];

    sensitiveContentManager = [(CNContactHeaderStaticDisplayView *)self sensitiveContentManager];
    v8 = [sensitiveContentManager shouldShowUIForPosterWithSensitiveContent:1 forContact:firstObject];

    posterView = [(CNContactHeaderView *)self posterView];
    if ([posterView isHidden])
    {
    }

    else
    {
      posterView2 = [(CNContactHeaderView *)self posterView];
      image = [posterView2 image];

      if (image)
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        sensitiveContentBlurView = [(CNContactHeaderView *)self sensitiveContentBlurView];

        if (!sensitiveContentBlurView)
        {
          v15 = [CNSensitiveContentBlurView alloc];
          sensitiveContentManager2 = [(CNContactHeaderStaticDisplayView *)self sensitiveContentManager];
          v17 = [(CNSensitiveContentBlurView *)v15 initWithManager:sensitiveContentManager2];
          [(CNContactHeaderView *)self setSensitiveContentBlurView:v17];

          sensitiveContentBlurView2 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          [sensitiveContentBlurView2 setCanRevealContent:1];

          sensitiveContentBlurView3 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          [sensitiveContentBlurView3 setDelegate:self];

          sensitiveContentBlurView4 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          [sensitiveContentBlurView4 setTranslatesAutoresizingMaskIntoConstraints:0];

          sensitiveContentBlurView5 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          nameLabel = [(CNContactHeaderView *)self nameLabel];
          [(CNContactHeaderStaticDisplayView *)self insertSubview:sensitiveContentBlurView5 belowSubview:nameLabel];

          v37 = MEMORY[0x1E696ACD8];
          sensitiveContentBlurView6 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          topAnchor = [sensitiveContentBlurView6 topAnchor];
          posterView3 = [(CNContactHeaderView *)self posterView];
          topAnchor2 = [posterView3 topAnchor];
          v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v47[0] = v42;
          sensitiveContentBlurView7 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          bottomAnchor = [sensitiveContentBlurView7 bottomAnchor];
          posterView4 = [(CNContactHeaderView *)self posterView];
          bottomAnchor2 = [posterView4 bottomAnchor];
          v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          v47[1] = v36;
          sensitiveContentBlurView8 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          trailingAnchor = [sensitiveContentBlurView8 trailingAnchor];
          posterView5 = [(CNContactHeaderView *)self posterView];
          trailingAnchor2 = [posterView5 trailingAnchor];
          v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v47[2] = v24;
          sensitiveContentBlurView9 = [(CNContactHeaderView *)self sensitiveContentBlurView];
          leadingAnchor = [sensitiveContentBlurView9 leadingAnchor];
          posterView6 = [(CNContactHeaderView *)self posterView];
          leadingAnchor2 = [posterView6 leadingAnchor];
          v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          v47[3] = v29;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
          [v37 activateConstraints:v30];
        }

        sensitiveContentBlurView10 = [(CNContactHeaderView *)self sensitiveContentBlurView];
        [sensitiveContentBlurView10 resetRevealState];

        goto LABEL_15;
      }
    }

    sensitiveContentBlurView11 = [(CNContactHeaderView *)self sensitiveContentBlurView];
    [sensitiveContentBlurView11 removeFromSuperview];

    [(CNContactHeaderView *)self setSensitiveContentBlurView:0];
LABEL_15:

    return;
  }

  sensitiveContentBlurView12 = [(CNContactHeaderView *)self sensitiveContentBlurView];
  [sensitiveContentBlurView12 removeFromSuperview];

  [(CNContactHeaderView *)self setSensitiveContentBlurView:0];
}

- (void)updateSizeDependentAttributes
{
  mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
  if ([mEMORY[0x1E69DCC68] isMenuVisible])
  {
    [mEMORY[0x1E69DCC68] hideMenu];
  }
}

- (void)setBlurViewGradient
{
  v16[1] = *MEMORY[0x1E69E9840];
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject = [contacts firstObject];
  wallpaper = [firstObject wallpaper];
  wallpaperType = [wallpaper wallpaperType];

  if (![(CNContactHeaderStaticDisplayView *)self shouldShowPoster]|| (wallpaperType != *MEMORY[0x1E695CCE0] ? (v7 = wallpaperType == *MEMORY[0x1E695CCE8]) : (v7 = 1), v7))
  {
    posterView = [(CNContactHeaderView *)self posterView];
    layer = [posterView layer];
    [layer setFilters:MEMORY[0x1E695E0F0]];
  }

  else
  {
    blurGradient = [objc_opt_class() blurGradient];
    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D70]];
    [v11 setValue:objc_msgSend(blurGradient forKey:{"CGImage"), @"inputMaskImage"}];
    v12 = MEMORY[0x1E695E118];
    [v11 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [v11 setValue:v12 forKey:@"inputDither"];
    [v11 setValue:&unk_1F0D4B358 forKey:@"inputRadius"];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    posterView2 = [(CNContactHeaderView *)self posterView];
    layer2 = [posterView2 layer];
    [layer2 setFilters:v13];
  }
}

- (void)updatePosterImageViewForScrollOffset:(CGPoint)offset
{
  y = offset.y;
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
    sensitiveContentBlurView = [(CNContactHeaderView *)self sensitiveContentBlurView];
    v10 = sensitiveContentBlurView;
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
    sensitiveContentBlurView = [(CNContactHeaderView *)self sensitiveContentBlurView];
    v10 = sensitiveContentBlurView;
    t1 = v15;
    p_t1 = &t1;
  }

  [sensitiveContentBlurView setTransform:p_t1];
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v25 layoutSubviews];
  [(CNContactHeaderStaticDisplayView *)self calculateLabelSizes];
  [(CNContactHeaderStaticDisplayView *)self setBlurViewGradient];
  avatarBackgroundView = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  [avatarBackgroundView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  avatarBackgroundGradientLayer = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
  [avatarBackgroundGradientLayer setFrame:{v5, v7, v9, v11}];

  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinTopMargin];
  v14 = v13;
  photoTopConstraint = [(CNContactHeaderView *)self photoTopConstraint];
  [photoTopConstraint constant];
  v17 = v16;

  if (v17 != v14)
  {
    photoTopConstraint2 = [(CNContactHeaderView *)self photoTopConstraint];
    [photoTopConstraint2 setConstant:v14];
  }

  if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
  {
    [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMaxHeight];
    v20 = v19;
    photoHeightConstraint = [(CNContactHeaderView *)self photoHeightConstraint];
    [photoHeightConstraint constant];
    v23 = v22;

    if (v23 != v20)
    {
      photoHeightConstraint2 = [(CNContactHeaderView *)self photoHeightConstraint];
      [photoHeightConstraint2 setConstant:v20];
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
      superview = [(CNContactHeaderStaticDisplayView *)self superview];

      if (superview)
      {
        superview2 = [(CNContactHeaderStaticDisplayView *)self superview];
        [superview2 frame];
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
      nameLabel = [(CNContactHeaderView *)self nameLabel];
      [nameLabel sizeThatFits:{v11, 1000.0}];
      v14 = v13;

      taglineLabel = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
      [taglineLabel sizeThatFits:{v11, 1000.0}];
      v17 = v16;

      importantLabel = [(CNContactHeaderStaticDisplayView *)self importantLabel];
      [importantLabel sizeThatFits:{v11, 1000.0}];
      v20 = v19;

      downtimeView = [(CNContactHeaderStaticDisplayView *)self downtimeView];
      isHidden = [downtimeView isHidden];
      v23 = MEMORY[0x1E695F060];
      if (isHidden)
      {
        v24 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        downtimeView2 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
        [downtimeView2 sizeThatFits:{v11, 1000.0}];
        v24 = v26;
      }

      geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
      [geminiView calculateLayoutIfNeeded];

      if ([(CNContactHeaderStaticDisplayView *)self shouldShowGemini])
      {
        geminiView2 = [(CNContactHeaderStaticDisplayView *)self geminiView];
        [geminiView2 sizeThatFits:{v11, 1000.0}];
        v30 = v29;
      }

      else
      {
        v30 = *(v23 + 8);
      }

      v31 = v14 + v17 + v20 + v24 + v30;
      _screen = [(CNContactHeaderStaticDisplayView *)self _screen];
      [_screen scale];
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
      delegate = [(CNContactHeaderView *)self delegate];
      [delegate headerViewDidUpdateLabelSizes];
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
  photoView = [(CNContactHeaderView *)self photoView];
  [photoView disablePhotoTapGesture];
}

- (void)setIsDowntimeContact:(BOOL)contact
{
  if (self->_isDowntimeContact != contact)
  {
    self->_isDowntimeContact = contact;
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)setIsRestrictedContact:(BOOL)contact
{
  if (self->_isRestrictedContact != contact)
  {
    self->_isRestrictedContact = contact;
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)setIsEmergencyContact:(BOOL)contact
{
  if (self->_isEmergencyContact != contact)
  {
    self->_isEmergencyContact = contact;
    [(CNContactHeaderView *)self setNeedsReload];
  }
}

- (void)setImportantMessage:(id)message
{
  messageCopy = message;
  if (self->_importantMessage != messageCopy)
  {
    v6 = messageCopy;
    objc_storeStrong(&self->_importantMessage, message);
    [(CNContactHeaderView *)self setNeedsReload];
    messageCopy = v6;
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (self->_message != messageCopy)
  {
    v6 = messageCopy;
    objc_storeStrong(&self->_message, message);
    [(CNContactHeaderView *)self setNeedsReload];
    messageCopy = v6;
  }
}

- (void)setActionsWrapperView:(id)view
{
  viewCopy = view;
  if (self->_actionsWrapperView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_actionsWrapperView, view);
    [(CNContactHeaderStaticDisplayView *)self addSubview:v6];
    [(CNContactHeaderStaticDisplayView *)self setNeedsUpdateConstraints];
    viewCopy = v6;
  }
}

- (void)updateConstraints
{
  v189[1] = *MEMORY[0x1E69E9840];
  v187.receiver = self;
  v187.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v187 updateConstraints];
  isAXSize = [(CNContactHeaderView *)self isAXSize];
  [(CNContactHeaderStaticDisplayView *)self bottomMargin];
  v5 = v4;
  v6 = MEMORY[0x1E695DF70];
  activatedConstraints = [(CNContactHeaderView *)self activatedConstraints];
  v8 = [v6 arrayWithArray:activatedConstraints];

  v9 = MEMORY[0x1E696ACD8];
  photoHeightConstraint = [(CNContactHeaderView *)self photoHeightConstraint];
  v189[0] = photoHeightConstraint;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:1];
  [v9 deactivateConstraints:v11];

  photoHeightConstraint2 = [(CNContactHeaderView *)self photoHeightConstraint];
  [v8 removeObject:photoHeightConstraint2];

  v13 = MEMORY[0x1E696ACD8];
  photoTopConstraint = [(CNContactHeaderView *)self photoTopConstraint];
  v188 = photoTopConstraint;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v188 count:1];
  [v13 deactivateConstraints:v15];

  photoTopConstraint2 = [(CNContactHeaderView *)self photoTopConstraint];
  [v8 removeObject:photoTopConstraint2];

  posterView = [(CNContactHeaderView *)self posterView];
  LOBYTE(photoTopConstraint) = [posterView isHidden];

  if ((photoTopConstraint & 1) == 0)
  {
    posterView2 = [(CNContactHeaderView *)self posterView];
    topAnchor = [posterView2 topAnchor];
    topAnchor2 = [(CNContactHeaderStaticDisplayView *)self topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v8 addObject:v21];

    posterView3 = [(CNContactHeaderView *)self posterView];
    leadingAnchor = [posterView3 leadingAnchor];
    leadingAnchor2 = [(CNContactHeaderStaticDisplayView *)self leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v8 addObject:v25];

    posterView4 = [(CNContactHeaderView *)self posterView];
    trailingAnchor = [posterView4 trailingAnchor];
    trailingAnchor2 = [(CNContactHeaderStaticDisplayView *)self trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v8 addObject:v29];

    posterView5 = [(CNContactHeaderView *)self posterView];
    bottomAnchor = [posterView5 bottomAnchor];
    if (isAXSize)
    {
      actionsWrapperView = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
      topAnchor3 = [actionsWrapperView topAnchor];
      v34 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
      [v8 addObject:v34];
    }

    else
    {
      actionsWrapperView = [(CNContactHeaderStaticDisplayView *)self bottomAnchor];
      topAnchor3 = [bottomAnchor constraintEqualToAnchor:actionsWrapperView constant:-v5];
      [v8 addObject:topAnchor3];
    }

    blurView = [(CNContactHeaderStaticDisplayView *)self blurView];
    topAnchor4 = [blurView topAnchor];
    posterView6 = [(CNContactHeaderView *)self posterView];
    topAnchor5 = [posterView6 topAnchor];
    v39 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v8 addObject:v39];

    blurView2 = [(CNContactHeaderStaticDisplayView *)self blurView];
    bottomAnchor2 = [blurView2 bottomAnchor];
    posterView7 = [(CNContactHeaderView *)self posterView];
    bottomAnchor3 = [posterView7 bottomAnchor];
    v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v8 addObject:v44];

    blurView3 = [(CNContactHeaderStaticDisplayView *)self blurView];
    leadingAnchor3 = [blurView3 leadingAnchor];
    posterView8 = [(CNContactHeaderView *)self posterView];
    leadingAnchor4 = [posterView8 leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v8 addObject:v49];

    blurView4 = [(CNContactHeaderStaticDisplayView *)self blurView];
    trailingAnchor3 = [blurView4 trailingAnchor];
    posterView9 = [(CNContactHeaderView *)self posterView];
    trailingAnchor4 = [posterView9 trailingAnchor];
    v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v8 addObject:v54];
  }

  avatarBackgroundView = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  topAnchor6 = [avatarBackgroundView topAnchor];
  topAnchor7 = [(CNContactHeaderStaticDisplayView *)self topAnchor];
  v58 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  [v8 addObject:v58];

  avatarBackgroundView2 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  leadingAnchor5 = [avatarBackgroundView2 leadingAnchor];
  leadingAnchor6 = [(CNContactHeaderStaticDisplayView *)self leadingAnchor];
  v62 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v8 addObject:v62];

  avatarBackgroundView3 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  trailingAnchor5 = [avatarBackgroundView3 trailingAnchor];
  trailingAnchor6 = [(CNContactHeaderStaticDisplayView *)self trailingAnchor];
  v66 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v8 addObject:v66];

  avatarBackgroundView4 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  bottomAnchor4 = [avatarBackgroundView4 bottomAnchor];
  bottomAnchor5 = [(CNContactHeaderStaticDisplayView *)self bottomAnchor];
  v70 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-v5];
  [v8 addObject:v70];

  photoView = [(CNContactHeaderView *)self photoView];
  centerXAnchor = [photoView centerXAnchor];
  centerXAnchor2 = [(CNContactHeaderStaticDisplayView *)self centerXAnchor];
  v74 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v8 addObject:v74];

  photoView2 = [(CNContactHeaderView *)self photoView];
  leadingAnchor7 = [photoView2 leadingAnchor];
  layoutMarginsGuide = [(CNContactHeaderStaticDisplayView *)self layoutMarginsGuide];
  leadingAnchor8 = [layoutMarginsGuide leadingAnchor];
  v79 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8];
  [v8 addObject:v79];

  photoView3 = [(CNContactHeaderView *)self photoView];
  trailingAnchor7 = [photoView3 trailingAnchor];
  layoutMarginsGuide2 = [(CNContactHeaderStaticDisplayView *)self layoutMarginsGuide];
  trailingAnchor8 = [layoutMarginsGuide2 trailingAnchor];
  v84 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
  [v8 addObject:v84];

  photoView4 = [(CNContactHeaderView *)self photoView];
  bottomAnchor6 = [photoView4 bottomAnchor];
  taglineLabel = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  topAnchor8 = [taglineLabel topAnchor];
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinBottomMargin];
  v90 = [bottomAnchor6 constraintEqualToAnchor:topAnchor8 constant:-v89];
  [v8 addObject:v90];

  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMaxHeight];
  v92 = v91;
  LODWORD(taglineLabel) = [(CNContactHeaderView *)self isOrientationPhoneLandscape];
  photoView5 = [(CNContactHeaderView *)self photoView];
  heightAnchor = [photoView5 heightAnchor];
  v95 = heightAnchor;
  if (taglineLabel)
  {
    [heightAnchor constraintEqualToConstant:v92];
  }

  else
  {
    [heightAnchor constraintLessThanOrEqualToConstant:v92];
  }
  v96 = ;
  [(CNContactHeaderView *)self setPhotoHeightConstraint:v96];

  photoHeightConstraint3 = [(CNContactHeaderView *)self photoHeightConstraint];
  [v8 addObject:photoHeightConstraint3];

  photoView6 = [(CNContactHeaderView *)self photoView];
  topAnchor9 = [photoView6 topAnchor];
  topAnchor10 = [(CNContactHeaderStaticDisplayView *)self topAnchor];
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinTopMargin];
  v101 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:?];
  [(CNContactHeaderView *)self setPhotoTopConstraint:v101];

  if ([(CNContactHeaderView *)self isPadRegularHorizontalSize])
  {
    photoTopConstraint3 = [(CNContactHeaderView *)self photoTopConstraint];
    LODWORD(v103) = 1148829696;
    [photoTopConstraint3 setPriority:v103];

    photoView7 = [(CNContactHeaderView *)self photoView];
    topAnchor11 = [photoView7 topAnchor];
    topAnchor12 = [(CNContactHeaderStaticDisplayView *)self topAnchor];
    [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinTopMargin];
    v107 = [topAnchor11 constraintGreaterThanOrEqualToAnchor:topAnchor12 constant:?];
    [v8 addObject:v107];
  }

  photoTopConstraint4 = [(CNContactHeaderView *)self photoTopConstraint];
  [v8 addObject:photoTopConstraint4];

  photoView8 = [(CNContactHeaderView *)self photoView];
  LODWORD(v110) = 1132068864;
  [photoView8 setContentHuggingPriority:1 forAxis:v110];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__CNContactHeaderStaticDisplayView_updateConstraints__block_invoke;
  aBlock[3] = &unk_1E74E2570;
  aBlock[4] = self;
  v111 = v8;
  v186 = v111;
  v112 = _Block_copy(aBlock);
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  v112[2](v112, nameLabel);

  taglineLabel2 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  v182 = v112;
  v112[2](v112, taglineLabel2);

  taglineLabel3 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  LODWORD(v116) = 1148846080;
  [taglineLabel3 setContentHuggingPriority:1 forAxis:v116];

  taglineLabel4 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  LODWORD(v118) = 1148846080;
  [taglineLabel4 setContentCompressionResistancePriority:1 forAxis:v118];

  nameLabel2 = [(CNContactHeaderView *)self nameLabel];
  LODWORD(v120) = 1148846080;
  [nameLabel2 setContentHuggingPriority:1 forAxis:v120];

  nameLabel3 = [(CNContactHeaderView *)self nameLabel];
  LODWORD(v122) = 1148846080;
  [nameLabel3 setContentCompressionResistancePriority:1 forAxis:v122];

  importantLabel = [(CNContactHeaderStaticDisplayView *)self importantLabel];
  if (importantLabel)
  {
    importantLabel2 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
    v125 = [importantLabel2 isHidden] ^ 1;
  }

  else
  {
    v125 = 0;
  }

  downtimeView = [(CNContactHeaderStaticDisplayView *)self downtimeView];
  if (downtimeView)
  {
    downtimeView2 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    v128 = [downtimeView2 isHidden] ^ 1;
  }

  else
  {
    v128 = 0;
  }

  shouldShowGemini = [(CNContactHeaderStaticDisplayView *)self shouldShowGemini];
  array = [MEMORY[0x1E695DF70] array];
  if (v125)
  {
    importantLabel3 = [(CNContactHeaderStaticDisplayView *)self importantLabel];
    [array addObject:importantLabel3];
  }

  if (v128)
  {
    downtimeView3 = [(CNContactHeaderStaticDisplayView *)self downtimeView];
    [array addObject:downtimeView3];
  }

  v133 = isAXSize;
  if (shouldShowGemini)
  {
    geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
    [array addObject:geminiView];
  }

  taglineLabel5 = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  bottomAnchor7 = [taglineLabel5 bottomAnchor];

  v183[0] = MEMORY[0x1E69E9820];
  v183[1] = 3221225472;
  v183[2] = __53__CNContactHeaderStaticDisplayView_updateConstraints__block_invoke_2;
  v183[3] = &unk_1E74E2598;
  v183[4] = self;
  v137 = v111;
  v184 = v137;
  v138 = [array _cn_reduce:v183 initialValue:bottomAnchor7];
  nameLabel4 = [(CNContactHeaderView *)self nameLabel];
  topAnchor13 = [nameLabel4 topAnchor];
  v141 = [v138 constraintEqualToAnchor:topAnchor13];
  [v137 addObject:v141];

  actionsWrapperView2 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];

  if (actionsWrapperView2)
  {
    v181 = bottomAnchor7;
    leadingAnchor9 = [(CNContactHeaderStaticDisplayView *)self leadingAnchor];
    actionsWrapperView3 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    leadingAnchor10 = [actionsWrapperView3 leadingAnchor];
    v146 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    [v137 addObject:v146];

    trailingAnchor9 = [(CNContactHeaderStaticDisplayView *)self trailingAnchor];
    actionsWrapperView4 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    trailingAnchor10 = [actionsWrapperView4 trailingAnchor];
    v150 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [v137 addObject:v150];

    actionsWrapperView5 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    LODWORD(v152) = 1148846080;
    [actionsWrapperView5 setContentHuggingPriority:1 forAxis:v152];

    actionsWrapperView6 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    LODWORD(v154) = 1148846080;
    [actionsWrapperView6 setContentCompressionResistancePriority:1 forAxis:v154];

    if (!v133)
    {
      actionsWrapperView7 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
      topAnchor14 = [actionsWrapperView7 topAnchor];
      nameLabel5 = [(CNContactHeaderView *)self nameLabel];
      bottomAnchor8 = [nameLabel5 bottomAnchor];
      v170 = [topAnchor14 constraintEqualToAnchor:bottomAnchor8];
      [v137 addObject:v170];

      actionsWrapperView8 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
      bottomAnchor9 = [actionsWrapperView8 bottomAnchor];
      bottomAnchor10 = [(CNContactHeaderStaticDisplayView *)self bottomAnchor];
      v174 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-v5];
LABEL_32:
      v180 = v174;
      [v137 addObject:v174];

      bottomAnchor7 = v181;
      goto LABEL_33;
    }

    nameLabel6 = [(CNContactHeaderView *)self nameLabel];
    text = [nameLabel6 text];
    if (text)
    {
      v157 = text;
      nameLabel7 = [(CNContactHeaderView *)self nameLabel];
      text2 = [nameLabel7 text];
      v160 = [text2 length];

      if (v160)
      {
        actionsWrapperView9 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
        topAnchor15 = [actionsWrapperView9 topAnchor];
        nameLabel8 = [(CNContactHeaderView *)self nameLabel];
        bottomAnchor11 = [nameLabel8 bottomAnchor];
        v165 = [topAnchor15 constraintEqualToAnchor:bottomAnchor11 constant:v5];
        [v137 addObject:v165];

LABEL_31:
        actionsWrapperView8 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
        bottomAnchor9 = [actionsWrapperView8 bottomAnchor];
        bottomAnchor10 = [(CNContactHeaderStaticDisplayView *)self bottomAnchor];
        v174 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
        goto LABEL_32;
      }
    }

    else
    {
    }

    actionsWrapperView10 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
    topAnchor16 = [actionsWrapperView10 topAnchor];
    nameLabel9 = [(CNContactHeaderView *)self nameLabel];
    topAnchor17 = [nameLabel9 topAnchor];
    actionsWrapperView9 = [topAnchor16 constraintEqualToAnchor:topAnchor17];

    LODWORD(v179) = 1132068864;
    [actionsWrapperView9 setPriority:v179];
    [v137 addObject:actionsWrapperView9];
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
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes photoMinBottomMarginPadCompact];
  }

  else if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
  {
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes photoMinBottomMarginPhoneLandscape];
  }

  else
  {
    shouldUseFixedHeight = [(CNContactHeaderStaticDisplayView *)self shouldUseFixedHeight];
    sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
    sizeAttributes = sizeAttributes2;
    if (shouldUseFixedHeight)
    {
      [sizeAttributes2 photoMinBottomMarginLowQuality];
    }

    else
    {
      [sizeAttributes2 photoMinBottomMargin];
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
    superview = [(CNContactHeaderStaticDisplayView *)self superview];

    if (superview)
    {
      superview2 = [(CNContactHeaderStaticDisplayView *)self superview];
      [superview2 frame];
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
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  [nameLabel sizeThatFits:{v11, 3.40282347e38}];
  v14 = v13;

  nameLabel2 = [(CNContactHeaderView *)self nameLabel];
  font = [nameLabel2 font];
  [font lineHeight];
  v18 = ceil(v17);

  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  v20 = sizeAttributes;
  if (v14 <= v18)
  {
    [sizeAttributes photoMaxHeightPhoneLandscape];
  }

  else
  {
    [sizeAttributes photoMinHeight];
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
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes photoMaxHeight];
    v4 = v6;
  }

  if ([(CNContactHeaderView *)self isPhotoLowQuality])
  {
    if (![(CNContactHeaderStaticDisplayView *)self shouldShowPoster])
    {
      sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
      [sizeAttributes2 photoMaxHeightLowQuality];
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
    isPadCompactHorizontalSize = [(CNContactHeaderView *)self isPadCompactHorizontalSize];
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    v7 = sizeAttributes;
    if (isPadCompactHorizontalSize)
    {
      [sizeAttributes photoMaxHeightPadCompact];
    }

    else
    {
      [sizeAttributes photoMinHeight];
    }

    v4 = v8;
  }

  if ([(CNContactHeaderView *)self isPhotoLowQuality])
  {
    if (![(CNContactHeaderStaticDisplayView *)self shouldShowPoster])
    {
      sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
      [sizeAttributes2 photoMaxHeightLowQuality];
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
    contacts = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts firstObject];
    v6 = [firstObject imageDataAvailable] | v3;

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

- (double)staticHeaderPhotoMinTopMargin
{
  if ([(CNContactHeaderView *)self isPadRegularHorizontalSize])
  {
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes photoMinTopMargin];
    v5 = v4;
    goto LABEL_9;
  }

  if ([(CNContactHeaderView *)self isPadCompactHorizontalSize])
  {
    [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoTopMarginOffset];
    v7 = v6;
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes photoMinTopMarginPadCompact];
  }

  else
  {
    if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
    {
      sizeAttributes = [(CNContactHeaderStaticDisplayView *)self superview];
      [sizeAttributes frame];
      v5 = v9 * 0.1;
      goto LABEL_9;
    }

    [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoTopMarginOffset];
    v7 = v10;
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes photoMinTopMargin];
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
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate navigationBarHeight];
  v5 = v4;

  delegate2 = [(CNContactHeaderView *)self delegate];
  [delegate2 headerViewSafeAreaInsets];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:29];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    contacts = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts firstObject];
    wallpaper = [firstObject wallpaper];
    font = [wallpaper font];

    if (font)
    {
      fontDescriptor = [font fontDescriptor];
      v13 = [fontDescriptor fontDescriptorWithSymbolicTraits:0x8000];

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
  isAXSize = [(CNContactHeaderView *)self isAXSize];
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  [nameLabel setAdjustsFontSizeToFitWidth:!isAXSize];

  if (isAXSize)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.7;
  }

  nameLabel2 = [(CNContactHeaderView *)self nameLabel];
  [nameLabel2 setMinimumScaleFactor:v5];

  nameFont = [(CNContactHeaderStaticDisplayView *)self nameFont];
  v8 = sCurrentNameFont;
  sCurrentNameFont = nameFont;

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

  geminiIconProvider = [(CNContactHeaderStaticDisplayView *)self geminiIconProvider];
  [geminiIconProvider updateGeminiIcons];

  geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView setNeedsCalculateLayout];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderStaticDisplayView *)&v7 tintColorDidChange];
  tintColor = [(CNContactHeaderStaticDisplayView *)self tintColor];
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  [nameLabel setHighlightedTextColor:tintColor];

  tintColor2 = [(CNContactHeaderStaticDisplayView *)self tintColor];
  geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
  [geminiView setHighlightedColor:tintColor2];
}

- (unint64_t)avatarStyle
{
  photoView = [(CNContactHeaderView *)self photoView];
  avatarView = [photoView avatarView];
  style = [avatarView style];

  return style;
}

- (void)setAvatarStyle:(unint64_t)style
{
  photoView = [(CNContactHeaderView *)self photoView];
  avatarView = [photoView avatarView];
  [avatarView setStyle:style];
}

- (BOOL)shouldShowPoster
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5 & 1) != 0 || -[CNContactHeaderView showMonogramsOnly](self, "showMonogramsOnly") || -[CNContactHeaderView isPad](self, "isPad") || (-[CNContactHeaderView delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isOrientationPhoneLandscape], v6, (v7) || (-[CNContactHeaderView contacts](self, "contacts"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 != 1))
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    contacts = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts firstObject];

    v12 = *MEMORY[0x1E6996540];
    wallpaper = [firstObject wallpaper];
    posterArchiveData = [wallpaper posterArchiveData];
    v15 = (*(v12 + 16))(v12, posterArchiveData) ^ 1;
  }

  return v15;
}

- (void)setShouldShowGemini:(BOOL)gemini
{
  if (self->_shouldShowGemini != gemini)
  {
    if (gemini)
    {
      [(CNContactHeaderStaticDisplayView *)self createGeminiViewIfNeeded];
      geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
      [(CNContactHeaderStaticDisplayView *)self addSubview:geminiView];
    }

    else
    {
      geminiView = [(CNContactHeaderStaticDisplayView *)self geminiView];
      [geminiView removeFromSuperview];
    }

    [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
    self->_shouldShowGemini = gemini;

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
    tintColor = [(CNContactHeaderStaticDisplayView *)self tintColor];
    [(CNContactGeminiView *)self->_geminiView setHighlightedColor:tintColor];

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

- (id)imageDataForColorFetchingIsImageDataOrThumbnail:(BOOL *)thumbnail bitmapFormat:(id *)format
{
  MmappedBitmapContext = self;
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject = [contacts firstObject];

  if ([firstObject isKeyAvailable:*MEMORY[0x1E695C400]])
  {
    v9 = *MEMORY[0x1E6996540];
    thumbnailImageData = [firstObject thumbnailImageData];
    LOBYTE(v9) = (*(v9 + 16))(v9, thumbnailImageData);

    if ((v9 & 1) == 0)
    {
      thumbnailImageData2 = [firstObject thumbnailImageData];
      goto LABEL_11;
    }
  }

  if ([firstObject isKeyAvailable:*MEMORY[0x1E695C278]])
  {
    thumbnailImageData2 = [firstObject imageData];
LABEL_11:
    v22 = thumbnailImageData2;
    v28 = [MmappedBitmapContext dataForBackgroundColorService:thumbnailImageData2];
    LOBYTE(MmappedBitmapContext) = 1;
    goto LABEL_12;
  }

  photoView = [MmappedBitmapContext photoView];
  avatarView = [photoView avatarView];
  displayedImageState = [avatarView displayedImageState];

  if (displayedImageState == 2)
  {
    photoView2 = [MmappedBitmapContext photoView];
    avatarView2 = [photoView2 avatarView];
    contentImage = [avatarView2 contentImage];
    cGImage = [contentImage CGImage];

    Width = CGImageGetWidth(cGImage);
    Height = CGImageGetHeight(cGImage);
    CGImageGetBitsPerComponent(cGImage);
    MmappedBitmapContext = CNImageUtilsCreateMmappedBitmapContext();
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = Width;
    v31.size.height = Height;
    CGContextDrawImage(MmappedBitmapContext, v31, cGImage);
    v21 = [objc_alloc(MEMORY[0x1E695CED0]) initWithBitmapContext:MmappedBitmapContext];
    v22 = v21;
    if (format)
    {
      v23 = v21;
      *format = v22;
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

    if (!thumbnail)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v28 = 0;
  LOBYTE(MmappedBitmapContext) = 1;
  if (thumbnail)
  {
LABEL_13:
    *thumbnail = MmappedBitmapContext;
  }

LABEL_14:

  return v28;
}

- (void)assignImageColorsToAvatarBackgroundView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  colorArraySize = [MEMORY[0x1E6996B28] colorArraySize];
  if ([viewCopy count] == colorArraySize)
  {
    v7 = viewCopy;
  }

  else
  {
    v8 = MEMORY[0x1E695DEC8];
    firstObject = [viewCopy firstObject];
    clearColor = firstObject;
    if (!firstObject)
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
    }

    v11 = [v8 _cn_arrayWithObject:clearColor count:colorArraySize];

    if (!firstObject)
    {
    }

    animatedCopy = 0;
    v7 = v11;
  }

  v34 = v7;
  v12 = [v7 _cn_map:&__block_literal_global_11379];
  _cn_reversed = [v12 _cn_reversed];

  lastBackgroundColors = self->_lastBackgroundColors;
  if (lastBackgroundColors != _cn_reversed && (!lastBackgroundColors || ![(NSArray *)_cn_reversed isEqualToArray:?]))
  {
    objc_storeStrong(&self->_lastBackgroundColors, _cn_reversed);
    avatarBackgroundGradientLayer = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
    [avatarBackgroundGradientLayer removeAnimationForKey:@"gradientAnimation"];

    if (animatedCopy && (-[CNContactHeaderStaticDisplayView avatarBackgroundGradientLayer](self, "avatarBackgroundGradientLayer"), v16 = objc_claimAutoreleasedReturnValue(), [v16 colors], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
    {
      avatarBackgroundGradientLayer3 = [MEMORY[0x1E6979318] animationWithKeyPath:@"colors"];
      [avatarBackgroundGradientLayer3 setToValue:_cn_reversed];
      [avatarBackgroundGradientLayer3 setDuration:0.2];
      [avatarBackgroundGradientLayer3 setFillMode:*MEMORY[0x1E69797E8]];
      [avatarBackgroundGradientLayer3 setRemovedOnCompletion:0];
      avatarBackgroundGradientLayer2 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
      [avatarBackgroundGradientLayer2 addAnimation:avatarBackgroundGradientLayer3 forKey:@"gradientAnimation"];
    }

    else
    {
      avatarBackgroundGradientLayer3 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
      [avatarBackgroundGradientLayer3 setColors:_cn_reversed];
    }

    avatarBackgroundView = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
    [avatarBackgroundView frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    avatarBackgroundGradientLayer4 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
    [avatarBackgroundGradientLayer4 setFrame:{v22, v24, v26, v28}];
  }

  delegate = [(CNContactHeaderView *)self delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    delegate2 = [(CNContactHeaderView *)self delegate];
    [delegate2 headerView:self didSetBackgroundAsGradientColors:v34];
  }
}

uint64_t __85__CNContactHeaderStaticDisplayView_assignImageColorsToAvatarBackgroundView_animated___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (void)updateLabelColorsForImageColors:(id)colors
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([CNImageDerivedColorBackgroundUtilities backgroundColorsPreferWhiteForegroundText:colors])
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

  taglineLabel = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  [taglineLabel setTextColor:v5];

  delegate = [(CNContactHeaderView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CNContactHeaderView *)self delegate];
    [delegate2 headerView:self didSetNameLabelColor:v4];
  }
}

- (void)updateAvatarBackgroundViewVisibility
{
  shouldShowPoster = [(CNContactHeaderStaticDisplayView *)self shouldShowPoster];
  avatarBackgroundView = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  [avatarBackgroundView setHidden:shouldShowPoster];

  if ([(CNContactHeaderView *)self isOrientationPhoneLandscape])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  avatarBackgroundGradientLayer = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundGradientLayer];
  *&v7 = v5;
  [avatarBackgroundGradientLayer setOpacity:v7];

  if (![(CNContactHeaderStaticDisplayView *)self shouldShowPoster])
  {
    [(CNContactHeaderStaticDisplayView *)self setPosterViewHidden:1];
    contacts = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts firstObject];
    backgroundColors = [firstObject backgroundColors];
    contactImage = [backgroundColors contactImage];

    contacts2 = [(CNContactHeaderView *)self contacts];
    firstObject2 = [contacts2 firstObject];
    identifier = [firstObject2 identifier];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__CNContactHeaderStaticDisplayView_updateAvatarBackgroundViewVisibility__block_invoke;
    aBlock[3] = &unk_1E74E2638;
    aBlock[4] = self;
    v15 = identifier;
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
        objc_storeStrong(&self->_lastBackgroundColorsContactIdentifier, identifier);
        backgroundGradientDefaultGrayColors = [(CNContactHeaderView *)self backgroundGradientDefaultGrayColors];
        (*(v16 + 2))(v16, backgroundGradientDefaultGrayColors, 0, v19 ^ 1u);
      }
    }

    else
    {
      objc_storeStrong(&self->_lastBackgroundColorsContactIdentifier, identifier);
      (*(v16 + 2))(v16, contactImage, 0, 1);
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

- (BOOL)identifierForBackgroundColorIsCurrent:(id)current
{
  currentCopy = current;
  lastBackgroundColorsContactIdentifier = self->_lastBackgroundColorsContactIdentifier;
  if (lastBackgroundColorsContactIdentifier == currentCopy)
  {
    v6 = 1;
  }

  else if (currentCopy)
  {
    v6 = [(NSString *)lastBackgroundColorsContactIdentifier isEqualToString:currentCopy];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  avatarBackgroundView = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  [avatarBackgroundView setBackgroundColor:clearColor];

  avatarBackgroundView2 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  [avatarBackgroundView2 setHidden:1];

  layer = [MEMORY[0x1E6979380] layer];
  avatarBackgroundView3 = [(CNContactHeaderStaticDisplayView *)self avatarBackgroundView];
  layer2 = [avatarBackgroundView3 layer];
  [layer2 addSublayer:layer];

  [(CNContactHeaderStaticDisplayView *)self setAvatarBackgroundGradientLayer:layer];
}

- (CGRect)layerContentsRectForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [MEMORY[0x1E695CFC8] wallpaperTypeFromConfiguration:configurationCopy];
  window = [(CNContactHeaderStaticDisplayView *)self window];
  [CNIncomingCallSnapshotViewController horizontalNameLabelBoundingRectForName:&stru_1F0CE7398 window:window];
  v8 = v7;
  v10 = v9;

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v13 = (v8 + v10) * 0.125 / v12;

  if ([v5 isEqualToString:*MEMORY[0x1E695CCF0]])
  {
    v14 = [[CNPhotosPosterConfigurationReader alloc] initWithPosterConfiguration:configurationCopy];
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

- (void)updateLabelColorsForPosterSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CNContactHeaderStaticDisplayView_updateLabelColorsForPosterSnapshot___block_invoke;
  v7[3] = &unk_1E74E77C0;
  v7[4] = self;
  v8 = snapshotCopy;
  v6 = snapshotCopy;
  [mainThreadScheduler performBlock:v7];
}

void __71__CNContactHeaderStaticDisplayView_updateLabelColorsForPosterSnapshot___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E6996B28] colorsForUIImage:*(a1 + 40)];
  [v1 updateLabelColorsForImageColors:v2];
}

- (void)assignSnapshotImageToPosterView:(id)view configuration:(id)configuration contentIsSensitive:(BOOL)sensitive
{
  viewCopy = view;
  configurationCopy = configuration;
  mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__CNContactHeaderStaticDisplayView_assignSnapshotImageToPosterView_configuration_contentIsSensitive___block_invoke;
  v13[3] = &unk_1E74E2610;
  v13[4] = self;
  v14 = configurationCopy;
  v15 = viewCopy;
  sensitiveCopy = sensitive;
  v11 = viewCopy;
  v12 = configurationCopy;
  [mainThreadScheduler performBlock:v13];
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
    posterView = [(CNContactHeaderView *)self posterView];
    image = [posterView image];

    if (image)
    {
      delegate = [(CNContactHeaderView *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        delegate2 = [(CNContactHeaderView *)self delegate];
        posterView2 = [(CNContactHeaderView *)self posterView];
        image2 = [posterView2 image];
        [delegate2 headerView:self didSetBackgroundAsPosterSnapshotImage:image2];
      }
    }

    else
    {

      [(CNContactHeaderStaticDisplayView *)self updatePosterViewImage];
    }
  }
}

- (void)setPosterViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  posterView = [(CNContactHeaderView *)self posterView];
  [posterView setHidden:hiddenCopy];

  blurView = [(CNContactHeaderStaticDisplayView *)self blurView];
  [blurView setHidden:hiddenCopy];

  if (hiddenCopy)
  {
    posterView2 = [(CNContactHeaderView *)self posterView];
    [posterView2 setImage:0];

    [(CNContactHeaderStaticDisplayView *)self updateSensitiveContentBlurVisibility:0];
  }
}

- (void)updatePosterViewImage
{
  v64 = *MEMORY[0x1E69E9840];
  shouldShowPoster = [(CNContactHeaderStaticDisplayView *)self shouldShowPoster];
  v4 = CNUILogPosters();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (shouldShowPoster)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Poster should be shown", buf, 2u);
    }

    posterView = [(CNContactHeaderView *)self posterView];
    [posterView setHidden:0];

    blurView = [(CNContactHeaderStaticDisplayView *)self blurView];
    [blurView setHidden:0];

    contacts = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts firstObject];

    identifier = [firstObject identifier];
    currentlyDisplayedPosterContactIdentifier = [(CNContactHeaderStaticDisplayView *)self currentlyDisplayedPosterContactIdentifier];
    v12 = [identifier isEqualToString:currentlyDisplayedPosterContactIdentifier];

    if ((v12 & 1) == 0)
    {
      posterView2 = [(CNContactHeaderView *)self posterView];
      [posterView2 setImage:0];
    }

    cachedPosterConfiguration = [(CNContactHeaderStaticDisplayView *)self cachedPosterConfiguration];
    v15 = cachedPosterConfiguration == 0;

    if (v15)
    {
      v16 = CNUILogPosters();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEFAULT, "No cached snapshot, requesting cached configuraiton", buf, 2u);
      }

      wallpaper = [firstObject wallpaper];
      posterArchiveData = [wallpaper posterArchiveData];
      v55 = 0;
      v19 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:posterArchiveData error:&v55];
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
        localizedDescription = [v20 localizedDescription];
        *buf = 138412290;
        v57 = localizedDescription;
        _os_log_impl(&dword_199A75000, v23, OS_LOG_TYPE_DEFAULT, "Unable to unarchive poster configuration from data, %@", buf, 0xCu);
      }
    }

    cachedPosterConfiguration2 = [(CNContactHeaderStaticDisplayView *)self cachedPosterConfiguration];
    if (!cachedPosterConfiguration2)
    {
      goto LABEL_33;
    }

    identifier2 = [firstObject identifier];
    [(CNContactHeaderStaticDisplayView *)self setCurrentlyDisplayedPosterContactIdentifier:identifier2];

    v47 = [[CNPRUISIncomingCallPosterContext alloc] initWithContact:firstObject showName:0];
    v28 = [CNPRUISIncomingCallSnapshotDefinition contentsOnlySnapshotDefinitionWithContext:v47 attachmentIdentifiers:0];
    v48 = [CNPRUISPosterSnapshotRequest requestForConfiguration:cachedPosterConfiguration2 definition:v28 interfaceOrientation:1];
    v29 = objc_alloc_init(CNPRUISPosterSnapshotController);
    v54 = 0;
    v30 = [(CNPRUISPosterSnapshotController *)v29 latestSnapshotBundleForRequest:v48 error:&v54];
    v46 = v54;
    if (v30)
    {
      levelSets = [v28 levelSets];
      firstObject2 = [levelSets firstObject];
      v33 = [v30 snapshotForLevelSet:firstObject2];

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
          identifier3 = [firstObject identifier];
          wrappedPosterConfiguration = [cachedPosterConfiguration2 wrappedPosterConfiguration];
          serverUUID = [wrappedPosterConfiguration serverUUID];
          wallpaper2 = [firstObject wallpaper];
          posterArchiveData2 = [wallpaper2 posterArchiveData];
          v37 = [posterArchiveData2 length];
          [v33 size];
          v41 = NSStringFromCGSize(v65);
          *buf = 138413058;
          v57 = identifier3;
          v58 = 2112;
          v59 = serverUUID;
          v60 = 2048;
          v61 = v37;
          v62 = 2112;
          v63 = v41;
          _os_log_impl(&dword_199A75000, v35, OS_LOG_TYPE_DEFAULT, "[1] Will assign snapshot image for contact identifier %@. Poster config ID %@. Wallpaper posterArchiveData has length %ld, snapshot image has size %@.", buf, 0x2Au);
        }

        wallpaper3 = [firstObject wallpaper];
        -[CNContactHeaderStaticDisplayView assignSnapshotImageToPosterView:configuration:contentIsSensitive:](self, "assignSnapshotImageToPosterView:configuration:contentIsSensitive:", v33, cachedPosterConfiguration2, [wallpaper3 contentIsSensitive]);

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
    v51 = firstObject;
    v52 = cachedPosterConfiguration2;
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
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  [(CNContactHeaderStaticDisplayView *)self insertSubview:v6 belowSubview:nameLabel];

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

  taglineLabel = [(CNContactHeaderStaticDisplayView *)self taglineLabel];
  [taglineLabel setTextColor:v4];
}

- (double)height
{
  [(CNContactHeaderStaticDisplayView *)self labelsHeight];
  if (v3 == 0.0)
  {
    [(CNContactHeaderStaticDisplayView *)self calculateLabelSizesIfNeeded];
  }

  isAXSize = [(CNContactHeaderView *)self isAXSize];
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinTopMargin];
  v6 = v5;
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinHeight];
  v8 = v7;
  [(CNContactHeaderStaticDisplayView *)self staticHeaderPhotoMinBottomMargin];
  v10 = v9;
  [(CNContactHeaderStaticDisplayView *)self labelsHeight];
  v12 = v11;
  actionsWrapperView = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
  [actionsWrapperView frame];
  v15 = v14;

  actionsWrapperView2 = [(CNContactHeaderStaticDisplayView *)self actionsWrapperView];
  if (actionsWrapperView2 == 0 || isAXSize)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v15;
  }

  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes headerBottomMargin];
  v20 = v19;

  return v6 + v8 + v10 + v12 + v17 + v20;
}

- (double)bottomMargin
{
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes headerBottomMargin];
  v4 = v3;

  return v4;
}

- (void)updateWithContacts:(id)contacts
{
  v5.receiver = self;
  v5.super_class = CNContactHeaderStaticDisplayView;
  [(CNContactHeaderView *)&v5 updateWithContacts:contacts];
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

- (CNContactHeaderStaticDisplayView)initWithContact:(id)contact frame:(CGRect)frame shouldAllowImageDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate
{
  v45[1] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = CNContactHeaderStaticDisplayView;
  v8 = [(CNContactHeaderView *)&v44 initWithContact:contact frame:0 shouldAllowTakePhotoAction:drops shouldAllowImageDrops:bar showingNavBar:only monogramOnly:delegate delegate:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    nameLabel = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    nameLabel2 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel2 setTextAlignment:1];

    if ([(CNContactHeaderView *)v8 isAXSize])
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    nameLabel3 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel3 setNumberOfLines:v19];

    nameLabel4 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel4 setUserInteractionEnabled:1];

    tintColor = [(CNContactHeaderStaticDisplayView *)v8 tintColor];
    nameLabel5 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel5 setHighlightedTextColor:tintColor];

    nameLabel6 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel6 addGestureRecognizer:v9];

    nameLabel7 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel7 addGestureRecognizer:v10];

    nameLabel8 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel8 _cnui_applyContactStyle];

    nameLabel9 = [(CNContactHeaderView *)v8 nameLabel];
    [(CNContactHeaderStaticDisplayView *)v8 addSubview:nameLabel9];

    v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
    taglineLabel = v8->_taglineLabel;
    v8->_taglineLabel = v28;

    [(UILabel *)v8->_taglineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_taglineLabel setTextAlignment:1];
    [(UILabel *)v8->_taglineLabel setNumberOfLines:0];
    [(UILabel *)v8->_taglineLabel setLineBreakMode:0];
    contactStyle = [(CNContactHeaderView *)v8 contactStyle];
    taglineTextColor = [contactStyle taglineTextColor];
    [(UILabel *)v8->_taglineLabel setTextColor:taglineTextColor];

    [(UILabel *)v8->_taglineLabel _cnui_applyContactStyle];
    [(CNContactHeaderStaticDisplayView *)v8 addSubview:v8->_taglineLabel];
    [(CNContactHeaderStaticDisplayView *)v8 updateFontSizes];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_menuWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

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
  contactFormatter = [(CNContactHeaderStaticDisplayView *)self contactFormatter];
  v5 = [v3 descriptorForRequiredKeysForContactFormatter:contactFormatter];

  return v5;
}

@end