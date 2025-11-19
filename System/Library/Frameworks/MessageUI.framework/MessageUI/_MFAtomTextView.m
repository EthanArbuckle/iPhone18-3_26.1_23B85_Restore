@interface _MFAtomTextView
- (BOOL)_delegateSupportsKeyboardEvents;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (CGRect)convertGlyphRect:(CGRect)a3;
- (MFComposeRecipientTextView)hostRecipientView;
- (NSArray)atoms;
- (_MFAtomTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)selectionRectsForRange:(id)a3;
- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4;
- (id)undoManager;
- (int64_t)baseWritingDirection;
- (void)_handleKeyUIEvent:(id)a3;
- (void)batchTextStorageUpdates:(id)a3;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)enumerateAtomAttachments:(id)a3;
- (void)enumerateAtoms:(id)a3;
- (void)enumerateAtomsInCharacterRange:(_NSRange)a3 withBlock:(id)a4;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)paste:(id)a3;
- (void)setContentOffset:(CGPoint)a3;
@end

@implementation _MFAtomTextView

- (_MFAtomTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = _MFAtomTextView;
  v10 = [(_MFAtomTextView *)&v15 initWithFrame:v9 textContainer:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v14.receiver = v10;
    v14.super_class = _MFAtomTextView;
    v12 = [(_MFAtomTextView *)&v14 undoManager];
    [v12 disableUndoRegistration];

    v11->_textStorageEditingDepth = 0;
  }

  return v11;
}

- (NSArray)atoms
{
  v3 = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24___MFAtomTextView_atoms__block_invoke;
  v6[3] = &unk_1E806D000;
  v4 = v3;
  v7 = v4;
  [(_MFAtomTextView *)self enumerateAtoms:v6];

  return v4;
}

- (CGRect)convertGlyphRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)enumerateAtoms:(id)a3
{
  v5 = a3;
  v4 = [(_MFAtomTextView *)self textStorage];
  -[_MFAtomTextView enumerateAtomsInCharacterRange:withBlock:](self, "enumerateAtomsInCharacterRange:withBlock:", 0, [v4 length], v5);
}

- (void)enumerateAtomsInCharacterRange:(_NSRange)a3 withBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(_MFAtomTextView *)self textStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60___MFAtomTextView_enumerateAtomsInCharacterRange_withBlock___block_invoke;
  v10[3] = &unk_1E806D310;
  v9 = v7;
  v11 = v9;
  [v8 enumerateAttributesInRange:location options:length usingBlock:{0, v10}];
}

- (void)enumerateAtomAttachments:(id)a3
{
  v4 = a3;
  v5 = [(_MFAtomTextView *)self textStorage];
  v6 = [(_MFAtomTextView *)self textStorage];
  v7 = [v6 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44___MFAtomTextView_enumerateAtomAttachments___block_invoke;
  v9[3] = &unk_1E806D310;
  v8 = v4;
  v10 = v8;
  [v5 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v9}];
}

- (void)batchTextStorageUpdates:(id)a3
{
  v7 = a3;
  ++self->_textStorageEditingDepth;
  v4 = [(_MFAtomTextView *)self textStorage];
  [v4 beginEditing];

  v7[2]();
  --self->_textStorageEditingDepth;
  v5 = [(_MFAtomTextView *)self textStorage];
  [v5 endEditing];

  v6 = [(_MFAtomTextView *)self hostRecipientView];
  [v6 _recomputeTextContainerExclusionPaths];
}

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = _MFAtomTextView;
  v3 = [(_MFAtomTextView *)&v8 becomeFirstResponder];
  v4 = [(_MFAtomTextView *)self hostRecipientView];
  v5 = v4;
  if (v3 && v4 != 0)
  {
    [v4 atomTextViewDidBecomeFirstResponder:self];
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = _MFAtomTextView;
  v3 = [(_MFAtomTextView *)&v8 resignFirstResponder];
  v4 = [(_MFAtomTextView *)self hostRecipientView];
  v5 = v4;
  if (v3 && v4 != 0)
  {
    [v4 atomTextViewDidResignFirstResponder:self];
  }

  return v3;
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(_MFAtomTextView *)self selectedRange];
  v7 = v6;
  v8 = [(_MFAtomTextView *)self textStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42___MFAtomTextView_selectionRectsForRange___block_invoke;
  v13[3] = &unk_1E806D338;
  v15 = v5;
  v16 = v7;
  v13[4] = self;
  v9 = v4;
  v14 = v9;
  [v8 enumerateAttributesInRange:v5 options:v7 usingBlock:{0, v13}];

  v10 = v14;
  v11 = v9;

  return v9;
}

- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = _MFAtomTextView;
  v4 = [(_MFAtomTextView *)&v8 textStylingAtPosition:a3 inDirection:a4];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB600]];

  return v5;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (MFModernUIApplicationPreferredContentSizeIsAccessibility())
  {
    v6.receiver = self;
    v6.super_class = _MFAtomTextView;
    [(_MFAtomTextView *)&v6 setContentOffset:x, y];
  }
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _MFAtomTextView;
  [(_MFAtomTextView *)&v6 makeTextWritingDirectionLeftToRight:v4];
  v5 = [(_MFAtomTextView *)self hostRecipientView];
  [v5 atomTextView:self didChangeWritingDirection:0];
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _MFAtomTextView;
  [(_MFAtomTextView *)&v6 makeTextWritingDirectionRightToLeft:v4];
  v5 = [(_MFAtomTextView *)self hostRecipientView];
  [v5 atomTextView:self didChangeWritingDirection:1];
}

- (int64_t)baseWritingDirection
{
  v3 = [(_MFAtomTextView *)self textStorage];
  v4 = [v3 length];

  v5 = MEMORY[0x1E69DB688];
  if (v4 && -[_MFAtomTextView selectedRange](self, "selectedRange") != 0x7FFFFFFFFFFFFFFFLL && (-[_MFAtomTextView textStorage](self, "textStorage"), v6 = objc_claimAutoreleasedReturnValue(), [v6 attributesAtIndex:0 effectiveRange:0], v7 = objc_claimAutoreleasedReturnValue(), v6, objc_msgSend(v7, "objectForKey:", *v5), v8 = objc_claimAutoreleasedReturnValue(), v7, v8) || (-[_MFAtomTextView typingAttributes](self, "typingAttributes"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", *v5), v8 = objc_claimAutoreleasedReturnValue(), v9, v8))
  {
    v10 = [v8 baseWritingDirection];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)copy:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  [(_MFAtomTextView *)self selectedRange];
  if (v4)
  {
    v25 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v26 = [MEMORY[0x1E695DF70] array];
    v27 = [MEMORY[0x1E695DF70] array];
    v5 = [(_MFAtomTextView *)self selectedRange];
    v7 = v6;
    v8 = [MEMORY[0x1E696AD60] string];
    if (v5 < v5 + v7)
    {
      v9 = *MEMORY[0x1E69DB5F8];
      do
      {
        v10 = [(_MFAtomTextView *)self textStorage];
        v11 = [v10 string];
        v12 = [v11 characterAtIndex:v5];

        v28 = v12;
        if (v12 == 65532)
        {
          if ([v8 length])
          {
            v13 = [v8 copy];
            [v27 addObject:v13];
            [v8 setString:&stru_1F3CF3758];
          }

          v14 = [(_MFAtomTextView *)self textStorage];
          v15 = [v14 attributesAtIndex:v5 effectiveRange:0];

          v16 = [v15 objectForKey:v9];
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 recipient];
              v18 = [v17 uncommentedAddress];
              [v27 addObject:v18];

              v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
              v31 = @"kMFPasteboardTypeComposeRecipient";
              v32[0] = v19;
              v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
              [v26 addObject:v20];
            }
          }
        }

        else
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v28 length:1];
          [v8 appendString:v15];
        }

        ++v5;
        --v7;
      }

      while (v7);
    }

    if ([v8 length])
    {
      v21 = [v8 copy];
      [v27 addObject:v21];
    }

    v22 = [v27 componentsJoinedByString:{@", "}];
    v23 = [*MEMORY[0x1E6983020] identifier];
    v29 = v23;
    v30 = v22;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v26 addObject:v24];

    [v25 setItems:v26];
  }
}

- (void)paste:(id)a3
{
  v43[1] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v43[0] = @"kMFPasteboardTypeComposeRecipient";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v6 = [v4 containsPasteboardTypes:v5 inItemSet:0];

  if (v6)
  {
    [v4 valuesForPasteboardType:@"kMFPasteboardTypeComposeRecipient" inItemSet:0];
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
            v12 = [(_MFAtomTextView *)self hostRecipientView];
            [v12 addRecipient:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    v40 = [*MEMORY[0x1E6982F40] identifier];
    v13 = [*MEMORY[0x1E6983020] identifier];
    v14 = &v40;
    v41 = v13;
    v15 = 1;
    do
    {
      v16 = [v4 valueForPasteboardType:*v14];
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
        v21 = [(_MFAtomTextView *)self hostRecipientView];
        v22 = [v21 delegate];
        if (objc_opt_respondsToSelector())
        {
          [v22 dismissSearchResultsForComposeRecipientView:v21];
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

                [v22 composeRecipientView:v21 didFinishEnteringAddress:*(*(&v30 + 1) + 8 * j)];
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
        [(_MFAtomTextView *)&v34 paste:v28];
      }

      v16 = v19;
    }

    else
    {
      v29.receiver = self;
      v29.super_class = _MFAtomTextView;
      [(_MFAtomTextView *)&v29 paste:v28];
    }

    for (k = 8; k != -8; k -= 8)
    {
    }
  }
}

- (void)cut:(id)a3
{
  v7 = a3;
  [(_MFAtomTextView *)self copy:?];
  v4 = [(_MFAtomTextView *)self textStorage];
  v5 = [(_MFAtomTextView *)self selectedRange];
  [v4 deleteCharactersInRange:{v5, v6}];

  [(_MFAtomTextView *)self setSelectedRange:0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (sel_paste_ == a3)
  {
    v8 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v9 = [*MEMORY[0x1E6983020] identifier];
    v14[0] = v9;
    v10 = [*MEMORY[0x1E6982F40] identifier];
    v14[1] = v10;
    v14[2] = @"kMFPasteboardTypeComposeRecipient";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    v7 = [v8 containsPasteboardTypes:v11 inItemSet:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _MFAtomTextView;
    v7 = [(_MFAtomTextView *)&v13 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (id)undoManager
{
  v2 = [(_MFAtomTextView *)self hostRecipientView];
  v3 = [v2 undoManager];

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  x = a3.x;
  y = a3.y;
  v5 = a4;
  v6 = [(_MFAtomTextView *)self hostRecipientView];
  v7 = [v6 atomContainerView];

  v56.receiver = self;
  v56.super_class = _MFAtomTextView;
  v8 = [(_MFAtomTextView *)&v56 hitTest:v5 withEvent:x, y];
  v9 = [v7 hitTest:v5 withEvent:{x, y}];
  v10 = v8;
  v11 = [(_MFAtomTextView *)self selectedRange];
  v13 = v12;
  if (v12)
  {
    v14 = v11;
    v52 = v7;
    v15 = [(_MFAtomTextView *)self textStorage];
    v16 = [v15 attributesAtIndex:v14 effectiveRange:0];

    v17 = [(_MFAtomTextView *)self textStorage];
    v18 = [v17 attributesAtIndex:v13 + v14 - 1 effectiveRange:0];

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
            v25 = [v24 atomView];

            [v25 frame];
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
            v34 = [v33 atomView];

            [v34 frame];
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

    v7 = v52;
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
  v2 = [(_MFAtomTextView *)self hostRecipientView];
  v3 = [v2 delegate];
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

- (void)_handleKeyUIEvent:(id)a3
{
  v4 = a3;
  if ([(_MFAtomTextView *)self _delegateSupportsKeyboardEvents])
  {
    v5 = [(_MFAtomTextView *)self hostRecipientView];
    v6 = [v5 delegate];
    if ([v4 type] == 4)
    {
      v7 = [v4 _modifiedInput];
      v8 = v7;
      v9 = *MEMORY[0x1E69DDE90];
      if (v7 == *MEMORY[0x1E69DDE90] || v7 == *MEMORY[0x1E69DDF30])
      {
        if ([v6 composeRecipientViewShowingSearchResults:v5])
        {
          if (([v4 _isKeyDown] & 1) == 0)
          {
            if (v8 == v9)
            {
              [v6 selectNextSearchResultForComposeRecipientView:v5];
            }

            else
            {
              [v6 selectPreviousSearchResultForComposeRecipientView:v5];
            }
          }

          goto LABEL_29;
        }

        if (v8 == v9 && [v4 _isKeyDown] && (objc_msgSend(v6, "presentSearchResultsForComposeRecipientView:", v5) & 1) != 0)
        {
LABEL_29:

          goto LABEL_26;
        }
      }

      else if ([v7 length] == 1 && (objc_msgSend(v8, "characterAtIndex:", 0) == 13 || objc_msgSend(v8, "characterAtIndex:", 0) == 9) && objc_msgSend(v6, "composeRecipientViewShowingSearchResults:", v5) && objc_msgSend(v6, "chooseSelectedSearchResultForComposeRecipientView:", v5))
      {
        if ([v8 characterAtIndex:0] == 9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v6 composeRecipientViewReturnPressed:v5];
        }

        goto LABEL_29;
      }
    }

    v11.receiver = self;
    v11.super_class = _MFAtomTextView;
    [(_MFAtomTextView *)&v11 _handleKeyUIEvent:v4];
LABEL_26:

    goto LABEL_27;
  }

  v12.receiver = self;
  v12.super_class = _MFAtomTextView;
  [(_MFAtomTextView *)&v12 _handleKeyUIEvent:v4];
LABEL_27:
}

- (MFComposeRecipientTextView)hostRecipientView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostRecipientView);

  return WeakRetained;
}

@end