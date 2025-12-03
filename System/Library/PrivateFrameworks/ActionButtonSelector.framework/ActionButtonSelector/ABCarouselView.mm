@interface ABCarouselView
- (BOOL)isDragging;
- (double)_itemPageWidth;
- (id)delegate;
- (id)initWithItems:(void *)items selectedIndex:;
- (id)items;
- (id)scrollToItemAtIndex:(int)index animated:;
- (id)setDelegate:(id *)result;
- (uint64_t)scrollGestureRecognizer;
- (void)_addItemViewForItem:(id)item index:(int64_t)index;
- (void)_beginTracking;
- (void)_endTracking;
- (void)_handleScrollGesture:(id)gesture;
- (void)_handleTapGesture:(id)gesture;
- (void)_trackDelta:(double)delta;
- (void)applyAlphaBlend:(double)blend toItemsAtIndexes:;
- (void)layoutSubviews;
- (void)reloadWithItems:(int)items animated:;
- (void)setZPosition:(double)position forItemAtIndex:;
@end

@implementation ABCarouselView

- (id)initWithItems:(void *)items selectedIndex:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (self)
  {
    v32.receiver = self;
    v32.super_class = ABCarouselView;
    v7 = objc_msgSendSuper2(&v32, sel_initWithFrame_, -25.0, -25.0, 50.0, 50.0);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 51, a2);
      v8 = objc_opt_new();
      v9 = self[52];
      self[52] = v8;

      self[54] = items;
      v10 = objc_opt_new();
      v11 = self[59];
      self[59] = v10;

      v12 = objc_opt_new();
      v13 = self[53];
      self[53] = v12;

      traitCollection = [self traitCollection];
      v15 = [traitCollection layoutDirection] == 1;

      if (v15)
      {
        v16 = [self[51] count] + ~self[54];
      }

      else
      {
        v16 = self[54];
      }

      [self _itemPageWidth];
      [self[53] setValue:v17 * v16];
      objc_initWeak(&location, self);
      v18 = MEMORY[0x277D75D18];
      v33[0] = self[53];
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __46__ABCarouselView_initWithItems_selectedIndex___block_invoke;
      v29 = &unk_278BFFD20;
      objc_copyWeak(&v30, &location);
      [v18 _createTransformerWithInputAnimatableProperties:v19 presentationValueChangedCallback:&v26];

      for (i = 0; i < [self[51] count]; ++i)
      {
        v21 = [self[51] objectAtIndexedSubscript:i];
        [self _addItemViewForItem:v21 index:i];
      }

      v22 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleScrollGesture_];
      v23 = self[61];
      self[61] = v22;

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return self;
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
  traitCollection = [(ABCarouselView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  [(ABFloatSpringProperty *)self->_offsetSpring output];
  v16 = v15;
  [(ABCarouselView *)self _itemPageWidth];
  v18 = round(v16 / v17);
  if (layoutDirection == 1)
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
  if (layoutDirection == 1)
  {
    v33 = [(NSMutableArray *)self->_itemViews count]+ ~v33;
  }

  if (self->_selectedIndex != v33)
  {
    self->_selectedIndex = v33;
    [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
    delegate = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      delegate2 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
      [delegate2 carouselView:self didSelectItemAtIndex:self->_selectedIndex];
    }
  }
}

- (void)_handleScrollGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    view = [gestureCopy view];
    [gestureCopy setTranslation:view inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    [(ABCarouselView *)self _beginTracking];
  }

  else if ([gestureCopy state] == 2)
  {
    view2 = [gestureCopy view];
    [gestureCopy translationInView:view2];
    v7 = v6;

    view3 = [gestureCopy view];
    [gestureCopy setTranslation:view3 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    [(ABCarouselView *)self _trackDelta:v7];
  }

  else
  {
    [(ABCarouselView *)self _endTracking];
  }
}

- (void)_handleTapGesture:(id)gesture
{
  itemViews = self->_itemViews;
  view = [gesture view];
  v6 = [(NSMutableArray *)itemViews indexOfObject:view];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    traitCollection = [(ABCarouselView *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    if (layoutDirection == 1)
    {
      v6 = [(NSArray *)self->_items count]+ ~v6;
    }

    [(ABCarouselView *)self _itemPageWidth];
    v10 = v9 * v6;
    offsetSpring = self->_offsetSpring;

    [(ABFloatSpringProperty *)offsetSpring setInput:v10];
  }
}

- (void)_addItemViewForItem:(id)item index:(int64_t)index
{
  itemCopy = item;
  v11 = [[ABCarouselItemView alloc] initWithItem:itemCopy];

  [(ABCarouselView *)self addSubview:v11];
  traitCollection = [(ABCarouselView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  indexCopy = [(NSArray *)self->_items count]+ ~index;
  if (layoutDirection != 1)
  {
    indexCopy = index;
  }

  [(ABCarouselItemView *)v11 setFrame:indexCopy * 49.0 + 0.5 + indexCopy * 50.0, 0.5, 49.0, 49.0];
  v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture_];
  [(ABCarouselItemView *)v11 addGestureRecognizer:v10];
  [(NSMutableArray *)self->_itemViews insertObject:v11 atIndex:index];
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
  if (self)
  {
    self = self[51];
    v1 = vars8;
  }

  return self;
}

- (BOOL)isDragging
{
  if (result)
  {
    return *(result + 440) != 0;
  }

  return result;
}

- (id)scrollToItemAtIndex:(int)index animated:
{
  if (result)
  {
    v5 = result;
    traitCollection = [result traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    if (layoutDirection == 1)
    {
      a2 = [v5[51] count] + ~a2;
    }

    [v5 _itemPageWidth];
    v9 = v8 * a2;
    v10 = v5[53];
    if (index)
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

- (void)reloadWithItems:(int)items animated:
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (self)
  {
    v9 = [v7 differenceFromArray:*(self + 408) withOptions:4];
    if ([v9 hasChanges])
    {
      itemsCopy = items;
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
            changeType = [v15 changeType];
            if (changeType == 1)
            {
              if ([v15 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                object = [object objectAtIndexedSubscript:{objc_msgSend(OUTLINED_FUNCTION_0_1(), "index")}];
                [object removeFromSuperview];

                [object removeObjectAtIndex:{objc_msgSend(OUTLINED_FUNCTION_0_1(), "index")}];
              }
            }

            else if (!changeType)
            {
              if ([v15 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
              {
                object = [v15 object];
                [self _addItemViewForItem:object index:{objc_msgSend(v15, "index")}];
              }

              else
              {
                object = [object objectAtIndexedSubscript:{objc_msgSend(OUTLINED_FUNCTION_0_1(), "associatedIndex")}];
                [*(self + 416) removeObjectAtIndex:{objc_msgSend(v15, "associatedIndex")}];
                [*(self + 416) setObject:object atIndexedSubscript:{objc_msgSend(v15, "index")}];
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
      v22[4] = self;
      v17 = MEMORY[0x23EF01A70](v22);
      v18 = v17;
      if (!itemsCopy || *(self + 440) || *(self + 448))
      {
        (*(v17 + 16))(v17);
      }

      else
      {
        [MEMORY[0x277D75D18] animateWithSpringDuration:0 bounce:v17 initialSpringVelocity:0 delay:0.5 options:0.15 animations:0.0 completion:0.0];
      }

      v9 = v21;
      objc_storeStrong((self + 408), a2);
      [self setNeedsLayout];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setZPosition:(double)position forItemAtIndex:
{
  if (self)
  {
    v5 = [*(self + 416) objectAtIndexedSubscript:a2];
    layer = [v5 layer];
    [layer setZPosition:position];
  }
}

- (void)applyAlphaBlend:(double)blend toItemsAtIndexes:
{
  v10 = a2;
  if (self)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:blend];
    if (ABEqualObjects(v6, self[57]))
    {
      v7 = ABEqualObjects(self[58], v10);

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:blend];
    v9 = self[57];
    self[57] = v8;

    objc_storeStrong(self + 58, a2);
    [self setNeedsLayout];
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
  delegate = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
    [delegate2 carouselViewWillStartDragging:self];
  }
}

- (void)_trackDelta:(double)delta
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

  v13 = v10 + (-1.0 / ((v6 - v10) / v12 + -1.0) + -1.0) / 0.55 * v12 - delta;
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
  delegate = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
    [(ABFloatSpringProperty *)self->_offsetSpring output];
    v18 = v17;
    [(NSNumber *)self->_dragInitialOffset doubleValue];
    [delegate2 carouselView:self didDragToOffset:v18 initialOffset:v19];
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

  delegate = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    delegate2 = [(ABCarouselView *)&self->super.super.super.super.super.isa delegate];
    [delegate2 carouselViewWillEndDragging:self];
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