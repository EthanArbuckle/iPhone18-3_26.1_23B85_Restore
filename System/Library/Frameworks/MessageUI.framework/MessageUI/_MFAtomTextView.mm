@interface _MFAtomTextView
- (BOOL)_delegateSupportsKeyboardEvents;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (CGRect)convertGlyphRect:(CGRect)rect;
- (MFComposeRecipientTextView)hostRecipientView;
- (NSArray)atoms;
- (_MFAtomTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)selectionRectsForRange:(id)range;
- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction;
- (id)undoManager;
- (int64_t)baseWritingDirection;
- (void)_handleKeyUIEvent:(id)event;
- (void)batchTextStorageUpdates:(id)updates;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)enumerateAtomAttachments:(id)attachments;
- (void)enumerateAtoms:(id)atoms;
- (void)enumerateAtomsInCharacterRange:(_NSRange)range withBlock:(id)block;
- (void)makeTextWritingDirectionLeftToRight:(id)right;
- (void)makeTextWritingDirectionRightToLeft:(id)left;
- (void)paste:(id)paste;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation _MFAtomTextView

- (_MFAtomTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = _MFAtomTextView;
  height = [(_MFAtomTextView *)&v15 initWithFrame:containerCopy textContainer:x, y, width, height];
  v11 = height;
  if (height)
  {
    v14.receiver = height;
    v14.super_class = _MFAtomTextView;
    undoManager = [(_MFAtomTextView *)&v14 undoManager];
    [undoManager disableUndoRegistration];

    v11->_textStorageEditingDepth = 0;
  }

  return v11;
}

- (NSArray)atoms
{
  array = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24___MFAtomTextView_atoms__block_invoke;
  v6[3] = &unk_1E806D000;
  v4 = array;
  v7 = v4;
  [(_MFAtomTextView *)self enumerateAtoms:v6];

  return v4;
}

- (CGRect)convertGlyphRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(_MFAtomTextView *)self textContainerInset];
  v9 = y + v8;
  [(_MFAtomTextView *)self textContainerInset];
  v11 = x + v10;
  v12 = v9;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)enumerateAtoms:(id)atoms
{
  atomsCopy = atoms;
  textStorage = [(_MFAtomTextView *)self textStorage];
  -[_MFAtomTextView enumerateAtomsInCharacterRange:withBlock:](self, "enumerateAtomsInCharacterRange:withBlock:", 0, [textStorage length], atomsCopy);
}

- (void)enumerateAtomsInCharacterRange:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  textStorage = [(_MFAtomTextView *)self textStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60___MFAtomTextView_enumerateAtomsInCharacterRange_withBlock___block_invoke;
  v10[3] = &unk_1E806D310;
  v9 = blockCopy;
  v11 = v9;
  [textStorage enumerateAttributesInRange:location options:length usingBlock:{0, v10}];
}

- (void)enumerateAtomAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  textStorage = [(_MFAtomTextView *)self textStorage];
  textStorage2 = [(_MFAtomTextView *)self textStorage];
  v7 = [textStorage2 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44___MFAtomTextView_enumerateAtomAttachments___block_invoke;
  v9[3] = &unk_1E806D310;
  v8 = attachmentsCopy;
  v10 = v8;
  [textStorage enumerateAttributesInRange:0 options:v7 usingBlock:{0, v9}];
}

- (void)batchTextStorageUpdates:(id)updates
{
  updatesCopy = updates;
  ++self->_textStorageEditingDepth;
  textStorage = [(_MFAtomTextView *)self textStorage];
  [textStorage beginEditing];

  updatesCopy[2]();
  --self->_textStorageEditingDepth;
  textStorage2 = [(_MFAtomTextView *)self textStorage];
  [textStorage2 endEditing];

  hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
  [hostRecipientView _recomputeTextContainerExclusionPaths];
}

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = _MFAtomTextView;
  becomeFirstResponder = [(_MFAtomTextView *)&v8 becomeFirstResponder];
  hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
  v5 = hostRecipientView;
  if (becomeFirstResponder && hostRecipientView != 0)
  {
    [hostRecipientView atomTextViewDidBecomeFirstResponder:self];
  }

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = _MFAtomTextView;
  resignFirstResponder = [(_MFAtomTextView *)&v8 resignFirstResponder];
  hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
  v5 = hostRecipientView;
  if (resignFirstResponder && hostRecipientView != 0)
  {
    [hostRecipientView atomTextViewDidResignFirstResponder:self];
  }

  return resignFirstResponder;
}

- (id)selectionRectsForRange:(id)range
{
  array = [MEMORY[0x1E695DF70] array];
  selectedRange = [(_MFAtomTextView *)self selectedRange];
  v7 = v6;
  textStorage = [(_MFAtomTextView *)self textStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42___MFAtomTextView_selectionRectsForRange___block_invoke;
  v13[3] = &unk_1E806D338;
  v15 = selectedRange;
  v16 = v7;
  v13[4] = self;
  v9 = array;
  v14 = v9;
  [textStorage enumerateAttributesInRange:selectedRange options:v7 usingBlock:{0, v13}];

  v10 = v14;
  v11 = v9;

  return v9;
}

- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction
{
  v8.receiver = self;
  v8.super_class = _MFAtomTextView;
  v4 = [(_MFAtomTextView *)&v8 textStylingAtPosition:position inDirection:direction];
  v5 = [v4 mutableCopy];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v5 setObject:clearColor forKey:*MEMORY[0x1E69DB600]];

  return v5;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (MFModernUIApplicationPreferredContentSizeIsAccessibility())
  {
    v6.receiver = self;
    v6.super_class = _MFAtomTextView;
    [(_MFAtomTextView *)&v6 setContentOffset:x, y];
  }
}

- (void)makeTextWritingDirectionLeftToRight:(id)right
{
  rightCopy = right;
  v6.receiver = self;
  v6.super_class = _MFAtomTextView;
  [(_MFAtomTextView *)&v6 makeTextWritingDirectionLeftToRight:rightCopy];
  hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
  [hostRecipientView atomTextView:self didChangeWritingDirection:0];
}

- (void)makeTextWritingDirectionRightToLeft:(id)left
{
  leftCopy = left;
  v6.receiver = self;
  v6.super_class = _MFAtomTextView;
  [(_MFAtomTextView *)&v6 makeTextWritingDirectionRightToLeft:leftCopy];
  hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
  [hostRecipientView atomTextView:self didChangeWritingDirection:1];
}

- (int64_t)baseWritingDirection
{
  textStorage = [(_MFAtomTextView *)self textStorage];
  v4 = [textStorage length];

  v5 = MEMORY[0x1E69DB688];
  if (v4 && -[_MFAtomTextView selectedRange](self, "selectedRange") != 0x7FFFFFFFFFFFFFFFLL && (-[_MFAtomTextView textStorage](self, "textStorage"), v6 = objc_claimAutoreleasedReturnValue(), [v6 attributesAtIndex:0 effectiveRange:0], v7 = objc_claimAutoreleasedReturnValue(), v6, objc_msgSend(v7, "objectForKey:", *v5), v8 = objc_claimAutoreleasedReturnValue(), v7, v8) || (-[_MFAtomTextView typingAttributes](self, "typingAttributes"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", *v5), v8 = objc_claimAutoreleasedReturnValue(), v9, v8))
  {
    baseWritingDirection = [v8 baseWritingDirection];
  }

  else
  {
    baseWritingDirection = -1;
  }

  return baseWritingDirection;
}

- (void)copy:(id)copy
{
  v32[1] = *MEMORY[0x1E69E9840];
  [(_MFAtomTextView *)self selectedRange];
  if (v4)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    selectedRange = [(_MFAtomTextView *)self selectedRange];
    v7 = v6;
    string = [MEMORY[0x1E696AD60] string];
    if (selectedRange < selectedRange + v7)
    {
      v9 = *MEMORY[0x1E69DB5F8];
      do
      {
        textStorage = [(_MFAtomTextView *)self textStorage];
        string2 = [textStorage string];
        v12 = [string2 characterAtIndex:selectedRange];

        v28 = v12;
        if (v12 == 65532)
        {
          if ([string length])
          {
            v13 = [string copy];
            [array2 addObject:v13];
            [string setString:&stru_1F3CF3758];
          }

          textStorage2 = [(_MFAtomTextView *)self textStorage];
          v15 = [textStorage2 attributesAtIndex:selectedRange effectiveRange:0];

          v16 = [v15 objectForKey:v9];
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              recipient = [v16 recipient];
              uncommentedAddress = [recipient uncommentedAddress];
              [array2 addObject:uncommentedAddress];

              v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:recipient requiringSecureCoding:1 error:0];
              v31 = @"kMFPasteboardTypeComposeRecipient";
              v32[0] = v19;
              v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
              [array addObject:v20];
            }
          }
        }

        else
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v28 length:1];
          [string appendString:v15];
        }

        ++selectedRange;
        --v7;
      }

      while (v7);
    }

    if ([string length])
    {
      v21 = [string copy];
      [array2 addObject:v21];
    }

    v22 = [array2 componentsJoinedByString:{@", "}];
    identifier = [*MEMORY[0x1E6983020] identifier];
    v29 = identifier;
    v30 = v22;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [array addObject:v24];

    [generalPasteboard setItems:array];
  }
}

- (void)paste:(id)paste
{
  v43[1] = *MEMORY[0x1E69E9840];
  pasteCopy = paste;
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v43[0] = @"kMFPasteboardTypeComposeRecipient";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v6 = [generalPasteboard containsPasteboardTypes:v5 inItemSet:0];

  if (v6)
  {
    [generalPasteboard valuesForPasteboardType:@"kMFPasteboardTypeComposeRecipient" inItemSet:0];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v7 = v36 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v8)
    {
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:*(*(&v35 + 1) + 8 * i) error:0];
          if (v11)
          {
            hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
            [hostRecipientView addRecipient:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v8);
    }
  }

  else
  {
    identifier = 0xAAAAAAAAAAAAAAAALL;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    identifier = [*MEMORY[0x1E6982F40] identifier];
    identifier2 = [*MEMORY[0x1E6983020] identifier];
    v14 = &identifier;
    v41 = identifier2;
    v15 = 1;
    do
    {
      v16 = [generalPasteboard valueForPasteboardType:*v14];
      v17 = (v16 == 0) & v15;
      v14 = &v41;
      v15 = 0;
    }

    while ((v17 & 1) != 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v16 encoding:4];

      v16 = v18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

      v20 = [MEMORY[0x1E69AD6F8] addressListFromEncodedString:v19];
      if ([v20 count] > 1)
      {
        hostRecipientView2 = [(_MFAtomTextView *)self hostRecipientView];
        delegate = [hostRecipientView2 delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate dismissSearchResultsForComposeRecipientView:hostRecipientView2];
        }

        if (objc_opt_respondsToSelector())
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v23 = v20;
          v24 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v24)
          {
            v25 = *v31;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v31 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                [delegate composeRecipientView:hostRecipientView2 didFinishEnteringAddress:*(*(&v30 + 1) + 8 * j)];
              }

              v24 = [v23 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v24);
          }
        }
      }

      else
      {
        v34.receiver = self;
        v34.super_class = _MFAtomTextView;
        [(_MFAtomTextView *)&v34 paste:pasteCopy];
      }

      v16 = v19;
    }

    else
    {
      v29.receiver = self;
      v29.super_class = _MFAtomTextView;
      [(_MFAtomTextView *)&v29 paste:pasteCopy];
    }

    for (k = 8; k != -8; k -= 8)
    {
    }
  }
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  [(_MFAtomTextView *)self copy:?];
  textStorage = [(_MFAtomTextView *)self textStorage];
  selectedRange = [(_MFAtomTextView *)self selectedRange];
  [textStorage deleteCharactersInRange:{selectedRange, v6}];

  [(_MFAtomTextView *)self setSelectedRange:0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v14[3] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  if (sel_paste_ == action)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    identifier = [*MEMORY[0x1E6983020] identifier];
    v14[0] = identifier;
    identifier2 = [*MEMORY[0x1E6982F40] identifier];
    v14[1] = identifier2;
    v14[2] = @"kMFPasteboardTypeComposeRecipient";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    v7 = [generalPasteboard containsPasteboardTypes:v11 inItemSet:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _MFAtomTextView;
    v7 = [(_MFAtomTextView *)&v13 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (id)undoManager
{
  hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
  undoManager = [hostRecipientView undoManager];

  return undoManager;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  x = test.x;
  y = test.y;
  eventCopy = event;
  hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
  atomContainerView = [hostRecipientView atomContainerView];

  v56.receiver = self;
  v56.super_class = _MFAtomTextView;
  v8 = [(_MFAtomTextView *)&v56 hitTest:eventCopy withEvent:x, y];
  v9 = [atomContainerView hitTest:eventCopy withEvent:{x, y}];
  v10 = v8;
  selectedRange = [(_MFAtomTextView *)self selectedRange];
  v13 = v12;
  if (v12)
  {
    v14 = selectedRange;
    v52 = atomContainerView;
    textStorage = [(_MFAtomTextView *)self textStorage];
    v16 = [textStorage attributesAtIndex:v14 effectiveRange:0];

    textStorage2 = [(_MFAtomTextView *)self textStorage];
    v18 = [textStorage2 attributesAtIndex:v13 + v14 - 1 effectiveRange:0];

    v19 = *MEMORY[0x1E69DB5F8];
    v20 = [v16 objectForKey:*MEMORY[0x1E69DB5F8]];
    v21 = [v18 objectForKey:v19];
    v22 = v21;
    v23 = v10;
    if (v20)
    {
      v23 = v10;
      if (v21)
      {
        objc_opt_class();
        v23 = v10;
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v23 = v10;
          if (objc_opt_isKindOfClass())
          {
            v24 = [v16 objectForKey:v19];
            atomView = [v24 atomView];

            [atomView frame];
            v27 = v26;
            v29 = v28;
            CGAffineTransformMakeTranslation(&v55, 0.0, -6.0);
            b = v55.b;
            d = v55.d;
            c = v55.c;
            a = v55.a;
            ty = v55.ty;
            tx = v55.tx;
            v33 = [v18 objectForKey:v19];
            v48 = ty;
            atomView2 = [v33 atomView];

            [atomView2 frame];
            v35 = v58.origin.x;
            v36 = v58.origin.y;
            width = v58.size.width;
            height = v58.size.height;
            MaxX = CGRectGetMaxX(v58);
            v59.origin.x = v35;
            v59.origin.y = v36;
            v59.size.width = width;
            v59.size.height = height;
            MaxY = CGRectGetMaxY(v59);
            CGAffineTransformMakeTranslation(&v55, 0.0, 6.0);
            v39.f64[0] = x;
            v39.f64[1] = y;
            v40 = vsubq_f64(vaddq_f64(*&v55.tx, vmlaq_n_f64(vmulq_n_f64(*&v55.c, MaxY), *&v55.a, MaxX)), v39);
            v41 = sqrt(vaddvq_f64(vmulq_f64(v40, v40)));
            v42 = sqrt((tx + v29 * c + a * v27 - x) * (tx + v29 * c + a * v27 - x) + (v48 + v29 * d + b * v27 - y) * (v48 + v29 * d + b * v27 - y)) <= 14.0 || v41 <= 14.0;
            v23 = v10;
            if (!v42)
            {
              if (v9)
              {
                v43 = v9;
              }

              else
              {
                v43 = v10;
              }

              v23 = v43;
            }
          }
        }
      }
    }

    atomContainerView = v52;
  }

  else
  {
    if (v9)
    {
      v44 = v9;
    }

    else
    {
      v44 = v10;
    }

    v23 = v44;
    v16 = v10;
  }

  return v23;
}

- (BOOL)_delegateSupportsKeyboardEvents
{
  hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
  delegate = [hostRecipientView delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)_handleKeyUIEvent:(id)event
{
  eventCopy = event;
  if ([(_MFAtomTextView *)self _delegateSupportsKeyboardEvents])
  {
    hostRecipientView = [(_MFAtomTextView *)self hostRecipientView];
    delegate = [hostRecipientView delegate];
    if ([eventCopy type] == 4)
    {
      _modifiedInput = [eventCopy _modifiedInput];
      v8 = _modifiedInput;
      v9 = *MEMORY[0x1E69DDE90];
      if (_modifiedInput == *MEMORY[0x1E69DDE90] || _modifiedInput == *MEMORY[0x1E69DDF30])
      {
        if ([delegate composeRecipientViewShowingSearchResults:hostRecipientView])
        {
          if (([eventCopy _isKeyDown] & 1) == 0)
          {
            if (v8 == v9)
            {
              [delegate selectNextSearchResultForComposeRecipientView:hostRecipientView];
            }

            else
            {
              [delegate selectPreviousSearchResultForComposeRecipientView:hostRecipientView];
            }
          }

          goto LABEL_29;
        }

        if (v8 == v9 && [eventCopy _isKeyDown] && (objc_msgSend(delegate, "presentSearchResultsForComposeRecipientView:", hostRecipientView) & 1) != 0)
        {
LABEL_29:

          goto LABEL_26;
        }
      }

      else if ([_modifiedInput length] == 1 && (objc_msgSend(v8, "characterAtIndex:", 0) == 13 || objc_msgSend(v8, "characterAtIndex:", 0) == 9) && objc_msgSend(delegate, "composeRecipientViewShowingSearchResults:", hostRecipientView) && objc_msgSend(delegate, "chooseSelectedSearchResultForComposeRecipientView:", hostRecipientView))
      {
        if ([v8 characterAtIndex:0] == 9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [delegate composeRecipientViewReturnPressed:hostRecipientView];
        }

        goto LABEL_29;
      }
    }

    v11.receiver = self;
    v11.super_class = _MFAtomTextView;
    [(_MFAtomTextView *)&v11 _handleKeyUIEvent:eventCopy];
LABEL_26:

    goto LABEL_27;
  }

  v12.receiver = self;
  v12.super_class = _MFAtomTextView;
  [(_MFAtomTextView *)&v12 _handleKeyUIEvent:eventCopy];
LABEL_27:
}

- (MFComposeRecipientTextView)hostRecipientView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostRecipientView);

  return WeakRetained;
}

@end