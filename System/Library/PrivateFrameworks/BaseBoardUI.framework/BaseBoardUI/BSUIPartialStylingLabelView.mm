@interface BSUIPartialStylingLabelView
- (BSUIPartialStylingLabelView)initWithTokenType:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_initWithFrame:(double)a3 rangeFindingBlock:(double)a4;
- (void)_newLabel;
- (void)_setTextAlignmentFollowsWritingDirection:(BOOL)a3;
- (void)_updateLabelsWithRawText:(uint64_t)a1;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setAttributedText:(id)a3;
- (void)setFont:(id)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
@end

@implementation BSUIPartialStylingLabelView

- (void)_newLabel
{
  v2 = objc_alloc(MEMORY[0x1E69DCC10]);
  [a1 bounds];
  v3 = [v2 initWithFrame:?];
  [a1 addSubview:v3];
  [v3 setAutoresizingMask:18];
  return v3;
}

- (void)_initWithFrame:(double)a3 rangeFindingBlock:(double)a4
{
  v11 = a2;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = BSUIPartialStylingLabelView;
    v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a3, a4, a5, a6);
    a1 = v12;
    if (v12)
    {
      v13 = [(BSUIPartialStylingLabelView *)v12 _newLabel];
      v14 = a1[55];
      a1[55] = v13;

      [a1 setUserInteractionEnabled:0];
      v15 = [v11 copy];
      v16 = a1[51];
      a1[51] = v15;
    }
  }

  return a1;
}

- (BSUIPartialStylingLabelView)initWithTokenType:(int64_t)a3
{
  v3 = &__block_literal_global_3;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__block_literal_global_1;
  }

  return [(BSUIPartialStylingLabelView *)self initWithRangeFindingBlock:v4];
}

id __49__BSUIPartialStylingLabelView_initWithTokenType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(NSString *)v8 _bsui_rangesOfEmojiTokens:a3];
  }

  else
  {
    v10 = objc_opt_class();
    v11 = v6;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = [v13 string];
      v9 = [(NSString *)v14 _bsui_rangesOfEmojiTokens:a3];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

id __49__BSUIPartialStylingLabelView_initWithTokenType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__1;
    v39 = __Block_byref_object_dispose__1;
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__1;
    v33 = __Block_byref_object_dispose__1;
    if (a3)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v34 = v9;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3010000000;
    v27 = 0;
    v28 = 0;
    v26 = &unk_1A2D58392;
    v11 = [v8 length];
    v12 = *MEMORY[0x1E69DB5F8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__NSAttributedString_BSUIPartialStylingAdditions___bsui_rangesOfTextAttachments___block_invoke;
    v22[3] = &unk_1E76B7E28;
    v22[4] = &v35;
    v22[5] = &v29;
    v22[6] = &v23;
    [v8 enumerateAttribute:v12 inRange:0 options:v11 usingBlock:{0, v22}];
    if (v30[5])
    {
      v13 = v24[4];
      v14 = v24[5];
      if (v14 + v13 < [v8 length])
      {
        v15 = v24[4];
        v16 = v24[5];
        v17 = [v8 length];
        v18 = v30[5];
        v19 = [MEMORY[0x1E696B098] valueWithRange:{v16 + v15, v17 - (v24[4] + v24[5])}];
        [v18 addObject:v19];
      }

      v20 = v30[5];
      if (v20)
      {
        *a3 = v20;
      }
    }

    v10 = v36[5];
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_contentLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  [(UILabel *)self->_contentLabel setFont:?];
  [(UILabel *)self->_tokenTypeLabel setFont:v4];
}

- (void)setText:(id)a3
{
  v7 = a3;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [v7 copy];
    rawText = self->_rawText;
    self->_rawText = v4;

    rawAttributedText = self->_rawAttributedText;
    self->_rawAttributedText = 0;

    [(BSUIPartialStylingLabelView *)self _updateLabelsWithRawText:?];
  }
}

- (void)_updateLabelsWithRawText:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_opt_class();
    v9 = v5;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v7 | v11)
    {
      v12 = *(a1 + 408);
      v31 = 0;
      v13 = (*(v12 + 16))();
      v14 = 0;
      if ([v13 count])
      {
        v27 = v14;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __56__BSUIPartialStylingLabelView__updateLabelsWithRawText___block_invoke;
        v28[3] = &unk_1E76B7DD8;
        v29 = v11;
        v30 = v7;
        v15 = MEMORY[0x1A58E5D00](v28);
        v16 = *(a1 + 440);
        v17 = (v15)[2](v15, v13);
        [v16 setAttributedText:v17];

        v18 = *(a1 + 416);
        if (!v18)
        {
          v19 = [(BSUIPartialStylingLabelView *)a1 _newLabel];
          v20 = *(a1 + 416);
          *(a1 + 416) = v19;

          v21 = *(a1 + 416);
          v22 = [*(a1 + 440) font];
          [v21 setFont:v22];

          [*(a1 + 416) setNumberOfLines:{objc_msgSend(*(a1 + 440), "numberOfLines")}];
          [*(a1 + 416) setTextAlignment:{objc_msgSend(*(a1 + 440), "textAlignment")}];
          [*(a1 + 416) setLineBreakMode:{objc_msgSend(*(a1 + 440), "lineBreakMode")}];
          [*(a1 + 416) setAdjustsFontSizeToFitWidth:{objc_msgSend(*(a1 + 440), "adjustsFontSizeToFitWidth")}];
          v18 = *(a1 + 416);
        }

        v23 = (v15)[2](v15, v27);
        [v18 setAttributedText:v23];

        v24 = v29;
        v14 = v27;
      }

      else
      {
        v26 = *(a1 + 440);
        if (v7)
        {
          [v26 setText:v7];
        }

        else
        {
          [v26 setAttributedText:v11];
        }

        [*(a1 + 416) removeFromSuperview];
        v24 = *(a1 + 416);
        *(a1 + 416) = 0;
      }
    }

    else
    {
      [*(a1 + 440) setText:0];
      [*(a1 + 440) setAttributedText:0];
      [*(a1 + 416) removeFromSuperview];
      v25 = *(a1 + 416);
      *(a1 + 416) = 0;
    }
  }
}

- (void)setAttributedText:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v7 copy];
    rawAttributedText = self->_rawAttributedText;
    self->_rawAttributedText = v4;

    rawText = self->_rawText;
    self->_rawText = 0;

    [(BSUIPartialStylingLabelView *)self _updateLabelsWithRawText:?];
  }
}

- (void)setNumberOfLines:(int64_t)a3
{
  [(UILabel *)self->_contentLabel setNumberOfLines:?];
  tokenTypeLabel = self->_tokenTypeLabel;

  [(UILabel *)tokenTypeLabel setNumberOfLines:a3];
}

- (void)setTextAlignment:(int64_t)a3
{
  [(UILabel *)self->_contentLabel setTextAlignment:?];
  tokenTypeLabel = self->_tokenTypeLabel;

  [(UILabel *)tokenTypeLabel setTextAlignment:a3];
}

- (void)setLineBreakMode:(int64_t)a3
{
  [(UILabel *)self->_contentLabel setLineBreakMode:?];
  tokenTypeLabel = self->_tokenTypeLabel;

  [(UILabel *)tokenTypeLabel setLineBreakMode:a3];
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  v3 = a3;
  [(UILabel *)self->_contentLabel setAdjustsFontSizeToFitWidth:?];
  tokenTypeLabel = self->_tokenTypeLabel;

  [(UILabel *)tokenTypeLabel setAdjustsFontSizeToFitWidth:v3];
}

- (void)_setTextAlignmentFollowsWritingDirection:(BOOL)a3
{
  v3 = a3;
  [(UILabel *)self->_contentLabel _setTextAlignmentFollowsWritingDirection:?];
  tokenTypeLabel = self->_tokenTypeLabel;

  [(UILabel *)tokenTypeLabel _setTextAlignmentFollowsWritingDirection:v3];
}

id __56__BSUIPartialStylingLabelView__updateLabelsWithRawText___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:{*(a1 + 40), v16}];
  }

  v5 = v4;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v17;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = *v20;
    v8 = *MEMORY[0x1E69DB650];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v23 = v8;
        v11 = [MEMORY[0x1E69DC888] clearColor];
        v24 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v13 = [v10 rangeValue];
        [v5 addAttributes:v12 range:{v13, v14}];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  return v5;
}

@end