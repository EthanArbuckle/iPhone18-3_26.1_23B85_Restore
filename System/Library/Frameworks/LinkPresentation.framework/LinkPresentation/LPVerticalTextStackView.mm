@interface LPVerticalTextStackView
- (CGSize)_layoutTextStackForSize:(CGSize)size applyingLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPVerticalTextStackView)initWithHost:(id)host style:(id)style;
- (int64_t)computedNumberOfLines;
- (void)addArrangedSubview:(id)subview;
- (void)layoutComponentView;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation LPVerticalTextStackView

- (LPVerticalTextStackView)initWithHost:(id)host style:(id)style
{
  hostCopy = host;
  styleCopy = style;
  v17.receiver = self;
  v17.super_class = LPVerticalTextStackView;
  v8 = [(LPComponentView *)&v17 initWithHost:hostCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v8->_items;
    v8->_items = v9;

    objc_storeStrong(&v8->_style, style);
    if (+[LPSettings showDebugIndicators])
    {
      purpleColor = [MEMORY[0x1E69DC888] purpleColor];
      cGColor = [purpleColor CGColor];
      layer = [(LPVerticalTextStackView *)v8 layer];
      [layer setBorderColor:cGColor];

      layer2 = [(LPVerticalTextStackView *)v8 layer];
      [layer2 setBorderWidth:0.5];
    }

    v15 = v8;
  }

  return v8;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
  }
}

- (void)addArrangedSubview:(id)subview
{
  subviewCopy = subview;
  if (self->_hasEverBuilt)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Trying to update a text stack after it has been laid out."];
  }

  [(NSMutableArray *)self->_items addObject:subviewCopy];
  [(LPVerticalTextStackView *)self addSubview:subviewCopy];
}

- (void)layoutComponentView
{
  [(LPVerticalTextStackView *)self bounds];
  v4 = v3 - (self->_contentInset.left + self->_contentInset.right);
  v6 = v5 - (self->_contentInset.top + self->_contentInset.bottom);

  [(LPVerticalTextStackView *)self _layoutTextStackForSize:1 applyingLayout:v4, v6];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  p_contentInset = &self->_contentInset;
  [(LPVerticalTextStackView *)self _layoutTextStackForSize:0 applyingLayout:fits.width - (self->_contentInset.left + self->_contentInset.right), fits.height - (self->_contentInset.top + self->_contentInset.bottom)];
  v5.f64[1] = v4;
  v6 = vsubq_f64(vrndpq_f64(v5), vsubq_f64(vnegq_f64(p_contentInset[1]), *p_contentInset));
  v7 = v6.f64[1];
  result.height = v6.f64[0];
  result.width = v7;
  return result;
}

- (int64_t)computedNumberOfLines
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_items;
  v3 = 0;
  v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 += [*(*(&v8 + 1) + 8 * v6++) computedNumberOfLines];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

- (CGSize)_layoutTextStackForSize:(CGSize)size applyingLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = size.height;
  width = size.width;
  v62 = *MEMORY[0x1E69E9840];
  v35 = malloc_type_calloc([(NSMutableArray *)self->_items count], 0x10uLL, 0x1000040451B5BE8uLL);
  if ([(LPVerticalTextStackViewStyle *)self->_style shouldApplyFallbackFontForTruncatedSingleLine])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v7 = self->_items;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v8)
    {
      v9 = *v58;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v58 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v57 + 1) + 8 * i);
          preferredFont = [v11 preferredFont];
          if (preferredFont)
          {
            v13 = objc_opt_respondsToSelector();

            if (v13)
            {
              preferredFont2 = [v11 preferredFont];
              [v11 setFont:preferredFont2];
            }
          }
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v8);
    }
  }

  maximumNumberOfLines = [(LPVerticalTextStackViewStyle *)self->_style maximumNumberOfLines];
  v16 = maximumNumberOfLines != 0;
  if (maximumNumberOfLines)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    maximumNumberOfLines2 = [(LPVerticalTextStackViewStyle *)self->_style maximumNumberOfLines];
    v51 = (maximumNumberOfLines2 - [(NSMutableArray *)self->_items count]);
    items = self->_items;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke;
    v55[3] = &unk_1E7A361B8;
    v55[4] = &v48;
    *&v55[5] = width;
    *&v55[6] = height;
    v55[7] = v35;
    v56 = layoutCopy;
    [(NSMutableArray *)items enumerateObjectsUsingBlock:v55];
    _Block_object_dispose(&v48, 8);
  }

  else
  {
    v19 = self->_items;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_2;
    v54[3] = &__block_descriptor_56_e49_v32__0__LPComponentView_LPTextStyleable__8Q16_B24l;
    v54[4] = v35;
    *&v54[5] = width;
    *&v54[6] = height;
    [(NSMutableArray *)v19 enumerateObjectsUsingBlock:v54];
  }

  v20 = malloc_type_calloc([(NSMutableArray *)self->_items count], 0x20uLL, 0x1000040E0EAB150uLL);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3010000000;
  v52 = 0;
  v53 = 0;
  v51 = &unk_1AE9D67E1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_3;
  aBlock[3] = &unk_1E7A36228;
  aBlock[5] = &v48;
  aBlock[6] = v20;
  *&aBlock[7] = width;
  *&aBlock[8] = height;
  aBlock[9] = v35;
  aBlock[4] = self;
  v21 = _Block_copy(aBlock);
  v21[2]();
  if (v49[5] > height)
  {
    v22 = self->_items;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_5;
    v40[3] = &unk_1E7A36250;
    v43 = v35;
    v44 = width;
    v45 = height;
    v46 = layoutCopy;
    v41 = v21;
    v42 = &v48;
    [(NSMutableArray *)v22 enumerateObjectsWithOptions:2 usingBlock:v40];
  }

  if ([(LPVerticalTextStackViewStyle *)self->_style shouldApplyFallbackFontForTruncatedSingleLine])
  {
    v23 = self->_items;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_6;
    v39[3] = &__block_descriptor_40_e49_B32__0__LPComponentView_LPTextStyleable__8Q16_B24l;
    v39[4] = v20;
    v24 = [(NSMutableArray *)v23 indexOfObjectPassingTest:v39];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0;
    }

    else
    {
      v25 = [(NSMutableArray *)self->_items subarrayWithRange:v24, [(NSMutableArray *)self->_items count]- v24];
    }

    v26 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_11];
    v27 = [v25 filteredArrayUsingPredicate:v26];

    if (v25)
    {
      v28 = [v25 count];
      if (v28 == [v27 count])
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_8;
        v38[3] = &__block_descriptor_64_e49_v32__0__LPComponentView_LPTextStyleable__8Q16_B24l;
        v38[4] = v35;
        v38[5] = v24;
        *&v38[6] = width;
        *&v38[7] = height;
        [v25 enumerateObjectsUsingBlock:v38];
        (v21[2])(v21);
        if (!layoutCopy)
        {
          [v25 enumerateObjectsUsingBlock:&__block_literal_global_17];
        }
      }
    }
  }

  if (layoutCopy)
  {
    v29 = self->_items;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_10;
    v36[3] = &__block_descriptor_41_e49_v32__0__LPComponentView_LPTextStyleable__8Q16_B24l;
    v37 = v16;
    v36[4] = v20;
    [(NSMutableArray *)v29 enumerateObjectsUsingBlock:v36];
  }

  free(v35);
  free(v20);
  v30 = v49[4];
  v31 = v49[5];

  _Block_object_dispose(&v48, 8);
  v32 = v30;
  v33 = v31;
  result.height = v33;
  result.width = v32;
  return result;
}

void __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  [v19 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v19 overrideMaximumNumberOfLines];
  [v19 setOverrideMaximumNumberOfLines:*(*(*(a1 + 32) + 8) + 24) + 1];
  [v19 sizeThatFits:{*(a1 + 40), 1.79769313e308}];
  v14 = (*(a1 + 56) + 16 * a3);
  *v14 = v15;
  v14[1] = v16;
  [v19 setFrame:{0.0, 0.0, v15, v16}];
  v17 = [v19 computedNumberOfLines];
  [v19 setFrame:{v6, v8, v10, v12}];
  if ((*(a1 + 64) & 1) == 0)
  {
    [v19 setOverrideMaximumNumberOfLines:v13];
  }

  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) - v18 + 1;
}

void __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  [v5 sizeThatFits:{*(a1 + 40), 1.79769313e308}];
  v7 = (v6 + 16 * a3);
  *v7 = v8;
  v7[1] = v9;
}

void __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_3(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v3 = *(a1 + 32);
  v23 = *(v3 + 432);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = *(v3 + 416);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_4;
  v13[3] = &unk_1E7A36200;
  v13[4] = v3;
  v13[5] = &v20;
  v5 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v13[6] = &v16;
  v13[7] = v5;
  [v4 enumerateObjectsUsingBlock:v13];
  v6 = v17[3];
  v7 = v21[3];
  v8 = [*(*(a1 + 32) + 416) lastObject];
  [v8 lastLineDescent];
  v10 = v9;
  if (v9 == 0.0)
  {
    v1 = [*(*(a1 + 32) + 464) lastLineDescent];
    [v1 value];
  }

  v11 = v7 + v9 - *(*(a1 + 32) + 432);
  v12 = *(*(a1 + 40) + 8);
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;
  if (v10 == 0.0)
  {
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v18 = v5;
  if (a3)
  {
    [v5 firstLineLeading];
    v7 = v6;
  }

  else
  {
    v8 = [*(a1[4] + 464) firstLineLeading];
    [v8 value];
    v7 = v9;
  }

  if (v7 != 0.0)
  {
    v10 = *(*(a1[5] + 8) + 24);
    [v18 ascender];
    *(*(a1[5] + 8) + 24) = floor(v7 + v10 - v11);
  }

  v12 = a1[7] + 32 * a3;
  v13 = *(*(a1[5] + 8) + 24);
  v14 = a1[8];
  *v12 = *(a1[4] + 440);
  *(v12 + 8) = v13;
  *(v12 + 16) = v14;
  *(v12 + 24) = 0;
  v15 = (a1[10] + 16 * a3);
  v16 = *v15;
  *(v12 + 24) = v15[1];
  *(*(a1[6] + 8) + 24) = fmax(*(*(a1[6] + 8) + 24), v16);
  *(*(a1[5] + 8) + 24) = CGRectGetMaxY(*v12);
  if ([*(a1[4] + 464) shouldAlignToBaselines])
  {
    [v18 descender];
    *(*(a1[5] + 8) + 24) = v17 + *(*(a1[5] + 8) + 24);
  }
}

void __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 overrideMaximumNumberOfLines];
  [v12 setOverrideMaximumNumberOfLines:1];
  v8 = *(a1 + 48);
  [v12 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
  v9 = (v8 + 16 * a3);
  *v9 = v10;
  v9[1] = v11;
  (*(*(a1 + 32) + 16))();
  if ((*(a1 + 72) & 1) == 0)
  {
    [v12 setOverrideMaximumNumberOfLines:v7];
  }

  if (*(*(*(a1 + 40) + 8) + 40) <= *(a1 + 64))
  {
    *a4 = 1;
  }
}

uint64_t __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 fallbackFont];

  if (v6)
  {
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v5 setFrame:{*(*(a1 + 32) + 32 * a3), *(*(a1 + 32) + 32 * a3 + 8), *(*(a1 + 32) + 32 * a3 + 16), *(*(a1 + 32) + 32 * a3 + 24)}];
    v15 = [v5 computedNumberOfLines];
    v16 = [v5 textIsTruncated];
    [v5 setFrame:{v8, v10, v12, v14}];
    if (v15 == 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

BOOL __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 preferredFont];
    if (v3)
    {
      v4 = [v2 fallbackFont];
      v5 = v4 != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 fallbackFont];
  [v11 setFont:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v11 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
  v8 = (v6 + 16 * v7 + 16 * a3);
  *v8 = v9;
  v8[1] = v10;
}

void __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 preferredFont];
  [v3 setFont:v2];
}

void __66__LPVerticalTextStackView__layoutTextStackForSize_applyingLayout___block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(a1 + 40) & 1) == 0)
  {
    [v5 setOverrideMaximumNumberOfLines:0];
  }

  [v5 setFrame:{*(*(a1 + 32) + 32 * a3), *(*(a1 + 32) + 32 * a3 + 8), *(*(a1 + 32) + 32 * a3 + 16), *(*(a1 + 32) + 32 * a3 + 24)}];
}

@end