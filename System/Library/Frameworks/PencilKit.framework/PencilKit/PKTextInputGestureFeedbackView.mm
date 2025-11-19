@interface PKTextInputGestureFeedbackView
- (PKTextInputGestureFeedbackView)initWithFrame:(CGRect)a3;
- (id)dataSourceController;
- (void)beginShowingReserveSpaceIntro;
- (void)cancelShowingReserveSpaceIntro;
- (void)layoutSubviews;
- (void)setNeedsRefreshFeedbackViews;
@end

@implementation PKTextInputGestureFeedbackView

- (PKTextInputGestureFeedbackView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PKTextInputGestureFeedbackView;
  v3 = [(PKTextInputGestureFeedbackView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKTextInputGestureFeedbackView *)v3 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(PKTextInputGestureFeedbackView *)v4 setBackgroundColor:v5];
  }

  return v4;
}

- (void)setNeedsRefreshFeedbackViews
{
  if (a1)
  {
    if ((*(a1 + 408) & 1) == 0)
    {
      *(a1 + 408) = 1;
      [a1 setNeedsLayout];
      WeakRetained = objc_loadWeakRetained((a1 + 416));
      v3 = [WeakRetained feedbackType];

      if (v3 != 3)
      {

        [(PKTextInputGestureFeedbackView *)a1 cancelShowingReserveSpaceIntro];
      }
    }
  }
}

- (id)dataSourceController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 52);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)cancelShowingReserveSpaceIntro
{
  if (a1)
  {
    v2 = a1[54];
    v3 = [v2 superview];
    v4 = v3;
    if (v3 == a1)
    {
      v5 = [v2 layer];
      v6 = [v5 animationKeys];
      v7 = [v6 count];

      if (v7)
      {
        v8 = MEMORY[0x1E69DD250];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __64__PKTextInputGestureFeedbackView_cancelShowingReserveSpaceIntro__block_invoke;
        v11[3] = &unk_1E82D6E70;
        v12 = v2;
        v13 = a1;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __64__PKTextInputGestureFeedbackView_cancelShowingReserveSpaceIntro__block_invoke_2;
        v9[3] = &unk_1E82D8F30;
        v10 = v12;
        [v8 animateWithDuration:131076 delay:v11 options:v9 animations:0.15 completion:0.0];
      }
    }

    else
    {
    }
  }
}

- (void)layoutSubviews
{
  v117 = *MEMORY[0x1E69E9840];
  v111.receiver = self;
  v111.super_class = PKTextInputGestureFeedbackView;
  [(PKTextInputGestureFeedbackView *)&v111 layoutSubviews];
  v3 = [(PKTextInputGestureFeedbackView *)&self->super.super.super.isa dataSourceController];
  v4 = [v3 referenceElementContent];

  v5 = [(PKTextInputGestureFeedbackView *)&self->super.super.super.isa dataSourceController];
  v6 = [v5 referenceTextRange];
  v8 = v7;

  v9 = [(PKTextInputGestureFeedbackView *)&self->super.super.super.isa dataSourceController];
  v10 = [v9 feedbackType];

  if (!self)
  {
    v103 = v4;
    v15 = 0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    goto LABEL_57;
  }

  if (v10 == 5)
  {
    v11 = 1.0;
    if (!v4)
    {
      v15 = 0;
      v12 = 1.0;
      v13 = 1.0;
      v14 = 1.0;
      goto LABEL_57;
    }

    v12 = 1.0;
    v13 = 1.0;
    v14 = 1.0;
  }

  else
  {
    v13 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
    v11 = *MEMORY[0x1E69DDCE0];
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
    v15 = 0;
    if (!v4 || v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_57;
    }
  }

  v16 = v4[1];
  v17 = [(PKTextInputElement *)v16 coordinateSpace];

  if (v17)
  {
    if (v10 == 5)
    {
      v104 = v14;
      v18 = v13;
      x = self->__reserveSpaceCaretRect.origin.x;
      y = self->__reserveSpaceCaretRect.origin.y;
      width = self->__reserveSpaceCaretRect.size.width;
      height = self->__reserveSpaceCaretRect.size.height;
      WeakRetained = objc_loadWeakRetained(&self->_dataSourceController);
      v24 = [WeakRetained referenceElementContent];

      v109 = y;
      v110 = x;
      v118.origin.x = x;
      v118.origin.y = y;
      v25 = width;
      v118.size.width = width;
      v118.size.height = height;
      if (!CGRectIsNull(v118))
      {
        v26 = v24 ? v24[1] : 0;
        v27 = v26;
        v28 = [(PKTextInputElement *)v27 coordinateSpace];

        if (v28)
        {
          if (v24)
          {
            v29 = v24[1];
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;
          v31 = [(PKTextInputElement *)v30 coordinateSpace];
          v32 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(self, v31, x, y, width, height);
          v109 = v33;
          v110 = v32;
          v25 = v34;
          height = v35;
        }
      }

      v105 = v18;
      v106 = v12;
      v107 = v11;
      v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
      v37 = objc_loadWeakRetained(&self->_dataSourceController);
      v38 = [v37 reserveSpacePlaceholder];

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v39 = [v38 rects];
      v40 = [v39 countByEnumeratingWithState:&v112 objects:v116 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v113;
        v43 = height * 0.6;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v113 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v45 = *(*(&v112 + 1) + 8 * i);
            [v45 rect];
            v46 = v119.origin.x;
            v47 = v119.origin.y;
            v48 = v119.size.width;
            v49 = v119.size.height;
            if (!CGRectIsNull(v119))
            {
              v50 = [v38 shouldIgnoreOrigin];
              if (v50)
              {
                v51 = v110;
              }

              else
              {
                v51 = v46;
              }

              if (v50)
              {
                v52 = v109;
              }

              else
              {
                v52 = v47;
              }

              if (v48 <= v25)
              {
                if (v49 >= v43)
                {
                  v54 = height;
                }

                else
                {
                  v54 = height + v49;
                }

                v55 = [v45 writingDirection];
                v56 = 0.0;
                if (v55 != 1)
                {
                  [(PKTextInputGestureFeedbackView *)self bounds];
                  v56 = v51;
                  v51 = v57;
                }

                v58 = [(PKTextInputFeedbackRect *)v56 rectWithFrame:v52, v51, v54];
                [v36 addObject:v58];

                v59 = height + v52;
                do
                {
                  if (height >= v49)
                  {
                    v60 = v49;
                  }

                  else
                  {
                    v60 = height;
                  }

                  if (v49 - v60 >= v43)
                  {
                    v61 = v60;
                  }

                  else
                  {
                    v61 = v49;
                  }

                  if (v61 >= v43)
                  {
                    [(PKTextInputGestureFeedbackView *)self bounds];
                    v63 = [(PKTextInputFeedbackRect *)0.0 rectWithFrame:v59, v62, v61];
                    [v36 addObject:v63];
                  }

                  v49 = v49 - v61;
                  v59 = v59 + v61;
                }

                while (v49 > 0.0);
              }

              else if (v49 >= height)
              {
                [v36 addObject:{v45, v109}];
              }

              else
              {
                if ([v45 writingDirection] == 1)
                {
                  v53 = v51 - v48;
                }

                else
                {
                  v53 = v51;
                }

                v64 = [(PKTextInputFeedbackRect *)v53 rectWithFrame:v52, v48, height];
                [v36 addObject:v64];
              }
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v112 objects:v116 count:16];
        }

        while (v41);
      }

      v15 = [(PKTextInputElementContent *)v4 rectValuesForSelectionRects:v36 inCoordinateSpace:self visibleOnly:1];

      v12 = v106;
      v11 = v107;
      v14 = v104;
      v13 = v105;
      v10 = 5;
    }

    else
    {
      v15 = [(PKTextInputElementContent *)v4 selectionRectsForRange:v6 inCoordinateSpace:v8 visibleOnly:self, 1];
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_57:

  v65 = [v15 count];
  if (self)
  {
    v66 = v65;
    highlightViews = self->__highlightViews;
    if (highlightViews)
    {
      v68 = highlightViews;
      v69 = [(NSArray *)v68 mutableCopy];
    }

    else
    {
      v69 = [MEMORY[0x1E695DF70] arrayWithCapacity:v65];
    }

    while ([(NSArray *)v69 count]> v66)
    {
      v70 = [(NSArray *)v69 lastObject];
      [v70 removeFromSuperview];

      [(NSArray *)v69 removeLastObject];
    }

    if ([(NSArray *)v69 count]< v66)
    {
      v71 = *MEMORY[0x1E695F058];
      v72 = *(MEMORY[0x1E695F058] + 8);
      v73 = *(MEMORY[0x1E695F058] + 16);
      v74 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        v75 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v71, v72, v73, v74}];
        [(PKTextInputGestureFeedbackView *)self addSubview:v75];
        [(NSArray *)v69 addObject:v75];
      }

      while ([(NSArray *)v69 count]< v66);
    }

    v76 = self->__highlightViews;
    self->__highlightViews = v69;
  }

  if (v4)
  {
    v77 = v4[1];
  }

  else
  {
    v77 = 0;
  }

  v78 = v77;
  v79 = v78;
  if (self)
  {
    v108 = v4;
    if (v10 == 5)
    {
      v82 = [MEMORY[0x1E69DC888] pk_textInputReserveSpaceColor];
      v80 = 5.0;
    }

    else
    {
      v80 = 0.0;
      if (v10 == 2)
      {
        v81 = [v78 selectionHighlightColor];
      }

      else
      {
        if (v10 != 1)
        {
          v82 = 0;
          goto LABEL_79;
        }

        v81 = [MEMORY[0x1E69DC888] pk_textInputDeletionPreviewColor];
      }

      v82 = v81;
    }

LABEL_79:
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v83 = self->__highlightViews;
    v84 = [(NSArray *)v83 countByEnumeratingWithState:&v112 objects:v116 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v113;
      do
      {
        for (j = 0; j != v85; ++j)
        {
          if (*v113 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*(&v112 + 1) + 8 * j);
          [v88 setBackgroundColor:v82];
          [v88 _setCornerRadius:v80];
        }

        v85 = [(NSArray *)v83 countByEnumeratingWithState:&v112 objects:v116 count:16];
      }

      while (v85);
    }

    v4 = v108;
  }

  if ([v15 count])
  {
    v89 = 0;
    v90 = v12 + v14;
    v91 = v11 + v13;
    do
    {
      v92 = [v15 objectAtIndexedSubscript:v89];
      [v92 CGRectValue];
      v94 = v93;
      v96 = v95;
      v98 = v97;
      v100 = v99;

      if (self)
      {
        v101 = self->__highlightViews;
      }

      else
      {
        v101 = 0;
      }

      v102 = [(NSArray *)v101 objectAtIndexedSubscript:v89];
      [v102 setFrame:{v12 + v94, v11 + v96, v98 - v90, v100 - v91}];

      ++v89;
    }

    while (v89 < [v15 count]);
  }

  if (self)
  {
    self->__needsRefresh = 0;
  }
}

void __67__PKTextInputGestureFeedbackView__prepareForReserveSpaceAnimations__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[55];
    v4 = v2[56];
    v5 = v2[57];
    v6 = v2[58];
    v7 = *(v2 + 54);
  }

  else
  {
    v7 = 0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
    v3 = 0.0;
  }

  [v7 setFrame:{v3, v4, v5, v6}];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 432);
  }

  else
  {
    v9 = 0;
  }

  [v9 _setCornerRadius:0.0];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 432);
  }

  else
  {
    v11 = 0;
  }

  [v11 setAlpha:1.0];
  v12 = [MEMORY[0x1E69DC888] pk_textInputReserveSpaceColor];
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 432);
  }

  else
  {
    v14 = 0;
  }

  v15 = v12;
  [v14 setBackgroundColor:v12];
}

- (void)beginShowingReserveSpaceIntro
{
  v75 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 432);
    if (!v2)
    {
      v3 = objc_alloc(MEMORY[0x1E69DD250]);
      v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v5 = *(a1 + 432);
      *(a1 + 432) = v4;

      v2 = *(a1 + 432);
    }

    v6 = v2;
    v7 = [v6 superview];

    if (v7 != a1)
    {
      [a1 addSubview:*(a1 + 432)];
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v8 = *(a1 + 424);
    v9 = [v8 countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v71;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v71 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v70 + 1) + 8 * i) removeFromSuperview];
        }

        v10 = [v8 countByEnumeratingWithState:&v70 objects:v74 count:16];
      }

      while (v10);
    }

    v13 = [*(a1 + 432) layer];
    [v13 removeAllAnimations];

    WeakRetained = objc_loadWeakRetained((a1 + 416));
    v15 = [WeakRetained referenceElementContent];

    v16 = objc_loadWeakRetained((a1 + 416));
    v17 = [v16 referenceTextRange];

    v18 = *(MEMORY[0x1E695F050] + 16);
    v19 = *(MEMORY[0x1E695F050] + 24);
    v20 = v19;
    v21 = *MEMORY[0x1E695F050];
    v22 = *(MEMORY[0x1E695F050] + 8);
    v23 = v18;
    v24 = v22;
    v25 = *MEMORY[0x1E695F050];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = v15 ? v15[1] : 0;
      v27 = v26;
      v28 = [(PKTextInputElement *)v27 coordinateSpace];

      v20 = v19;
      v23 = v18;
      v24 = v22;
      v25 = v21;
      if (v28)
      {
        v25 = [(PKTextInputElementContent *)v15 caretRectForCharacterIndex:v17 inCoordinateSpace:a1];
      }
    }

    *(a1 + 440) = v25;
    *(a1 + 448) = v24;
    *(a1 + 456) = v23;
    *(a1 + 464) = v20;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __67__PKTextInputGestureFeedbackView__prepareForReserveSpaceAnimations__block_invoke;
    v69[3] = &unk_1E82D7148;
    v69[4] = a1;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v69];

    v29 = *(a1 + 432);
    [v29 frame];
    UIRectInset();
    x = v30;
    y = v32;
    width = v34;
    height = v36;
    v38 = objc_loadWeakRetained((a1 + 416));
    v39 = [v38 referenceElementContent];

    if (v39)
    {
      v40 = v39[1];
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    v42 = v41;
    if (v41)
    {
      [v41 selectionClipRectInCoordinateSpace:a1];
      v21 = v43;
      v22 = v44;
      v18 = v45;
      v19 = v46;
    }

    v76.origin.x = v21;
    v76.origin.y = v22;
    v76.size.width = v18;
    v76.size.height = v19;
    if (!CGRectIsNull(v76))
    {
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v79.origin.x = v21;
      v79.origin.y = v22;
      v79.size.width = v18;
      v79.size.height = v19;
      v78 = CGRectIntersection(v77, v79);
      x = v78.origin.x;
      y = v78.origin.y;
      width = v78.size.width;
      height = v78.size.height;
    }

    UIRectInset();
    v56 = v47;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = MEMORY[0x1E69DD250];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __63__PKTextInputGestureFeedbackView_beginShowingReserveSpaceIntro__block_invoke;
    v63[3] = &unk_1E82DBA20;
    v64 = v29;
    v65 = x;
    v66 = y;
    v67 = width;
    v68 = height;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __63__PKTextInputGestureFeedbackView_beginShowingReserveSpaceIntro__block_invoke_2;
    v57[3] = &unk_1E82DC6A0;
    v58 = v64;
    v59 = v56;
    v60 = v49;
    v61 = v51;
    v62 = v53;
    v55 = v64;
    [v54 animateWithDuration:0x20000 delay:v63 options:v57 animations:0.4 completion:0.0];
  }
}

uint64_t __63__PKTextInputGestureFeedbackView_beginShowingReserveSpaceIntro__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 _setCornerRadius:5.0];
}

void __63__PKTextInputGestureFeedbackView_beginShowingReserveSpaceIntro__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__PKTextInputGestureFeedbackView_beginShowingReserveSpaceIntro__block_invoke_3;
    v7[3] = &unk_1E82DBA20;
    v8 = *(a1 + 32);
    v4 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PKTextInputGestureFeedbackView_beginShowingReserveSpaceIntro__block_invoke_4;
    v5[3] = &unk_1E82D8F30;
    v6 = *(a1 + 32);
    [v3 animateWithDuration:0x20000 delay:v7 options:v5 animations:0.1 completion:0.0];
  }
}

uint64_t __63__PKTextInputGestureFeedbackView_beginShowingReserveSpaceIntro__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __63__PKTextInputGestureFeedbackView_beginShowingReserveSpaceIntro__block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) _setCornerRadius:0.0];
    [*(v2 + 32) setAlpha:1.0];
    v3 = *(v2 + 32);

    return [v3 removeFromSuperview];
  }

  return result;
}

uint64_t __64__PKTextInputGestureFeedbackView_cancelShowingReserveSpaceIntro__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = (v2 + 440);
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[3];
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v4 = 0.0;
  }

  [*(a1 + 32) setFrame:{v4, v5, v6, v7}];
  [*(a1 + 32) setAlpha:0.0];
  v8 = *(a1 + 32);

  return [v8 _setCornerRadius:0.0];
}

uint64_t __64__PKTextInputGestureFeedbackView_cancelShowingReserveSpaceIntro__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setAlpha:1.0];
    [*(v2 + 32) _setCornerRadius:0.0];
    v3 = *(v2 + 32);

    return [v3 removeFromSuperview];
  }

  return result;
}

@end