@interface CNContactHeaderDisplayView
+ (id)contactHeaderViewWithContact:(id)a3 allowsPhotoDrops:(BOOL)a4 showingNavBar:(BOOL)a5 monogramOnly:(BOOL)a6 delegate:(id)a7;
+ (id)descriptorForRequiredKeysForContactFormatter:(id)a3;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5;
+ (id)sizeAttributesShowingNavBar:(BOOL)a3;
- (CNContactHeaderDisplayView)initWithContact:(id)a3 frame:(CGRect)a4 shouldAllowImageDrops:(BOOL)a5 showingNavBar:(BOOL)a6 monogramOnly:(BOOL)a7 delegate:(id)a8;
- (double)defaultMaxHeight;
- (double)maxHeight;
- (double)minHeight;
- (id)_headerStringForContacts:(id)a3;
- (id)_importantString;
- (id)_savedContactActionForGeminiViewForDualSimParity;
- (id)_taglinesForContacts:(id)a3;
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
- (void)copy:(id)a3;
- (void)createGeminiViewIfNeeded;
- (void)dealloc;
- (void)didFinishUsing;
- (void)disablePhotoTapGesture;
- (void)geminiViewDidPickPreferredChannel:(id)a3;
- (void)handleGeminiViewTouch:(id)a3;
- (void)handleNameLabelLongPress:(id)a3;
- (void)handleNameLabelTap:(id)a3;
- (void)layoutSubviews;
- (void)menuWillHide:(id)a3;
- (void)picker:(id)a3 didPickItem:(id)a4;
- (void)pickerDidCancel:(id)a3;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)setAvatarStyle:(unint64_t)a3;
- (void)setDowntimeTextAttributes:(id)a3;
- (void)setGeminiTextAttributes:(id)a3;
- (void)setImportantMessage:(id)a3;
- (void)setImportantTextAttributes:(id)a3;
- (void)setIsDowntimeContact:(BOOL)a3;
- (void)setIsEmergencyContact:(BOOL)a3;
- (void)setIsRestrictedContact:(BOOL)a3;
- (void)setMessage:(id)a3;
- (void)setNameTextAttributes:(id)a3;
- (void)setShouldShowGemini:(BOOL)a3;
- (void)setTaglineTextAttributes:(id)a3;
- (void)setUsesBrandedCallFormat:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateConstraints;
- (void)updateFontSizes;
- (void)updateGeminiResult:(id)a3;
- (void)updateSizeDependentAttributes;
@end

@implementation CNContactHeaderDisplayView

+ (id)sizeAttributesShowingNavBar:(BOOL)a3
{
  if (a3)
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

+ (id)contactHeaderViewWithContact:(id)a3 allowsPhotoDrops:(BOOL)a4 showingNavBar:(BOOL)a5 monogramOnly:(BOOL)a6 delegate:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a7;
  v14 = [sDisplayContactHeaderView delegate];
  if (v14)
  {

LABEL_4:
    v15 = [a1 alloc];
    v16 = [v15 initWithContact:v12 frame:v10 shouldAllowImageDrops:v9 showingNavBar:v8 monogramOnly:v13 delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_5:
    v17 = v16;
    goto LABEL_6;
  }

  if ([sDisplayContactHeaderView showMonogramsOnly] != v8)
  {
    goto LABEL_4;
  }

  if (!sDisplayContactHeaderView)
  {
    v19 = [a1 alloc];
    v20 = [v19 initWithContact:v12 frame:v10 shouldAllowImageDrops:v9 showingNavBar:v8 monogramOnly:v13 delegate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v21 = sDisplayContactHeaderView;
    sDisplayContactHeaderView = v20;

    v16 = sDisplayContactHeaderView;
    goto LABEL_5;
  }

  v17 = sDisplayContactHeaderView;
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
  v13.super_class = &OBJC_METACLASS___CNContactHeaderDisplayView;
  v6 = objc_msgSendSuper2(&v13, sel_descriptorForRequiredKeys);
  v7 = [v5 arrayWithObject:v6];

  if (v4)
  {
    v8 = [v4 descriptorForRequiredKeys];
    [v7 addObject:v8];
  }

  v9 = MEMORY[0x1E695CD58];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactHeaderDisplayView descriptorForRequiredKeysForContactFormatter:]"];
  v11 = [v9 descriptorWithKeyDescriptors:v7 description:v10];

  return v11;
}

- (void)dealloc
{
  v3 = [(CNContactHeaderDisplayView *)self traitChangeRegistration];
  [(CNContactHeaderDisplayView *)self unregisterForTraitChanges:v3];

  v4.receiver = self;
  v4.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v4 dealloc];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(CNContactHeaderDisplayView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = [v5 userInterfaceStyle];

  if (v7 != v8)
  {
    v9 = [(CNContactHeaderView *)self contacts];
    v10 = [v9 firstObject];
    v11 = [v10 hasBeenPersisted];

    if ((v11 & 1) == 0)
    {
      v12 = [(CNContactHeaderDisplayView *)self geminiView];
      v13 = [v12 contextMenuInteraction];
      [v13 dismissMenu];

      v14 = [(CNContactHeaderDisplayView *)self geminiIconProvider];
      [v14 updateGeminiIcons];

      [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForUnknownContact];
    }
  }
}

- (void)_presentViewControllerForGemini
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:14];

  if (!v5 || (-[CNContactHeaderView contacts](self, "contacts"), v6 = objc_claimAutoreleasedReturnValue(), [v6 firstObject], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasBeenPersisted"), v7, v6, v8))
  {
    v9 = [CNGeminiPickerController alloc];
    v10 = [(CNContactHeaderDisplayView *)self geminiResult];
    v12 = [(CNGeminiPickerController *)v9 initWithGeminiResult:v10];

    [(CNContactHeaderDisplayView *)self setGeminiPicker:v12];
    [(CNGeminiPickerController *)v12 setDelegate:self];
    v11 = [(CNContactHeaderView *)self presenterDelegate];
    [v11 sender:self presentViewController:v12];
  }
}

- (void)handleGeminiViewTouch:(id)a3
{
  v4 = a3;
  v5 = [(CNContactHeaderDisplayView *)self geminiView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(CNContactHeaderDisplayView *)self geminiView];
  [v10 bounds];
  v20.x = v7;
  v20.y = v9;
  v11 = CGRectContainsPoint(v21, v20);

  v12 = [v4 state];
  switch(v12)
  {
    case 4:
      goto LABEL_11;
    case 3:
      if (!v11)
      {
LABEL_12:
        v18 = [(CNContactHeaderDisplayView *)self geminiView];
        [v18 setHighlighted:v11];

        return;
      }

      v16 = [(CNContactHeaderDisplayView *)self geminiView];
      v17 = [v16 allowsPickerActions];

      if (v17)
      {
        [(CNContactHeaderDisplayView *)self _presentViewControllerForGemini];
      }

LABEL_11:
      v11 = 0;
      goto LABEL_12;
    case 2:
      if (v11)
      {
        v13 = [(CNContactHeaderDisplayView *)self geminiView];
        v11 = [v13 allowsPickerActions];
      }

      v14 = [(CNContactHeaderDisplayView *)self geminiView];
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
  v5 = [(CNContactHeaderDisplayView *)self geminiView];
  [v5 setNeedsCalculateLayout];

  v6 = [(CNContactHeaderDisplayView *)self geminiView];
  [v6 calculateLayoutIfNeeded];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderDisplayView *)self setNeedsLayout];
  v7 = [(CNContactHeaderView *)self delegate];
  [v7 headerViewDidPickPreferredChannel:v4];
}

- (void)pickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNContactHeaderView *)self presenterDelegate];
  [v5 sender:self dismissViewController:v4];

  v6 = [(CNContactHeaderDisplayView *)self geminiView];
  [v6 setHighlighted:0];

  [(CNContactHeaderDisplayView *)self setGeminiPicker:0];
}

- (void)picker:(id)a3 didPickItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactHeaderDisplayView *)self geminiView];
  [v8 setNeedsCalculateLayout];

  v9 = [(CNContactHeaderDisplayView *)self geminiView];
  [v9 calculateLayoutIfNeeded];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderDisplayView *)self setNeedsLayout];
  v13 = [MEMORY[0x1E695CEB0] channelStringFromSenderIdentity:v6];

  v10 = [(CNContactHeaderView *)self delegate];
  [v10 headerViewDidPickPreferredChannel:v13];

  v11 = [(CNContactHeaderView *)self presenterDelegate];
  [v11 sender:self dismissViewController:v7];

  v12 = [(CNContactHeaderDisplayView *)self geminiView];
  [v12 setHighlighted:0];

  [(CNContactHeaderDisplayView *)self setGeminiPicker:0];
}

- (id)_savedContactActionForGeminiViewForDualSimParity
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderDisplayView *)self geminiResult];
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
        aBlock[2] = __78__CNContactHeaderDisplayView__savedContactActionForGeminiViewForDualSimParity__block_invoke;
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

        v14 = [(CNContactHeaderDisplayView *)self selectedChannel];

        if (v14)
        {
          v15 = [(CNContactHeaderDisplayView *)self selectedChannel];
          [v10 setState:{objc_msgSend(v13, "isEqualToString:", v15)}];
        }

        else
        {
          v15 = [v6 senderIdentity];
          v16 = [(CNContactHeaderDisplayView *)self geminiResult];
          v17 = [v16 channel];
          v18 = [v17 senderIdentity];
          [v10 setState:v15 == v18];
        }

        v19 = [v6 senderIdentity];
        v20 = [(CNContactHeaderDisplayView *)self geminiResult];
        v21 = [v20 channel];
        v22 = [v21 senderIdentity];
        v23 = &stru_1F0CE7398;
        if (v19 == v22)
        {
          v34 = [(CNContactHeaderDisplayView *)self geminiView];
          v35 = [(CNContactHeaderDisplayView *)self geminiResult];
          v33 = [v34 localizedChannelSubtitleForGeminiResult:v35];
          v23 = v33;
        }

        [v10 setSubtitle:v23];
        if (v19 == v22)
        {
        }

        v24 = [(CNContactHeaderDisplayView *)self geminiIconProvider];
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
  v3 = [(CNContactHeaderDisplayView *)self geminiResult];
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
        aBlock[2] = __64__CNContactHeaderDisplayView__unknownContactActionForGeminiView__block_invoke;
        aBlock[3] = &unk_1E74E25C0;
        objc_copyWeak(&v25, &location);
        aBlock[4] = v6;
        v7 = _Block_copy(aBlock);
        v8 = MEMORY[0x1E69DC628];
        v9 = [v6 localizedLabel];
        v10 = [v8 actionWithTitle:v9 image:0 identifier:0 handler:v7];

        v11 = [v6 senderIdentity];
        v12 = [(CNContactHeaderDisplayView *)self geminiResult];
        v13 = [v12 channel];
        v14 = [v13 senderIdentity];
        [v10 setState:v11 == v14];

        v15 = [(CNContactHeaderDisplayView *)self geminiIconProvider];
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
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:14];

  if (v5)
  {
    v9 = [(CNContactHeaderDisplayView *)self _unknownContactActionForGeminiView];
    v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:v9];
    v7 = [(CNContactHeaderDisplayView *)self geminiView];
    [v7 setMenu:v6];

    v8 = [(CNContactHeaderDisplayView *)self geminiView];
    [v8 setShowsMenuAsPrimaryAction:1];
  }
}

- (void)_geminiViewBehaviorForSavedContact
{
  if ([(CNContactHeaderView *)self useDualSimParity])
  {
    v7 = [(CNContactHeaderDisplayView *)self _savedContactActionForGeminiViewForDualSimParity];
    v3 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:?];
    v4 = [(CNContactHeaderDisplayView *)self geminiView];
    [v4 setMenu:v3];

    v5 = [(CNContactHeaderDisplayView *)self geminiView];
    [v5 setShowsMenuAsPrimaryAction:1];
  }

  else
  {
    v6 = [(CNContactHeaderDisplayView *)self geminiView];
    [v6 setMenu:0];

    v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleGeminiViewTouch_];
    [v7 setMinimumPressDuration:0.001];
    v5 = [(CNContactHeaderDisplayView *)self geminiView];
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
    [(CNContactHeaderDisplayView *)self setSelectedChannel:0];

    [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForSavedContact];
  }

  else
  {

    [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForUnknownContact];
  }
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

  if (v6 && [v6 state] == 1 && -[CNContactHeaderDisplayView becomeFirstResponder](self, "becomeFirstResponder"))
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
  v3 = [(CNContactHeaderDisplayView *)self importantMessage];
  if ([(CNContactHeaderDisplayView *)self isEmergencyContact])
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

- (id)_taglinesForContacts:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 count] != 1)
  {
    v7 = [v4 count];

    v8 = [CNNumberFormatting localizedStringWithInteger:v7];
    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"CARD_NAME_GROUP_MEMBERS_COUNT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v9 stringWithFormat:v11, v8];
    [v5 addObject:v12];

    v13 = *MEMORY[0x1E6996570];
    goto LABEL_39;
  }

  v6 = [v4 firstObject];

  if ([v6 contactType] == 1)
  {
    if ([(CNContactHeaderDisplayView *)self usesBrandedCallFormat])
    {
      [v6 organizationName];
    }

    else
    {
      [v6 personName];
    }
    v17 = ;
    v13 = *MEMORY[0x1E6996570];
    if (!(*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], v17))
    {
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  v13 = *MEMORY[0x1E6996570];
  v14 = [v6 personName];
  if (((*(v13 + 16))(v13, v14) & 1) == 0)
  {

LABEL_13:
    v17 = [MEMORY[0x1E695CD80] stringFromContact:v6 style:1];
    if ((*(v13 + 16))(v13, v17))
    {
      [v5 addObject:v17];
    }

    v18 = [v6 nickname];
    if ((*(v13 + 16))(v13, v18))
    {
      v19 = [(CNContactHeaderView *)self delegate];
      v20 = [v19 isNicknameProhibited];

      if (v20)
      {
        goto LABEL_19;
      }

      v21 = MEMORY[0x1E696AEC0];
      v18 = CNContactsUIBundle();
      v22 = [v18 localizedStringForKey:@"CARD_NAME_NICKNAME_FORMAT-%@" value:&stru_1F0CE7398 table:@"Localized"];
      v23 = [v6 nickname];
      v24 = [v21 stringWithFormat:v22, v23];
      [v5 addObject:v24];
    }

LABEL_19:
    v25 = [v6 previousFamilyName];
    v26 = (*(v13 + 16))(v13, v25);

    if (v26)
    {
      v27 = [v6 previousFamilyName];
      [v5 addObject:v27];
    }

    v28 = [v6 jobTitle];
    v29 = (*(v13 + 16))(v13, v28);

    v30 = [v6 departmentName];
    v31 = (*(v13 + 16))(v13, v30);

    if (v29)
    {
      if (v31)
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = [v6 jobTitle];
        v51 = CNContactsUIBundle();
        v34 = [v51 localizedStringForKey:@"CARD_NAME_JOB_TITLE_DEPARTMENT_SEPARATOR" value:&stru_1F0CE7398 table:@"Localized"];
        v35 = [v6 departmentName];
        v36 = [v32 stringWithFormat:@"%@%@%@", v33, v34, v35];
        [v5 addObject:v36];

LABEL_28:
LABEL_29:
        v38 = [v6 organizationName];
        v39 = (*(v13 + 16))(v13, v38);

        if (v39)
        {
          v40 = [v6 organizationName];
          [v5 addObject:v40];
        }

        v41 = [MEMORY[0x1E69966E8] currentEnvironment];
        v42 = [v41 featureFlags];
        if ([v42 isFeatureEnabled:23] && (objc_msgSend(v6, "isKeyAvailable:", *MEMORY[0x1E695C1C0]) & 1) != 0)
        {
          v43 = *MEMORY[0x1E6996530];
          v44 = [v6 termsOfAddress];
          LOBYTE(v43) = (*(v43 + 16))(v43, v44);

          if (v43)
          {
            goto LABEL_38;
          }

          v45 = MEMORY[0x1E696AEE0];
          v46 = [v6 termsOfAddress];
          v41 = [v45 localizedDescriptionForAddressingGrammars:v46];

          if ((*(v13 + 16))(v13, v41))
          {
            [v5 addObject:v41];
          }
        }

        else
        {
        }

        goto LABEL_38;
      }

      v37 = [v6 jobTitle];
    }

    else
    {
      if (!v31)
      {
        goto LABEL_29;
      }

      v37 = [v6 departmentName];
    }

    v33 = v37;
    [v5 addObject:v37];
    goto LABEL_28;
  }

  v15 = [(CNContactHeaderDisplayView *)self alternateName];
  v16 = (*(v13 + 16))(v13, v15);

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = [(CNContactHeaderDisplayView *)self alternateName];
LABEL_11:
  [v5 addObject:v17];
LABEL_38:

LABEL_39:
  v47 = [(CNContactHeaderDisplayView *)self message];
  v48 = (*(v13 + 16))(v13, v47);

  if (v48)
  {
    v49 = [(CNContactHeaderDisplayView *)self message];
    [v5 addObject:v49];
  }

  return v5;
}

- (id)_headerStringForContacts:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    if ([(CNContactHeaderDisplayView *)self usesBrandedCallFormat])
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

    v15 = [(CNContactHeaderDisplayView *)self contactFormatter];
    v16 = [v4 firstObject];
    v14 = [v15 stringFromContact:v16];
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    v17 = [(CNContactHeaderDisplayView *)self alternateName];

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
  v25.receiver = self;
  v25.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v25 reloadDataPreservingChanges:a3];
  [(CNContactHeaderDisplayView *)self _assignActionToGeminiView];
  v4 = [(CNContactHeaderView *)self contacts];
  v5 = [(CNContactHeaderDisplayView *)self _headerStringForContacts:v4];

  v6 = [(CNContactHeaderView *)self contacts];
  v7 = [(CNContactHeaderDisplayView *)self _taglinesForContacts:v6];

  v8 = [v7 componentsJoinedByString:@"\n"];
  v9 = [(CNContactHeaderDisplayView *)self _importantString];
  [(CNContactHeaderDisplayView *)self _updateImportantLabel];
  [(CNContactHeaderDisplayView *)self _updateDowntimeView];
  v10 = [(CNContactHeaderDisplayView *)self message];
  if ([v8 isEqualToString:v10])
  {
    v11 = [v5 length];

    if (v11)
    {
      goto LABEL_5;
    }

    v10 = v5;
    v5 = v8;
    v8 = 0;
  }

LABEL_5:
  if (![v8 length])
  {

    v8 = 0;
  }

  v12 = [(CNContactHeaderView *)self nameLabel];
  v13 = [v12 text];
  v14 = v13;
  if (v5)
  {
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  else if (v13)
  {
    goto LABEL_16;
  }

  v15 = [(CNContactHeaderDisplayView *)self taglineLabel];
  v16 = [v15 text];
  v17 = v16;
  if (!v8)
  {
    if (!v16)
    {
LABEL_18:
      v24 = v7;
      v19 = [(CNContactHeaderDisplayView *)self importantLabel];
      v20 = [v19 text];
      if (v9)
      {
        if (v20)
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
        v18 = v20 != 0;
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

  if (v16)
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
  v21 = [(CNContactHeaderView *)self nameLabel];
  [v21 setAb_text:v5];

  v22 = [(CNContactHeaderDisplayView *)self taglineLabel];
  [v22 setAb_text:v8];

  v23 = [(CNContactHeaderDisplayView *)self importantLabel];
  [v23 setAb_text:v9];

  [(CNContactHeaderDisplayView *)self _updatePhotoView];
  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  [(CNContactHeaderDisplayView *)self calculateLabelSizes];
  [(CNContactHeaderDisplayView *)self setNeedsLayout];
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

  v7 = [(CNContactHeaderDisplayView *)self allowsPickerActions];
  v8 = v7;
  if (v6)
  {
    v5 = [(CNContactHeaderDisplayView *)self geminiView];
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

  v10 = [(CNContactHeaderDisplayView *)self geminiView];
  [v10 setAllowsPickerActions:v9];

  if (v8)
  {

    goto LABEL_8;
  }

LABEL_9:
  [(CNContactHeaderDisplayView *)self setGeminiResult:v18];
  v11 = [(CNContactHeaderDisplayView *)self geminiView];
  [v11 setGeminiResult:v18];

  [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
  v12 = [(CNContactHeaderView *)self contacts];
  v13 = [v12 firstObject];
  v14 = [v13 hasBeenPersisted];

  if (v14)
  {
    if ([(CNContactHeaderView *)self useDualSimParity])
    {
      v15 = [(CNContactHeaderDisplayView *)self geminiIconProvider];
      [v15 setGeminiResult:v18];

      [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForSavedContact];
    }

    else
    {
      v17 = [(CNContactHeaderDisplayView *)self geminiPicker];
      [v17 setGeminiResult:v18];
    }
  }

  else
  {
    v16 = [(CNContactHeaderDisplayView *)self geminiIconProvider];
    [v16 setGeminiResult:v18];

    [(CNContactHeaderDisplayView *)self _geminiViewBehaviorForUnknownContact];
  }
}

- (void)_updateDowntimeView
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderDisplayView *)self downtimeView];
  if (v3)
  {
    v4 = [(CNContactHeaderDisplayView *)self downtimeView];
    v5 = [v4 isHidden];
  }

  else
  {
    v5 = 1;
  }

  if ([(CNContactHeaderDisplayView *)self isDowntimeContact]|| [(CNContactHeaderDisplayView *)self isRestrictedContact])
  {
    v6 = [(CNContactHeaderDisplayView *)self downtimeView];
    v7 = v6 == 0;
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

    v11 = [(CNContactHeaderDisplayView *)self downtimeView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22[0] = *MEMORY[0x1E69DDD80];
    v12 = *MEMORY[0x1E69DB650];
    v21[0] = @"ABTextStyleAttributeName";
    v21[1] = v12;
    v13 = [(CNContactHeaderView *)self contactStyle];
    v14 = [v13 taglineTextColor];
    v22[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [(CNContactHeaderDisplayView *)self setDowntimeTextAttributes:v15];

    v16 = [(CNContactHeaderDisplayView *)self downtimeView];
    [(CNContactHeaderDisplayView *)self addSubview:v16];
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

  v18 = [(CNContactHeaderDisplayView *)self isRestrictedContact];
  v19 = [(CNContactHeaderDisplayView *)self downtimeView];
  [v19 setElements:v17 | v18];

  v20 = [(CNContactHeaderDisplayView *)self downtimeView];
  [v20 setHidden:v8];

  if (v5)
  {
    [(CNContactHeaderDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateImportantLabel
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactHeaderDisplayView *)self importantLabel];
  if (v3)
  {
    v4 = [(CNContactHeaderDisplayView *)self importantLabel];
    v5 = [v4 isHidden];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(CNContactHeaderDisplayView *)self _importantString];
  if (v6)
  {
    v7 = [(CNContactHeaderDisplayView *)self importantLabel];

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
      [(CNContactHeaderDisplayView *)self setImportantTextAttributes:v11];

      v12 = objc_alloc(MEMORY[0x1E69DCC10]);
      v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CNContactHeaderDisplayView *)self setImportantLabel:v13];

      v14 = [(CNContactHeaderDisplayView *)self importantLabel];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

      v15 = [(CNContactHeaderDisplayView *)self importantLabel];
      [v15 setTextAlignment:1];

      v16 = [(CNContactHeaderDisplayView *)self importantLabel];
      [v16 setNumberOfLines:0];

      v17 = [(CNContactHeaderDisplayView *)self importantLabel];
      [v17 _setUseShortcutIntrinsicContentSize:1];

      v18 = [(CNContactHeaderDisplayView *)self importantLabel];
      [v18 _cnui_applyContactStyle];

      v19 = [(CNContactHeaderDisplayView *)self importantLabel];
      [(CNContactHeaderDisplayView *)self addSubview:v19];
    }
  }

  v20 = [(CNContactHeaderDisplayView *)self importantLabel];
  [v20 setHidden:v6 == 0];

  v21 = [(CNContactHeaderDisplayView *)self importantLabel];
  LODWORD(v20) = [v21 isHidden];

  if (v5 != v20)
  {
    [(CNContactHeaderDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updatePhotoView
{
  v8 = [(CNContactHeaderView *)self photoView];
  v3 = [v8 isHidden];
  v4 = [(CNContactHeaderView *)self contacts];
  if ([v4 count] > 1)
  {
    [v8 setHidden:0];
  }

  else
  {
    v5 = [(CNContactHeaderView *)self contacts];
    v6 = [v5 firstObject];
    if ([v6 imageDataAvailable])
    {
      v7 = 0;
    }

    else
    {
      v7 = [(CNContactHeaderView *)self alwaysShowsMonogram]^ 1;
    }

    [v8 setHidden:v7];
  }

  if (v3 != [v8 isHidden])
  {
    [(CNContactHeaderDisplayView *)self setNeedsUpdateConstraints];
  }
}

- (void)setGeminiTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_geminiTextAttributes != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_geminiTextAttributes, a3);
    v6 = [(CNContactHeaderDisplayView *)self geminiView];
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
    v6 = [(CNContactHeaderDisplayView *)self downtimeView];
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
    v6 = [(CNContactHeaderDisplayView *)self importantLabel];
    [v6 setAb_textAttributes:v7];

    v5 = v7;
  }
}

- (void)setTaglineTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_taglineTextAttributes != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_taglineTextAttributes, a3);
    v6 = [(CNContactHeaderDisplayView *)self taglineLabel];
    [v6 setAb_textAttributes:v7];

    v5 = v7;
  }
}

- (void)setNameTextAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNContactHeaderDisplayView;
  v4 = a3;
  [(CNContactHeaderView *)&v6 setNameTextAttributes:v4];
  v5 = [(CNContactHeaderView *)self nameLabel:v6.receiver];
  [v5 setAb_textAttributes:v4];
}

- (void)updateSizeDependentAttributes
{
  v41[1] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v31 updateSizeDependentAttributes];
  v3 = [MEMORY[0x1E69DCC68] sharedMenuController];
  if ([v3 isMenuVisible])
  {
    [v3 hideMenu];
  }

  [(CNContactHeaderDisplayView *)self bounds];
  if (v4 > 0.0)
  {
    [(CNContactHeaderView *)self currentHeightPercentMaximized];
    v6 = v5;
    v7 = [(CNContactHeaderView *)self sizeAttributes];
    [v7 photoBottomMarginWithPercentMax:v6];
    v9 = v8;
    v10 = [(CNContactHeaderDisplayView *)self avatarNameSpacingConstraint];
    [v10 setConstant:v9];

    v11 = [(CNContactHeaderDisplayView *)self importantLabel];
    [v11 setAlpha:v6 * v6];

    v12 = [(CNContactHeaderDisplayView *)self downtimeView];
    [v12 setAlpha:v6 * v6];

    v13 = [(CNContactHeaderDisplayView *)self geminiView];
    [v13 setAlpha:v6 * v6];

    v14 = [(CNContactHeaderDisplayView *)self taglineLabel];
    [v14 setAlpha:v6 * v6];

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
      v5 = [(CNContactHeaderDisplayView *)self superview];

      if (v5)
      {
        v6 = [(CNContactHeaderDisplayView *)self superview];
        [v6 frame];
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
      v12 = [(CNContactHeaderView *)self nameLabel];
      [v12 sizeThatFits:{v11, 1000.0}];
      v14 = v13;

      v15 = [(CNContactHeaderDisplayView *)self taglineLabel];
      [v15 sizeThatFits:{v11, 1000.0}];
      v17 = v16;

      v18 = [(CNContactHeaderDisplayView *)self importantLabel];
      [v18 sizeThatFits:{v11, 1000.0}];
      v20 = v19;

      v21 = [(CNContactHeaderDisplayView *)self downtimeView];
      v22 = [v21 isHidden];
      v23 = MEMORY[0x1E695F060];
      if (v22)
      {
        v24 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        v25 = [(CNContactHeaderDisplayView *)self downtimeView];
        [v25 sizeThatFits:{v11, 1000.0}];
        v24 = v26;
      }

      v27 = [(CNContactHeaderDisplayView *)self geminiView];
      [v27 calculateLayoutIfNeeded];

      if ([(CNContactHeaderDisplayView *)self shouldShowGemini])
      {
        v28 = [(CNContactHeaderDisplayView *)self geminiView];
        [v28 sizeThatFits:{v11, 1000.0}];
        v30 = v29;
      }

      else
      {
        v30 = *(v23 + 8);
      }

      v31 = v14 + v17 + v20 + v24 + v30;
      v32 = [(CNContactHeaderDisplayView *)self _screen];
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

      [(CNContactHeaderDisplayView *)self setMaxLabelsHeight:v37];
      v38 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
      [v38 setMaximumNumberOfLines:2];
      v39 = [(CNContactHeaderView *)self nameLabel];
      v40 = [v39 text];
      v50 = *MEMORY[0x1E69DB648];
      v41 = sCurrentNameFont;
      [sCurrentNameFont _scaledValueForValue:16.0];
      v42 = [v41 fontWithSize:?];
      v51[0] = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      [v40 boundingRectWithSize:33 options:v43 attributes:v38 context:{v11, 1.79769313e308}];
      v45 = v44;

      v46 = [(CNContactHeaderDisplayView *)self _screen];
      [v46 scale];
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
      v49 = [(CNContactHeaderView *)self delegate];
      [v49 headerViewDidUpdateLabelSizes];
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

- (void)updateConstraints
{
  v48.receiver = self;
  v48.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderView *)&v48 updateConstraints];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CNContactHeaderView *)self activatedConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(CNContactHeaderView *)self photoView];
  v7 = [v6 centerXAnchor];
  v8 = [(CNContactHeaderDisplayView *)self centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v5 addObject:v9];

  v10 = [(CNContactHeaderView *)self nameLabel];
  v11 = [v10 topAnchor];
  v12 = [(CNContactHeaderView *)self photoView];
  v13 = [v12 bottomAnchor];
  v14 = [(CNContactHeaderView *)self sizeAttributes];
  [v14 photoMinBottomMargin];
  v15 = [v11 constraintEqualToAnchor:v13 constant:?];
  [(CNContactHeaderDisplayView *)self setAvatarNameSpacingConstraint:v15];

  v16 = [(CNContactHeaderDisplayView *)self avatarNameSpacingConstraint];
  [v5 addObject:v16];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__CNContactHeaderDisplayView_updateConstraints__block_invoke;
  aBlock[3] = &unk_1E74E2570;
  v17 = v5;
  v46 = v17;
  v47 = self;
  v18 = _Block_copy(aBlock);
  v19 = [(CNContactHeaderView *)self nameLabel];
  v18[2](v18, v19);

  v20 = [(CNContactHeaderDisplayView *)self taglineLabel];
  v18[2](v18, v20);

  v21 = [(CNContactHeaderDisplayView *)self importantLabel];
  if (v21)
  {
    v22 = [(CNContactHeaderDisplayView *)self importantLabel];
    v23 = [v22 isHidden] ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = [(CNContactHeaderDisplayView *)self downtimeView];
  if (v24)
  {
    v25 = [(CNContactHeaderDisplayView *)self downtimeView];
    v26 = [v25 isHidden] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  v27 = [(CNContactHeaderDisplayView *)self shouldShowGemini];
  v28 = [MEMORY[0x1E695DF70] array];
  if (!v23)
  {
    if (!v26)
    {
      goto LABEL_9;
    }

LABEL_13:
    v38 = [(CNContactHeaderDisplayView *)self downtimeView];
    [v28 addObject:v38];

    if (!v27)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v37 = [(CNContactHeaderDisplayView *)self importantLabel];
  [v28 addObject:v37];

  if (v26)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v27)
  {
LABEL_10:
    v29 = [(CNContactHeaderDisplayView *)self geminiView];
    [v28 addObject:v29];
  }

LABEL_11:
  v30 = [(CNContactHeaderView *)self nameLabel];
  v31 = [v30 bottomAnchor];

  v39 = MEMORY[0x1E69E9820];
  v40 = 3221225472;
  v41 = __47__CNContactHeaderDisplayView_updateConstraints__block_invoke_2;
  v42 = &unk_1E74E2598;
  v43 = self;
  v44 = v17;
  v32 = v17;
  v33 = [v28 _cn_reduce:&v39 initialValue:v31];
  v34 = [(CNContactHeaderDisplayView *)self taglineLabel:v39];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
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

  v14 = [(CNContactHeaderDisplayView *)self geminiIconProvider];
  [v14 updateGeminiIcons];

  v15 = [(CNContactHeaderDisplayView *)self geminiView];
  [v15 setNeedsCalculateLayout];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderDisplayView;
  [(CNContactHeaderDisplayView *)&v7 tintColorDidChange];
  v3 = [(CNContactHeaderDisplayView *)self tintColor];
  v4 = [(CNContactHeaderView *)self nameLabel];
  [v4 setHighlightedTextColor:v3];

  v5 = [(CNContactHeaderDisplayView *)self tintColor];
  v6 = [(CNContactHeaderDisplayView *)self geminiView];
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

- (void)setShouldShowGemini:(BOOL)a3
{
  if (self->_shouldShowGemini != a3)
  {
    if (a3)
    {
      [(CNContactHeaderDisplayView *)self createGeminiViewIfNeeded];
      v5 = [(CNContactHeaderDisplayView *)self geminiView];
      [(CNContactHeaderDisplayView *)self addSubview:v5];
    }

    else
    {
      v5 = [(CNContactHeaderDisplayView *)self geminiView];
      [v5 removeFromSuperview];
    }

    [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:1];
    self->_shouldShowGemini = a3;

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
    v6 = [(CNContactHeaderDisplayView *)self tintColor];
    [(CNContactGeminiView *)self->_geminiView setHighlightedColor:v6];

    v12[0] = *MEMORY[0x1E69DDD80];
    v7 = *MEMORY[0x1E69DB650];
    v11[0] = @"ABTextStyleAttributeName";
    v11[1] = v7;
    v8 = [(CNContactHeaderView *)self contactStyle];
    v9 = [v8 taglineTextColor];
    v12[1] = v9;
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

- (CNContactHeaderDisplayView)initWithContact:(id)a3 frame:(CGRect)a4 shouldAllowImageDrops:(BOOL)a5 showingNavBar:(BOOL)a6 monogramOnly:(BOOL)a7 delegate:(id)a8
{
  v45[2] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = CNContactHeaderDisplayView;
  v8 = [(CNContactHeaderView *)&v42 initWithContact:a3 frame:0 shouldAllowTakePhotoAction:a5 shouldAllowImageDrops:a6 showingNavBar:a7 monogramOnly:a8 delegate:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
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

    v19 = [(CNContactHeaderView *)v8 nameLabel];
    [v19 setNumberOfLines:2];

    v20 = [(CNContactHeaderView *)v8 nameLabel];
    [v20 setUserInteractionEnabled:1];

    v21 = [(CNContactHeaderDisplayView *)v8 tintColor];
    v22 = [(CNContactHeaderView *)v8 nameLabel];
    [v22 setHighlightedTextColor:v21];

    v23 = [(CNContactHeaderView *)v8 nameLabel];
    [v23 addGestureRecognizer:v9];

    v24 = [(CNContactHeaderView *)v8 nameLabel];
    [v24 addGestureRecognizer:v10];

    v25 = [(CNContactHeaderView *)v8 nameLabel];
    [v25 _cnui_applyContactStyle];

    v26 = [(CNContactHeaderView *)v8 nameLabel];
    [(CNContactHeaderDisplayView *)v8 addSubview:v26];

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
    v30 = [(CNContactHeaderView *)v8 contactStyle];
    v31 = [v30 taglineTextColor];
    v45[1] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    [(CNContactHeaderDisplayView *)v8 setTaglineTextAttributes:v32];

    [(CNContactHeaderDisplayView *)v8 updateFontSizes];
    v33 = [MEMORY[0x1E696AD88] defaultCenter];
    [v33 addObserver:v8 selector:sel_menuWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

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
  v4 = [(CNContactHeaderDisplayView *)self contactFormatter];
  v5 = [v3 descriptorForRequiredKeysForContactFormatter:v4];

  return v5;
}

@end