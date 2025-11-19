@interface EKCalendarItemLocationInlineEditItem
- (BOOL)editItemViewControllerSave:(id)a3;
- (BOOL)editor:(id)a3 canSelectSubitem:(unint64_t)a4;
- (BOOL)isSaveable;
- (BOOL)isSubitemAtIndexSaveable:(unint64_t)a3;
- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4;
- (EKCalendarItemLocationInlineEditItem)init;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (id)cellForSubitemAtIndex:(unint64_t)a3 inEditor:(id)a4;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (id)searchStringForEventAutocomplete;
- (unint64_t)_supportedSearchTypesForSubitemAtIndex:(unint64_t)a3;
- (unint64_t)numberOfSubitems;
- (void)_clearButtonTapped:(id)a3;
- (void)_clearLocationAtIndex:(unint64_t)a3;
- (void)_scribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
- (void)_setEditor:(id)a3 andUpdateScribbleInteractionOnCell:(id)a4 addScribbleInteraction:(BOOL)a5;
- (void)_updateClearButtonAndMakeVisible:(id)a3 index:(unint64_t)a4;
- (void)_updateMapLocationCell:(id)a3 index:(unint64_t)a4 location:(id)a5;
- (void)_updateVirtualConferenceCell:(id)a3 index:(unint64_t)a4 virtualConference:(id)a5;
- (void)dealloc;
- (void)didTapAddSuggestedLocationCell:(id)a3 disambiguatedLocation:(id)a4;
- (void)didTapDismissSuggestedLocationCell:(id)a3;
- (void)editItemPendingVideoConferenceCompleted:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation EKCalendarItemLocationInlineEditItem

- (EKCalendarItemLocationInlineEditItem)init
{
  v6.receiver = self;
  v6.super_class = EKCalendarItemLocationInlineEditItem;
  v2 = [(EKCalendarItemLocationInlineEditItem *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(EKUILocationEditItemModel);
    viewModel = v2->_viewModel;
    v2->_viewModel = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(EKUILocationEditItemModel *)self->_viewModel reset];
  v3.receiver = self;
  v3.super_class = EKCalendarItemLocationInlineEditItem;
  [(EKCalendarItemLocationInlineEditItem *)&v3 dealloc];
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4
{
  if (EKUIUsesLargeTextLayout(0))
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v6 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v7 = [v6 count];

  if (v7 > a3)
  {
    v8 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v9 = [v8 objectAtIndex:a3];

    v10 = [v9 cell];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v9 cell];
      v13 = [v12 bannerView];
      [v13 intrinsicContentSize];
      v15 = v14;

      return v15;
    }
  }

  if (MEMORY[0x1D38B98D0]())
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v17 = objc_opt_class();

  [v17 scaledHeightOfSystemTableViewCell];
  return result;
}

- (unint64_t)numberOfSubitems
{
  v3 = [(EKUILocationEditItemModel *)self->_viewModel displaysPlaceholder];
  v4 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v5 = [v4 count] + v3;

  return v5;
}

- (BOOL)isSaveable
{
  if ([(EKCalendarItemLocationInlineEditItem *)self numberOfSubitems])
  {
    v3 = 0;
    do
    {
      [(EKCalendarItemLocationInlineEditItem *)self isSubitemAtIndexSaveable:v3++];
    }

    while (v3 < [(EKCalendarItemLocationInlineEditItem *)self numberOfSubitems]);
  }

  return 1;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3 inEditor:(id)a4
{
  v6 = a4;
  v7 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    p_super = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v17 = [(EKUILocationEditItemModel *)self->_viewModel placeholderCellText];
    v18 = [(EKUITableViewCell *)p_super textLabel];
    [v18 setText:v17];

    v19 = objc_opt_new();
    v20 = [v19 _placeholderColor];
    v21 = [(EKUITableViewCell *)p_super textLabel];
    [v21 setTextColor:v20];

    [(EKCalendarItemLocationInlineEditItem *)self _setEditor:v6 andUpdateScribbleInteractionOnCell:p_super addScribbleInteraction:1];
    goto LABEL_42;
  }

  v9 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v10 = [v9 objectAtIndex:a3];

  v11 = [v10 locationType];
  p_super = 0;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        v22 = [v10 cell];

        if (v22)
        {
          v23 = [v10 cell];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            [EKCalendarItemLocationInlineEditItem cellForSubitemAtIndex:inEditor:];
          }

          v25 = [v10 cell];
        }

        else
        {
          v25 = [[EKEventDetailSuggestedLocationCell alloc] initWithInlineStyle:1];
        }

        p_super = v25;
        [(EKEventDetailSuggestedLocationCell *)v25 setDelegate:self];
        v41 = [(EKEventEditItem *)self event];
        [(EKUITableViewCell *)p_super setEvent:v41];

        goto LABEL_40;
      }

      goto LABEL_41;
    }

    v32 = [v10 conference];

    if (v32)
    {
      v33 = [v10 cell];

      if (v33)
      {
        v34 = [v10 cell];
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if ((v35 & 1) == 0)
        {
          [EKCalendarItemLocationInlineEditItem cellForSubitemAtIndex:inEditor:];
        }

        v36 = [v10 cell];
      }

      else
      {
        v36 = [[EKUIClearButtonCell alloc] initWithStyle:3 reuseIdentifier:0];
      }

      p_super = &v36->super;
      v42 = [v10 conference];
      [(EKCalendarItemLocationInlineEditItem *)self _updateVirtualConferenceCell:p_super index:a3 virtualConference:v42];
    }

    else
    {
      p_super = [[EKUIPendingVideoConferenceCell alloc] initWithStyle:0 reuseIdentifier:0];
      v42 = [(EKUITableViewCell *)p_super clearButton];
      [(EKCalendarItemLocationInlineEditItem *)self _updateClearButtonAndMakeVisible:v42 index:a3];
    }

    v43 = [v10 conference];
    -[EKCalendarItemLocationInlineEditItem _setEditor:andUpdateScribbleInteractionOnCell:addScribbleInteraction:](self, "_setEditor:andUpdateScribbleInteractionOnCell:addScribbleInteraction:", v6, p_super, [v43 isWritable]);
LABEL_39:

LABEL_40:
    [v10 setCell:p_super];
    goto LABEL_41;
  }

  if (!v11)
  {
    viewModel = self->_viewModel;
    v27 = [(EKEventEditItem *)self event];
    v28 = [(EKUILocationEditItemModel *)viewModel shouldDisplayRowModelWithConferenceCell:v10 event:v27];

    v29 = [v10 cell];
    v30 = v29;
    if (v28)
    {

      if (v30)
      {
        v31 = [v10 cell];
      }

      else
      {
        v31 = [[EKUILocationEditItemCell alloc] initWithStyle:0 reuseIdentifier:0];
      }

      p_super = v31;
      v44 = self->_viewModel;
      v45 = [(EKEventEditItem *)self event];
      [(EKUILocationEditItemModel *)v44 refreshConferenceRoomCell:p_super event:v45];

      v43 = [(EKUITableViewCell *)p_super clearButton];
      [(EKCalendarItemLocationInlineEditItem *)self _updateClearButtonAndMakeVisible:v43 index:a3];
    }

    else
    {
      if (v29 && ([v10 cell], v37 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v38 = objc_opt_isKindOfClass(), v37, v30, (v38 & 1) != 0))
      {
        v39 = [v10 cell];
      }

      else
      {
        v39 = [[EKUIClearButtonCell alloc] initWithStyle:3 reuseIdentifier:0];
      }

      p_super = &v39->super;
      v43 = [v10 location];
      [(EKCalendarItemLocationInlineEditItem *)self _updateMapLocationCell:p_super index:a3 location:v43];
    }

    goto LABEL_39;
  }

  if (v11 == 1)
  {
    v13 = [v10 cell];

    if (v13)
    {
      v14 = [v10 cell];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if ((v15 & 1) == 0)
      {
        [EKCalendarItemLocationInlineEditItem cellForSubitemAtIndex:inEditor:];
      }

      v16 = [v10 cell];
    }

    else
    {
      v16 = [[EKUIClearButtonCell alloc] initWithStyle:3 reuseIdentifier:0];
    }

    p_super = &v16->super;
    v40 = [v10 location];
    [(EKCalendarItemLocationInlineEditItem *)self _updateMapLocationCell:p_super index:a3 location:v40];

    [(EKCalendarItemLocationInlineEditItem *)self _setEditor:v6 andUpdateScribbleInteractionOnCell:p_super addScribbleInteraction:1];
    goto LABEL_40;
  }

LABEL_41:

LABEL_42:
  [(EKUITableViewCell *)p_super setAccessibilityIdentifier:@"location-video-call-field"];
  [(EKUITableViewCell *)p_super setTag:a3];

  return p_super;
}

- (void)_updateMapLocationCell:(id)a3 index:(unint64_t)a4 location:(id)a5
{
  v22 = a5;
  v8 = a3;
  v9 = [v8 defaultContentConfiguration];
  if (![v22 isStructured])
  {
    v13 = [v22 title];
    v14 = _StringWithLineEndingsRemoved(v13);
    [v9 setText:v14];

    goto LABEL_8;
  }

  v10 = [v22 contactLabel];

  if (v10)
  {
    v11 = [v22 contactLabel];
  }

  else
  {
    v12 = [v22 title];
    if (v12)
    {
      goto LABEL_7;
    }

    v11 = [v22 address];
  }

  v12 = v11;
LABEL_7:
  [v9 setText:v12];

  v15 = [v22 address];
  v16 = _StringWithLineEndingsRemoved(v15);

  v13 = [v16 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) withCharacter:32];

  [v9 setSecondaryText:v13];
LABEL_8:

  v17 = [MEMORY[0x1E69DC888] labelColor];
  v18 = [v9 textProperties];
  [v18 setColor:v17];

  v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v20 = [v9 secondaryTextProperties];
  [v20 setColor:v19];

  [v8 setTitleSubtitleContentConfiguration:v9];
  v21 = [v8 clearButton];

  [(EKCalendarItemLocationInlineEditItem *)self _updateClearButtonAndMakeVisible:v21 index:a4];
}

- (void)_updateClearButtonAndMakeVisible:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  [v6 setTag:a4];
  [v6 addTarget:self action:sel__clearButtonTapped_ forControlEvents:64];
  [v6 setHidden:0];
}

- (void)_updateVirtualConferenceCell:(id)a3 index:(unint64_t)a4 virtualConference:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9 && ![v9 isWritable])
  {
    v11 = [v8 clearButton];
    [v11 setHidden:1];
  }

  else
  {
    v11 = [v8 clearButton];
    [(EKCalendarItemLocationInlineEditItem *)self _updateClearButtonAndMakeVisible:v11 index:a4];
  }

  v12 = MEMORY[0x1E69933C0];
  v13 = [v10 joinMethods];
  v14 = [v13 firstObject];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__EKCalendarItemLocationInlineEditItem__updateVirtualConferenceCell_index_virtualConference___block_invoke;
  v17[3] = &unk_1E84428C8;
  v18 = v8;
  v19 = v10;
  v20 = self;
  v15 = v10;
  v16 = v8;
  [v12 displayDetailsForJoinMethod:v14 completionHandler:v17];
}

void __93__EKCalendarItemLocationInlineEditItem__updateVirtualConferenceCell_index_virtualConference___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__EKCalendarItemLocationInlineEditItem__updateVirtualConferenceCell_index_virtualConference___block_invoke_2;
  v8[3] = &unk_1E8440C00;
  v9 = *(a1 + 32);
  v10 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __93__EKCalendarItemLocationInlineEditItem__updateVirtualConferenceCell_index_virtualConference___block_invoke_2(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) defaultContentConfiguration];
  [v2 setText:*(a1 + 40)];
  v3 = MEMORY[0x1E69DB7F0];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video"];
  v5 = [v4 imageWithRenderingMode:2];
  v6 = [v3 textAttachmentWithImage:v5];

  v7 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v6];
  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v7];
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  [v8 appendAttributedString:v9];

  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"Video Call" value:&stru_1F4EF6790 table:0];

  v12 = [MEMORY[0x1E69933C0] subtitleForVirtualConference:*(a1 + 48) displayedWithTitle:*(a1 + 40)];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14;

  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
  [v8 appendAttributedString:v16];

  v19 = *MEMORY[0x1E69DB650];
  v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v20[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v8 addAttributes:v18 range:{0, objc_msgSend(v8, "length")}];

  [v2 setSecondaryAttributedText:v8];
  [*(a1 + 32) setTitleSubtitleContentConfiguration:v2];
  [*(a1 + 56) notifyRequiresHeightChange];
}

- (void)_setEditor:(id)a3 andUpdateScribbleInteractionOnCell:(id)a4 addScribbleInteraction:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a3)
  {
    objc_storeWeak(&self->_editor, a3);
    v9 = [v8 interactions];
    v10 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_60];
    v11 = [v9 filteredArrayUsingPredicate:v10];

    if (v5)
    {
      if (![v11 count])
      {
        v12 = objc_alloc_init(getPKScribbleInteractionClass());
        [v12 setDelegate:self];
        [v12 setElementSource:self];
        [v8 addInteraction:v12];
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [v8 removeInteraction:{*(*(&v18 + 1) + 8 * v17++), v18}];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }
  }
}

uint64_t __109__EKCalendarItemLocationInlineEditItem__setEditor_andUpdateScribbleInteractionOnCell_addScribbleInteraction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  getPKScribbleInteractionClass();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)editor:(id)a3 canSelectSubitem:(unint64_t)a4
{
  v6 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    return 1;
  }

  v8 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v9 = [v8 objectAtIndex:a4];

  v10 = [v9 locationType] != 0;
  return v10;
}

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v32[1] = *MEMORY[0x1E69E9840];
  v10 = [(EKCalendarItemLocationInlineEditItem *)self _supportedSearchTypesForSubitemAtIndex:?];
  v11 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v12 = [v11 count];

  if (v12 <= a4)
  {
    v14 = 0;
  }

  else
  {
    v13 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v14 = [v13 objectAtIndex:a4];
  }

  v15 = [EKLocationEditItemViewController alloc];
  v16 = [(EKCalendarItemEditItem *)self calendarItem];
  WeakRetained = objc_loadWeakRetained(&self->super.super._store);
  v18 = [(EKLocationEditItemViewController *)v15 initWithFrame:v16 calendarItem:WeakRetained eventStore:x, y, width, height];

  [(EKEditItemViewController *)v18 setEditDelegate:self];
  [(EKEditItemViewController *)v18 setModal:1];
  [(EKEditItemViewController *)v18 setShowsDoneButton:0];
  [(EKLocationEditItemViewController *)v18 setSupportedSearchTypes:v10];
  v19 = [(EKUILocationEditItemModel *)self->_viewModel mapLocationRowModel];
  [(EKLocationEditItemViewController *)v18 setLocationViewModel:v19];

  v20 = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
  [(EKLocationEditItemViewController *)v18 setConferenceViewModel:v20];

  if (v14)
  {
    v21 = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
    [(EKLocationEditItemViewController *)v18 setConferenceTextFieldSelected:v14 == v21];
  }

  else
  {
    [(EKLocationEditItemViewController *)v18 setConferenceTextFieldSelected:0];
  }

  v22 = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
  if (v22)
  {
    v23 = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
    v24 = [v23 conference];
    -[EKLocationEditItemViewController setDisableConferenceTextField:](v18, "setDisableConferenceTextField:", [v24 isWritable] ^ 1);
  }

  else
  {
    [(EKLocationEditItemViewController *)v18 setDisableConferenceTextField:0];
  }

  objc_storeStrong(&self->_currentLocationEditController, v18);
  v25 = v18;
  v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v25 action:sel_cancel];
  v27 = objc_alloc(MEMORY[0x1E69DC720]);
  v32[0] = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v29 = [v27 initWithBarButtonItems:v28 representativeItem:0];

  v30 = [(EKLocationEditItemViewController *)v25 navigationItem];
  [v30 _dci_setFixedTrailingGroup:v29];

  return v25;
}

- (unint64_t)_supportedSearchTypesForSubitemAtIndex:(unint64_t)a3
{
  v5 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 2047;
  }

  v7 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v8 = [v7 objectAtIndex:a3];

  if ([v8 locationType] == 2)
  {
    v9 = [v8 conference];
    v10 = [v9 isWritable];

    if (v10)
    {
      v11 = 1536;
    }

    else
    {
      v11 = 511;
    }
  }

  else
  {
    v11 = 511;
  }

  return v11;
}

- (void)_clearButtonTapped:(id)a3
{
  v4 = [a3 tag];

  [(EKCalendarItemLocationInlineEditItem *)self _clearLocationAtIndex:v4];
}

- (void)_clearLocationAtIndex:(unint64_t)a3
{
  v5 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v11 = [v7 objectAtIndex:a3];

    if ([v11 locationType] == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_editor);
      [WeakRetained setPendingVideoConference:0];
    }

    viewModel = self->_viewModel;
    v10 = [(EKEventEditItem *)self event];
    [(EKUILocationEditItemModel *)viewModel removeRowModelAtIndex:a3 event:v10];

    [(EKCalendarItemEditItem *)self notifySubitemDidSave:a3];
  }
}

- (BOOL)isSubitemAtIndexSaveable:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(EKCalendarItemEditItem *)self calendarItem];
  v6 = [v5 location];

  v7 = [(EKCalendarItemLocationInlineEditItem *)self cellForSubitemAtIndex:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 configuration];
    v9 = [v8 text];

    v10 = [v9 isEqualToString:v6];
    if (v9)
    {
      v11 = v6 == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

LABEL_26:

    goto LABEL_27;
  }

  v14 = [v7 textLabel];

  if (v14)
  {
    v15 = [v7 editableTextField];
    if (v15)
    {
      v9 = v15;
      v16 = [v15 text];
      if ([v16 isEqualToString:v6])
      {
        v13 = 0;
      }

      else
      {
        v18 = [v9 text];
        if (v18)
        {
          v19 = v6 == 0;
        }

        else
        {
          v19 = 1;
        }

        v13 = !v19;
      }

      goto LABEL_26;
    }
  }

  v17 = kEKUILogEventEditorHandle;
  if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315138;
    v22 = "[EKCalendarItemLocationInlineEditItem isSubitemAtIndexSaveable:]";
    _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_ERROR, "%s - Location Inline Edit Item didn't have a text label on its non conference location cell; will return NO", &v21, 0xCu);
  }

  v13 = 0;
LABEL_27:

  return v13;
}

- (BOOL)editItemViewControllerSave:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (![v5 needsSave])
    {
LABEL_33:

      goto LABEL_34;
    }

    v6 = [v5 locationViewModel];
    v7 = [v5 selectedConferenceRoom];
    v8 = [v5 selectedLocation];
    if ([v5 locationViewModelRemoved])
    {
      v9 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v6;
        _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, "Removing row view model from view model: [%@]", buf, 0xCu);
      }

      viewModel = self->_viewModel;
      v11 = [(EKEventEditItem *)self event];
      [(EKUILocationEditItemModel *)viewModel removeRowModel:v6 event:v11];
    }

    else
    {
      if (v7 || !v8)
      {
        if (v7 && !v8)
        {
          v27 = kEKUILogEventEditorHandle;
          if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v33 = v7;
            _os_log_impl(&dword_1D3400000, v27, OS_LOG_TYPE_DEBUG, "Updating event with selected conference room: [%@]", buf, 0xCu);
          }

          [(EKUILocationEditItemModel *)self->_viewModel updateRowModel:v6 withConferenceRoom:v7 editItem:self];
        }

LABEL_13:
        v14 = [v5 conferenceViewModel];
        v15 = [v5 selectedVirtualConference];
        v16 = [v5 pendingVirtualConference];
        WeakRetained = objc_loadWeakRetained(&self->_editor);
        [WeakRetained setPendingVideoConference:v16];

        v18 = objc_loadWeakRetained(&self->_editor);
        LODWORD(WeakRetained) = [v18 pendingVideoConference];

        if (WeakRetained)
        {
          v19 = kEKUILogEventEditorHandle;
          if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v33 = v15;
            _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_DEBUG, "Updating event with pending virtual conference: [%@]", buf, 0xCu);
          }

          v20 = self->_viewModel;
          v21 = [(EKEventEditItem *)self event];
          v22 = v20;
          v23 = v14;
          v24 = 0;
        }

        else
        {
          if ([v5 conferenceViewModelRemoved])
          {
            v25 = kEKUILogEventEditorHandle;
            if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v33 = v14;
              _os_log_impl(&dword_1D3400000, v25, OS_LOG_TYPE_DEBUG, "Removing row view model from view model: [%@]", buf, 0xCu);
            }

            v26 = self->_viewModel;
            v21 = [(EKEventEditItem *)self event];
            [(EKUILocationEditItemModel *)v26 removeRowModel:v14 event:v21];
            goto LABEL_31;
          }

          if (!v15)
          {
LABEL_32:

            goto LABEL_33;
          }

          v28 = kEKUILogEventEditorHandle;
          if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v33 = v15;
            _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_DEBUG, "Updating event with selected virtual conference: [%@]", buf, 0xCu);
          }

          v29 = self->_viewModel;
          v21 = [(EKEventEditItem *)self event];
          v22 = v29;
          v23 = v14;
          v24 = v15;
        }

        [(EKUILocationEditItemModel *)v22 updateRowModel:v23 withVirtualConference:v24 event:v21];
LABEL_31:

        goto LABEL_32;
      }

      v12 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = v8;
        _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_DEBUG, "Updating event with selected structured location: [%@]", buf, 0xCu);
      }

      v13 = self->_viewModel;
      v11 = [(EKEventEditItem *)self event];
      [(EKUILocationEditItemModel *)v13 updateRowModel:v6 withMapLocation:v8 event:v11];
    }

    goto LABEL_13;
  }

LABEL_34:
  [(EKUILocationEditItemModel *)self->_viewModel reorderRowModels];
  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];

  return 1;
}

- (void)editItemPendingVideoConferenceCompleted:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_20:
    [(EKUILocationEditItemModel *)self->_viewModel reorderRowModels];
    [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
    goto LABEL_21;
  }

  v5 = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
  v6 = v4;
  v7 = [v6 selectedVirtualConference];
  WeakRetained = objc_loadWeakRetained(&self->_editor);
  v9 = [WeakRetained pendingVideoConference];

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_editor);
    [v10 setPendingVideoConference:0];

    v11 = [v6 pendingVirtualConferenceError];

    if (v11)
    {
      v12 = EventKitUIBundle();
      v13 = [v12 localizedStringForKey:@"Unable to Add Video Call Link" value:&stru_1F4EF6790 table:0];

      EventKitUIBundle();
      v14 = v33 = v5;
      v15 = [v14 localizedStringForKey:@"The request timed out. Try adding the video call link again." value:&stru_1F4EF6790 table:0];

      v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v15 preferredStyle:1];
      v17 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:&__block_literal_global_76];
      [v16 addAction:v17];

      v18 = objc_loadWeakRetained(&self->_editor);
      [v18 presentViewController:v16 animated:1 completion:0];

      viewModel = self->_viewModel;
      v20 = [(EKEventEditItem *)self event];
      v21 = viewModel;
      v5 = v33;
      [(EKUILocationEditItemModel *)v21 removeRowModel:v33 event:v20];
    }

    else
    {
      if (v7)
      {
        v29 = kEKUILogEventEditorHandle;
        if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = v7;
          _os_log_impl(&dword_1D3400000, v29, OS_LOG_TYPE_DEBUG, "Updating event with selected virtual conference: [%@]", buf, 0xCu);
        }

        v30 = self->_viewModel;
        v31 = [(EKEventEditItem *)self event];
        [(EKUILocationEditItemModel *)v30 updateRowModel:v5 withVirtualConference:v7 event:v31];
      }

      else
      {
        v32 = self->_viewModel;
        v31 = [(EKEventEditItem *)self event];
        [(EKUILocationEditItemModel *)v32 removeRowModel:v5 event:v31];
      }
    }

    [(EKLocationEditItemViewController *)self->_currentLocationEditController pendingVideoConferenceUpdated:v7];

    goto LABEL_20;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [v7 joinMethods];
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = MEMORY[0x1E69669E0];
        v28 = [*(*(&v34 + 1) + 8 * i) URL];
        [v27 invalidateConferenceURL:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v24);
  }

LABEL_21:
}

- (void)didTapAddSuggestedLocationCell:(id)a3 disambiguatedLocation:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  if ([WeakRetained isNew])
  {
    v7 = 3;
  }

  else
  {
    v8 = objc_loadWeakRetained(&self->super.super._calendarItem);
    if ([v8 _hasChangesForKey:@"location"])
    {
      v7 = 3;
    }

    else
    {
      v7 = 7;
    }
  }

  v9 = MEMORY[0x1E6966B10];
  v10 = objc_loadWeakRetained(&self->super.super._calendarItem);
  v11 = [v10 preferredLocation];
  v12 = [v11 predictedLOI];
  [v9 userInteractionWithPredictedLocationOfInterest:v12 interaction:v7];

  v13 = [(EKUILocationEditItemModel *)self->_viewModel indexOfPredictedLocation];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = v13;
    v36 = v5;
    v14 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v37 + 1) + 8 * i) location];
          v21 = [v20 title];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = &stru_1F4EF6790;
          }

          [v14 addObject:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    v5 = v36;
    v24 = [v36 title];
    [v14 addObject:v24];

    v25 = [v36 title];
    v26 = [MEMORY[0x1E6966A08] _locationStringForLocations:v14];
    [v36 setTitle:v26];

    v27 = [(EKEventEditItem *)self event];
    [v27 confirmPredictedLocation:v36];

    [v36 setTitle:v25];
    v28 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v29 = [v28 objectAtIndex:v35];

    viewModel = self->_viewModel;
    v31 = [(EKEventEditItem *)self event];
    [(EKUILocationEditItemModel *)viewModel updateRowModel:v29 withMapLocation:v36 event:v31];

    v32 = [(EKCalendarItemEditItem *)self delegate];
    v33 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[EKCalendarItemLocationInlineEditItem numberOfSubitems](self, "numberOfSubitems")}];
    v34 = [MEMORY[0x1E696AC90] indexSetWithIndex:v35];
    [v32 editItem:self wantsRowInsertions:0 rowDeletions:v33 rowReloads:v34];

    [(EKCalendarItemEditItem *)self notifySubitemDidSave:v35];
  }
}

- (void)didTapDismissSuggestedLocationCell:(id)a3
{
  v4 = [(EKEventEditItem *)self event];
  [v4 rejectPredictedLocation];

  WeakRetained = objc_loadWeakRetained(&self->super.super._calendarItem);
  if ([WeakRetained isNew])
  {
    v6 = 4;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->super.super._calendarItem);
    if ([v7 _hasChangesForKey:@"location"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 8;
    }
  }

  v8 = MEMORY[0x1E6966B10];
  v9 = objc_loadWeakRetained(&self->super.super._calendarItem);
  v10 = [v9 preferredLocation];
  v11 = [v10 predictedLOI];
  [v8 userInteractionWithPredictedLocationOfInterest:v11 interaction:v6];

  v12 = [(EKUILocationEditItemModel *)self->_viewModel indexOfPredictedLocation];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(EKCalendarItemLocationInlineEditItem *)self _clearLocationAtIndex:v12];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel_textFieldDidChange_ name:*MEMORY[0x1E69DE5C0] object:v5];

  [(EKCalendarItemEditItem *)self setSelectedResponder:v5];

  [(EKCalendarItemEditItem *)self notifyDidStartEditing];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69DE5C0] object:v5];

  [(EKCalendarItemEditItem *)self notifyDidEndEditing];

  [(EKCalendarItemEditItem *)self setSelectedResponder:0];
}

- (id)searchStringForEventAutocomplete
{
  v2 = [(EKCalendarItemLocationInlineEditItem *)self cellForSubitemAtIndex:0];
  v3 = [v2 textLabel];
  v4 = [v3 text];

  return v4;
}

- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  v9 = [a3 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v9;
    v5 = [v4 clearButton];
    [v5 setHidden:1];

    v6 = [v4 defaultContentConfiguration];
    [v4 setTitleSubtitleContentConfiguration:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v9 textLabel];
      [v7 setText:0];

      v8 = [v9 detailTextLabel];
      [v8 setText:0];

      [v9 setAccessoryView:0];
    }
  }
}

- (void)_scribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4
{
  v12 = [a3 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v12 tag];
    v6 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v7 = [v6 count];

    viewModel = self->_viewModel;
    if (v5 >= v7)
    {
      v10 = [(EKUILocationEditItemModel *)viewModel placeholderCellText];
      v11 = [v12 textLabel];
      [v11 setText:v10];
    }

    else
    {
      v9 = [(EKUILocationEditItemModel *)viewModel rowModels];
      v10 = [v9 objectAtIndex:v5];

      if ([v10 locationType] == 1 || !objc_msgSend(v10, "locationType"))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [EKCalendarItemLocationInlineEditItem _scribbleInteraction:didFinishWritingInElement:];
        }

        v11 = [v10 location];
        [(EKCalendarItemLocationInlineEditItem *)self _updateMapLocationCell:v12 index:v5 location:v11];
      }

      else
      {
        if ([v10 locationType] != 2)
        {
LABEL_14:

          goto LABEL_15;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [EKCalendarItemLocationInlineEditItem _scribbleInteraction:didFinishWritingInElement:];
        }

        v11 = [v10 conference];
        [(EKCalendarItemLocationInlineEditItem *)self _updateVirtualConferenceCell:v12 index:v5 virtualConference:v11];
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4
{
  v4 = [a3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_editor);

  if (WeakRetained)
  {
    v11 = [v8 view];
    v12 = [v11 tag];

    v13 = objc_loadWeakRetained(&self->_editor);
    v14 = [v13 view];
    [v14 frame];
    v15 = [(EKCalendarItemLocationInlineEditItem *)self detailViewControllerWithFrame:v12 forSubitemAtIndex:?];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      [v16 setAutoFillSelectedTextField:0];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __121__EKCalendarItemLocationInlineEditItem__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
      v20[3] = &unk_1E8442910;
      v21 = v9;
      [v16 setViewAppearedBlock:v20];
    }

    v17 = objc_loadWeakRetained(&self->_editor);
    [(EKCalendarItemEditItem *)self showViewController:v15 editor:v17 animated:1];
  }

  else
  {
    v18 = kEKUILogEventEditorHandle;
    if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_ERROR, "_Editor was nil, so couldn't call callback in focusElement.", v19, 2u);
    }

    (*(v9 + 2))(v9, 0);
  }
}

- (void)cellForSubitemAtIndex:inEditor:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)cellForSubitemAtIndex:inEditor:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)cellForSubitemAtIndex:inEditor:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_scribbleInteraction:didFinishWritingInElement:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_scribbleInteraction:didFinishWritingInElement:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end