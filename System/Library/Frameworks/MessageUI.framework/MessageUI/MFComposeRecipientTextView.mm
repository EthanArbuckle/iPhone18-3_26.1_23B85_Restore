@interface MFComposeRecipientTextView
+ (id)defaultFont;
- (BOOL)_canAddAdditionalAtoms;
- (BOOL)_delegateRespondsToSizeChange;
- (BOOL)_hasUnsafeRecipients;
- (BOOL)_textViewContainsAtomizedRecipients;
- (BOOL)_useRightToLeftLayout;
- (BOOL)containsAddress:(id)address;
- (BOOL)finishEnteringRecipient;
- (BOOL)hasContent;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MFComposeRecipientTextView)initWithFrame:(CGRect)frame;
- (MFComposeRecipientTextView)initWithFrame:(CGRect)frame dragDropDelegate:(id)delegate;
- (MFComposeRecipientTextViewDelegate)delegate;
- (NSArray)addresses;
- (NSArray)recipients;
- (NSArray)uncommentedAddresses;
- (UIColor)inactiveTextColor;
- (UIFont)baseFont;
- (_NSRange)_placeholderAttachmentRange;
- (_NSRange)_rangeForComposeRecipientAtom:(id)atom;
- (double)offsetForRowWithTextField;
- (double)textFieldOffsetForNumberOfRowsToScroll:(unint64_t)scroll numberOfRowsAboveField:(int64_t)field;
- (id)_atomAttachmentForRecipient:(id)recipient;
- (id)_atomViewAtCharacterIndex:(unint64_t)index;
- (id)_attributedStringWithAtomizedRecipients;
- (id)_baseAttributes;
- (id)_placeholderAttachmentWithStaticWidth;
- (id)_textContainerExclusionPathsWithAddButton:(BOOL)button;
- (id)_toString;
- (id)_userEnteredTextWithRange:(_NSRange *)range;
- (id)_valueForAtomLayoutOption:(id)option withRecipient:(id)recipient;
- (id)atomViewForRecipient:(id)recipient;
- (id)atomViewsInRange:(_NSRange)range;
- (id)dragPreviewForDraggedItem:(id)item withContainer:(id)container;
- (id)selectedAtoms;
- (id)undoManager;
- (unint64_t)_atomPresentationOptionsForRecipient:(id)recipient;
- (unint64_t)indexOfRecipientForInsertionAtPoint:(CGPoint)point;
- (unint64_t)numberOfRowsOfTextInField;
- (void)_addAddressAtomSubview:(id)subview;
- (void)_addButtonTapped:(id)tapped;
- (void)_addRecord:(void *)record identifier:(int)identifier;
- (void)_didRemoveRecipient:(id)recipient;
- (void)_ensureAddButton;
- (void)_ensureInactiveTextView;
- (void)_insertAtomAttachment:(id)attachment andReplaceCharactersInRange:(_NSRange)range;
- (void)_invalidateTextContainerExclusionPaths;
- (void)_longPressGestureRecognized:(id)recognized;
- (void)_notifyDelegateOfNewSize:(CGSize)size;
- (void)_notifyDelegateOfSizeChange;
- (void)_recipientsWereAdded:(id)added;
- (void)_recomputeTextContainerExclusionPaths;
- (void)_removeAddressAtomSubview:(id)subview;
- (void)_removeAllRecipients;
- (void)_resetSelectionState;
- (void)_setAddButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_setTextViewIsCollapsed:(BOOL)collapsed animated:(BOOL)animated;
- (void)_setValue:(id)value forAtomLayoutOption:(id)option withRecipient:(id)recipient;
- (void)_tapGestureRecognized:(id)recognized;
- (void)_updateAddButtonVisibility;
- (void)_updateInactiveTextView;
- (void)addAddress:(id)address;
- (void)addRecipient:(id)recipient index:(unint64_t)index animate:(BOOL)animate notify:(BOOL)notify;
- (void)addRecipient:(id)recipient notify:(BOOL)notify;
- (void)addRecord:(void *)record property:(int)property identifier:(int)identifier;
- (void)atomTextView:(id)view didChangeWritingDirection:(int64_t)direction;
- (void)atomTextViewDidBecomeFirstResponder:(id)responder;
- (void)atomTextViewDidResignFirstResponder:(id)responder;
- (void)clearText;
- (void)composeRecipientAtomShowPersonCard:(id)card;
- (void)dealloc;
- (void)deselectComposeRecipientAtom:(id)atom;
- (void)dragEnteredAtPoint:(CGPoint)point;
- (void)dragExited;
- (void)dragMovedToPoint:(CGPoint)point;
- (void)dropItems:(id)items;
- (void)invalidateAtomPresentationOptions;
- (void)invalidateAtomPresentationOptionsForRecipient:(id)recipient;
- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end;
- (void)layoutSubviews;
- (void)reflow;
- (void)refreshPreferredContentSize;
- (void)removeRecipient:(id)recipient;
- (void)selectComposeRecipientAtom:(id)atom;
- (void)setAddresses:(id)addresses;
- (void)setBaseFont:(id)font;
- (void)setBounds:(CGRect)bounds;
- (void)setDelegate:(id)delegate;
- (void)setEditable:(BOOL)editable animated:(BOOL)animated;
- (void)setExpanded:(BOOL)expanded;
- (void)setFrame:(CGRect)frame;
- (void)setInactiveTextColor:(id)color;
- (void)setLabel:(id)label;
- (void)setProperty:(int)property;
- (void)setRecipients:(id)recipients;
- (void)setSeparatorHidden:(BOOL)hidden;
- (void)setShowsAddButtonWhenExpanded:(BOOL)expanded;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
@end

@implementation MFComposeRecipientTextView

+ (id)defaultFont
{
  v2 = +[MFFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_10 forKey:@"MFComposeRecipientTextViewDefaultFont"];

  return v3;
}

id __41__MFComposeRecipientTextView_defaultFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

- (void)dealloc
{
  [(_MFAtomTextView *)self->_textView setHostRecipientView:0];
  [(_MFAtomTextView *)self->_textView setDelegate:0];
  v3.receiver = self;
  v3.super_class = MFComposeRecipientTextView;
  [(MFComposeRecipientTextView *)&v3 dealloc];
}

- (MFComposeRecipientTextView)initWithFrame:(CGRect)frame dragDropDelegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  height = [(MFComposeRecipientTextView *)self initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [[MFDragSource alloc] initWithView:height delegate:delegateCopy];
    dragSource = height->_dragSource;
    height->_dragSource = v11;

    [(MFDragSource *)height->_dragSource setAllowsDragOverridingMasterSwitch:1];
    v13 = [[MFDropTarget alloc] initWithView:height delegate:delegateCopy];
    dropTarget = height->_dropTarget;
    height->_dropTarget = v13;

    v15 = MEMORY[0x1E695DFA8];
    v16 = +[MFComposeRecipient readableTypeIdentifiersForItemProvider];
    v17 = [v15 setWithArray:v16];

    readableTypeIdentifiersForItemProvider = [MEMORY[0x1E695D1B8] readableTypeIdentifiersForItemProvider];
    [v17 addObjectsFromArray:readableTypeIdentifiersForItemProvider];

    v19 = +[MFComposeRecipients readableTypeIdentifiersForItemProvider];
    [v17 addObjectsFromArray:v19];

    [(MFDropTarget *)height->_dropTarget setAcceptableUTIs:v17];
    [(_MFAtomTextView *)height->_textView setInteractions:MEMORY[0x1E695E0F0]];
  }

  return height;
}

- (MFComposeRecipientTextView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = MFComposeRecipientTextView;
  v3 = [(MFComposeHeaderView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFComposeRecipientTextView *)v3 setClipsToBounds:1];
    v5 = [_MFAtomTextView alloc];
    [(MFComposeRecipientTextView *)v4 bounds];
    v6 = [(_MFAtomTextView *)v5 initWithFrame:?];
    textView = v4->_textView;
    v4->_textView = v6;

    textContainer = [(_MFAtomTextView *)v4->_textView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    v9 = v4->_textView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_MFAtomTextView *)v9 setBackgroundColor:clearColor];

    [(_MFAtomTextView *)v4->_textView setDelegate:v4];
    v11 = v4->_textView;
    v12 = +[MFModernAtomView defaultFont];
    [(_MFAtomTextView *)v11 setFont:v12];

    [(_MFAtomTextView *)v4->_textView setForceEnableDictation:1];
    [(_MFAtomTextView *)v4->_textView setAutocorrectionType:1];
    [(_MFAtomTextView *)v4->_textView setAutocapitalizationType:0];
    [(_MFAtomTextView *)v4->_textView setKeyboardType:7];
    [(_MFAtomTextView *)v4->_textView setBounces:0];
    [(_MFAtomTextView *)v4->_textView setAutoresizingMask:0];
    [(_MFAtomTextView *)v4->_textView setHostRecipientView:v4];
    layoutManager = [(_MFAtomTextView *)v4->_textView layoutManager];
    [layoutManager setDelegate:v4];

    layoutManager2 = [(_MFAtomTextView *)v4->_textView layoutManager];
    [layoutManager2 setAllowsNonContiguousLayout:1];

    [(_MFAtomTextView *)v4->_textView setScrollsToTop:0];
    [(MFComposeRecipientTextView *)v4 addSubview:v4->_textView];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    atomViews = v4->_atomViews;
    v4->_atomViews = v15;

    [(MFHeaderLabelView *)v4->super._labelView removeFromSuperview];
    [(_MFAtomTextView *)v4->_textView addSubview:v4->super._labelView];
    [(MFComposeRecipientTextView *)v4 _setAddButtonVisible:0 animated:0];
    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__tapGestureRecognized_];
    [v17 setCancelsTouchesInView:0];
    [(MFComposeRecipientTextView *)v4 addGestureRecognizer:v17];
    v18 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel__longPressGestureRecognized_];
    [v18 setCancelsTouchesInView:0];
    [(MFComposeRecipientTextView *)v4 addGestureRecognizer:v18];
    v4->_textViewExclusionPathsAreValid = 1;
    v4->_atomViewAnimationDepth = 0;
    v4->_parentIsClosing = 0;
    v4->_isTextFieldCollapsed = 0;
    v4->_collapsedStateInitialized = 0;
    v4->_indicatesUnsafeRecipientsWhenCollapsed = 0;
    v4->_notifyDelegateOfSizeChange = 1;
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    atomPresentationOptionsByRecipient = v4->_atomPresentationOptionsByRecipient;
    v4->_atomPresentationOptionsByRecipient = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    atomLayoutOptionsByRecipient = v4->_atomLayoutOptionsByRecipient;
    v4->_atomLayoutOptionsByRecipient = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recipientsBeingRemoved = v4->_recipientsBeingRemoved;
    v4->_recipientsBeingRemoved = v23;

    v4->_showsAddButtonWhenExpanded = 1;
    [(MFComposeRecipientTextView *)v4 setEditable:1 animated:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = MFComposeRecipientTextView;
  [(MFComposeHeaderView *)&v33 layoutSubviews];
  _useRightToLeftLayout = [(MFComposeRecipientTextView *)self _useRightToLeftLayout];
  [(MFComposeHeaderView *)self _contentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (!MFModernUIApplicationPreferredContentSizeIsAccessibility())
  {
    [(_MFAtomTextView *)self->_textView bounds];
    if (v12 <= 0.00000011920929)
    {
      textView = self;
    }

    else
    {
      textView = self->_textView;
    }

    [textView bounds];
    v11 = v14;
  }

  [(_MFAtomTextView *)self->_textView setFrame:v5, v7, v9, v11];
  [(MFComposeHeaderView *)self _recipientViewEdgeInsets];
  [(_MFAtomTextView *)self->_textView setTextContainerInset:?];
  defaultFont = [objc_opt_class() defaultFont];
  [defaultFont lineHeight];

  [(MFComposeRecipientTextView *)self bounds];
  UIRoundToViewScale();
  if (self->_addButton)
  {
    p_addButtonFrame = &self->_addButtonFrame;
    x = self->_addButtonFrame.origin.x;
    y = self->_addButtonFrame.origin.y;
    width = self->_addButtonFrame.size.width;
    height = self->_addButtonFrame.size.height;
    UIRoundToViewScale();
    self->_addButtonFrame.origin.y = v21;
    _useRightToLeftLayout2 = [(MFComposeRecipientTextView *)self _useRightToLeftLayout];
    [(MFComposeHeaderView *)self _contentRect];
    if (_useRightToLeftLayout2)
    {
      MinX = CGRectGetMinX(*&v23);
      v28 = self->_addButtonFrame.size.width;
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v23);
      v28 = self->_addButtonFrame.size.width;
      MinX = MaxX - v28;
    }

    p_addButtonFrame->origin.x = MinX;
    v30 = self->_addButtonFrame.origin.y;
    v31 = self->_addButtonFrame.size.height;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    if (!CGRectEqualToRect(*&MinX, v34))
    {
      [(UIButton *)self->_addButton setFrame:p_addButtonFrame->origin.x, self->_addButtonFrame.origin.y, self->_addButtonFrame.size.width, self->_addButtonFrame.size.height];
      [(MFComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
    }
  }

  if (![(MFComposeRecipientTextView *)self editable])
  {
    [(MFComposeRecipientTextView *)self _updateInactiveTextView];
  }

  if (_useRightToLeftLayout)
  {
    v32.receiver = self;
    v32.super_class = MFComposeRecipientTextView;
    [(MFComposeHeaderView *)&v32 layoutSubviews];
  }
}

- (void)refreshPreferredContentSize
{
  v4.receiver = self;
  v4.super_class = MFComposeRecipientTextView;
  [(MFComposeHeaderView *)&v4 refreshPreferredContentSize];
  textView = self->_textView;
  [(MFComposeHeaderView *)self _recipientViewEdgeInsets];
  [(_MFAtomTextView *)textView setTextContainerInset:?];
  [(MFComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
  [(MFComposeRecipientTextView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_MFAtomTextView *)self->_textView sizeThatFits:fits.width, fits.height];
  v5 = v4 + -2.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MFComposeRecipientTextView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = MFComposeRecipientTextView;
  [(MFComposeHeaderView *)&v16 setBounds:x, y, width, height];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(MFComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MFComposeRecipientTextView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = MFComposeRecipientTextView;
  [(MFComposeHeaderView *)&v16 setFrame:x, y, width, height];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(MFComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
  }
}

- (void)_removeAllRecipients
{
  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  v3 = [textStorage length];

  if (v3)
  {
    textStorage2 = [(_MFAtomTextView *)self->_textView textStorage];
    v4 = [textStorage2 length];

    textStorage3 = [(_MFAtomTextView *)self->_textView textStorage];
    [textStorage3 deleteCharactersInRange:{0, v4}];

    layoutManager = [(_MFAtomTextView *)self->_textView layoutManager];
    textContainer = [(_MFAtomTextView *)self->_textView textContainer];
    [layoutManager ensureLayoutForTextContainer:textContainer];
  }
}

- (void)setAddresses:(id)addresses
{
  v23 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  recipients = [(MFComposeRecipientTextView *)self recipients];
  v6 = [recipients copy];

  [(MFComposeRecipientTextView *)self _removeAllRecipients];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(addressesCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = addressesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [WeakRetained composeRecipientView:self composeRecipientForAddress:{*(*(&v18 + 1) + 8 * v12), v18}];
        if (([v8 containsObject:v13] & 1) == 0)
        {
          [(MFComposeRecipientTextView *)self addRecipient:v13 notify:0];
          [v8 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(MFComposeRecipientTextView *)self _recipientsWereAdded:v8];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v6 count];
    v15 = [v8 count];
    if (v14)
    {
      v16 = v6;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v8;
    }

    else
    {
      v17 = 0;
    }

    [WeakRetained composeRecipientView:self didReplaceRecipients:v16 withRecipients:{v17, v18}];
  }

  [(MFComposeRecipientTextView *)self _updateInactiveTextView];
  [(MFComposeRecipientTextView *)self reflow];
}

- (NSArray)recipients
{
  array = [MEMORY[0x1E695DF70] array];
  textView = self->_textView;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MFComposeRecipientTextView_recipients__block_invoke;
  v7[3] = &unk_1E806D000;
  v5 = array;
  v8 = v5;
  [(_MFAtomTextView *)textView enumerateAtoms:v7];

  return v5;
}

void __40__MFComposeRecipientTextView_recipients__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 recipient];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 recipient];
    [v4 addObject:v5];
  }
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  [(MFComposeRecipientTextView *)self _removeAllRecipients];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MFComposeRecipientTextView_setRecipients___block_invoke;
  v5[3] = &unk_1E806D028;
  v5[4] = self;
  [recipientsCopy enumerateObjectsUsingBlock:v5];
  [(MFComposeRecipientTextView *)self _updateInactiveTextView];
}

- (void)addRecipient:(id)recipient notify:(BOOL)notify
{
  notifyCopy = notify;
  recipientCopy = recipient;
  recipients = [(MFComposeRecipientTextView *)self recipients];
  -[MFComposeRecipientTextView addRecipient:index:animate:notify:](self, "addRecipient:index:animate:notify:", recipientCopy, [recipients count], 0, notifyCopy);
}

- (void)_addRecord:(void *)record identifier:(int)identifier
{
  v4 = *&identifier;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v8 = [WeakRetained composeRecipientView:self composeRecipientForRecord:record identifier:v4];

  [(MFComposeRecipientTextView *)self addRecipient:v8];
}

- (void)addRecord:(void *)record property:(int)property identifier:(int)identifier
{
  v5 = *&identifier;
  v6 = *&property;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained composeRecipientView:self composeRecipientForRecord:record property:v6 identifier:v5];
    [(MFComposeRecipientTextView *)self addRecipient:v9];
  }

  else
  {
    [(MFComposeRecipientTextView *)self _addRecord:record identifier:v5];
  }
}

- (void)addRecipient:(id)recipient index:(unint64_t)index animate:(BOOL)animate notify:(BOOL)notify
{
  notifyCopy = notify;
  animateCopy = animate;
  v27 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  if (animateCopy)
  {
    [(MFComposeRecipientTextView *)self _beginAtomViewAnimations];
  }

  if ([recipientCopy isGroup])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    children = [recipientCopy children];
    v12 = [children countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(children);
          }

          [(MFComposeRecipientTextView *)self addRecipient:*(*(&v21 + 1) + 8 * i) index:index animate:animateCopy];
        }

        v12 = [children countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (recipientCopy)
  {
    recipients = [(MFComposeRecipientTextView *)self recipients];
    v16 = [recipients containsObject:recipientCopy];

    if ((v16 & 1) == 0)
    {
      children = [(MFComposeRecipientTextView *)self _atomAttachmentForRecipient:recipientCopy];
      [(MFComposeRecipientTextView *)self _insertAtomAttachment:children atCharacterIndex:index];
      [(_MFAtomTextView *)self->_textView setSelectedRange:index + 1, 0];
      undoManager = [(MFComposeRecipientTextView *)self undoManager];
      [undoManager registerUndoWithTarget:self selector:sel_removeRecipient_ object:recipientCopy];
      if (([undoManager isUndoing] & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"ADDRESS_ADDITION" value:&stru_1F3CF3758 table:@"Main"];
        [undoManager setActionName:v19];
      }

      if (notifyCopy)
      {
        v25 = recipientCopy;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        [(MFComposeRecipientTextView *)self _recipientsWereAdded:v20];
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

- (id)undoManager
{
  undoManager = self->_undoManager;
  if (!undoManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AFC8]);
    v5 = self->_undoManager;
    self->_undoManager = v4;

    undoManager = self->_undoManager;
  }

  return undoManager;
}

- (void)_recipientsWereAdded:(id)added
{
  v16 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeRecipientView:self didAddRecipients:addedCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = addedCopy;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [WeakRetained composeRecipientView:self didAddRecipient:{*(*(&v11 + 1) + 8 * v9++), v11}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MFComposeRecipientTextViewDidChangeNotification" object:self userInfo:0];
}

- (void)_didRemoveRecipient:(id)recipient
{
  recipientCopy = recipient;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeRecipientView:self didRemoveRecipient:recipientCopy];
  }

  undoManager = [(MFComposeRecipientTextView *)self undoManager];
  [undoManager registerUndoWithTarget:self selector:sel_addRecipient_ object:recipientCopy];
  if (([undoManager isUndoing] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ADDRESS_DELETION" value:&stru_1F3CF3758 table:@"Main"];
    [undoManager setActionName:v7];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MFComposeRecipientTextViewDidChangeNotification" object:self userInfo:0];
}

- (void)removeRecipient:(id)recipient
{
  recipientCopy = recipient;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v17 = "";
  v18 = xmmword_1BE985670;
  textView = self->_textView;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __46__MFComposeRecipientTextView_removeRecipient___block_invoke;
  v11 = &unk_1E806D050;
  v6 = recipientCopy;
  v12 = v6;
  v13 = &v14;
  [(_MFAtomTextView *)textView enumerateAtomAttachments:&v8];
  if (v15[4] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(_MFAtomTextView *)self->_textView textStorage:v8];
    [v7 deleteCharactersInRange:{v15[4], v15[5]}];

    [(MFComposeRecipientTextView *)self _didRemoveRecipient:v6];
  }

  _Block_object_dispose(&v14, 8);
}

void __46__MFComposeRecipientTextView_removeRecipient___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [a2 recipient];
  v10 = [v9 isEqual:*(a1 + 32)];

  if (v10)
  {
    v11 = *(*(a1 + 40) + 8);
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    *a5 = 1;
  }
}

- (void)addAddress:(id)address
{
  addressCopy = address;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v6 = [WeakRetained composeRecipientView:self composeRecipientForAddress:addressCopy];

  if (v6)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7 = [(MFComposeRecipientTextView *)self _userEnteredTextWithRange:&v11];
    textView = self->_textView;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__MFComposeRecipientTextView_addAddress___block_invoke;
    v9[3] = &unk_1E806D078;
    v9[4] = self;
    v10 = v11;
    [(_MFAtomTextView *)textView batchTextStorageUpdates:v9];
    [(MFComposeRecipientTextView *)self addRecipient:v6 index:v11 animate:1];
    [(_MFAtomTextView *)self->_textView setSelectedRange:v11 + 1, 0];
  }
}

void __41__MFComposeRecipientTextView_addAddress___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 456) textStorage];
  [v2 deleteCharactersInRange:{a1[5], a1[6]}];
}

- (BOOL)containsAddress:(id)address
{
  addressCopy = address;
  atoms = [(_MFAtomTextView *)self->_textView atoms];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__MFComposeRecipientTextView_containsAddress___block_invoke;
  v9[3] = &unk_1E806D0A0;
  v6 = addressCopy;
  v10 = v6;
  v7 = [atoms indexesOfObjectsPassingTest:v9];
  LOBYTE(addressCopy) = [v7 count] != 0;

  return addressCopy;
}

uint64_t __46__MFComposeRecipientTextView_containsAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recipient];
  v4 = [v3 uncommentedAddress];
  v5 = [v4 ea_isEqualToEmailAddress:*(a1 + 32)];

  return v5;
}

- (void)_addButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeRecipientViewRequestAddRecipient:self];
  }
}

- (MFComposeRecipientTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = MFComposeRecipientTextView;
  [(MFComposeHeaderView *)&v3 setDelegate:delegate];
}

- (NSArray)addresses
{
  recipients = [(MFComposeRecipientTextView *)self recipients];
  v3 = [recipients arrayByApplyingSelector:sel_commentedAddress];

  return v3;
}

- (NSArray)uncommentedAddresses
{
  recipients = [(MFComposeRecipientTextView *)self recipients];
  v3 = [recipients arrayByApplyingSelector:sel_uncommentedAddress];

  return v3;
}

- (void)setEditable:(BOOL)editable animated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_editable != editable)
  {
    animatedCopy2 = animated;
    self->_editable = editable;
    collapsableUpdateTimer = self->_collapsableUpdateTimer;
    if (collapsableUpdateTimer)
    {
      [(NSTimer *)collapsableUpdateTimer invalidate];
      v7 = self->_collapsableUpdateTimer;
      self->_collapsableUpdateTimer = 0;

      editable = self->_editable;
    }

    v13 = !editable;
    if (animatedCopy2)
    {
      v8 = MEMORY[0x1E695DF50];
      v9 = [(MFComposeRecipientTextView *)self methodSignatureForSelector:sel__setTextViewIsCollapsed_animated_];
      v10 = [v8 invocationWithMethodSignature:v9];

      [v10 setTarget:self];
      [v10 setSelector:sel__setTextViewIsCollapsed_animated_];
      [v10 setArgument:&v13 atIndex:2];
      [v10 setArgument:&animatedCopy atIndex:3];
      v11 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v10 invocation:0 repeats:0.1];
      v12 = self->_collapsableUpdateTimer;
      self->_collapsableUpdateTimer = v11;
    }

    else
    {
      [MFComposeRecipientTextView _setTextViewIsCollapsed:"_setTextViewIsCollapsed:animated:" animated:?];
    }
  }
}

- (void)setSeparatorHidden:(BOOL)hidden
{
  if (self->_separatorHidden != hidden)
  {
    self->_separatorHidden = hidden;
    [(UIView *)self->super._separator setHidden:?];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  self->_expanded = expanded;
  [(MFComposeRecipientTextView *)self _updateAddButtonVisibility];

  [(MFComposeRecipientTextView *)self _recomputeTextContainerExclusionPaths];
}

- (void)_updateAddButtonVisibility
{
  v3 = self->_editable && self->_expanded && self->_showsAddButtonWhenExpanded && +[MFAddressBookManager isAuthorizedToUseAddressBook]&& [(MFComposeRecipientTextView *)self _canAddAdditionalAtoms];

  [(MFComposeRecipientTextView *)self _setAddButtonVisible:v3 animated:1];
}

- (void)setShowsAddButtonWhenExpanded:(BOOL)expanded
{
  if (self->_showsAddButtonWhenExpanded != expanded)
  {
    self->_showsAddButtonWhenExpanded = expanded;
    [(MFComposeRecipientTextView *)self _updateAddButtonVisibility];

    [(MFComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
  }
}

- (BOOL)_hasUnsafeRecipients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  textView = self->_textView;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MFComposeRecipientTextView__hasUnsafeRecipients__block_invoke;
  v5[3] = &unk_1E806D0C8;
  v5[4] = self;
  v5[5] = &v6;
  [(_MFAtomTextView *)textView enumerateAtoms:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __50__MFComposeRecipientTextView__hasUnsafeRecipients__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 recipient];
  LOBYTE(v3) = [v3 _atomPresentationOptionsForRecipient:v4];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)_userEnteredTextWithRange:(_NSRange *)range
{
  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  string = [textStorage string];

  selectedRange = [(_MFAtomTextView *)self->_textView selectedRange];
  v9 = selectedRange + v8;
  if (selectedRange + v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [string length];
  }

  v10 = [string substringToIndex:v9];
  textAttachmentCharacterSet = [MEMORY[0x1E696AB08] textAttachmentCharacterSet];
  v12 = [v10 rangeOfCharacterFromSet:textAttachmentCharacterSet options:4];
  v14 = v13;

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12 + v14;
  }

  v16 = v9 - v15;
  v17 = (v9 - v15) & ~((v9 - v15) >> 63);
  if (v15 == 0x7FFFFFFFFFFFFFFFLL || v16 <= 0)
  {
    v19 = &stru_1F3CF3758;
    if (!range)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = [string substringWithRange:{v15, v17}];
  if (range)
  {
LABEL_12:
    range->location = v15;
    range->length = v17;
  }

LABEL_13:

  return v19;
}

- (double)offsetForRowWithTextField
{
  [(MFComposeRecipientTextView *)self bounds];
  v3 = v2;
  [objc_opt_class() preferredHeight];
  return v3 - v4;
}

- (unint64_t)numberOfRowsOfTextInField
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  layoutManager = [(_MFAtomTextView *)self->_textView layoutManager];
  numberOfGlyphs = [layoutManager numberOfGlyphs];

  layoutManager2 = [(_MFAtomTextView *)self->_textView layoutManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__MFComposeRecipientTextView_numberOfRowsOfTextInField__block_invoke;
  v8[3] = &unk_1E806D0F0;
  v8[4] = &v9;
  [layoutManager2 enumerateLineFragmentsForGlyphRange:0 usingBlock:{numberOfGlyphs, v8}];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)setBaseFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_baseFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_baseFont, font);
    [(_MFAtomTextView *)self->_textView setFont:self->_baseFont];
  }
}

- (UIFont)baseFont
{
  defaultFont = self->_baseFont;
  if (!defaultFont)
  {
    defaultFont = [objc_opt_class() defaultFont];
  }

  return defaultFont;
}

- (BOOL)hasContent
{
  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  v3 = [textStorage length] != 0;

  return v3;
}

- (void)setProperty:(int)property
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&property];
  v6[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(MFComposeRecipientTextView *)self setProperties:v5];
}

- (double)textFieldOffsetForNumberOfRowsToScroll:(unint64_t)scroll numberOfRowsAboveField:(int64_t)field
{
  numberOfRowsOfTextInField = [(MFComposeRecipientTextView *)self numberOfRowsOfTextInField];
  if (field >= scroll)
  {
    fieldCopy = scroll;
  }

  else
  {
    fieldCopy = field;
  }

  v9 = scroll - fieldCopy;
  if (numberOfRowsOfTextInField < scroll - fieldCopy)
  {
    v9 = numberOfRowsOfTextInField;
  }

  if (field >= scroll)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = 0.0;
  v12 = 0.0;
  if (fieldCopy >= 1)
  {
    v13 = fieldCopy;
    [objc_opt_class() preferredHeight];
    v12 = v14 * v13;
  }

  if (v10 >= 1)
  {
    [objc_opt_class() preferredHeight];
    v16 = v15;
    [(MFComposeHeaderView *)self _recipientViewEdgeInsets];
    v11 = (v16 - v17) * v10;
  }

  return v12 + v11;
}

- (unint64_t)_atomPresentationOptionsForRecipient:(id)recipient
{
  recipientCopy = recipient;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v6 = [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient objectForKey:recipientCopy];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else if (objc_opt_respondsToSelector())
  {
    unsignedIntegerValue = [WeakRetained presentationOptionsForRecipient:recipientCopy];
    atomPresentationOptionsByRecipient = self->_atomPresentationOptionsByRecipient;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
    [(NSMutableDictionary *)atomPresentationOptionsByRecipient setObject:v10 forKey:recipientCopy];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v5.receiver = self;
  v5.super_class = MFComposeRecipientTextView;
  [(MFComposeHeaderView *)&v5 setLabel:labelCopy];
  [(MFComposeRecipientTextView *)self reflow];
  [(MFComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
}

- (UIColor)inactiveTextColor
{
  inactiveTextColor = self->_inactiveTextColor;
  if (!inactiveTextColor)
  {
    interactionTintColor = [(MFComposeRecipientTextView *)self interactionTintColor];
    v5 = [interactionTintColor copy];
    v6 = self->_inactiveTextColor;
    self->_inactiveTextColor = v5;

    inactiveTextColor = self->_inactiveTextColor;
  }

  return inactiveTextColor;
}

- (void)setInactiveTextColor:(id)color
{
  objc_storeStrong(&self->_inactiveTextColor, color);

  [(MFComposeRecipientTextView *)self _updateInactiveTextView];
}

- (id)_baseAttributes
{
  typingTextColor = [(MFComposeRecipientTextView *)self typingTextColor];

  if (typingTextColor)
  {
    v9.receiver = self;
    v9.super_class = MFComposeRecipientTextView;
    _baseAttributes = [(MFComposeHeaderView *)&v9 _baseAttributes];
    _baseAttributes2 = [_baseAttributes mutableCopy];

    typingTextColor2 = [(MFComposeRecipientTextView *)self typingTextColor];
    [_baseAttributes2 setObject:typingTextColor2 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFComposeRecipientTextView;
    _baseAttributes2 = [(MFComposeHeaderView *)&v8 _baseAttributes];
  }

  return _baseAttributes2;
}

- (void)clearText
{
  delegate = [(_MFAtomTextView *)self->_textView delegate];
  [(_MFAtomTextView *)self->_textView setDelegate:0];
  [(_MFAtomTextView *)self->_textView unmarkText];
  [(_MFAtomTextView *)self->_textView setDelegate:delegate];
  v19 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v4 = MEMORY[0x1E696AEC0];
  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  string = [textStorage string];
  v7 = [v4 stringWithString:string];

  if ([v7 length])
  {
    textAttachmentCharacterSet = [MEMORY[0x1E696AB08] textAttachmentCharacterSet];
    v9 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    v10 = 0;
    while (1)
    {
      scanLocation = [v9 scanLocation];
      if (scanLocation >= [v7 length])
      {
        break;
      }

      v23 = v10;
      v12 = [v9 scanUpToCharactersFromSet:textAttachmentCharacterSet intoString:&v23];
      v13 = v23;

      if ([v13 length])
      {
        scanLocation2 = [v9 scanLocation];
        v15 = [v13 length];
        v16 = [v13 length];
        v17 = [MEMORY[0x1E696B098] valueWithRange:{scanLocation2 - v15, v16}];
        [v19 addObject:v17];
      }

      v10 = v13;
      if (((v12 | [v9 scanCharactersFromSet:textAttachmentCharacterSet intoString:0]) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v13 = v10;
LABEL_9:
    textView = self->_textView;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __39__MFComposeRecipientTextView_clearText__block_invoke;
    v20[3] = &unk_1E806C520;
    v21 = v19;
    selfCopy = self;
    [(_MFAtomTextView *)textView batchTextStorageUpdates:v20];
  }
}

void __39__MFComposeRecipientTextView_clearText__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * v5) rangeValue];
        v8 = v7;
        v9 = [*(*(a1 + 40) + 456) textStorage];
        [v9 deleteCharactersInRange:{v6, v8}];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (void)invalidateAtomPresentationOptions
{
  [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient removeAllObjects];
  [(NSMutableDictionary *)self->_atomLayoutOptionsByRecipient removeAllObjects];

  [(MFComposeRecipientTextView *)self reflow];
}

- (void)invalidateAtomPresentationOptionsForRecipient:(id)recipient
{
  recipientCopy = recipient;
  [(NSMutableDictionary *)self->_atomPresentationOptionsByRecipient removeObjectForKey:?];
  v4 = [(MFComposeRecipientTextView *)self atomViewForRecipient:recipientCopy];
  [v4 setPresentationOptions:{-[MFComposeRecipientTextView _atomPresentationOptionsForRecipient:](self, "_atomPresentationOptionsForRecipient:", recipientCopy)}];
  [(MFComposeRecipientTextView *)self reflow];
}

- (BOOL)finishEnteringRecipient
{
  if (self->_parentIsClosing)
  {
    goto LABEL_2;
  }

  editable = [(MFComposeRecipientTextView *)self editable];
  if (!editable)
  {
    return editable;
  }

  text = [(MFComposeRecipientTextView *)self text];
  v5 = [text length];

  if (!v5)
  {
LABEL_2:
    LOBYTE(editable) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    if (objc_opt_respondsToSelector())
    {
      text2 = [(MFComposeRecipientTextView *)self text];
      [WeakRetained composeRecipientView:self didFinishEnteringAddress:text2];
    }

    LOBYTE(editable) = 1;
  }

  return editable;
}

- (BOOL)_useRightToLeftLayout
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

  return v3;
}

- (void)reflow
{
  if (![(_MFAtomTextView *)self->_textView isEditingTextStorage])
  {
    layoutManager = [(_MFAtomTextView *)self->_textView layoutManager];
    numberOfGlyphs = [layoutManager numberOfGlyphs];

    layoutManager2 = [(_MFAtomTextView *)self->_textView layoutManager];
    v6 = [layoutManager2 characterRangeForGlyphRange:0 actualGlyphRange:{numberOfGlyphs, 0}];
    v8 = v7;

    layoutManager3 = [(_MFAtomTextView *)self->_textView layoutManager];
    [layoutManager3 invalidateLayoutForCharacterRange:v6 actualCharacterRange:{v8, 0}];

    if ([(MFComposeRecipientTextView *)self _isTextViewCollapsed])
    {

      [(MFComposeRecipientTextView *)self _updateInactiveTextView];
    }
  }
}

- (id)_textContainerExclusionPathsWithAddButton:(BOOL)button
{
  buttonCopy = button;
  array = [MEMORY[0x1E695DF70] array];
  if (buttonCopy)
  {
    [(MFComposeRecipientTextView *)self _ensureAddButton];
  }

  v12.receiver = self;
  v12.super_class = MFComposeRecipientTextView;
  [(MFComposeRecipientTextView *)&v12 layoutIfNeeded];
  _useRightToLeftLayout = [(MFComposeRecipientTextView *)self _useRightToLeftLayout];
  if (_useRightToLeftLayout)
  {
    v7 = 8;
  }

  else
  {
    v7 = 2;
  }

  [(MFComposeHeaderView *)self _exclusionRectForView:self->super._labelView alongEdge:v7];
  [(MFComposeRecipientTextView *)self convertRect:self->_textView toView:?];
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
  [array addObject:v8];
  if (buttonCopy)
  {
    if (_useRightToLeftLayout)
    {
      v9 = 2;
    }

    else
    {
      v9 = 8;
    }

    [(MFComposeHeaderView *)self _exclusionRectForView:self->_addButton alongEdge:v9];
    [(MFComposeRecipientTextView *)self convertRect:self->_textView toView:?];
    v10 = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
    [array addObject:v10];
  }

  return array;
}

- (void)_recomputeTextContainerExclusionPaths
{
  if (!self->_textViewExclusionPathsAreValid)
  {
    if (self->_expanded || (-[_MFAtomTextView attributedText](self->_textView, "attributedText"), v7 = objc_claimAutoreleasedReturnValue(), v3 = [v7 length], v7, v3))
    {
      v8 = [(MFComposeRecipientTextView *)self _textContainerExclusionPathsWithAddButton:self->_showsAddButtonWhenExpanded];
      textContainer = [(_MFAtomTextView *)self->_textView textContainer];
      [textContainer setExclusionPaths:v8];

      self->_textViewExclusionPathsAreValid = 1;
      textView = self->_textView;
      _baseAttributes = [(MFComposeRecipientTextView *)self _baseAttributes];
      [(_MFAtomTextView *)textView setTypingAttributes:_baseAttributes];

      if ([(MFComposeRecipientTextView *)self _isTextViewCollapsed])
      {
        [(MFComposeRecipientTextView *)self _updateInactiveTextView];
      }
    }
  }
}

- (void)_invalidateTextContainerExclusionPaths
{
  if (self->_textViewExclusionPathsAreValid)
  {
    self->_textViewExclusionPathsAreValid = 0;
    __mui_nextRunLoopMainThreadScheduler = [MEMORY[0x1E699B978] __mui_nextRunLoopMainThreadScheduler];
    v3 = [(MFComposeRecipientTextView *)self ef_onScheduler:?];
    [v3 _recomputeTextContainerExclusionPaths];
  }
}

- (_NSRange)_rangeForComposeRecipientAtom:(id)atom
{
  atomCopy = atom;
  v5 = atomCopy;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v18 = "";
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v19 = vnegq_f64(v6);
  if (atomCopy)
  {
    textView = self->_textView;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__MFComposeRecipientTextView__rangeForComposeRecipientAtom___block_invoke;
    v12[3] = &unk_1E806D050;
    v13 = atomCopy;
    v14 = &v15;
    [(_MFAtomTextView *)textView enumerateAtomAttachments:v12];

    v9 = v16[4];
    v8 = v16[5];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v15, 8);

  v10 = v9;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

void __60__MFComposeRecipientTextView__rangeForComposeRecipientAtom___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [a2 atomView];
  v10 = *(a1 + 32);

  if (v9 == v10)
  {
    v11 = *(*(a1 + 40) + 8);
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    *a5 = 1;
  }
}

- (id)_atomViewAtCharacterIndex:(unint64_t)index
{
  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  v5 = [textStorage attributesAtIndex:index effectiveRange:0];

  v6 = [v5 objectForKey:*MEMORY[0x1E69DB5F8]];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    atomView = [v6 atomView];
  }

  else
  {
    atomView = 0;
  }

  return atomView;
}

- (void)_setValue:(id)value forAtomLayoutOption:(id)option withRecipient:(id)recipient
{
  valueCopy = value;
  optionCopy = option;
  recipientCopy = recipient;
  dictionary = [(NSMutableDictionary *)self->_atomLayoutOptionsByRecipient objectForKey:recipientCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }

  [dictionary setObject:valueCopy forKey:optionCopy];
}

- (id)_valueForAtomLayoutOption:(id)option withRecipient:(id)recipient
{
  optionCopy = option;
  v7 = [(NSMutableDictionary *)self->_atomLayoutOptionsByRecipient objectForKey:recipient];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:optionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_resetSelectionState
{
  text = [(_MFAtomTextView *)self->_textView text];
  v4 = [text length];

  [(_MFAtomTextView *)self->_textView setSelectedRange:v4, 0];
  atomViews = self->_atomViews;

  [(NSMutableArray *)atomViews enumerateObjectsUsingBlock:&__block_literal_global_131];
}

- (BOOL)_textViewContainsAtomizedRecipients
{
  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  if ([textStorage length])
  {
    recipients = [(MFComposeRecipientTextView *)self recipients];
    v5 = [recipients count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_toString
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = *MEMORY[0x1E69DB650];
  textColor = [(MFHeaderLabelView *)self->super._labelView textColor];
  v13[0] = textColor;
  v12[1] = *MEMORY[0x1E69DB648];
  font = [(MFHeaderLabelView *)self->super._labelView font];
  v13[1] = font;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  text = [(MFHeaderLabelView *)self->super._labelView text];
  v8 = text;
  if (text)
  {
    v9 = text;
  }

  else
  {
    v9 = &stru_1F3CF3758;
  }

  v10 = [v6 initWithString:v9 attributes:v5];

  return v10;
}

- (void)_ensureInactiveTextView
{
  if (!self->_inactiveTextView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD168]);
    v4 = [v3 initWithFrame:0 textContainer:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    inactiveTextView = self->_inactiveTextView;
    self->_inactiveTextView = v4;

    v6 = self->_inactiveTextView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v6 setBackgroundColor:clearColor];

    [(UITextView *)self->_inactiveTextView setEditable:0];
    [(UITextView *)self->_inactiveTextView setSelectable:0];
    [(UITextView *)self->_inactiveTextView setScrollEnabled:0];
    [(UITextView *)self->_inactiveTextView setUserInteractionEnabled:0];
    [(UITextView *)self->_inactiveTextView setHidden:!self->_isTextFieldCollapsed];
    v8 = 0.0;
    if (self->_isTextFieldCollapsed)
    {
      v8 = 1.0;
    }

    [(UITextView *)self->_inactiveTextView setAlpha:v8];
    textContainer = [(UITextView *)self->_inactiveTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    v10 = self->_inactiveTextView;

    [(MFComposeRecipientTextView *)self addSubview:v10];
  }
}

- (void)_updateInactiveTextView
{
  [(MFComposeRecipientTextView *)self _ensureInactiveTextView];
  _attributedStringWithAtomizedRecipients = [(MFComposeRecipientTextView *)self _attributedStringWithAtomizedRecipients];
  [(UITextView *)self->_inactiveTextView setAttributedText:_attributedStringWithAtomizedRecipients];

  [(UITextView *)self->_inactiveTextView frame];
  [(_MFAtomTextView *)self->_textView frame];
  v5 = v4;
  v7 = v6;
  [(_MFAtomTextView *)self->_textView frame];
  v9 = v8;
  if (MFModernUIApplicationPreferredContentSizeIsAccessibility())
  {
    [(_MFAtomTextView *)self->_textView frame];
  }

  else
  {
    +[(MFComposeHeaderView *)MFComposeRecipientTextView];
    v10 = v11;
  }

  inactiveTextView = self->_inactiveTextView;

  [(UITextView *)inactiveTextView setFrame:v5, v7, v9, v10];
}

- (id)_attributedStringWithAtomizedRecipients
{
  if ([(MFComposeRecipientTextView *)self _textViewContainsAtomizedRecipients])
  {
    _baseAttributes = [(MFComposeRecipientTextView *)self _baseAttributes];
    v4 = [_baseAttributes mutableCopy];

    if (self->_indicatesUnsafeRecipientsWhenCollapsed && [(MFComposeRecipientTextView *)self _hasUnsafeRecipients])
    {
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      [v4 setObject:systemRedColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    else
    {
      systemRedColor = [(MFComposeRecipientTextView *)self inactiveTextColor];
      [v4 setObject:systemRedColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    recipients = [(MFComposeRecipientTextView *)self recipients];
    layoutManager = [(_MFAtomTextView *)self->_textView layoutManager];
    [layoutManager lineFragmentRectForGlyphAtIndex:0 effectiveRange:0];
    v10 = v9;

    v11 = MEMORY[0x1E696AEC0];
    v12 = [recipients count];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__MFComposeRecipientTextView__attributedStringWithAtomizedRecipients__block_invoke;
    v23[3] = &unk_1E806D138;
    v13 = recipients;
    v24 = v13;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __69__MFComposeRecipientTextView__attributedStringWithAtomizedRecipients__block_invoke_2;
    v20[3] = &unk_1E806D160;
    v14 = v4;
    v21 = v14;
    v22 = v10;
    v15 = [v11 mf_commaSeparatedRecipientListWithRecipientCount:v12 prefixForRecipientAtIndex:0 stringForRecipientAtIndex:v23 lengthValidationBlock:v20];
    _toString2 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v15 attributes:v14];
    [(MFComposeHeaderView *)self _recipientViewEdgeInsets];
    [(UITextView *)self->_inactiveTextView setTextContainerInset:?];
    v16 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v16 setBounds:{0.0, 0.0, 5.0, 5.0}];
    v17 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16];
    [_toString2 insertAttributedString:v17 atIndex:0];
    _toString = [(MFComposeRecipientTextView *)self _toString];
    [_toString2 insertAttributedString:_toString atIndex:0];
  }

  else
  {
    _toString2 = [(MFComposeRecipientTextView *)self _toString];
  }

  return _toString2;
}

id __69__MFComposeRecipientTextView__attributedStringWithAtomizedRecipients__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndex:a2];
  v3 = [v2 displayString];

  return v3;
}

- (void)_setTextViewIsCollapsed:(BOOL)collapsed animated:(BOOL)animated
{
  animatedCopy = animated;
  collapsedCopy = collapsed;
  collapsableUpdateTimer = self->_collapsableUpdateTimer;
  self->_collapsableUpdateTimer = 0;

  _isTextViewCollapsed = [(MFComposeRecipientTextView *)self _isTextViewCollapsed];
  if (collapsedCopy)
  {
    v9 = ![(MFComposeRecipientTextView *)self _textViewContainsAtomizedRecipients];
  }

  else
  {
    v9 = 0;
  }

  if (!self->_collapsedStateInitialized || ((v9 | _isTextViewCollapsed ^ collapsedCopy ^ 1) & 1) == 0)
  {
    self->_collapsedStateInitialized = 1;
    self->_isTextFieldCollapsed = collapsedCopy;
    if (collapsedCopy)
    {
      [(MFComposeRecipientTextView *)self _updateInactiveTextView];
    }

    if (!MFModernUIApplicationPreferredContentSizeIsAccessibility())
    {
      [(_MFAtomTextView *)self->_textView bounds];
      [(_MFAtomTextView *)self->_textView setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__MFComposeRecipientTextView__setTextViewIsCollapsed_animated___block_invoke;
    aBlock[3] = &unk_1E806CDA8;
    aBlock[4] = self;
    v25 = collapsedCopy;
    v10 = _Block_copy(aBlock);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__MFComposeRecipientTextView__setTextViewIsCollapsed_animated___block_invoke_2;
    v22[3] = &unk_1E806CDD0;
    v22[4] = self;
    v23 = collapsedCopy;
    v11 = _Block_copy(v22);
    if (animatedCopy)
    {
      [(UITextView *)self->_inactiveTextView setHidden:0];
      if (collapsedCopy)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      [(UITextView *)self->_inactiveTextView setAlpha:v12];
      if (collapsedCopy)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.0;
      }

      [(_MFAtomTextView *)self->_textView setAlpha:v13];
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v11 completion:0.23];
    }

    else
    {
      v10[2](v10);
      v11[2](v11, 1);
    }

    if (collapsedCopy)
    {
      text = [(UITextView *)self->_inactiveTextView text];
      if ([text length])
      {
        _delegateRespondsToSizeChange = [(MFComposeRecipientTextView *)self _delegateRespondsToSizeChange];

        if (_delegateRespondsToSizeChange)
        {
          [(MFComposeRecipientTextView *)self bounds];
          v17 = v16;
          [(UITextView *)self->_inactiveTextView frame];
          [(MFComposeRecipientTextView *)self _notifyDelegateOfNewSize:v17, v18];
          [(_MFAtomTextView *)self->_textView bounds];
          [(_MFAtomTextView *)self->_textView setBounds:?];
        }

        goto LABEL_25;
      }
    }

    else
    {
      layoutManager = [(_MFAtomTextView *)self->_textView layoutManager];
      textStorage = [(_MFAtomTextView *)self->_textView textStorage];
      [layoutManager invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(textStorage, "length"), 0}];

      text = [(_MFAtomTextView *)self->_textView layoutManager];
      textContainer = [(_MFAtomTextView *)self->_textView textContainer];
      [text ensureLayoutForTextContainer:textContainer];
    }

LABEL_25:
  }
}

uint64_t __63__MFComposeRecipientTextView__setTextViewIsCollapsed_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 464) setAlpha:v2];
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *(*(a1 + 32) + 456);

  return [v4 setAlpha:v3];
}

uint64_t __63__MFComposeRecipientTextView__setTextViewIsCollapsed_animated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 464) setHidden:(*(result + 40) & 1) == 0];
  }

  return result;
}

- (void)_ensureAddButton
{
  if (!self->_addButton)
  {
    v3 = [MEMORY[0x1E69DC738] buttonWithType:5];
    addButton = self->_addButton;
    self->_addButton = v3;

    _isAddButtonVisible = [(MFComposeRecipientTextView *)self _isAddButtonVisible];
    v6 = 0.0;
    if (_isAddButtonVisible)
    {
      v6 = 1.0;
    }

    [(UIButton *)self->_addButton setAlpha:v6];
    [(UIButton *)self->_addButton setAccessibilityIdentifier:*MEMORY[0x1E69ADB10]];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ADD_CONTACT_ACCESSIBILITY_LABEL" value:&stru_1F3CF3758 table:@"Main"];
    [(UIButton *)self->_addButton setAccessibilityLabel:v8];

    [(UIButton *)self->_addButton setAutoresizingMask:0];
    [(UIButton *)self->_addButton setAutoresizesSubviews:0];
    [(UIButton *)self->_addButton addTarget:self action:sel__addButtonTapped_ forControlEvents:64];
    [(UIButton *)self->_addButton frame];
    self->_addButtonFrame.origin.x = v9;
    self->_addButtonFrame.origin.y = v10;
    self->_addButtonFrame.size.width = v11;
    self->_addButtonFrame.size.height = v12;
    v13 = self->_addButton;

    [(MFComposeRecipientTextView *)self addSubview:v13];
  }
}

- (void)_setAddButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if ([(MFComposeRecipientTextView *)self _isAddButtonVisible]!= visible)
  {
    if (visibleCopy && !self->_addButton)
    {
      [(MFComposeRecipientTextView *)self _ensureAddButton];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__MFComposeRecipientTextView__setAddButtonVisible_animated___block_invoke;
    aBlock[3] = &unk_1E806CDA8;
    aBlock[4] = self;
    v15 = visibleCopy;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (animatedCopy)
    {
      v9 = 1.0;
      if (visibleCopy)
      {
        v9 = 0.0;
      }

      [(UIButton *)self->_addButton setAlpha:v9];
      if (visibleCopy)
      {
        CGAffineTransformMakeTranslation(&v13, 2.0, 0.0);
      }

      else
      {
        v10 = *(MEMORY[0x1E695EFD0] + 16);
        *&v13.a = *MEMORY[0x1E695EFD0];
        *&v13.c = v10;
        *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
      }

      addButton = self->_addButton;
      v12 = v13;
      [(UIButton *)addButton setTransform:&v12];
      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.2];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

void __60__MFComposeRecipientTextView__setAddButtonVisible_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) addButton];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) addButton];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v5;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setTransform:v6];
}

- (void)_tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ([recognizedCopy state] == 3)
  {
    [(_MFAtomTextView *)self->_textView becomeFirstResponder];
  }
}

- (void)_longPressGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ([recognizedCopy state] == 1)
  {
    [(_MFAtomTextView *)self->_textView becomeFirstResponder];
  }
}

- (BOOL)_canAddAdditionalAtoms
{
  if (self->_maxRecipients < 1)
  {
    return 1;
  }

  recipients = [(MFComposeRecipientTextView *)self recipients];
  v4 = [recipients count] < self->_maxRecipients;

  return v4;
}

- (id)_atomAttachmentForRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [MFModernComposeRecipientAtom alloc];
  v6 = [(MFModernComposeRecipientAtom *)v5 initWithFrame:recipientCopy recipient:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MFModernAtomView *)v6 setPresentationOptions:[(MFComposeRecipientTextView *)self _atomPresentationOptionsForRecipient:recipientCopy]];
  v7 = [[_MFAtomTextAttachment alloc] initWithAtomView:v6];

  return v7;
}

- (void)_insertAtomAttachment:(id)attachment andReplaceCharactersInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachmentCopy = attachment;
  _baseAttributes = [(MFComposeRecipientTextView *)self _baseAttributes];
  v8 = [attachmentCopy attributedStringWithBaseAttributes:_baseAttributes];

  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  if (length)
  {
    [textStorage replaceCharactersInRange:location withAttributedString:{length, v8}];
  }

  else
  {
    [textStorage insertAttributedString:v8 atIndex:location];
  }

  if (![(_MFAtomTextView *)self->_textView isEditingTextStorage])
  {
    [(MFComposeRecipientTextView *)self _recomputeTextContainerExclusionPaths];
  }
}

- (void)_addAddressAtomSubview:(id)subview
{
  subviewCopy = subview;
  if (([(NSMutableArray *)self->_atomViews containsObject:?]& 1) == 0)
  {
    [subviewCopy setDelegate:self];
    [(NSMutableArray *)self->_atomViews addObject:subviewCopy];
    [(_MFAtomTextView *)self->_textView addSubview:subviewCopy];
  }
}

- (void)_removeAddressAtomSubview:(id)subview
{
  subviewCopy = subview;
  [subviewCopy setDelegate:0];
  [(NSMutableArray *)self->_atomViews removeObject:subviewCopy];
  [subviewCopy removeFromSuperview];
}

- (id)atomViewForRecipient:(id)recipient
{
  v18 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_atomViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        recipient = [v9 recipient];
        v11 = [recipient isEqual:recipientCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)atomViewsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  array = [MEMORY[0x1E695DF70] array];
  textView = self->_textView;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MFComposeRecipientTextView_atomViewsInRange___block_invoke;
  v10[3] = &unk_1E806D000;
  v8 = array;
  v11 = v8;
  [(_MFAtomTextView *)textView enumerateAtomsInCharacterRange:location withBlock:length, v10];

  return v8;
}

- (id)selectedAtoms
{
  selectedRange = [(_MFAtomTextView *)self->_textView selectedRange];

  return [(MFComposeRecipientTextView *)self atomViewsInRange:selectedRange, v3];
}

- (unint64_t)indexOfRecipientForInsertionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  atoms = [(_MFAtomTextView *)self->_textView atoms];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [atoms count];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__MFComposeRecipientTextView_indexOfRecipientForInsertionAtPoint___block_invoke;
  v8[3] = &unk_1E806D188;
  *&v8[5] = x;
  *&v8[6] = y;
  v8[4] = &v9;
  [atoms enumerateObjectsUsingBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __66__MFComposeRecipientTextView_indexOfRecipientForInsertionAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 frame];
  MaxX = CGRectGetMaxX(v11);
  [v9 frame];
  if (*(a1 + 40) < MaxX + v8 * -0.5)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  viewCopy = view;
  textCopy = text;
  if ([textCopy isEqualToString:@"\n"])
  {
    v11 = 1;
  }

  else
  {
    v11 = [textCopy isEqualToString:@"\t"];
  }

  if ([textCopy isEqualToString:{@", "}])
  {
    markedTextRange = [viewCopy markedTextRange];
    v13 = markedTextRange == 0;
  }

  else
  {
    v13 = 0;
  }

  if (((v11 | v13) & 1) == 0)
  {
    if ([textCopy isEqualToString:&stru_1F3CF3758])
    {
      if (length == 1)
      {
        v16 = [(MFComposeRecipientTextView *)self _atomViewAtCharacterIndex:location];
        v17 = v16;
        if (v16)
        {
          isSelected = [v16 isSelected];
          if (isSelected)
          {
            recipientsBeingRemoved = self->_recipientsBeingRemoved;
            recipient = [v17 recipient];
            [(NSMutableArray *)recipientsBeingRemoved addObject:recipient];
          }

          else
          {
            [(MFComposeRecipientTextView *)self selectComposeRecipientAtom:v17];
          }

          goto LABEL_19;
        }
      }

      else
      {
        textView = self->_textView;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __79__MFComposeRecipientTextView_textView_shouldChangeTextInRange_replacementText___block_invoke;
        v22[3] = &unk_1E806D000;
        v22[4] = self;
        [(_MFAtomTextView *)textView enumerateAtomsInCharacterRange:location withBlock:length, v22];
      }
    }

    LOBYTE(isSelected) = 1;
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (![(MFComposeRecipientTextView *)self finishEnteringRecipient]&& (objc_opt_respondsToSelector() & v11 & 1) != 0)
  {
    [WeakRetained composeRecipientViewReturnPressed:self];
  }

  LOBYTE(isSelected) = 0;
LABEL_19:

  return isSelected;
}

void __79__MFComposeRecipientTextView_textView_shouldChangeTextInRange_replacementText___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recipient];
  if (v3)
  {
    [*(*(a1 + 32) + 584) addObject:v3];
  }
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selectedRange = [selectionCopy selectedRange];
  v7 = v6;
  array = [MEMORY[0x1E695DF70] array];
  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  v10 = [textStorage length];

  layoutManager = [(_MFAtomTextView *)self->_textView layoutManager];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __57__MFComposeRecipientTextView_textViewDidChangeSelection___block_invoke;
  v17 = &unk_1E806D1D8;
  selfCopy = self;
  v20 = selectedRange;
  v21 = v7;
  v12 = array;
  v19 = v12;
  [layoutManager enumerateLineFragmentsForGlyphRange:0 usingBlock:{v10, &v14}];

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeRecipientView:self didSelectRecipients:{v12, v14, v15, v16, v17, selfCopy}];
  }
}

void __57__MFComposeRecipientTextView_textViewDidChangeSelection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v7 = [*(*(a1 + 32) + 456) layoutManager];
  v8 = [v7 characterRangeForGlyphRange:a3 actualGlyphRange:{a4, 0}];
  v10 = v9;

  v11 = *(*(a1 + 32) + 456);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__MFComposeRecipientTextView_textViewDidChangeSelection___block_invoke_2;
  v12[3] = &unk_1E806D1B0;
  v15 = v8;
  v16 = v10;
  v14 = v18;
  v17 = *(a1 + 48);
  v13 = *(a1 + 40);
  [v11 enumerateAtomsInCharacterRange:v8 withBlock:{v10, v12}];

  _Block_object_dispose(v18, 8);
}

void __57__MFComposeRecipientTextView_textViewDidChangeSelection___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[5] + 8) + 24) + a1[6];
  v5 = a1[8];
  v6 = a1[9];
  v7 = v4 < v5 || v4 - v5 >= v6;
  v14 = v3;
  if (v7)
  {
    if ([v3 isSelected])
    {
      [v14 setSelected:0 animated:0];
    }
  }

  else
  {
    v8 = v5 + v6 - 1;
    v9 = v4 == v5;
    v10 = 4;
    if (!v9)
    {
      v10 = 1;
    }

    if (v4 == v8)
    {
      v11 = v10 | 8;
    }

    else
    {
      v11 = v10;
    }

    [v3 setSelected:1 animated:0 style:v11];
    v12 = a1[4];
    v13 = [v14 recipient];
    [v12 addObject:v13];
  }

  ++*(*(a1[5] + 8) + 24);
}

- (void)textViewDidChange:(id)change
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_recipientsBeingRemoved count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_recipientsBeingRemoved;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [(MFComposeRecipientTextView *)self _didRemoveRecipient:*(*(&v10 + 1) + 8 * v7++), v10];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_recipientsBeingRemoved removeAllObjects];
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    text = [(MFComposeRecipientTextView *)self text];
    [WeakRetained composeRecipientView:self textDidChange:text];
  }
}

- (void)atomTextViewDidBecomeFirstResponder:(id)responder
{
  self->_didIgnoreFirstResponderResign = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained recipientViewDidBecomeFirstResponder:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeRecipientViewDidBecomeFirstResponder:self];
  }

  if (![(MFComposeRecipientTextView *)self _canAddAdditionalAtoms])
  {
    lastObject = [(NSMutableArray *)self->_atomViews lastObject];
    [lastObject setSelected:1 animated:1];
  }

  if ([(MFComposeRecipientTextView *)self editable])
  {
    [(MFComposeRecipientTextView *)self setExpanded:1];
  }
}

- (void)atomTextViewDidResignFirstResponder:(id)responder
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained recipientViewShouldIgnoreFirstResponderChanges:self])
  {
    self->_didIgnoreFirstResponderResign = 1;
  }

  else
  {
    [(MFComposeRecipientTextView *)self finishEnteringRecipient];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained recipientViewDidResignFirstResponder:self];
    }

    [(MFComposeRecipientTextView *)self _resetSelectionState];
    [(MFComposeRecipientTextView *)self setExpanded:0];
  }
}

- (void)atomTextView:(id)view didChangeWritingDirection:(int64_t)direction
{
  textView = self->_textView;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__MFComposeRecipientTextView_atomTextView_didChangeWritingDirection___block_invoke;
  v6[3] = &__block_descriptor_33_e38_v16__0__MFModernComposeRecipientAtom_8l;
  v7 = direction == 1;
  [(_MFAtomTextView *)textView enumerateAtoms:v6];
  [(MFComposeRecipientTextView *)self reflow];
}

- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end
{
  endCopy = end;
  v41 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  containerCopy = container;
  if (endCopy)
  {
    v30 = [MEMORY[0x1E695DFA8] setWithArray:self->_atomViews];
    baseWritingDirection = [(_MFAtomTextView *)self->_textView baseWritingDirection];
    textStorage = [managerCopy textStorage];
    v12 = [textStorage length];

    textStorage2 = [managerCopy textStorage];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __84__MFComposeRecipientTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke;
    v35[3] = &unk_1E806D248;
    v35[4] = self;
    v39 = baseWritingDirection;
    v14 = managerCopy;
    v36 = v14;
    v15 = containerCopy;
    v37 = v15;
    v16 = v30;
    v38 = v16;
    [textStorage2 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v35}];

    atomViewAnimationDepth = self->_atomViewAnimationDepth;
    if (atomViewAnimationDepth <= 1)
    {
      atomViewAnimationDepth = 1;
    }

    self->_atomViewAnimationDepth = atomViewAnimationDepth - 1;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v19)
    {
      v20 = *v32;
      do
      {
        v21 = 0;
        do
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [(MFComposeRecipientTextView *)self _removeAddressAtomSubview:*(*(&v31 + 1) + 8 * v21++)];
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v19);
    }

    if (self->_editable)
    {
      [(_MFAtomTextView *)self->_textView textContainerInset];
      [v14 usedRectForTextContainer:v15];
      UIRoundToViewScale();
      v23 = v22;
      [(_MFAtomTextView *)self->_textView bounds];
      v25 = v24;
      if (MFModernUIApplicationPreferredContentSizeIsAccessibility())
      {
        width = self->_currentTextRect.size.width;
        height = self->_currentTextRect.size.height;
      }

      else
      {
        [(_MFAtomTextView *)self->_textView bounds];
      }

      if (v25 != width || v23 != height)
      {
        v28 = *MEMORY[0x1E695EFF8];
        v29 = *(MEMORY[0x1E695EFF8] + 8);
        self->_currentTextRect.origin.x = *MEMORY[0x1E695EFF8];
        self->_currentTextRect.origin.y = v29;
        self->_currentTextRect.size.width = v25;
        self->_currentTextRect.size.height = v23;
        if (!MFModernUIApplicationPreferredContentSizeIsAccessibility())
        {
          [(_MFAtomTextView *)self->_textView setFrame:v28, v29, v25, v23];
        }

        [(MFComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
        [(MFComposeRecipientTextView *)self _notifyDelegateOfSizeChange];
      }
    }
  }
}

void __84__MFComposeRecipientTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 objectForKey:*MEMORY[0x1E69DB5F8]];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 atomView];
      v10 = [v8 isPlaceholder];
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        v12 = [v8 recipient];
        v13 = [*(a1 + 32) _valueForAtomLayoutOption:@"MFAtomLayoutOptionShouldBuildIn" withRecipient:v12];
        v14 = [v13 BOOLValue];

        v15 = [*(a1 + 32) _valueForAtomLayoutOption:@"MFAtomLayoutOptionShouldHide" withRecipient:v12];
        v16 = [v15 BOOLValue];

        v17 = [v9 superview];

        if (!v17)
        {
          [*(a1 + 32) _addAddressAtomSubview:v9];
          if (v16)
          {
            [v9 setAlpha:0.0];
          }

          v14 = 1;
        }

        v18 = [*(a1 + 32) _atomPresentationOptionsForRecipient:v12];
        if ([v9 presentationOptions] != v18)
        {
          [v9 setPresentationOptions:v18];
        }

        [v9 setSeparatorStyle:0];
        [v9 setSeparatorHidden:0];
        [v9 setSeparatorIsLeftAligned:*(a1 + 64) == 1];
        [*(a1 + 40) boundingRectForGlyphRange:a3 inTextContainer:{a4, *(a1 + 48)}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [v9 intrinsicContentSize];
        v26 = v25;
        [v9 frame];
        if (v24 != v28 || v26 != v27)
        {
          [v9 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v24, v26}];
          [v9 layoutSubviews];
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __84__MFComposeRecipientTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke_2;
        aBlock[3] = &unk_1E806D220;
        aBlock[4] = *(a1 + 32);
        v37 = v20;
        v38 = v22;
        v39 = v24;
        v40 = v26;
        v29 = v9;
        v35 = v29;
        v30 = *(a1 + 40);
        v31 = *(a1 + 64);
        v36 = v30;
        v41 = v31;
        v42 = v16;
        v32 = _Block_copy(aBlock);
        if (v14 & 1 | (([*(a1 + 32) _shouldAnimateAtomViewChanges] & 1) == 0))
        {
          v32[2](v32);
        }

        else
        {
          [MEMORY[0x1E69DD250] animateWithDuration:v32 animations:0.25];
        }

        if (v14 && [*(a1 + 32) _shouldAnimateAtomViewChanges])
        {
          v33 = [*(*(a1 + 32) + 456) textColor];
          [v29 performBuildInAnimationFromTextColor:v33 withDuration:0.25];
        }

        [*(a1 + 56) removeObject:v29];
      }
    }
  }
}

uint64_t __84__MFComposeRecipientTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 456) convertGlyphRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 40) titleLabel];
  [v10 frame];

  v11 = *(a1 + 64);
  [*(a1 + 48) lineFragmentUsedRectForGlyphAtIndex:0 effectiveRange:0];
  if (v11 < v12)
  {
    [*(*(a1 + 32) + 416) frame];
    CGRectGetMaxY(v20);
    [*(*(a1 + 32) + 416) _baselineOffsetFromBottom];
    v21.origin.x = v3;
    v21.origin.y = v5;
    v21.size.width = v7;
    v21.size.height = v9;
    CGRectGetHeight(v21);
    v13 = [*(a1 + 40) titleLabel];
    [v13 _baselineOffsetFromBottom];
  }

  [*(a1 + 40) edgeInsets];
  v14 = *(a1 + 40);
  v15 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v15 scale];
  UIRectIntegralWithScale();
  [v14 setFrame:?];

  v16 = 1.0;
  if (*(a1 + 96))
  {
    v16 = 0.0;
  }

  v17 = *(a1 + 40);

  return [v17 setAlpha:v16];
}

- (BOOL)_delegateRespondsToSizeChange
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (void)_notifyDelegateOfNewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeHeaderView:self didChangeSize:{width, height}];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeRecipientView:self didChangeSize:{width, height}];
  }
}

- (void)_notifyDelegateOfSizeChange
{
  if (self->_notifyDelegateOfSizeChange)
  {
    self->_notifyDelegateOfSizeChange = 0;
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__MFComposeRecipientTextView__notifyDelegateOfSizeChange__block_invoke;
    v4[3] = &unk_1E806C570;
    v4[4] = self;
    [mainQueue addOperationWithBlock:v4];
  }
}

uint64_t __57__MFComposeRecipientTextView__notifyDelegateOfSizeChange__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 456) frame];
  v3 = v2;
  v5 = v4;
  result = [*(a1 + 32) _delegateRespondsToSizeChange];
  if (result)
  {
    result = [*(a1 + 32) _notifyDelegateOfNewSize:{v3, v5}];
  }

  *(*(a1 + 32) + 565) = 1;
  return result;
}

- (id)_placeholderAttachmentWithStaticWidth
{
  v2 = [MFComposeRecipient recipientWithProperty:*MEMORY[0x1E698A340] address:@"email@me.com"];
  v3 = [MFModernComposeRecipientAtom alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = [(MFModernComposeRecipientAtom *)v3 initWithFrame:v2 recipient:*MEMORY[0x1E695F058], v5, *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MFModernAtomView *)v6 intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  v11 = [[_MFAtomTextAttachment alloc] initWithAtomView:0];
  [(_MFAtomTextAttachment *)v11 setBounds:v4, v5, v8, v10];
  [(_MFAtomTextAttachment *)v11 setIsPlaceholder:1];

  return v11;
}

- (_NSRange)_placeholderAttachmentRange
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = "";
  placeholderAttachment = [(MFComposeRecipientTextView *)self placeholderAttachment];

  if (placeholderAttachment)
  {
    textView = self->_textView;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__MFComposeRecipientTextView__placeholderAttachmentRange__block_invoke;
    v9[3] = &unk_1E806D050;
    v9[4] = self;
    v9[5] = &v10;
    [(_MFAtomTextView *)textView enumerateAtomAttachments:v9];
  }

  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

void __57__MFComposeRecipientTextView__placeholderAttachmentRange__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  v9 = [*(a1 + 32) placeholderAttachment];

  if (v9 == v11)
  {
    v10 = *(*(a1 + 40) + 8);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    *a5 = 1;
  }
}

- (id)dragPreviewForDraggedItem:(id)item withContainer:(id)container
{
  v40[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  containerCopy = container;
  v8 = [(MFComposeRecipientTextView *)self atomViewForRecipient:itemCopy];
  v9 = [MFModernComposeRecipientAtom alloc];
  [v8 frame];
  v14 = -[MFModernComposeRecipientAtom initWithFrame:recipient:presentationOptions:](v9, "initWithFrame:recipient:presentationOptions:", itemCopy, [v8 presentationOptions], v10, v11, v12, v13);
  [(MFModernAtomView *)v14 setSeparatorHidden:1];
  tintColor = [v8 tintColor];
  [(MFModernComposeRecipientAtom *)v14 setTintColor:tintColor];

  [(MFModernAtomView *)v14 setSelected:1];
  [(MFModernAtomView *)v14 layoutSubviews];
  [(MFModernComposeRecipientAtom *)v14 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(MFModernAtomView *)v14 preferredWidth];
  [(MFModernComposeRecipientAtom *)v14 setFrame:v17, v19, v22, v21];
  superview = [v8 superview];
  [(MFModernComposeRecipientAtom *)v14 center];
  [superview convertPoint:containerCopy toView:?];
  v25 = v24;
  v27 = v26;

  v28 = objc_alloc(MEMORY[0x1E69DC9A8]);
  v29 = *(MEMORY[0x1E695EFD0] + 16);
  v39[0] = *MEMORY[0x1E695EFD0];
  v39[1] = v29;
  v39[2] = *(MEMORY[0x1E695EFD0] + 32);
  v30 = [v28 initWithContainer:containerCopy center:v39 transform:{v25, v27}];
  v31 = objc_alloc(MEMORY[0x1E69DC9A0]);
  v32 = MEMORY[0x1E696B098];
  [(MFModernComposeRecipientAtom *)v14 bounds];
  v43 = CGRectInset(v42, 8.0, 8.0);
  v33 = [v32 valueWithCGRect:{v43.origin.x, v43.origin.y, v43.size.width, v43.size.height}];
  v40[0] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v35 = [v31 initWithTextLineRects:v34];

  effectiveTintColor = [(MFModernAtomView *)v14 effectiveTintColor];
  [v35 setBackgroundColor:effectiveTintColor];

  v37 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v14 parameters:v35 target:v30];

  return v37;
}

- (void)dragEnteredAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  placeholderAttachment = [(MFComposeRecipientTextView *)self placeholderAttachment];

  if (!placeholderAttachment)
  {
    _placeholderAttachmentWithStaticWidth = [(MFComposeRecipientTextView *)self _placeholderAttachmentWithStaticWidth];
    [(MFComposeRecipientTextView *)self setPlaceholderAttachment:_placeholderAttachmentWithStaticWidth];

    v14 = 0.0;
    layoutManager = [(_MFAtomTextView *)self->_textView layoutManager];
    textContainer = [(_MFAtomTextView *)self->_textView textContainer];
    v10 = [layoutManager glyphIndexForPoint:textContainer inTextContainer:&v14 fractionOfDistanceThroughGlyph:{x, y}];

    [(MFComposeRecipientTextView *)self _beginAtomViewAnimations];
    if (v14 + -1.0 >= 0.0)
    {
      v11 = v14 + -1.0;
    }

    else
    {
      v11 = -(v14 + -1.0);
    }

    placeholderAttachment2 = [(MFComposeRecipientTextView *)self placeholderAttachment];
    if (v11 >= 0.00000011920929)
    {
      [(MFComposeRecipientTextView *)self _insertAtomAttachment:placeholderAttachment2 atCharacterIndex:v10];
    }

    else
    {
      textStorage = [(_MFAtomTextView *)self->_textView textStorage];
      -[MFComposeRecipientTextView _insertAtomAttachment:atCharacterIndex:](self, "_insertAtomAttachment:atCharacterIndex:", placeholderAttachment2, [textStorage length]);
    }
  }

  [(MFComposeRecipientTextView *)self _recomputeTextContainerExclusionPaths];
}

- (void)dragMovedToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  placeholderAttachment = [(MFComposeRecipientTextView *)self placeholderAttachment];

  if (placeholderAttachment)
  {
    _placeholderAttachmentRange = [(MFComposeRecipientTextView *)self _placeholderAttachmentRange];
    v9 = v8;
    v32 = 0.0;
    layoutManager = [(_MFAtomTextView *)self->_textView layoutManager];
    textContainer = [(_MFAtomTextView *)self->_textView textContainer];
    v12 = [layoutManager glyphIndexForPoint:textContainer inTextContainer:&v32 fractionOfDistanceThroughGlyph:{x, y}];

    if (v12 - _placeholderAttachmentRange == 1)
    {
      v13 = v32;
      if (v32 <= 0.4 || v32 >= 0.9)
      {
        goto LABEL_8;
      }
    }

    else if (v12 == _placeholderAttachmentRange)
    {
      goto LABEL_8;
    }

    textStorage = [(_MFAtomTextView *)self->_textView textStorage];
    placeholderAttachment2 = [(MFComposeRecipientTextView *)self placeholderAttachment];
    _baseAttributes = [(MFComposeRecipientTextView *)self _baseAttributes];
    v17 = [placeholderAttachment2 attributedStringWithBaseAttributes:_baseAttributes];

    [(MFComposeRecipientTextView *)self _beginAtomViewAnimations];
    textView = self->_textView;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __47__MFComposeRecipientTextView_dragMovedToPoint___block_invoke;
    v26 = &unk_1E806D270;
    v19 = textStorage;
    v27 = v19;
    v29 = _placeholderAttachmentRange;
    v30 = v9;
    v20 = v17;
    v28 = v20;
    v31 = v12;
    [(_MFAtomTextView *)textView batchTextStorageUpdates:&v23];

LABEL_8:
    v21 = [(MFComposeRecipientTextView *)self recipients:v13];
    v22 = [v21 count];

    if (!v22)
    {
      [(_MFAtomTextView *)self->_textView becomeFirstResponder];
    }
  }
}

uint64_t __47__MFComposeRecipientTextView_dragMovedToPoint___block_invoke(uint64_t a1)
{
  [*(a1 + 32) deleteCharactersInRange:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);

  return [v2 insertAttributedString:v3 atIndex:v4];
}

- (void)dragExited
{
  [(MFComposeRecipientTextView *)self _beginAtomViewAnimations];
  textStorage = [(_MFAtomTextView *)self->_textView textStorage];
  _placeholderAttachmentRange = [(MFComposeRecipientTextView *)self _placeholderAttachmentRange];
  [textStorage deleteCharactersInRange:{_placeholderAttachmentRange, v5}];

  [(MFComposeRecipientTextView *)self setPlaceholderAttachment:0];
  textView = self->_textView;

  [(_MFAtomTextView *)textView resignFirstResponder];
}

- (void)dropItems:(id)items
{
  v31 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __40__MFComposeRecipientTextView_dropItems___block_invoke;
  v28[3] = &unk_1E806D028;
  v28[4] = self;
  v16 = itemsCopy;
  [itemsCopy enumerateObjectsUsingBlock:v28];
  _placeholderAttachmentRange = [(MFComposeRecipientTextView *)self _placeholderAttachmentRange];
  v7 = v6;
  [(MFComposeRecipientTextView *)self _beginAtomViewAnimations];
  textView = self->_textView;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __40__MFComposeRecipientTextView_dropItems___block_invoke_4;
  v23[3] = &unk_1E806D2E8;
  v9 = v16;
  v24 = v9;
  selfCopy = self;
  v26 = _placeholderAttachmentRange;
  v27 = v7;
  [(_MFAtomTextView *)textView batchTextStorageUpdates:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        [(MFComposeRecipientTextView *)self _beginAtomViewAnimations];
        [(MFComposeRecipientTextView *)self _setValue:MEMORY[0x1E695E110] forAtomLayoutOption:@"MFAtomLayoutOptionShouldHide" withRecipient:v13];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __40__MFComposeRecipientTextView_dropItems___block_invoke_6;
        v18[3] = &unk_1E806C520;
        v18[4] = self;
        v18[5] = v13;
        [MEMORY[0x1E69DD250] animateWithDuration:v18 animations:0.35];
        WeakRetained = objc_loadWeakRetained(&self->super._delegate);
        if (objc_opt_respondsToSelector())
        {
          v29 = v13;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          [WeakRetained composeRecipientView:self didAddRecipients:v15];
        }

        else if (objc_opt_respondsToSelector())
        {
          [WeakRetained composeRecipientView:self didAddRecipient:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v10);
  }

  [(_MFAtomTextView *)self->_textView resignFirstResponder];
  [(MFComposeRecipientTextView *)self setPlaceholderAttachment:0];
}

void __40__MFComposeRecipientTextView_dropItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 456) atoms];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__MFComposeRecipientTextView_dropItems___block_invoke_2;
  v11[3] = &unk_1E806D0A0;
  v5 = v3;
  v12 = v5;
  v6 = [v4 indexesOfObjectsPassingTest:v11];

  if ([v6 count])
  {
    v7 = [*(a1 + 32) recipients];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__MFComposeRecipientTextView_dropItems___block_invoke_3;
    v9[3] = &unk_1E806D298;
    v9[4] = *(a1 + 32);
    v10 = v7;
    v8 = v7;
    [v6 enumerateIndexesUsingBlock:v9];
  }
}

uint64_t __40__MFComposeRecipientTextView_dropItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 recipient];
  v4 = [v3 uncommentedAddress];
  v5 = [*(a1 + 32) uncommentedAddress];
  v6 = [v4 ea_isEqualToEmailAddress:v5];

  return v6;
}

void __40__MFComposeRecipientTextView_dropItems___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 removeRecipient:?];
}

uint64_t __40__MFComposeRecipientTextView_dropItems___block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__MFComposeRecipientTextView_dropItems___block_invoke_5;
  v3[3] = &unk_1E806D2C0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __40__MFComposeRecipientTextView_dropItems___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  [*(a1 + 32) _setValue:MEMORY[0x1E695E118] forAtomLayoutOption:@"MFAtomLayoutOptionShouldHide" withRecipient:?];
  v5 = [*(a1 + 32) _atomAttachmentForRecipient:v8];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    [v6 _insertAtomAttachment:v5 atCharacterIndex:v7 + a3];
  }

  else
  {
    [v6 _insertAtomAttachment:v5 andReplaceCharactersInRange:{v7, *(a1 + 48)}];
  }
}

void __40__MFComposeRecipientTextView_dropItems___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) atomViewForRecipient:*(a1 + 40)];
  [v1 setAlpha:1.0];
}

- (void)selectComposeRecipientAtom:(id)atom
{
  atomCopy = atom;
  v4 = [(MFComposeRecipientTextView *)self _rangeForComposeRecipientAtom:?];
  [(_MFAtomTextView *)self->_textView setSelectedRange:v4, v5];
}

- (void)deselectComposeRecipientAtom:(id)atom
{
  textView = self->_textView;
  textStorage = [(_MFAtomTextView *)textView textStorage];
  -[_MFAtomTextView setSelectedRange:](textView, "setSelectedRange:", [textStorage length], 0);
}

- (void)composeRecipientAtomShowPersonCard:(id)card
{
  cardCopy = card;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained composeRecipientView:self showPersonCardForAtom:cardCopy];
  }
}

@end