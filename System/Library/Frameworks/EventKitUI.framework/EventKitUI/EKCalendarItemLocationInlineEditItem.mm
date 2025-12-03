@interface EKCalendarItemLocationInlineEditItem
- (BOOL)editItemViewControllerSave:(id)save;
- (BOOL)editor:(id)editor canSelectSubitem:(unint64_t)subitem;
- (BOOL)isSaveable;
- (BOOL)isSubitemAtIndexSaveable:(unint64_t)saveable;
- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element;
- (EKCalendarItemLocationInlineEditItem)init;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)cellForSubitemAtIndex:(unint64_t)index inEditor:(id)editor;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (id)searchStringForEventAutocomplete;
- (unint64_t)_supportedSearchTypesForSubitemAtIndex:(unint64_t)index;
- (unint64_t)numberOfSubitems;
- (void)_clearButtonTapped:(id)tapped;
- (void)_clearLocationAtIndex:(unint64_t)index;
- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)_setEditor:(id)editor andUpdateScribbleInteractionOnCell:(id)cell addScribbleInteraction:(BOOL)interaction;
- (void)_updateClearButtonAndMakeVisible:(id)visible index:(unint64_t)index;
- (void)_updateMapLocationCell:(id)cell index:(unint64_t)index location:(id)location;
- (void)_updateVirtualConferenceCell:(id)cell index:(unint64_t)index virtualConference:(id)conference;
- (void)dealloc;
- (void)didTapAddSuggestedLocationCell:(id)cell disambiguatedLocation:(id)location;
- (void)didTapDismissSuggestedLocationCell:(id)cell;
- (void)editItemPendingVideoConferenceCompleted:(id)completed;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
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

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  if (EKUIUsesLargeTextLayout(0))
  {
    return *MEMORY[0x1E69DE3D0];
  }

  rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v7 = [rowModels count];

  if (v7 > index)
  {
    rowModels2 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v9 = [rowModels2 objectAtIndex:index];

    cell = [v9 cell];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      cell2 = [v9 cell];
      bannerView = [cell2 bannerView];
      [bannerView intrinsicContentSize];
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
  displaysPlaceholder = [(EKUILocationEditItemModel *)self->_viewModel displaysPlaceholder];
  rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v5 = [rowModels count] + displaysPlaceholder;

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

- (id)cellForSubitemAtIndex:(unint64_t)index inEditor:(id)editor
{
  editorCopy = editor;
  rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v8 = [rowModels count];

  if (v8 <= index)
  {
    p_super = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    placeholderCellText = [(EKUILocationEditItemModel *)self->_viewModel placeholderCellText];
    textLabel = [(EKUITableViewCell *)p_super textLabel];
    [textLabel setText:placeholderCellText];

    v19 = objc_opt_new();
    _placeholderColor = [v19 _placeholderColor];
    textLabel2 = [(EKUITableViewCell *)p_super textLabel];
    [textLabel2 setTextColor:_placeholderColor];

    [(EKCalendarItemLocationInlineEditItem *)self _setEditor:editorCopy andUpdateScribbleInteractionOnCell:p_super addScribbleInteraction:1];
    goto LABEL_42;
  }

  rowModels2 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v10 = [rowModels2 objectAtIndex:index];

  locationType = [v10 locationType];
  p_super = 0;
  if (locationType > 1)
  {
    if (locationType != 2)
    {
      if (locationType == 3)
      {
        cell = [v10 cell];

        if (cell)
        {
          cell2 = [v10 cell];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            [EKCalendarItemLocationInlineEditItem cellForSubitemAtIndex:inEditor:];
          }

          cell3 = [v10 cell];
        }

        else
        {
          cell3 = [[EKEventDetailSuggestedLocationCell alloc] initWithInlineStyle:1];
        }

        p_super = cell3;
        [(EKEventDetailSuggestedLocationCell *)cell3 setDelegate:self];
        event = [(EKEventEditItem *)self event];
        [(EKUITableViewCell *)p_super setEvent:event];

        goto LABEL_40;
      }

      goto LABEL_41;
    }

    conference = [v10 conference];

    if (conference)
    {
      cell4 = [v10 cell];

      if (cell4)
      {
        cell5 = [v10 cell];
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if ((v35 & 1) == 0)
        {
          [EKCalendarItemLocationInlineEditItem cellForSubitemAtIndex:inEditor:];
        }

        cell6 = [v10 cell];
      }

      else
      {
        cell6 = [[EKUIClearButtonCell alloc] initWithStyle:3 reuseIdentifier:0];
      }

      p_super = &cell6->super;
      conference2 = [v10 conference];
      [(EKCalendarItemLocationInlineEditItem *)self _updateVirtualConferenceCell:p_super index:index virtualConference:conference2];
    }

    else
    {
      p_super = [[EKUIPendingVideoConferenceCell alloc] initWithStyle:0 reuseIdentifier:0];
      conference2 = [(EKUITableViewCell *)p_super clearButton];
      [(EKCalendarItemLocationInlineEditItem *)self _updateClearButtonAndMakeVisible:conference2 index:index];
    }

    conference3 = [v10 conference];
    -[EKCalendarItemLocationInlineEditItem _setEditor:andUpdateScribbleInteractionOnCell:addScribbleInteraction:](self, "_setEditor:andUpdateScribbleInteractionOnCell:addScribbleInteraction:", editorCopy, p_super, [conference3 isWritable]);
LABEL_39:

LABEL_40:
    [v10 setCell:p_super];
    goto LABEL_41;
  }

  if (!locationType)
  {
    viewModel = self->_viewModel;
    event2 = [(EKEventEditItem *)self event];
    v28 = [(EKUILocationEditItemModel *)viewModel shouldDisplayRowModelWithConferenceCell:v10 event:event2];

    cell7 = [v10 cell];
    v30 = cell7;
    if (v28)
    {

      if (v30)
      {
        cell8 = [v10 cell];
      }

      else
      {
        cell8 = [[EKUILocationEditItemCell alloc] initWithStyle:0 reuseIdentifier:0];
      }

      p_super = cell8;
      v44 = self->_viewModel;
      event3 = [(EKEventEditItem *)self event];
      [(EKUILocationEditItemModel *)v44 refreshConferenceRoomCell:p_super event:event3];

      conference3 = [(EKUITableViewCell *)p_super clearButton];
      [(EKCalendarItemLocationInlineEditItem *)self _updateClearButtonAndMakeVisible:conference3 index:index];
    }

    else
    {
      if (cell7 && ([v10 cell], v37 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v38 = objc_opt_isKindOfClass(), v37, v30, (v38 & 1) != 0))
      {
        cell9 = [v10 cell];
      }

      else
      {
        cell9 = [[EKUIClearButtonCell alloc] initWithStyle:3 reuseIdentifier:0];
      }

      p_super = &cell9->super;
      conference3 = [v10 location];
      [(EKCalendarItemLocationInlineEditItem *)self _updateMapLocationCell:p_super index:index location:conference3];
    }

    goto LABEL_39;
  }

  if (locationType == 1)
  {
    cell10 = [v10 cell];

    if (cell10)
    {
      cell11 = [v10 cell];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if ((v15 & 1) == 0)
      {
        [EKCalendarItemLocationInlineEditItem cellForSubitemAtIndex:inEditor:];
      }

      cell12 = [v10 cell];
    }

    else
    {
      cell12 = [[EKUIClearButtonCell alloc] initWithStyle:3 reuseIdentifier:0];
    }

    p_super = &cell12->super;
    location = [v10 location];
    [(EKCalendarItemLocationInlineEditItem *)self _updateMapLocationCell:p_super index:index location:location];

    [(EKCalendarItemLocationInlineEditItem *)self _setEditor:editorCopy andUpdateScribbleInteractionOnCell:p_super addScribbleInteraction:1];
    goto LABEL_40;
  }

LABEL_41:

LABEL_42:
  [(EKUITableViewCell *)p_super setAccessibilityIdentifier:@"location-video-call-field"];
  [(EKUITableViewCell *)p_super setTag:index];

  return p_super;
}

- (void)_updateMapLocationCell:(id)cell index:(unint64_t)index location:(id)location
{
  locationCopy = location;
  cellCopy = cell;
  defaultContentConfiguration = [cellCopy defaultContentConfiguration];
  if (![locationCopy isStructured])
  {
    title = [locationCopy title];
    v14 = _StringWithLineEndingsRemoved(title);
    [defaultContentConfiguration setText:v14];

    goto LABEL_8;
  }

  contactLabel = [locationCopy contactLabel];

  if (contactLabel)
  {
    contactLabel2 = [locationCopy contactLabel];
  }

  else
  {
    title2 = [locationCopy title];
    if (title2)
    {
      goto LABEL_7;
    }

    contactLabel2 = [locationCopy address];
  }

  title2 = contactLabel2;
LABEL_7:
  [defaultContentConfiguration setText:title2];

  address = [locationCopy address];
  v16 = _StringWithLineEndingsRemoved(address);

  title = [v16 _stringByReplacingCharactersInSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) withCharacter:32];

  [defaultContentConfiguration setSecondaryText:title];
LABEL_8:

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:labelColor];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [cellCopy setTitleSubtitleContentConfiguration:defaultContentConfiguration];
  clearButton = [cellCopy clearButton];

  [(EKCalendarItemLocationInlineEditItem *)self _updateClearButtonAndMakeVisible:clearButton index:index];
}

- (void)_updateClearButtonAndMakeVisible:(id)visible index:(unint64_t)index
{
  visibleCopy = visible;
  [visibleCopy setTag:index];
  [visibleCopy addTarget:self action:sel__clearButtonTapped_ forControlEvents:64];
  [visibleCopy setHidden:0];
}

- (void)_updateVirtualConferenceCell:(id)cell index:(unint64_t)index virtualConference:(id)conference
{
  cellCopy = cell;
  conferenceCopy = conference;
  v10 = conferenceCopy;
  if (conferenceCopy && ![conferenceCopy isWritable])
  {
    clearButton = [cellCopy clearButton];
    [clearButton setHidden:1];
  }

  else
  {
    clearButton = [cellCopy clearButton];
    [(EKCalendarItemLocationInlineEditItem *)self _updateClearButtonAndMakeVisible:clearButton index:index];
  }

  v12 = MEMORY[0x1E69933C0];
  joinMethods = [v10 joinMethods];
  firstObject = [joinMethods firstObject];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__EKCalendarItemLocationInlineEditItem__updateVirtualConferenceCell_index_virtualConference___block_invoke;
  v17[3] = &unk_1E84428C8;
  v18 = cellCopy;
  v19 = v10;
  selfCopy = self;
  v15 = v10;
  v16 = cellCopy;
  [v12 displayDetailsForJoinMethod:firstObject completionHandler:v17];
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

- (void)_setEditor:(id)editor andUpdateScribbleInteractionOnCell:(id)cell addScribbleInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  v23 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  if (editor)
  {
    objc_storeWeak(&self->_editor, editor);
    interactions = [cellCopy interactions];
    v10 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_60];
    v11 = [interactions filteredArrayUsingPredicate:v10];

    if (interactionCopy)
    {
      if (![v11 count])
      {
        v12 = objc_alloc_init(getPKScribbleInteractionClass());
        [v12 setDelegate:self];
        [v12 setElementSource:self];
        [cellCopy addInteraction:v12];
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

            [cellCopy removeInteraction:{*(*(&v18 + 1) + 8 * v17++), v18}];
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

- (BOOL)editor:(id)editor canSelectSubitem:(unint64_t)subitem
{
  rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v7 = [rowModels count];

  if (v7 <= subitem)
  {
    return 1;
  }

  rowModels2 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v9 = [rowModels2 objectAtIndex:subitem];

  v10 = [v9 locationType] != 0;
  return v10;
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v32[1] = *MEMORY[0x1E69E9840];
  v10 = [(EKCalendarItemLocationInlineEditItem *)self _supportedSearchTypesForSubitemAtIndex:?];
  rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v12 = [rowModels count];

  if (v12 <= index)
  {
    v14 = 0;
  }

  else
  {
    rowModels2 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v14 = [rowModels2 objectAtIndex:index];
  }

  v15 = [EKLocationEditItemViewController alloc];
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  WeakRetained = objc_loadWeakRetained(&self->super.super._store);
  height = [(EKLocationEditItemViewController *)v15 initWithFrame:calendarItem calendarItem:WeakRetained eventStore:x, y, width, height];

  [(EKEditItemViewController *)height setEditDelegate:self];
  [(EKEditItemViewController *)height setModal:1];
  [(EKEditItemViewController *)height setShowsDoneButton:0];
  [(EKLocationEditItemViewController *)height setSupportedSearchTypes:v10];
  mapLocationRowModel = [(EKUILocationEditItemModel *)self->_viewModel mapLocationRowModel];
  [(EKLocationEditItemViewController *)height setLocationViewModel:mapLocationRowModel];

  virtualConferenceRowModel = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
  [(EKLocationEditItemViewController *)height setConferenceViewModel:virtualConferenceRowModel];

  if (v14)
  {
    virtualConferenceRowModel2 = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
    [(EKLocationEditItemViewController *)height setConferenceTextFieldSelected:v14 == virtualConferenceRowModel2];
  }

  else
  {
    [(EKLocationEditItemViewController *)height setConferenceTextFieldSelected:0];
  }

  virtualConferenceRowModel3 = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
  if (virtualConferenceRowModel3)
  {
    virtualConferenceRowModel4 = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
    conference = [virtualConferenceRowModel4 conference];
    -[EKLocationEditItemViewController setDisableConferenceTextField:](height, "setDisableConferenceTextField:", [conference isWritable] ^ 1);
  }

  else
  {
    [(EKLocationEditItemViewController *)height setDisableConferenceTextField:0];
  }

  objc_storeStrong(&self->_currentLocationEditController, height);
  v25 = height;
  v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v25 action:sel_cancel];
  v27 = objc_alloc(MEMORY[0x1E69DC720]);
  v32[0] = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v29 = [v27 initWithBarButtonItems:v28 representativeItem:0];

  navigationItem = [(EKLocationEditItemViewController *)v25 navigationItem];
  [navigationItem _dci_setFixedTrailingGroup:v29];

  return v25;
}

- (unint64_t)_supportedSearchTypesForSubitemAtIndex:(unint64_t)index
{
  rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v6 = [rowModels count];

  if (v6 <= index)
  {
    return 2047;
  }

  rowModels2 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v8 = [rowModels2 objectAtIndex:index];

  if ([v8 locationType] == 2)
  {
    conference = [v8 conference];
    isWritable = [conference isWritable];

    if (isWritable)
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

- (void)_clearButtonTapped:(id)tapped
{
  v4 = [tapped tag];

  [(EKCalendarItemLocationInlineEditItem *)self _clearLocationAtIndex:v4];
}

- (void)_clearLocationAtIndex:(unint64_t)index
{
  rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
  v6 = [rowModels count];

  if (v6 > index)
  {
    rowModels2 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v11 = [rowModels2 objectAtIndex:index];

    if ([v11 locationType] == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_editor);
      [WeakRetained setPendingVideoConference:0];
    }

    viewModel = self->_viewModel;
    event = [(EKEventEditItem *)self event];
    [(EKUILocationEditItemModel *)viewModel removeRowModelAtIndex:index event:event];

    [(EKCalendarItemEditItem *)self notifySubitemDidSave:index];
  }
}

- (BOOL)isSubitemAtIndexSaveable:(unint64_t)saveable
{
  v23 = *MEMORY[0x1E69E9840];
  calendarItem = [(EKCalendarItemEditItem *)self calendarItem];
  location = [calendarItem location];

  v7 = [(EKCalendarItemLocationInlineEditItem *)self cellForSubitemAtIndex:saveable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configuration = [v7 configuration];
    text = [configuration text];

    v10 = [text isEqualToString:location];
    if (text)
    {
      v11 = location == 0;
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

  textLabel = [v7 textLabel];

  if (textLabel)
  {
    editableTextField = [v7 editableTextField];
    if (editableTextField)
    {
      text = editableTextField;
      text2 = [editableTextField text];
      if ([text2 isEqualToString:location])
      {
        v13 = 0;
      }

      else
      {
        v9Text = [text text];
        if (v9Text)
        {
          v19 = location == 0;
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

- (BOOL)editItemViewControllerSave:(id)save
{
  v34 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = saveCopy;
    if (![v5 needsSave])
    {
LABEL_33:

      goto LABEL_34;
    }

    locationViewModel = [v5 locationViewModel];
    selectedConferenceRoom = [v5 selectedConferenceRoom];
    selectedLocation = [v5 selectedLocation];
    if ([v5 locationViewModelRemoved])
    {
      v9 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = locationViewModel;
        _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, "Removing row view model from view model: [%@]", buf, 0xCu);
      }

      viewModel = self->_viewModel;
      event = [(EKEventEditItem *)self event];
      [(EKUILocationEditItemModel *)viewModel removeRowModel:locationViewModel event:event];
    }

    else
    {
      if (selectedConferenceRoom || !selectedLocation)
      {
        if (selectedConferenceRoom && !selectedLocation)
        {
          v27 = kEKUILogEventEditorHandle;
          if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v33 = selectedConferenceRoom;
            _os_log_impl(&dword_1D3400000, v27, OS_LOG_TYPE_DEBUG, "Updating event with selected conference room: [%@]", buf, 0xCu);
          }

          [(EKUILocationEditItemModel *)self->_viewModel updateRowModel:locationViewModel withConferenceRoom:selectedConferenceRoom editItem:self];
        }

LABEL_13:
        conferenceViewModel = [v5 conferenceViewModel];
        selectedVirtualConference = [v5 selectedVirtualConference];
        pendingVirtualConference = [v5 pendingVirtualConference];
        WeakRetained = objc_loadWeakRetained(&self->_editor);
        [WeakRetained setPendingVideoConference:pendingVirtualConference];

        v18 = objc_loadWeakRetained(&self->_editor);
        LODWORD(WeakRetained) = [v18 pendingVideoConference];

        if (WeakRetained)
        {
          v19 = kEKUILogEventEditorHandle;
          if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v33 = selectedVirtualConference;
            _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_DEBUG, "Updating event with pending virtual conference: [%@]", buf, 0xCu);
          }

          v20 = self->_viewModel;
          event2 = [(EKEventEditItem *)self event];
          v22 = v20;
          v23 = conferenceViewModel;
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
              v33 = conferenceViewModel;
              _os_log_impl(&dword_1D3400000, v25, OS_LOG_TYPE_DEBUG, "Removing row view model from view model: [%@]", buf, 0xCu);
            }

            v26 = self->_viewModel;
            event2 = [(EKEventEditItem *)self event];
            [(EKUILocationEditItemModel *)v26 removeRowModel:conferenceViewModel event:event2];
            goto LABEL_31;
          }

          if (!selectedVirtualConference)
          {
LABEL_32:

            goto LABEL_33;
          }

          v28 = kEKUILogEventEditorHandle;
          if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v33 = selectedVirtualConference;
            _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_DEBUG, "Updating event with selected virtual conference: [%@]", buf, 0xCu);
          }

          v29 = self->_viewModel;
          event2 = [(EKEventEditItem *)self event];
          v22 = v29;
          v23 = conferenceViewModel;
          v24 = selectedVirtualConference;
        }

        [(EKUILocationEditItemModel *)v22 updateRowModel:v23 withVirtualConference:v24 event:event2];
LABEL_31:

        goto LABEL_32;
      }

      v12 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v33 = selectedLocation;
        _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_DEBUG, "Updating event with selected structured location: [%@]", buf, 0xCu);
      }

      v13 = self->_viewModel;
      event = [(EKEventEditItem *)self event];
      [(EKUILocationEditItemModel *)v13 updateRowModel:locationViewModel withMapLocation:selectedLocation event:event];
    }

    goto LABEL_13;
  }

LABEL_34:
  [(EKUILocationEditItemModel *)self->_viewModel reorderRowModels];
  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];

  return 1;
}

- (void)editItemPendingVideoConferenceCompleted:(id)completed
{
  v41 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_20:
    [(EKUILocationEditItemModel *)self->_viewModel reorderRowModels];
    [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
    goto LABEL_21;
  }

  virtualConferenceRowModel = [(EKUILocationEditItemModel *)self->_viewModel virtualConferenceRowModel];
  v6 = completedCopy;
  selectedVirtualConference = [v6 selectedVirtualConference];
  WeakRetained = objc_loadWeakRetained(&self->_editor);
  pendingVideoConference = [WeakRetained pendingVideoConference];

  if (pendingVideoConference)
  {
    v10 = objc_loadWeakRetained(&self->_editor);
    [v10 setPendingVideoConference:0];

    pendingVirtualConferenceError = [v6 pendingVirtualConferenceError];

    if (pendingVirtualConferenceError)
    {
      v12 = EventKitUIBundle();
      v13 = [v12 localizedStringForKey:@"Unable to Add Video Call Link" value:&stru_1F4EF6790 table:0];

      EventKitUIBundle();
      v14 = v33 = virtualConferenceRowModel;
      v15 = [v14 localizedStringForKey:@"The request timed out. Try adding the video call link again." value:&stru_1F4EF6790 table:0];

      v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v15 preferredStyle:1];
      v17 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:&__block_literal_global_76];
      [v16 addAction:v17];

      v18 = objc_loadWeakRetained(&self->_editor);
      [v18 presentViewController:v16 animated:1 completion:0];

      viewModel = self->_viewModel;
      event = [(EKEventEditItem *)self event];
      v21 = viewModel;
      virtualConferenceRowModel = v33;
      [(EKUILocationEditItemModel *)v21 removeRowModel:v33 event:event];
    }

    else
    {
      if (selectedVirtualConference)
      {
        v29 = kEKUILogEventEditorHandle;
        if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = selectedVirtualConference;
          _os_log_impl(&dword_1D3400000, v29, OS_LOG_TYPE_DEBUG, "Updating event with selected virtual conference: [%@]", buf, 0xCu);
        }

        v30 = self->_viewModel;
        event2 = [(EKEventEditItem *)self event];
        [(EKUILocationEditItemModel *)v30 updateRowModel:virtualConferenceRowModel withVirtualConference:selectedVirtualConference event:event2];
      }

      else
      {
        v32 = self->_viewModel;
        event2 = [(EKEventEditItem *)self event];
        [(EKUILocationEditItemModel *)v32 removeRowModel:virtualConferenceRowModel event:event2];
      }
    }

    [(EKLocationEditItemViewController *)self->_currentLocationEditController pendingVideoConferenceUpdated:selectedVirtualConference];

    goto LABEL_20;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  joinMethods = [selectedVirtualConference joinMethods];
  v23 = [joinMethods countByEnumeratingWithState:&v34 objects:v40 count:16];
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
          objc_enumerationMutation(joinMethods);
        }

        v27 = MEMORY[0x1E69669E0];
        v28 = [*(*(&v34 + 1) + 8 * i) URL];
        [v27 invalidateConferenceURL:v28];
      }

      v24 = [joinMethods countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v24);
  }

LABEL_21:
}

- (void)didTapAddSuggestedLocationCell:(id)cell disambiguatedLocation:(id)location
{
  v42 = *MEMORY[0x1E69E9840];
  locationCopy = location;
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
  preferredLocation = [v10 preferredLocation];
  predictedLOI = [preferredLocation predictedLOI];
  [v9 userInteractionWithPredictedLocationOfInterest:predictedLOI interaction:v7];

  indexOfPredictedLocation = [(EKUILocationEditItemModel *)self->_viewModel indexOfPredictedLocation];
  if (indexOfPredictedLocation != 0x7FFFFFFFFFFFFFFFLL)
  {
    v35 = indexOfPredictedLocation;
    v36 = locationCopy;
    array = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v16 = [rowModels countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(rowModels);
          }

          location = [*(*(&v37 + 1) + 8 * i) location];
          title = [location title];
          v22 = title;
          if (title)
          {
            v23 = title;
          }

          else
          {
            v23 = &stru_1F4EF6790;
          }

          [array addObject:v23];
        }

        v17 = [rowModels countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    locationCopy = v36;
    title2 = [v36 title];
    [array addObject:title2];

    title3 = [v36 title];
    v26 = [MEMORY[0x1E6966A08] _locationStringForLocations:array];
    [v36 setTitle:v26];

    event = [(EKEventEditItem *)self event];
    [event confirmPredictedLocation:v36];

    [v36 setTitle:title3];
    rowModels2 = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v29 = [rowModels2 objectAtIndex:v35];

    viewModel = self->_viewModel;
    event2 = [(EKEventEditItem *)self event];
    [(EKUILocationEditItemModel *)viewModel updateRowModel:v29 withMapLocation:v36 event:event2];

    delegate = [(EKCalendarItemEditItem *)self delegate];
    v33 = [MEMORY[0x1E696AC90] indexSetWithIndex:{-[EKCalendarItemLocationInlineEditItem numberOfSubitems](self, "numberOfSubitems")}];
    v34 = [MEMORY[0x1E696AC90] indexSetWithIndex:v35];
    [delegate editItem:self wantsRowInsertions:0 rowDeletions:v33 rowReloads:v34];

    [(EKCalendarItemEditItem *)self notifySubitemDidSave:v35];
  }
}

- (void)didTapDismissSuggestedLocationCell:(id)cell
{
  event = [(EKEventEditItem *)self event];
  [event rejectPredictedLocation];

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
  preferredLocation = [v9 preferredLocation];
  predictedLOI = [preferredLocation predictedLOI];
  [v8 userInteractionWithPredictedLocationOfInterest:predictedLOI interaction:v6];

  indexOfPredictedLocation = [(EKUILocationEditItemModel *)self->_viewModel indexOfPredictedLocation];
  if (indexOfPredictedLocation != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(EKCalendarItemLocationInlineEditItem *)self _clearLocationAtIndex:indexOfPredictedLocation];
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = MEMORY[0x1E696AD88];
  editingCopy = editing;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel_textFieldDidChange_ name:*MEMORY[0x1E69DE5C0] object:editingCopy];

  [(EKCalendarItemEditItem *)self setSelectedResponder:editingCopy];

  [(EKCalendarItemEditItem *)self notifyDidStartEditing];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v4 = MEMORY[0x1E696AD88];
  editingCopy = editing;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE5C0] object:editingCopy];

  [(EKCalendarItemEditItem *)self notifyDidEndEditing];

  [(EKCalendarItemEditItem *)self setSelectedResponder:0];
}

- (id)searchStringForEventAutocomplete
{
  v2 = [(EKCalendarItemLocationInlineEditItem *)self cellForSubitemAtIndex:0];
  textLabel = [v2 textLabel];
  text = [textLabel text];

  return text;
}

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  view = [interaction view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = view;
    clearButton = [v4 clearButton];
    [clearButton setHidden:1];

    defaultContentConfiguration = [v4 defaultContentConfiguration];
    [v4 setTitleSubtitleContentConfiguration:defaultContentConfiguration];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textLabel = [view textLabel];
      [textLabel setText:0];

      detailTextLabel = [view detailTextLabel];
      [detailTextLabel setText:0];

      [view setAccessoryView:0];
    }
  }
}

- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  view = [interaction view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [view tag];
    rowModels = [(EKUILocationEditItemModel *)self->_viewModel rowModels];
    v7 = [rowModels count];

    viewModel = self->_viewModel;
    if (v5 >= v7)
    {
      placeholderCellText = [(EKUILocationEditItemModel *)viewModel placeholderCellText];
      textLabel = [view textLabel];
      [textLabel setText:placeholderCellText];
    }

    else
    {
      rowModels2 = [(EKUILocationEditItemModel *)viewModel rowModels];
      placeholderCellText = [rowModels2 objectAtIndex:v5];

      if ([placeholderCellText locationType] == 1 || !objc_msgSend(placeholderCellText, "locationType"))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [EKCalendarItemLocationInlineEditItem _scribbleInteraction:didFinishWritingInElement:];
        }

        textLabel = [placeholderCellText location];
        [(EKCalendarItemLocationInlineEditItem *)self _updateMapLocationCell:view index:v5 location:textLabel];
      }

      else
      {
        if ([placeholderCellText locationType] != 2)
        {
LABEL_14:

          goto LABEL_15;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [EKCalendarItemLocationInlineEditItem _scribbleInteraction:didFinishWritingInElement:];
        }

        textLabel = [placeholderCellText conference];
        [(EKCalendarItemLocationInlineEditItem *)self _updateVirtualConferenceCell:view index:v5 virtualConference:textLabel];
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element
{
  view = [interaction view];
  [view bounds];
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

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  interactionCopy = interaction;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_editor);

  if (WeakRetained)
  {
    view = [interactionCopy view];
    v12 = [view tag];

    v13 = objc_loadWeakRetained(&self->_editor);
    view2 = [v13 view];
    [view2 frame];
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
      v21 = completionCopy;
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

    (*(completionCopy + 2))(completionCopy, 0);
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