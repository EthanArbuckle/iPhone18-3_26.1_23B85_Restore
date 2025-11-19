@interface ABCarouselView
- (BOOL)isDragging;
- (double)_itemPageWidth;
- (id)delegate;
- (id)initWithItems:(void *)a3 selectedIndex:;
- (id)items;
- (id)scrollToItemAtIndex:(int)a3 animated:;
- (id)setDelegate:(id *)result;
- (uint64_t)scrollGestureRecognizer;
- (void)_addItemViewForItem:(id)a3 index:(int64_t)a4;
- (void)_beginTracking;
- (void)_endTracking;
- (void)_handleScrollGesture:(id)a3;
- (void)_handleTapGesture:(id)a3;
- (void)_trackDelta:(double)a3;
- (void)applyAlphaBlend:(double)a3 toItemsAtIndexes:;
- (void)layoutSubviews;
- (void)reloadWithItems:(int)a3 animated:;
- (void)setZPosition:(double)a3 forItemAtIndex:;
@end

@implementation ABCarouselView

- (id)initWithItems:(void *)a3 selectedIndex:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a1)
  {
    v32.receiver = a1;
    v32.super_class = ABCarouselView;
    v7 = objc_msgSendSuper2(&v32, sel_initWithFrame_, -25.0, -25.0, 50.0, 50.0);
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 51, a2);
      v8 = objc_opt_new();
      v9 = a1[52];
      a1[52] = v8;

      a1[54] = a3;
      v10 = objc_opt_new();
      v11 = a1[59];
      a1[59] = v10;

      v12 = objc_opt_new();
      v13 = a1[53];
      a1[53] = v12;

      v14 = [a1 traitCollection];
      v15 = [v14 layoutDirection] == 1;

      if (v15)
      {
        v16 = [a1[51] count] + ~a1[54];
      }

      else
      {
        v16 = a1[54];
      }

      [a1 _itemPageWidth];
      [a1[53] setValue:v17 * v16];
      objc_initWeak(&location, a1);
      v18 = MEMORY[0x277D75D18];
      v33[0] = a1[53];
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __46__ABCarouselView_initWithItems_selectedIndex___block_invoke;
      v29 = &unk_278BFFD20;
      objc_copyWeak(&v30, &location);
      [v18 _createTransformerWithInputAnimatableProperties:v19 presentationValueChangedCallback:&v26];

      for (i = 0; i < [a1[51] count]; ++i)
      {
        v21 = [a1[51] objectAtIndexedSubscript:i];
        [a1 _addItemViewForItem:v21 index:i];
      }

      v22 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:a1 action:sel__handleScrollGesture_];
      v23 = a1[61];
      a1[61] = v22;

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return a1;
}

void __46__ABCarouselView_initWithItems_selectedIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

unint64_t __43__ABCarouselView_reloadWithItems_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 layoutDirection];

  result = [*(*(a1 + 32) + 416) count];
  if (result)
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v7 = [*(*(a1 + 32) + 416) count] + v6;
      if (v3 != 1)
      {
        v7 = v5;
      }

      v8 = v7 * 49.0 + 0.5 + v7 * 50.0;
      v9 = [*(*(a1 + 32) + 416) objectAtIndexedSubscript:v5];
      [v9 setFrame:{v8, 0.5, 49.0, 49.0}];

      ++v5;
      result = [*(*(a1 + 32) + 416) count];
      --v6;
    }

    while (v5 < result);
  }

  return result;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = ABCarouselView;
  [(ABCarouselView *)&v39 layoutSubviews];
  [(ABCarouselView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(ABFloatSpringProperty *)self->_offsetSpring output];
  v10 = v9;
  [(NSNumber *)self->_decelerationOffset doubleValue];
  if (v11 == v10)
  {
    decelerationOffset = self->_decelerationOffset;
    self->_decelerationOffset = 0;
  }

  [(ABCarouselView *)self setBounds:v10, v4, v6, v8];
  v13 = [(ABCarouselView *)self traitCollection];
  v14 = [v13 layoutDirection];

  [(ABFloatSpringProperty *)self->_offsetSpring output];
  v16 = v15;
  [(ABCarouselView *)self _itemPageWidth];
  v18 = round(v16 / v17);
  if (v14 == 1)
  {
    v18 = ([(NSMutableArray *)self->_itemViews count]- 1) - v18;
  }

  if ([(NSMutableArray *)self->_itemViews count])
  {
    v19 = 0;
    v20 = v18;
    do
    {
      v21 = [(NSMutableArray *)self->_itemViews objectAtIndexedSubscript:v19];
      v22 = v19 - v20;
      if (v22 < 0.0)
      {
        v22 = -v22;
      }

      v23 = fmax(v22, 0.0);
      if (v23 > 1.0)
      {
        v23 = 1.0;
      }

      v24 = ABClamp(v23, 0.0, 1.0);
      v25 = [(NSArray *)self->_items objectAtIndexedSubscript:v19];
      v26 = 0.2;
      if (v25)
      {
        if (v25[8])
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.2;
        }
      }

      [v21 setAlpha:v26 * 0.55 + v24 * (v26 * 0.25 - v26 * 0.55)];
      if (self->_alphaBlend && [(NSIndexSet *)self->_indexesToApplyAlphaBlend containsIndex:v19])
      {
        [(NSNumber *)self->_alphaBlend doubleValue];
        v28 = v27;
        [v21 alpha];
        [v21 setAlpha:v28 * v29];
      }

      CGAffineTransformMakeScale(&v38, v24 * -0.05 + 1.0, v24 * -0.05 + 1.0);
      v37 = v38;
      [v21 setTransform:&v37];

      ++v19;
    }

    while (v19 < [(NSMutableArray *)self->_itemViews count]);
  }

  [(ABFloatSpringProperty *)self->_offsetSpring input];
  v31 = v30;
  [(ABCarouselView *)self _itemPageWidth];
  v33 = llround(v31 / v32);
  if (v14 == 1)
  {
    v33 = [(NSMutableArray *)self->_itemViews count]+ ~v33;
  }

  if (self->_selectedIndex != v33)
  {
    self->_selectedIndex = v33;
    [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
    v34 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      v36 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
      [v36 carouselView:self didSelectItemAtIndex:self->_selectedIndex];
    }
  }
}

- (void)_handleScrollGesture:(id)a3
{
  v9 = a3;
  if ([v9 state] == 1)
  {
    v4 = [v9 view];
    [v9 setTranslation:v4 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    [(ABCarouselView *)self _beginTracking];
  }

  else if ([v9 state] == 2)
  {
    v5 = [v9 view];
    [v9 translationInView:v5];
    v7 = v6;

    v8 = [v9 view];
    [v9 setTranslation:v8 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    [(ABCarouselView *)self _trackDelta:v7];
  }

  else
  {
    [(ABCarouselView *)self _endTracking];
  }
}

- (void)_handleTapGesture:(id)a3
{
  itemViews = self->_itemViews;
  v5 = [a3 view];
  v6 = [(NSMutableArray *)itemViews indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(ABCarouselView *)self traitCollection];
    v8 = [v7 layoutDirection];

    if (v8 == 1)
    {
      v6 = [(NSArray *)self->_items count]+ ~v6;
    }

    [(ABCarouselView *)self _itemPageWidth];
    v10 = v9 * v6;
    offsetSpring = self->_offsetSpring;

    [(ABFloatSpringProperty *)offsetSpring setInput:v10];
  }
}

- (void)_addItemViewForItem:(id)a3 index:(int64_t)a4
{
  v6 = a3;
  v11 = [[ABCarouselItemView alloc] initWithItem:v6];

  [(ABCarouselView *)self addSubview:v11];
  v7 = [(ABCarouselView *)self traitCollection];
  v8 = [v7 layoutDirection];

  v9 = [(NSArray *)self->_items count]+ ~a4;
  if (v8 != 1)
  {
    v9 = a4;
  }

  [(ABCarouselItemView *)v11 setFrame:v9 * 49.0 + 0.5 + v9 * 50.0, 0.5, 49.0, 49.0];
  v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture_];
  [(ABCarouselItemView *)v11 addGestureRecognizer:v10];
  [(NSMutableArray *)self->_itemViews insertObject:v11 atIndex:a4];
}

- (double)_itemPageWidth
{
  [(ABCarouselView *)self _contentWidth];
  v4 = v3;
  [(ABCarouselView *)self _minOffset];
  return (v4 - v5) / ([(NSArray *)self->_items count]- 1);
}

- (id)items
{
  if (a1)
  {
    a1 = a1[51];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)isDragging
{
  if (result)
  {
    return *(result + 440) != 0;
  }

  return result;
}

- (id)scrollToItemAtIndex:(int)a3 animated:
{
  if (result)
  {
    v5 = result;
    v6 = [result traitCollection];
    v7 = [v6 layoutDirection];

    if (v7 == 1)
    {
      a2 = [v5[51] count] + ~a2;
    }

    [v5 _itemPageWidth];
    v9 = v8 * a2;
    v10 = v5[53];
    if (a3)
    {

      return [v10 setInput:v9];
    }

    else
    {

      return [v10 setOutput:v9];
    }
  }

  return result;
}

- (void)reloadWithItems:(int)a3 animated:
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = [v7 differenceFromArray:*(a1 + 408) withOptions:4];
    if ([v9 hasChanges])
    {
      v20 = a3;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = v9;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            v16 = [v15 changeType];
            if (v16 == 1)
            {
              if ([v15 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v3 = [v3 objectAtIndexedSubscript:{objc_msgSend(OUTLINED_FUNCTION_0_1(), "index")}];
                [v3 removeFromSuperview];

                [v3 removeObjectAtIndex:{objc_msgSend(OUTLINED_FUNCTION_0_1(), "index")}];
              }
            }

            else if (!v16)
            {
              if ([v15 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v3 = [v15 object];
                [a1 _addItemViewForItem:v3 index:{objc_msgSend(v15, "index")}];
              }

              else
              {
                v3 = [v3 objectAtIndexedSubscript:{objc_msgSend(OUTLINED_FUNCTION_0_1(), "associatedIndex")}];
                [*(a1 + 416) removeObjectAtIndex:{objc_msgSend(v15, "associatedIndex")}];
                [*(a1 + 416) setObject:v3 atIndexedSubscript:{objc_msgSend(v15, "index")}];
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __43__ABCarouselView_reloadWithItems_animated___block_invoke;
      v22[3] = &unk_278BFFC38;
      v22[4] = a1;
      v17 = MEMORY[0x23EF01A70](v22);
      v18 = v17;
      if (!v20 || *(a1 + 440) || *(a1 + 448))
      {
        (*(v17 + 16))(v17);
      }

      else
      {
        [MEMORY[0x277D75D18] animateWithSpringDuration:0 bounce:v17 initialSpringVelocity:0 delay:0.5 options:0.15 animations:0.0 completion:0.0];
      }

      v9 = v21;
      objc_storeStrong((a1 + 408), a2);
      [a1 setNeedsLayout];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setZPosition:(double)a3 forItemAtIndex:
{
  if (a1)
  {
    v5 = [*(a1 + 416) objectAtIndexedSubscript:a2];
    v4 = [v5 layer];
    [v4 setZPosition:a3];
  }
}

- (void)applyAlphaBlend:(double)a3 toItemsAtIndexes:
{
  v10 = a2;
  if (a1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    if (ABEqualObjects(v6, a1[57]))
    {
      v7 = ABEqualObjects(a1[58], v10);

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v9 = a1[57];
    a1[57] = v8;

    objc_storeStrong(a1 + 58, a2);
    [a1 setNeedsLayout];
  }

LABEL_7:
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 60);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_beginTracking
{
  v3 = MEMORY[0x277CCABB0];
  [(ABFloatSpringProperty *)self->_offsetSpring output];
  v4 = [v3 numberWithDouble:?];
  dragInitialOffset = self->_dragInitialOffset;
  self->_dragInitialOffset = v4;

  [(UISelectionFeedbackGenerator *)self->_feedbackGenerator prepare];
  [(ABFloatSpringProperty *)self->_offsetSpring setTrackingBounce:0.0 duration:0.08];
  [(ABFloatSpringProperty *)self->_offsetSpring setTracking:1];
  v6 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
    [v8 carouselViewWillStartDragging:self];
  }
}

- (void)_trackDelta:(double)a3
{
  [(ABFloatSpringProperty *)self->_offsetSpring input];
  v6 = v5;
  [(ABCarouselView *)self _minOffset];
  v8 = v7;
  [(ABCarouselView *)self _contentWidth];
  if (v8 >= v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v10 > v9)
  {
    v10 = v9;
  }

  v11 = 10.0;
  if (v6 >= v8)
  {
    v12 = 10.0;
  }

  else
  {
    v12 = -10.0;
  }

  v13 = v10 + (-1.0 / ((v6 - v10) / v12 + -1.0) + -1.0) / 0.55 * v12 - a3;
  if (v13 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  if (v13 < v8)
  {
    v11 = -10.0;
  }

  if (v14 <= v9)
  {
    v9 = v14;
  }

  [(ABFloatSpringProperty *)self->_offsetSpring setInput:v9 + (-1.0 / ((v13 - v9) / v11 * 0.55 + 1.0) + 1.0) * v11];
  v15 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v20 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
    [(ABFloatSpringProperty *)self->_offsetSpring output];
    v18 = v17;
    [(NSNumber *)self->_dragInitialOffset doubleValue];
    [v20 carouselView:self didDragToOffset:v18 initialOffset:v19];
  }
}

- (void)_endTracking
{
  dragInitialOffset = self->_dragInitialOffset;
  self->_dragInitialOffset = 0;

  [(ABFloatSpringProperty *)self->_offsetSpring setTracking:0];
  [(UIViewFloatAnimatableProperty *)self->_offsetSpring velocity];
  v5 = v4;
  [(ABFloatSpringProperty *)self->_offsetSpring projectForDeceleration:0.992];
  v7 = v6;
  [(ABCarouselView *)self _minOffset];
  if (v7 >= v8 && ([(ABCarouselView *)self _contentWidth], v7 <= v9))
  {
    offsetSpring = self->_offsetSpring;
    v12 = -v5;
    if (v5 >= 0.0)
    {
      v12 = v5;
    }

    v11 = v12 * 0.05 / 1000.0 + 0.45;
  }

  else
  {
    offsetSpring = self->_offsetSpring;
    v11 = 0.55;
  }

  [(ABFloatSpringProperty *)offsetSpring setBounce:0.175 duration:v11];
  [(ABCarouselView *)self _itemPageWidth];
  v14 = v13 * round(v7 / v13);
  [(ABCarouselView *)self _minOffset];
  v16 = v15;
  [(ABCarouselView *)self _contentWidth];
  [(ABFloatSpringProperty *)self->_offsetSpring setInput:ABClamp(v14, v16, v17)];
  v18 = MEMORY[0x277CCABB0];
  [(ABFloatSpringProperty *)self->_offsetSpring input];
  v19 = [v18 numberWithDouble:?];
  decelerationOffset = self->_decelerationOffset;
  self->_decelerationOffset = v19;

  v21 = self->_dragInitialOffset;
  self->_dragInitialOffset = 0;

  v22 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
    [v24 carouselViewWillEndDragging:self];
  }
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 60, a2);
  }

  return result;
}

- (uint64_t)scrollGestureRecognizer
{
  if (result)
  {
    return *(result + 488);
  }

  return result;
}

@end