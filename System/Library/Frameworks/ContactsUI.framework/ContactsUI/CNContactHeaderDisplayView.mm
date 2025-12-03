@interface CNContactHeaderDisplayView
+ (id)contactHeaderViewWithContact:(id)contact allowsPhotoDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate;
+ (id)descriptorForRequiredKeysForContactFormatter:(id)formatter;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only;
+ (id)sizeAttributesShowingNavBar:(BOOL)bar;
- (CNContactHeaderDisplayView)initWithContact:(id)contact frame:(CGRect)frame shouldAllowImageDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate;
- (double)defaultMaxHeight;
- (double)maxHeight;
- (double)minHeight;
- (id)_headerStringForContacts:(id)contacts;
- (id)_importantString;
- (id)_savedContactActionForGeminiViewForDualSimParity;
- (id)_taglinesForContacts:(id)contacts;
- (id)_unknownContactActionForGeminiView;
- (id)descriptorForRequiredKeys;
- (unint64_t)avatarStyle;
- (void)_assignActionToGeminiView;
- (void)_geminiViewBehaviorForSavedContact;
- (void)_geminiViewBehaviorForUnknownContact;
- (void)_presentViewControllerForGemini;
- (void)_updateDowntimeView;
- (void)_updateImportantLabel;
- (void)_updatePhotoView;
- (void)calculateLabelSizes;
- (void)calculateLabelSizesIfNeeded;
- (void)copy:(id)copy;
- (void)createGeminiViewIfNeeded;
- (void)dealloc;
- (void)didFinishUsing;
- (void)disablePhotoTapGesture;
- (void)geminiViewDidPickPreferredChannel:(id)channel;
- (void)handleGeminiViewTouch:(id)touch;
- (void)handleNameLabelLongPress:(id)press;
- (void)handleNameLabelTap:(id)tap;
- (void)layoutSubviews;
- (void)menuWillHide:(id)hide;
- (void)picker:(id)picker didPickItem:(id)item;
- (void)pickerDidCancel:(id)cancel;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)setAvatarStyle:(unint64_t)style;
- (void)setDowntimeTextAttributes:(id)attributes;
- (void)setGeminiTextAttributes:(id)attributes;
- (void)setImportantMessage:(id)message;
- (void)setImportantTextAttributes:(id)attributes;
- (void)setIsDowntimeContact:(BOOL)contact;
- (void)setIsEmergencyContact:(BOOL)contact;
- (void)setIsRestrictedContact:(BOOL)contact;
- (void)setMessage:(id)message;
- (void)setNameTextAttributes:(id)attributes;
- (void)setShouldShowGemini:(BOOL)gemini;
- (void)setTaglineTextAttributes:(id)attributes;
- (void)setUsesBrandedCallFormat:(BOOL)format;
- (void)tintColorDidChange;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateGeminiResult:(id)result;
- (void)updateSizeDependentAttributes;
@end

@implementation CNContactHeaderDisplayView

+ (id)sizeAttributesShowingNavBar:(BOOL)bar
{
  if (bar)
  {
    +[CNContactHeaderViewSizeAttributes displayAttributesWithNavBar];
  }

  else
  {
    +[CNContactHeaderViewSizeAttributes displayAttributes];
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
  delegate = [sDisplayContactHeaderView delegate];
  if (delegate)
  {

LABEL_4:
    v15 = [self alloc];
    v16 = [v15 initWithContact:contactCopy frame:dropsCopy shouldAllowImageDrops:barCopy showingNavBar:onlyCopy monogramOnly:delegateCopy delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_5:
    v17 = v16;
    goto LABEL_6;
  }

  if ([sDisplayContactHeaderView showMonogramsOnly] != onlyCopy)
  {
    goto LABEL_4;
  }

  if (!sDisplayContactHeaderView)
  {
    v19 = [self alloc];
    v20 = [v19 initWithContact:contactCopy frame:dropsCopy shouldAllowImageDrops:barCopy showingNavBar:onlyCopy monogramOnly:delegateCopy delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v21 = sDisplayContactHeaderView;
    sDisplayContactHeaderView = v20;

    v16 = sDisplayContactHeaderView;
    goto LABEL_5;
  }

  v17 = sDisplayContactHeaderView;
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
  v13.super_class = &OBJC_METACLASS___CNContactHeaderDisplayView;
  v6 = objc_msgSendSuper2(&v13, sel_descriptorForRequiredKeys);
  v7 = [v5 arrayWithObject:v6];

  if (formatterCopy)
  {
    descriptorForRequiredKeys = [formatterCopy descriptorForRequiredKeys];
    [v7 addObject:descriptorForRequiredKeys];
  }

  v9 = MEMORY[0x1E695CD58];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactHeaderDisplayView descriptorForRequiredKeysForContactFormatter:]"];
  v11 = [v9 descriptorWithKeyDescriptors:v7 description:v10];

  return v11;
}

- (void)dealloc
{
  traitChangeRegistration = [(CNContactHeaderDisplayView *)self traitChangeRegistration];
  [(CNContactHeaderDisplayView *)self unregisterForTraitChanges:traitChangeRegistration];

  v4.receiver = self;
  v4.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v4 dealloc];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(CNContactHeaderDisplayView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    contacts = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts firstObject];
    hasBeenPersisted = [firstObject hasBeenPersisted];

    if ((hasBeenPersisted & 1) == 0)
    {
      geminiView = [(CNContactHeaderDisplayView *)self geminiView];
      contextMenuInteraction = [geminiView contextMenuInteraction];
      [contextMenuInteraction dismissMenu];

      geminiIconProvider = [(CNContactHeaderDisplayView *)self geminiIconProvider];
      [geminiIconProvider updateGeminiIcons];

      [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForUnknownContact];
    }
  }
}

- (void)_presentViewControllerForGemini
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:14];

  if (!v5 || (-[CNContactHeaderView contacts](self, "contacts"), v6 = objc_claimAutoreleasedReturnValue(), [v6 firstObject], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasBeenPersisted"), v7, v6, v8))
  {
    v9 = [CNGeminiPickerController alloc];
    geminiResult = [(CNContactHeaderDisplayView *)self geminiResult];
    v12 = [(CNGeminiPickerController *)v9 initWithGeminiResult:geminiResult];

    [(CNContactHeaderDisplayView *)self setGeminiPicker:v12];
    [(CNGeminiPickerController *)v12 setDelegate:self];
    presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
    [presenterDelegate sender:self presentViewController:v12];
  }
}

- (void)handleGeminiViewTouch:(id)touch
{
  touchCopy = touch;
  geminiView = [(CNContactHeaderDisplayView *)self geminiView];
  [touchCopy locationInView:geminiView];
  v7 = v6;
  v9 = v8;

  geminiView2 = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView2 bounds];
  v20.x = v7;
  v20.y = v9;
  allowsPickerActions2 = CGRectContainsPoint(v21, v20);

  state = [touchCopy state];
  switch(state)
  {
    case 4:
      goto LABEL_11;
    case 3:
      if (!allowsPickerActions2)
      {
LABEL_12:
        geminiView3 = [(CNContactHeaderDisplayView *)self geminiView];
        [geminiView3 setHighlighted:allowsPickerActions2];

        return;
      }

      geminiView4 = [(CNContactHeaderDisplayView *)self geminiView];
      allowsPickerActions = [geminiView4 allowsPickerActions];

      if (allowsPickerActions)
      {
        [(CNContactHeaderDisplayView *)self _presentViewControllerForGemini];
      }

LABEL_11:
      allowsPickerActions2 = 0;
      goto LABEL_12;
    case 2:
      if (allowsPickerActions2)
      {
        geminiView5 = [(CNContactHeaderDisplayView *)self geminiView];
        allowsPickerActions2 = [geminiView5 allowsPickerActions];
      }

      geminiView6 = [(CNContactHeaderDisplayView *)self geminiView];
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
  geminiView = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView setNeedsCalculateLayout];

  geminiView2 = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView2 calculateLayoutIfNeeded];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderDisplayView *)self setNeedsLayout];
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerViewDidPickPreferredChannel:channelCopy];
}

- (void)pickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  [presenterDelegate sender:self dismissViewController:cancelCopy];

  geminiView = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView setHighlighted:0];

  [(CNContactHeaderDisplayView *)self setGeminiPicker:0];
}

- (void)picker:(id)picker didPickItem:(id)item
{
  itemCopy = item;
  pickerCopy = picker;
  geminiView = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView setNeedsCalculateLayout];

  geminiView2 = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView2 calculateLayoutIfNeeded];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderDisplayView *)self setNeedsLayout];
  v13 = [MEMORY[0x1E695CEB0] channelStringFromSenderIdentity:itemCopy];

  delegate = [(CNContactHeaderView *)self delegate];
  [delegate headerViewDidPickPreferredChannel:v13];

  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  [presenterDelegate sender:self dismissViewController:pickerCopy];

  geminiView3 = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView3 setHighlighted:0];

  [(CNContactHeaderDisplayView *)self setGeminiPicker:0];
}

- (id)_savedContactActionForGeminiViewForDualSimParity
{
  v44 = *MEMORY[0x1E69E9840];
  geminiResult = [(CNContactHeaderDisplayView *)self geminiResult];
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
        aBlock[2] = __78__CNContactHeaderDisplayView__savedContactActionForGeminiViewForDualSimParity__block_invoke;
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

        selectedChannel = [(CNContactHeaderDisplayView *)self selectedChannel];

        if (selectedChannel)
        {
          selectedChannel2 = [(CNContactHeaderDisplayView *)self selectedChannel];
          [v10 setState:{objc_msgSend(v13, "isEqualToString:", selectedChannel2)}];
        }

        else
        {
          selectedChannel2 = [v6 senderIdentity];
          geminiResult2 = [(CNContactHeaderDisplayView *)self geminiResult];
          channel = [geminiResult2 channel];
          senderIdentity2 = [channel senderIdentity];
          [v10 setState:selectedChannel2 == senderIdentity2];
        }

        senderIdentity3 = [v6 senderIdentity];
        geminiResult3 = [(CNContactHeaderDisplayView *)self geminiResult];
        channel2 = [geminiResult3 channel];
        senderIdentity4 = [channel2 senderIdentity];
        v23 = &stru_1F0CE7398;
        if (senderIdentity3 == senderIdentity4)
        {
          geminiView = [(CNContactHeaderDisplayView *)self geminiView];
          geminiResult4 = [(CNContactHeaderDisplayView *)self geminiResult];
          v33 = [geminiView localizedChannelSubtitleForGeminiResult:geminiResult4];
          v23 = v33;
        }

        [v10 setSubtitle:v23];
        if (senderIdentity3 == senderIdentity4)
        {
        }

        geminiIconProvider = [(CNContactHeaderDisplayView *)self geminiIconProvider];
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

void __78__CNContactHeaderDisplayView__savedContactActionForGeminiViewForDualSimParity__block_invoke(uint64_t a1)
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
  geminiResult = [(CNContactHeaderDisplayView *)self geminiResult];
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
        aBlock[2] = __64__CNContactHeaderDisplayView__unknownContactActionForGeminiView__block_invoke;
        aBlock[3] = &unk_1E74E25C0;
        objc_copyWeak(&v25, &location);
        aBlock[4] = v6;
        v7 = _Block_copy(aBlock);
        v8 = MEMORY[0x1E69DC628];
        localizedLabel = [v6 localizedLabel];
        v10 = [v8 actionWithTitle:localizedLabel image:0 identifier:0 handler:v7];

        senderIdentity = [v6 senderIdentity];
        geminiResult2 = [(CNContactHeaderDisplayView *)self geminiResult];
        channel = [geminiResult2 channel];
        senderIdentity2 = [channel senderIdentity];
        [v10 setState:senderIdentity == senderIdentity2];

        geminiIconProvider = [(CNContactHeaderDisplayView *)self geminiIconProvider];
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

void __64__CNContactHeaderDisplayView__unknownContactActionForGeminiView__block_invoke(uint64_t a1)
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
    _unknownContactActionForGeminiView = [(CNContactHeaderDisplayView *)self _unknownContactActionForGeminiView];
    v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:_unknownContactActionForGeminiView];
    geminiView = [(CNContactHeaderDisplayView *)self geminiView];
    [geminiView setMenu:v6];

    geminiView2 = [(CNContactHeaderDisplayView *)self geminiView];
    [geminiView2 setShowsMenuAsPrimaryAction:1];
  }
}

- (void)_geminiViewBehaviorForSavedContact
{
  if ([(CNContactHeaderView *)self useDualSimParity])
  {
    _savedContactActionForGeminiViewForDualSimParity = [(CNContactHeaderDisplayView *)self _savedContactActionForGeminiViewForDualSimParity];
    v3 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:?];
    geminiView = [(CNContactHeaderDisplayView *)self geminiView];
    [geminiView setMenu:v3];

    geminiView2 = [(CNContactHeaderDisplayView *)self geminiView];
    [geminiView2 setShowsMenuAsPrimaryAction:1];
  }

  else
  {
    geminiView3 = [(CNContactHeaderDisplayView *)self geminiView];
    [geminiView3 setMenu:0];

    _savedContactActionForGeminiViewForDualSimParity = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleGeminiViewTouch_];
    [_savedContactActionForGeminiViewForDualSimParity setMinimumPressDuration:0.001];
    geminiView2 = [(CNContactHeaderDisplayView *)self geminiView];
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
    [(CNContactHeaderDisplayView *)self setSelectedChannel:0];

    [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForSavedContact];
  }

  else
  {

    [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForUnknownContact];
  }
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

  if (v6 && [v6 state] == 1 && -[CNContactHeaderDisplayView becomeFirstResponder](self, "becomeFirstResponder"))
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
  importantMessage = [(CNContactHeaderDisplayView *)self importantMessage];
  if ([(CNContactHeaderDisplayView *)self isEmergencyContact])
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

- (id)_taglinesForContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = objc_opt_new();
  if ([contactsCopy count] != 1)
  {
    v7 = [contactsCopy count];

    v8 = [CNNumberFormatting localizedStringWithInteger:v7];
    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"CARD_NAME_GROUP_MEMBERS_COUNT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v9 stringWithFormat:v11, v8];
    [v5 addObject:v12];

    v13 = *MEMORY[0x1E6996570];
    goto LABEL_39;
  }

  firstObject = [contactsCopy firstObject];

  if ([firstObject contactType] == 1)
  {
    if ([(CNContactHeaderDisplayView *)self usesBrandedCallFormat])
    {
      [firstObject organizationName];
    }

    else
    {
      [firstObject personName];
    }
    alternateName2 = ;
    v13 = *MEMORY[0x1E6996570];
    if (!(*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], alternateName2))
    {
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  v13 = *MEMORY[0x1E6996570];
  personName = [firstObject personName];
  if (((*(v13 + 16))(v13, personName) & 1) == 0)
  {

LABEL_13:
    alternateName2 = [MEMORY[0x1E695CD80] stringFromContact:firstObject style:1];
    if ((*(v13 + 16))(v13, alternateName2))
    {
      [v5 addObject:alternateName2];
    }

    nickname = [firstObject nickname];
    if ((*(v13 + 16))(v13, nickname))
    {
      delegate = [(CNContactHeaderView *)self delegate];
      isNicknameProhibited = [delegate isNicknameProhibited];

      if (isNicknameProhibited)
      {
        goto LABEL_19;
      }

      v21 = MEMORY[0x1E696AEC0];
      nickname = CNContactsUIBundle();
      v22 = [nickname localizedStringForKey:@"CARD_NAME_NICKNAME_FORMAT-%@" value:&stru_1F0CE7398 table:@"Localized"];
      nickname2 = [firstObject nickname];
      v24 = [v21 stringWithFormat:v22, nickname2];
      [v5 addObject:v24];
    }

LABEL_19:
    previousFamilyName = [firstObject previousFamilyName];
    v26 = (*(v13 + 16))(v13, previousFamilyName);

    if (v26)
    {
      previousFamilyName2 = [firstObject previousFamilyName];
      [v5 addObject:previousFamilyName2];
    }

    jobTitle = [firstObject jobTitle];
    v29 = (*(v13 + 16))(v13, jobTitle);

    departmentName = [firstObject departmentName];
    v31 = (*(v13 + 16))(v13, departmentName);

    if (v29)
    {
      if (v31)
      {
        v32 = MEMORY[0x1E696AEC0];
        jobTitle2 = [firstObject jobTitle];
        v51 = CNContactsUIBundle();
        v34 = [v51 localizedStringForKey:@"CARD_NAME_JOB_TITLE_DEPARTMENT_SEPARATOR" value:&stru_1F0CE7398 table:@"Localized"];
        departmentName2 = [firstObject departmentName];
        v36 = [v32 stringWithFormat:@"%@%@%@", jobTitle2, v34, departmentName2];
        [v5 addObject:v36];

LABEL_28:
LABEL_29:
        organizationName = [firstObject organizationName];
        v39 = (*(v13 + 16))(v13, organizationName);

        if (v39)
        {
          organizationName2 = [firstObject organizationName];
          [v5 addObject:organizationName2];
        }

        currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
        featureFlags = [currentEnvironment featureFlags];
        if ([featureFlags isFeatureEnabled:23] && (objc_msgSend(firstObject, "isKeyAvailable:", *MEMORY[0x1E695C1C0]) & 1) != 0)
        {
          v43 = *MEMORY[0x1E6996530];
          termsOfAddress = [firstObject termsOfAddress];
          LOBYTE(v43) = (*(v43 + 16))(v43, termsOfAddress);

          if (v43)
          {
            goto LABEL_38;
          }

          v45 = MEMORY[0x1E696AEE0];
          termsOfAddress2 = [firstObject termsOfAddress];
          currentEnvironment = [v45 localizedDescriptionForAddressingGrammars:termsOfAddress2];

          if ((*(v13 + 16))(v13, currentEnvironment))
          {
            [v5 addObject:currentEnvironment];
          }
        }

        else
        {
        }

        goto LABEL_38;
      }

      jobTitle3 = [firstObject jobTitle];
    }

    else
    {
      if (!v31)
      {
        goto LABEL_29;
      }

      jobTitle3 = [firstObject departmentName];
    }

    jobTitle2 = jobTitle3;
    [v5 addObject:jobTitle3];
    goto LABEL_28;
  }

  alternateName = [(CNContactHeaderDisplayView *)self alternateName];
  v16 = (*(v13 + 16))(v13, alternateName);

  if (!v16)
  {
    goto LABEL_13;
  }

  alternateName2 = [(CNContactHeaderDisplayView *)self alternateName];
LABEL_11:
  [v5 addObject:alternateName2];
LABEL_38:

LABEL_39:
  message = [(CNContactHeaderDisplayView *)self message];
  v48 = (*(v13 + 16))(v13, message);

  if (v48)
  {
    message2 = [(CNContactHeaderDisplayView *)self message];
    [v5 addObject:message2];
  }

  return v5;
}

- (id)_headerStringForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    if ([(CNContactHeaderDisplayView *)self usesBrandedCallFormat])
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

    contactFormatter = [(CNContactHeaderDisplayView *)self contactFormatter];
    firstObject4 = [contactsCopy firstObject];
    v14 = [contactFormatter stringFromContact:firstObject4];
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    alternateName = [(CNContactHeaderDisplayView *)self alternateName];

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
  v25.receiver = self;
  v25.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v25 reloadDataPreservingChanges:changes];
  [(CNContactHeaderDisplayView *)self _assignActionToGeminiView];
  contacts = [(CNContactHeaderView *)self contacts];
  v5 = [(CNContactHeaderDisplayView *)self _headerStringForContacts:contacts];

  contacts2 = [(CNContactHeaderView *)self contacts];
  v7 = [(CNContactHeaderDisplayView *)self _taglinesForContacts:contacts2];

  v8 = [v7 componentsJoinedByString:@"\n"];
  _importantString = [(CNContactHeaderDisplayView *)self _importantString];
  [(CNContactHeaderDisplayView *)self _updateImportantLabel];
  [(CNContactHeaderDisplayView *)self _updateDowntimeView];
  message = [(CNContactHeaderDisplayView *)self message];
  if ([v8 isEqualToString:message])
  {
    v11 = [v5 length];

    if (v11)
    {
      goto LABEL_5;
    }

    message = v5;
    v5 = v8;
    v8 = 0;
  }

LABEL_5:
  if (![v8 length])
  {

    v8 = 0;
  }

  nameLabel = [(CNContactHeaderView *)self nameLabel];
  text = [nameLabel text];
  v14 = text;
  if (v5)
  {
    if (!text)
    {
      goto LABEL_17;
    }
  }

  else if (text)
  {
    goto LABEL_16;
  }

  taglineLabel = [(CNContactHeaderDisplayView *)self taglineLabel];
  text2 = [taglineLabel text];
  v17 = text2;
  if (!v8)
  {
    if (!text2)
    {
LABEL_18:
      v24 = v7;
      importantLabel = [(CNContactHeaderDisplayView *)self importantLabel];
      text3 = [importantLabel text];
      if (_importantString)
      {
        if (text3)
        {

          v18 = 0;
        }

        else
        {

          v18 = 1;
        }
      }

      else
      {
        v18 = text3 != 0;
      }

      v7 = v24;
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (!v5)
    {
LABEL_17:

LABEL_28:
      [(CNContactHeaderDisplayView *)self setNeedsUpdateConstraints];
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (text2)
  {
    goto LABEL_18;
  }

  v18 = 1;
LABEL_24:

LABEL_25:
  if (v5)
  {
  }

  if (v18)
  {
    goto LABEL_28;
  }

LABEL_29:
  nameLabel2 = [(CNContactHeaderView *)self nameLabel];
  [nameLabel2 setAb_text:v5];

  taglineLabel2 = [(CNContactHeaderDisplayView *)self taglineLabel];
  [taglineLabel2 setAb_text:v8];

  importantLabel2 = [(CNContactHeaderDisplayView *)self importantLabel];
  [importantLabel2 setAb_text:_importantString];

  [(CNContactHeaderDisplayView *)self _updatePhotoView];
  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderDisplayView *)self calculateLabelSizes];
  [(CNContactHeaderDisplayView *)self setNeedsLayout];
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

  allowsPickerActions = [(CNContactHeaderDisplayView *)self allowsPickerActions];
  v8 = allowsPickerActions;
  if (firstObject)
  {
    featureFlags = [(CNContactHeaderDisplayView *)self geminiView];
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

  geminiView = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView setAllowsPickerActions:hasBeenPersisted];

  if (v8)
  {

    goto LABEL_8;
  }

LABEL_9:
  [(CNContactHeaderDisplayView *)self setGeminiResult:resultCopy];
  geminiView2 = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView2 setGeminiResult:resultCopy];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject2 = [contacts firstObject];
  hasBeenPersisted2 = [firstObject2 hasBeenPersisted];

  if (hasBeenPersisted2)
  {
    if ([(CNContactHeaderView *)self useDualSimParity])
    {
      geminiIconProvider = [(CNContactHeaderDisplayView *)self geminiIconProvider];
      [geminiIconProvider setGeminiResult:resultCopy];

      [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForSavedContact];
    }

    else
    {
      geminiPicker = [(CNContactHeaderDisplayView *)self geminiPicker];
      [geminiPicker setGeminiResult:resultCopy];
    }
  }

  else
  {
    geminiIconProvider2 = [(CNContactHeaderDisplayView *)self geminiIconProvider];
    [geminiIconProvider2 setGeminiResult:resultCopy];

    [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForUnknownContact];
  }
}

- (void)_updateDowntimeView
{
  v22[2] = *MEMORY[0x1E69E9840];
  downtimeView = [(CNContactHeaderDisplayView *)self downtimeView];
  if (downtimeView)
  {
    downtimeView2 = [(CNContactHeaderDisplayView *)self downtimeView];
    isHidden = [downtimeView2 isHidden];
  }

  else
  {
    isHidden = 1;
  }

  if ([(CNContactHeaderDisplayView *)self isDowntimeContact]|| [(CNContactHeaderDisplayView *)self isRestrictedContact])
  {
    downtimeView3 = [(CNContactHeaderDisplayView *)self downtimeView];
    v7 = downtimeView3 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (![(CNContactHeaderDisplayView *)self isDowntimeContact])
  {
    v8 = [(CNContactHeaderDisplayView *)self isRestrictedContact]^ 1;
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
    [(CNContactHeaderDisplayView *)self setDowntimeView:v10];

    downtimeView4 = [(CNContactHeaderDisplayView *)self downtimeView];
    [downtimeView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22[0] = *MEMORY[0x1E69DDD80];
    v12 = *MEMORY[0x1E69DB650];
    v21[0] = @"ABTextStyleAttributeName";
    v21[1] = v12;
    contactStyle = [(CNContactHeaderView *)self contactStyle];
    taglineTextColor = [contactStyle taglineTextColor];
    v22[1] = taglineTextColor;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [(CNContactHeaderDisplayView *)self setDowntimeTextAttributes:v15];

    downtimeView5 = [(CNContactHeaderDisplayView *)self downtimeView];
    [(CNContactHeaderDisplayView *)self addSubview:downtimeView5];
  }

LABEL_13:
  if ([(CNContactHeaderDisplayView *)self isDowntimeContact])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  isRestrictedContact = [(CNContactHeaderDisplayView *)self isRestrictedContact];
  downtimeView6 = [(CNContactHeaderDisplayView *)self downtimeView];
  [downtimeView6 setElements:v17 | isRestrictedContact];

  downtimeView7 = [(CNContactHeaderDisplayView *)self downtimeView];
  [downtimeView7 setHidden:v8];

  if (isHidden)
  {
    [(CNContactHeaderDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateImportantLabel
{
  v23[2] = *MEMORY[0x1E69E9840];
  importantLabel = [(CNContactHeaderDisplayView *)self importantLabel];
  if (importantLabel)
  {
    importantLabel2 = [(CNContactHeaderDisplayView *)self importantLabel];
    isHidden = [importantLabel2 isHidden];
  }

  else
  {
    isHidden = 1;
  }

  _importantString = [(CNContactHeaderDisplayView *)self _importantString];
  if (_importantString)
  {
    importantLabel3 = [(CNContactHeaderDisplayView *)self importantLabel];

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
      [(CNContactHeaderDisplayView *)self setImportantTextAttributes:v11];

      v12 = objc_alloc(MEMORY[0x1E69DCC10]);
      v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CNContactHeaderDisplayView *)self setImportantLabel:v13];

      importantLabel4 = [(CNContactHeaderDisplayView *)self importantLabel];
      [importantLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

      importantLabel5 = [(CNContactHeaderDisplayView *)self importantLabel];
      [importantLabel5 setTextAlignment:1];

      importantLabel6 = [(CNContactHeaderDisplayView *)self importantLabel];
      [importantLabel6 setNumberOfLines:0];

      importantLabel7 = [(CNContactHeaderDisplayView *)self importantLabel];
      [importantLabel7 _setUseShortcutIntrinsicContentSize:1];

      importantLabel8 = [(CNContactHeaderDisplayView *)self importantLabel];
      [importantLabel8 _cnui_applyContactStyle];

      importantLabel9 = [(CNContactHeaderDisplayView *)self importantLabel];
      [(CNContactHeaderDisplayView *)self addSubview:importantLabel9];
    }
  }

  importantLabel10 = [(CNContactHeaderDisplayView *)self importantLabel];
  [importantLabel10 setHidden:_importantString == 0];

  importantLabel11 = [(CNContactHeaderDisplayView *)self importantLabel];
  LODWORD(importantLabel10) = [importantLabel11 isHidden];

  if (isHidden != importantLabel10)
  {
    [(CNContactHeaderDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updatePhotoView
{
  photoView = [(CNContactHeaderView *)self photoView];
  isHidden = [photoView isHidden];
  contacts = [(CNContactHeaderView *)self contacts];
  if ([contacts count] > 1)
  {
    [photoView setHidden:0];
  }

  else
  {
    contacts2 = [(CNContactHeaderView *)self contacts];
    firstObject = [contacts2 firstObject];
    if ([firstObject imageDataAvailable])
    {
      v7 = 0;
    }

    else
    {
      v7 = [(CNContactHeaderView *)self alwaysShowsMonogram]^ 1;
    }

    [photoView setHidden:v7];
  }

  if (isHidden != [photoView isHidden])
  {
    [(CNContactHeaderDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)setGeminiTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_geminiTextAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    objc_storeStrong(&self->_geminiTextAttributes, attributes);
    geminiView = [(CNContactHeaderDisplayView *)self geminiView];
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
    downtimeView = [(CNContactHeaderDisplayView *)self downtimeView];
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
    importantLabel = [(CNContactHeaderDisplayView *)self importantLabel];
    [importantLabel setAb_textAttributes:v7];

    attributesCopy = v7;
  }
}

- (void)setTaglineTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_taglineTextAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    objc_storeStrong(&self->_taglineTextAttributes, attributes);
    taglineLabel = [(CNContactHeaderDisplayView *)self taglineLabel];
    [taglineLabel setAb_textAttributes:v7];

    attributesCopy = v7;
  }
}

- (void)setNameTextAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = CNContactHeaderDisplayView;
  attributesCopy = attributes;
  [(CNContactHeaderView *)&v6 setNameTextAttributes:attributesCopy];
  v5 = [(CNContactHeaderView *)self nameLabel:v6.receiver];
  [v5 setAb_textAttributes:attributesCopy];
}

- (void)updateSizeDependentAttributes
{
  v41[1] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v31 updateSizeDependentAttributes];
  mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
  if ([mEMORY[0x1E69DCC68] isMenuVisible])
  {
    [mEMORY[0x1E69DCC68] hideMenu];
  }

  [(CNContactHeaderDisplayView *)self bounds];
  if (v4 > 0.0)
  {
    [(CNContactHeaderView *)self currentHeightPercentMaximized];
    v6 = v5;
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes photoBottomMarginWithPercentMax:v6];
    v9 = v8;
    avatarNameSpacingConstraint = [(CNContactHeaderDisplayView *)self avatarNameSpacingConstraint];
    [avatarNameSpacingConstraint setConstant:v9];

    importantLabel = [(CNContactHeaderDisplayView *)self importantLabel];
    [importantLabel setAlpha:v6 * v6];

    downtimeView = [(CNContactHeaderDisplayView *)self downtimeView];
    [downtimeView setAlpha:v6 * v6];

    geminiView = [(CNContactHeaderDisplayView *)self geminiView];
    [geminiView setAlpha:v6 * v6];

    taglineLabel = [(CNContactHeaderDisplayView *)self taglineLabel];
    [taglineLabel setAlpha:v6 * v6];

    [sCurrentNameFont _scaledValueForValue:30.0];
    v16 = v15;
    [sCurrentNameFont _scaledValueForValue:16.0];
    v18 = v16 - v17;
    [sCurrentNameFont _scaledValueForValue:16.0];
    v20 = v19 + v6 * v18;
    [sCurrentTaglineFont _scaledValueForValue:17.0];
    v22 = v6 * v21;
    v23 = [sCurrentNameFont fontWithSize:v20];
    v24 = [sCurrentTaglineFont fontWithSize:v22];
    v40 = *MEMORY[0x1E69DB648];
    v25 = v40;
    v41[0] = v23;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [self cn_updateDictionaryForKey:@"nameTextAttributes" withChanges:v26];

    v38 = v25;
    v39 = v24;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [self cn_updateDictionaryForKey:@"importantTextAttributes" withChanges:v27];

    v36 = v25;
    v37 = v24;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [self cn_updateDictionaryForKey:@"downtimeTextAttributes" withChanges:v28];

    v34 = v25;
    v35 = v24;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [self cn_updateDictionaryForKey:@"geminiTextAttributes" withChanges:v29];

    v32 = v25;
    v33 = v24;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [self cn_updateDictionaryForKey:@"taglineTextAttributes" withChanges:v30];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v3 layoutSubviews];
  [(CNContactHeaderDisplayView *)self calculateLabelSizes];
}

- (void)calculateLabelSizes
{
  v51[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactHeaderView *)self needsLabelSizeCalculation])
  {
    [(CNContactHeaderDisplayView *)self frame];
    v4 = v3;
    if (v3 == 0.0)
    {
      superview = [(CNContactHeaderDisplayView *)self superview];

      if (superview)
      {
        superview2 = [(CNContactHeaderDisplayView *)self superview];
        [superview2 frame];
        v4 = v7;
      }
    }

    if (v4 != 0.0)
    {
      [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:0];
      [(CNContactHeaderDisplayView *)self layoutMargins];
      v9 = v8;
      [(CNContactHeaderDisplayView *)self layoutMargins];
      v11 = v4 - (v9 + v10);
      [(CNContactHeaderDisplayView *)self updateFontSizes];
      nameLabel = [(CNContactHeaderView *)self nameLabel];
      [nameLabel sizeThatFits:{v11, 1000.0}];
      v14 = v13;

      taglineLabel = [(CNContactHeaderDisplayView *)self taglineLabel];
      [taglineLabel sizeThatFits:{v11, 1000.0}];
      v17 = v16;

      importantLabel = [(CNContactHeaderDisplayView *)self importantLabel];
      [importantLabel sizeThatFits:{v11, 1000.0}];
      v20 = v19;

      downtimeView = [(CNContactHeaderDisplayView *)self downtimeView];
      isHidden = [downtimeView isHidden];
      v23 = MEMORY[0x1E695F060];
      if (isHidden)
      {
        v24 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        downtimeView2 = [(CNContactHeaderDisplayView *)self downtimeView];
        [downtimeView2 sizeThatFits:{v11, 1000.0}];
        v24 = v26;
      }

      geminiView = [(CNContactHeaderDisplayView *)self geminiView];
      [geminiView calculateLayoutIfNeeded];

      if ([(CNContactHeaderDisplayView *)self shouldShowGemini])
      {
        geminiView2 = [(CNContactHeaderDisplayView *)self geminiView];
        [geminiView2 sizeThatFits:{v11, 1000.0}];
        v30 = v29;
      }

      else
      {
        v30 = *(v23 + 8);
      }

      v31 = v14 + v17 + v20 + v24 + v30;
      _screen = [(CNContactHeaderDisplayView *)self _screen];
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

      [(CNContactHeaderDisplayView *)self setMaxLabelsHeight:v37];
      v38 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
      [v38 setMaximumNumberOfLines:2];
      nameLabel2 = [(CNContactHeaderView *)self nameLabel];
      text = [nameLabel2 text];
      v50 = *MEMORY[0x1E69DB648];
      v41 = sCurrentNameFont;
      [sCurrentNameFont _scaledValueForValue:16.0];
      v42 = [v41 fontWithSize:?];
      v51[0] = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      [text boundingRectWithSize:33 options:v43 attributes:v38 context:{v11, 1.79769313e308}];
      v45 = v44;

      _screen2 = [(CNContactHeaderDisplayView *)self _screen];
      [_screen2 scale];
      if (v47 == 0.0)
      {
        if (RoundToScale_onceToken != -1)
        {
          dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
        }

        v47 = *&RoundToScale___s;
      }

      v48 = ceil(v45);
      if (v47 != 1.0)
      {
        v48 = round(v47 * v48) / v47;
      }

      [(CNContactHeaderDisplayView *)self setMinLabelsHeight:v48];
      delegate = [(CNContactHeaderView *)self delegate];
      [delegate headerViewDidUpdateLabelSizes];
    }
  }
}

- (void)calculateLabelSizesIfNeeded
{
  v3.receiver = self;
  v3.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v3 calculateLabelSizesIfNeeded];
  [(CNContactHeaderDisplayView *)self calculateLabelSizes];
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

- (void)updateConstraints
{
  v48.receiver = self;
  v48.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v48 updateConstraints];
  v3 = MEMORY[0x1E695DF70];
  activatedConstraints = [(CNContactHeaderView *)self activatedConstraints];
  v5 = [v3 arrayWithArray:activatedConstraints];

  photoView = [(CNContactHeaderView *)self photoView];
  centerXAnchor = [photoView centerXAnchor];
  centerXAnchor2 = [(CNContactHeaderDisplayView *)self centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v5 addObject:v9];

  nameLabel = [(CNContactHeaderView *)self nameLabel];
  topAnchor = [nameLabel topAnchor];
  photoView2 = [(CNContactHeaderView *)self photoView];
  bottomAnchor = [photoView2 bottomAnchor];
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes photoMinBottomMargin];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  [(CNContactHeaderDisplayView *)self setAvatarNameSpacingConstraint:v15];

  avatarNameSpacingConstraint = [(CNContactHeaderDisplayView *)self avatarNameSpacingConstraint];
  [v5 addObject:avatarNameSpacingConstraint];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__CNContactHeaderDisplayView_updateConstraints__block_invoke;
  aBlock[3] = &unk_1E74E2570;
  v17 = v5;
  v46 = v17;
  selfCopy = self;
  v18 = _Block_copy(aBlock);
  nameLabel2 = [(CNContactHeaderView *)self nameLabel];
  v18[2](v18, nameLabel2);

  taglineLabel = [(CNContactHeaderDisplayView *)self taglineLabel];
  v18[2](v18, taglineLabel);

  importantLabel = [(CNContactHeaderDisplayView *)self importantLabel];
  if (importantLabel)
  {
    importantLabel2 = [(CNContactHeaderDisplayView *)self importantLabel];
    v23 = [importantLabel2 isHidden] ^ 1;
  }

  else
  {
    v23 = 0;
  }

  downtimeView = [(CNContactHeaderDisplayView *)self downtimeView];
  if (downtimeView)
  {
    downtimeView2 = [(CNContactHeaderDisplayView *)self downtimeView];
    v26 = [downtimeView2 isHidden] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  shouldShowGemini = [(CNContactHeaderDisplayView *)self shouldShowGemini];
  array = [MEMORY[0x1E695DF70] array];
  if (!v23)
  {
    if (!v26)
    {
      goto LABEL_9;
    }

LABEL_13:
    downtimeView3 = [(CNContactHeaderDisplayView *)self downtimeView];
    [array addObject:downtimeView3];

    if (!shouldShowGemini)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  importantLabel3 = [(CNContactHeaderDisplayView *)self importantLabel];
  [array addObject:importantLabel3];

  if (v26)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (shouldShowGemini)
  {
LABEL_10:
    geminiView = [(CNContactHeaderDisplayView *)self geminiView];
    [array addObject:geminiView];
  }

LABEL_11:
  nameLabel3 = [(CNContactHeaderView *)self nameLabel];
  bottomAnchor2 = [nameLabel3 bottomAnchor];

  v39 = MEMORY[0x1E69E9820];
  v40 = 3221225472;
  v41 = __47__CNContactHeaderDisplayView_updateConstraints__block_invoke_2;
  v42 = &unk_1E74E2598;
  selfCopy2 = self;
  v44 = v17;
  v32 = v17;
  v33 = [array _cn_reduce:&v39 initialValue:bottomAnchor2];
  v34 = [(CNContactHeaderDisplayView *)self taglineLabel:v39];
  topAnchor2 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:topAnchor2];
  [v32 addObject:v36];

  [MEMORY[0x1E696ACD8] activateConstraints:v32];
  [(CNContactHeaderView *)self setActivatedConstraints:v32];
}

void __47__CNContactHeaderDisplayView_updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 centerXAnchor];
  v6 = [*(a1 + 40) centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [v4 leadingAnchor];
  v9 = [*(a1 + 40) layoutMarginsGuide];
  v10 = [v9 leadingAnchor];
  v18 = [v8 constraintEqualToAnchor:v10];

  LODWORD(v11) = 1148829696;
  [v18 setPriority:v11];
  [*(a1 + 32) addObject:v18];
  v12 = [v4 trailingAnchor];
  v13 = [*(a1 + 40) layoutMarginsGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];

  LODWORD(v16) = 1148829696;
  [v15 setPriority:v16];
  [*(a1 + 32) addObject:v15];
  LODWORD(v17) = 1112014848;
  [v4 setContentHuggingPriority:0 forAxis:v17];
}

id __47__CNContactHeaderDisplayView_updateConstraints__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v18 = [v5 leadingAnchor];
  v19 = [*(a1 + 32) layoutMarginsGuide];
  v17 = [v19 leadingAnchor];
  v7 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v7;
  v8 = [v5 trailingAnchor];
  v9 = [*(a1 + 32) layoutMarginsGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v20[1] = v11;
  v12 = [v5 topAnchor];
  v13 = [v6 constraintEqualToAnchor:v12];

  v20[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];

  [*(a1 + 40) addObjectsFromArray:v14];
  v15 = [v5 bottomAnchor];

  return v15;
}

- (void)updateFontSizes
{
  v24[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v16 updateFontSizes];
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

  v7 = sCurrentTaglineFont;
  [sCurrentTaglineFont _scaledValueForValue:17.0];
  v8 = [v7 fontWithSize:?];
  v23 = *MEMORY[0x1E69DB648];
  v9 = v23;
  v24[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [self cn_updateDictionaryForKey:@"taglineTextAttributes" withChanges:v10];

  v21 = v9;
  v22 = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [self cn_updateDictionaryForKey:@"importantTextAttributes" withChanges:v11];

  v19 = v9;
  v20 = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [self cn_updateDictionaryForKey:@"downtimeTextAttributes" withChanges:v12];

  v17 = v9;
  v18 = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [self cn_updateDictionaryForKey:@"geminiTextAttributes" withChanges:v13];

  geminiIconProvider = [(CNContactHeaderDisplayView *)self geminiIconProvider];
  [geminiIconProvider updateGeminiIcons];

  geminiView = [(CNContactHeaderDisplayView *)self geminiView];
  [geminiView setNeedsCalculateLayout];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderDisplayView *)&v7 tintColorDidChange];
  tintColor = [(CNContactHeaderDisplayView *)self tintColor];
  nameLabel = [(CNContactHeaderView *)self nameLabel];
  [nameLabel setHighlightedTextColor:tintColor];

  tintColor2 = [(CNContactHeaderDisplayView *)self tintColor];
  geminiView = [(CNContactHeaderDisplayView *)self geminiView];
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

- (void)setShouldShowGemini:(BOOL)gemini
{
  if (self->_shouldShowGemini != gemini)
  {
    if (gemini)
    {
      [(CNContactHeaderDisplayView *)self createGeminiViewIfNeeded];
      geminiView = [(CNContactHeaderDisplayView *)self geminiView];
      [(CNContactHeaderDisplayView *)self addSubview:geminiView];
    }

    else
    {
      geminiView = [(CNContactHeaderDisplayView *)self geminiView];
      [geminiView removeFromSuperview];
    }

    [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
    self->_shouldShowGemini = gemini;

    [(CNContactHeaderDisplayView *)self setNeedsUpdateConstraints];
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
    tintColor = [(CNContactHeaderDisplayView *)self tintColor];
    [(CNContactGeminiView *)self->_geminiView setHighlightedColor:tintColor];

    v12[0] = *MEMORY[0x1E69DDD80];
    v7 = *MEMORY[0x1E69DB650];
    v11[0] = @"ABTextStyleAttributeName";
    v11[1] = v7;
    contactStyle = [(CNContactHeaderView *)self contactStyle];
    taglineTextColor = [contactStyle taglineTextColor];
    v12[1] = taglineTextColor;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(CNContactHeaderDisplayView *)self setGeminiTextAttributes:v10];
  }
}

- (double)defaultMaxHeight
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v7 defaultMaxHeight];
  v4 = v3;
  [(CNContactHeaderDisplayView *)self maxLabelsHeight];
  return v4 + v5;
}

- (double)maxHeight
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v7 maxHeight];
  v4 = v3;
  [(CNContactHeaderDisplayView *)self maxLabelsHeight];
  return v4 + v5;
}

- (double)minHeight
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v7 minHeight];
  v4 = v3;
  [(CNContactHeaderDisplayView *)self minLabelsHeight];
  return v4 + v5;
}

- (void)didFinishUsing
{
  if (sDisplayContactHeaderView == self)
  {
    sDisplayContactHeaderView = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CNContactHeaderDisplayView)initWithContact:(id)contact frame:(CGRect)frame shouldAllowImageDrops:(BOOL)drops showingNavBar:(BOOL)bar monogramOnly:(BOOL)only delegate:(id)delegate
{
  v45[2] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = CNContactHeaderDisplayView;
  v8 = [(CNContactHeaderView *)&v42 initWithContact:contact frame:0 shouldAllowTakePhotoAction:drops shouldAllowImageDrops:bar showingNavBar:only monogramOnly:delegate delegate:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    nameLabel3 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel3 setNumberOfLines:2];

    nameLabel4 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel4 setUserInteractionEnabled:1];

    tintColor = [(CNContactHeaderDisplayView *)v8 tintColor];
    nameLabel5 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel5 setHighlightedTextColor:tintColor];

    nameLabel6 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel6 addGestureRecognizer:v9];

    nameLabel7 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel7 addGestureRecognizer:v10];

    nameLabel8 = [(CNContactHeaderView *)v8 nameLabel];
    [nameLabel8 _cnui_applyContactStyle];

    nameLabel9 = [(CNContactHeaderView *)v8 nameLabel];
    [(CNContactHeaderDisplayView *)v8 addSubview:nameLabel9];

    v27 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v12, v13, v14, v15}];
    taglineLabel = v8->_taglineLabel;
    v8->_taglineLabel = v27;

    [(UILabel *)v8->_taglineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_taglineLabel setTextAlignment:1];
    [(UILabel *)v8->_taglineLabel setNumberOfLines:0];
    [(UILabel *)v8->_taglineLabel _cnui_applyContactStyle];
    [(CNContactHeaderDisplayView *)v8 addSubview:v8->_taglineLabel];
    v45[0] = *MEMORY[0x1E69DDD80];
    v29 = *MEMORY[0x1E69DB650];
    v44[0] = @"ABTextStyleAttributeName";
    v44[1] = v29;
    contactStyle = [(CNContactHeaderView *)v8 contactStyle];
    taglineTextColor = [contactStyle taglineTextColor];
    v45[1] = taglineTextColor;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    [(CNContactHeaderDisplayView *)v8 setTaglineTextAttributes:v32];

    [(CNContactHeaderDisplayView *)v8 updateFontSizes];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_menuWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

    v8->_allowsPickerActions = 1;
    v43 = objc_opt_class();
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v35 = [(CNContactHeaderDisplayView *)v8 registerForTraitChanges:v34 withTarget:v8 action:sel_traitEnvironment_didChangeTraitCollection_];
    traitChangeRegistration = v8->_traitChangeRegistration;
    v8->_traitChangeRegistration = v35;

    v37 = objc_alloc_init(CNContactGeminiIconProvider);
    geminiIconProvider = v8->_geminiIconProvider;
    v8->_geminiIconProvider = v37;

    v39 = objc_alloc_init(MEMORY[0x1E69968C0]);
    metricsReporter = v8->_metricsReporter;
    v8->_metricsReporter = v39;
  }

  return v8;
}

- (id)descriptorForRequiredKeys
{
  v3 = objc_opt_class();
  contactFormatter = [(CNContactHeaderDisplayView *)self contactFormatter];
  v5 = [v3 descriptorForRequiredKeysForContactFormatter:contactFormatter];

  return v5;
}

@end