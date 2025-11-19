@interface MFModernLabelledAtomList
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)baselinePointForRow:(unint64_t)a3;
- (CGRect)_frameForAtomAtIndex:(unint64_t)a3 withStartingPoint:(CGPoint)a4 row:(unint64_t *)a5;
- (CGRect)labelFrame;
- (CGSize)intrinsicContentSize;
- (MFModernLabelledAtomList)initWithLabel:(id)a3 title:(id)a4 atomType:(unint64_t)a5 addressBook:(void *)a6;
- (MFModernLabelledAtomListDelegate)delegate;
- (double)_remainingSpaceForRowAtPoint:(CGPoint)a3;
- (id)addressAtoms;
- (id)atomDisplayStrings;
- (id)passthroughViews;
- (void)_reflow;
- (void)_reflowIfNeeded;
- (void)_setNeedsReflow;
- (void)_updateLastAddressAtomIfNecessary;
- (void)addressAtom:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5;
- (void)addressBookDidChange:(id)a3;
- (void)crossFadeLabelVisibility:(BOOL)a3 atomSeparatorStyle:(int)a4 withAnimationCoordinator:(id)a5;
- (void)dealloc;
- (void)displayContactCardForAddressAtom:(id)a3;
- (void)enumerateAddressAtomsUsingBlock:(id)a3;
- (void)layoutSubviews;
- (void)setAddressAtomScale:(double)a3;
- (void)setAddressAtomSeparatorStyle:(int)a3;
- (void)setAddressAtomTarget:(id)a3 action:(SEL)a4;
- (void)setAddressAtomsArePrimary:(BOOL)a3;
- (void)setAddresses:(id)a3 withCompletion:(id)a4;
- (void)setAtomAlpha:(double)a3;
- (void)setLabelTextColor:(id)a3;
- (void)setLabelVisible:(BOOL)a3;
- (void)setLineSpacing:(double)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setOverrideFont:(id)a3;
- (void)setPrimary:(BOOL)a3;
- (void)setViewsToDodge:(id)a3;
@end

@implementation MFModernLabelledAtomList

- (void)dealloc
{
  [(MFModernLabelledAtomList *)self setAddressAtomTarget:0 action:0];
  [(NSMutableArray *)self->_addressAtoms makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v5.receiver = self;
  v5.super_class = MFModernLabelledAtomList;
  [(MFModernLabelledAtomList *)&v5 dealloc];
}

- (MFModernLabelledAtomList)initWithLabel:(id)a3 title:(id)a4 atomType:(unint64_t)a5 addressBook:(void *)a6
{
  v11 = a3;
  v12 = a4;
  if (pthread_main_np() != 1)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"MFModernLabelledAtomList.m" lineNumber:75 description:@"Current thread must be main"];
  }

  v35.receiver = self;
  v35.super_class = MFModernLabelledAtomList;
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v17 = [(MFModernLabelledAtomList *)&v35 initWithFrame:*MEMORY[0x1E695F058], v14, v15, v16];
  if (v17)
  {
    if (a6)
    {
      v17->_addressBook = CFRetain(a6);
    }

    [(MFModernLabelledAtomList *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFModernLabelledAtomList *)v17 setOpaque:1];
    [(MFModernLabelledAtomList *)v17 setAutoresizesSubviews:0];
    v18 = [MEMORY[0x1E69DC888] mailModernLabelledAtomDefaultTextColor];
    labelTextColor = v17->_labelTextColor;
    v17->_labelTextColor = v18;

    v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v13, v14, v15, v16}];
    label = v17->_label;
    v17->_label = v20;

    [(UILabel *)v17->_label setText:v11];
    [(UILabel *)v17->_label setTextColor:v17->_labelTextColor];
    [(MFModernLabelledAtomList *)v17 addSubview:v17->_label];
    v17->_labelVisible = 1;
    v22 = v17->_label;
    v23 = +[MFModernLabelledAtomList defaultLabelFont];
    [(UILabel *)v22 setFont:v23];

    [(UILabel *)v17->_label setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v17->_label sizeToFit];
    v24 = [v12 copy];
    title = v17->_title;
    v17->_title = v24;

    v17->_atomType = a5;
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    addressAtoms = v17->_addressAtoms;
    v17->_addressAtoms = v26;

    v28 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v13, v14, v15, v16}];
    lastBaselineDeceptionLabel = v17->_lastBaselineDeceptionLabel;
    v17->_lastBaselineDeceptionLabel = v28;

    [(UILabel *)v17->_lastBaselineDeceptionLabel setHidden:1];
    [(UILabel *)v17->_lastBaselineDeceptionLabel setText:@" "];
    [(UILabel *)v17->_lastBaselineDeceptionLabel sizeToFit];
    [(MFModernLabelledAtomList *)v17 addSubview:v17->_lastBaselineDeceptionLabel];
    LODWORD(v30) = 1148846080;
    [(MFModernLabelledAtomList *)v17 setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(MFModernLabelledAtomList *)v17 setContentCompressionResistancePriority:1 forAxis:v31];
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v17 selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  [(MFModernLabelledAtomList *)v17 setAccessibilityIdentifier:*MEMORY[0x1E69ADB68]];

  return v17;
}

- (void)_updateLastAddressAtomIfNecessary
{
  v4 = [(NSMutableArray *)self->_addressAtoms lastObject];
  v3 = [v4 separatorStyle];

  if (!v3)
  {
    v5 = [(NSMutableArray *)self->_addressAtoms lastObject];
    [v5 setSeparatorStyle:2];
  }
}

- (void)setAddresses:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((EFArraysAreEqual() & 1) == 0)
  {
    [(MFModernLabelledAtomList *)self setAddresses:v6];
    v8 = [v6 count];
    v9 = [(MFModernLabelledAtomList *)self addressAtoms];
    v10 = [v9 count];

    if (v10 > v8)
    {
      v11 = v10;
      do
      {
        v12 = [(NSMutableArray *)self->_addressAtoms lastObject];
        [v12 removeFromSuperview];
        [(NSMutableArray *)self->_addressAtoms removeObject:v12];

        --v11;
      }

      while (v11 > v8);
    }

    addressAtoms = self->_addressAtoms;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __56__MFModernLabelledAtomList_setAddresses_withCompletion___block_invoke;
    v24 = &unk_1E80704B8;
    v14 = v6;
    v25 = v14;
    [(NSMutableArray *)addressAtoms enumerateObjectsUsingBlock:&v21];
    if (v10 < v8)
    {
      v20 = v7;
      if (v8 > 0x63)
      {
        addressBook = 0;
      }

      else
      {
        addressBook = self->_addressBook;
      }

      do
      {
        v16 = [MFModernAddressAtom alloc];
        v17 = [v14 objectAtIndexedSubscript:v10];
        v18 = [(MFModernAddressAtom *)v16 initWithAddress:v17 isPhoneNumber:0 maxWidth:addressBook addressBook:0.0];

        if ([(MFModernLabelledAtomList *)self isPrimary])
        {
          v19 = [(MFModernLabelledAtomList *)self isLabelVisible];
        }

        else
        {
          v19 = 1;
        }

        [(MFModernAddressAtom *)v18 setEnabled:v19, v20, v21, v22, v23, v24];
        [(MFModernAddressAtom *)v18 setDelegate:self];
        [(NSMutableArray *)self->_addressAtoms addObject:v18];
        [(MFModernLabelledAtomList *)self addSubview:v18];

        ++v10;
      }

      while (v8 != v10);
      v7 = v20;
      [(MFModernLabelledAtomList *)self _updateLastAddressAtomIfNecessary];
    }

    if (v7)
    {
      v7[2](v7, self);
    }

    [(MFModernLabelledAtomList *)self _reflow];
  }
}

void __56__MFModernLabelledAtomList_setAddresses_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 setAddress:v5];
}

- (CGSize)intrinsicContentSize
{
  [(MFModernLabelledAtomList *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)addressBookDidChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_addressAtoms;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) addressBookDidChange:{v4, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = MFModernLabelledAtomList;
  [(MFModernLabelledAtomList *)&v5 layoutSubviews];
  [(MFModernLabelledAtomList *)self frame];
  Width = CGRectGetWidth(v6);
  v4 = Width - self->_previousWidth;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.00000011920929)
  {
    self->_previousWidth = Width;
    [(MFModernLabelledAtomList *)self _setNeedsReflow];
  }

  [(MFModernLabelledAtomList *)self _reflowIfNeeded];
}

- (void)_reflowIfNeeded
{
  if (*(self + 433))
  {
    [(MFModernLabelledAtomList *)self _reflow];
  }
}

- (void)setPrimary:(BOOL)a3
{
  if (self->_primary != a3)
  {
    self->_primary = a3;
    v5 = objc_opt_class();
    if (a3)
    {
      [v5 primaryLabelFont];
    }

    else
    {
      [v5 defaultLabelFont];
    }
    v6 = ;
    [(UILabel *)self->_label setFont:v6];
    [(UILabel *)self->_label sizeToFit];
  }
}

- (void)setLabelTextColor:(id)a3
{
  v5 = a3;
  if (self->_labelTextColor != v5)
  {
    objc_storeStrong(&self->_labelTextColor, a3);
    [(UILabel *)self->_label setTextColor:v5];
  }
}

- (void)setLineSpacing:(double)a3
{
  if (self->_lineSpacing != a3)
  {
    self->_lineSpacing = a3;
    [(MFModernLabelledAtomList *)self _setNeedsReflow];
  }
}

- (void)addressAtom:(id)a3 searchForDisplayName:(id)a4 emailAddresses:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(MFModernLabelledAtomList *)self delegate];
  [v8 labelledAtomList:self searchForDisplayName:v9 emailAddresses:v7];
}

- (void)displayContactCardForAddressAtom:(id)a3
{
  v5 = a3;
  v4 = [(MFModernLabelledAtomList *)self delegate];
  [v4 labelledAtomList:self displayContactCardForAddressAtom:v5];
}

- (void)enumerateAddressAtomsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(MFModernLabelledAtomList *)self addressAtoms];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MFModernLabelledAtomList_enumerateAddressAtomsUsingBlock___block_invoke;
  v7[3] = &unk_1E80704E0;
  v6 = v4;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)_setNeedsReflow
{
  if ((*(self + 433) & 1) == 0)
  {
    *(self + 433) |= 1u;
    [(MFModernLabelledAtomList *)self setNeedsLayout];
  }
}

- (void)_reflow
{
  v55[1] = *MEMORY[0x1E69E9840];
  *(self + 433) &= ~1u;
  if ([(NSMutableArray *)self->_addressAtoms count])
  {
    v3 = [(MFModernLabelledAtomList *)self effectiveUserInterfaceLayoutDirection];
    v4 = 0.0;
    v50 = 0.0;
    if ([(MFModernLabelledAtomList *)self isLabelVisible])
    {
      v5 = [(UILabel *)self->_label text];
      v54 = *MEMORY[0x1E69DB648];
      v6 = [(UILabel *)self->_label font];
      v55[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      [v5 boundingRectWithSize:1 options:v7 attributes:0 context:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v9 = v8;

      [objc_opt_class() spaceBetweenColonAndFirstAtomNaturalEdge];
      v50 = v9 + v10;
    }

    if (v3 == 1)
    {
      [(MFModernLabelledAtomList *)self bounds];
      v4 = CGRectGetWidth(v56) - v50;
    }

    v53 = 0;
    v11 = [(NSMutableArray *)self->_addressAtoms count];
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v51 = *(MEMORY[0x1E695F058] + 8);
      v52 = *MEMORY[0x1E695F058];
      v15 = *(MEMORY[0x1E695F058] + 16);
      v14 = *(MEMORY[0x1E695F058] + 24);
      v16 = MEMORY[0x1E69DDA98];
      v17 = 0.0;
      v18 = v50;
      v19 = 0.0;
      do
      {
        v20 = [(NSMutableArray *)self->_addressAtoms objectAtIndex:v13];
        if (!v13)
        {
          v21 = [*v16 preferredContentSizeCategory];
          IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v21);

          v23 = 0.0;
          if (IsAccessibilityCategory)
          {
            v23 = v50;
            if (!self->_labelVisible)
            {
              v23 = 0.0;
            }
          }

          [v20 setFirstLineIndent:v23];
        }

        [v20 layoutIfNeeded];
        if (v12)
        {
          ++v53;
          v19 = v51;
          v4 = v52;
          v18 = v15;
          v17 = v14;
        }

        v57.origin.x = v4;
        v57.origin.y = v19;
        v57.size.width = v18;
        v57.size.height = v17;
        MaxX = CGRectGetMaxX(v57);
        v58.origin.x = v4;
        v58.origin.y = v19;
        v58.size.width = v18;
        v58.size.height = v17;
        MaxY = CGRectGetMaxY(v58);
        if (v3 == 1)
        {
          v59.origin.x = v4;
          v59.origin.y = v19;
          v59.size.width = v18;
          v59.size.height = v17;
          MaxX = CGRectGetMinX(v59);
        }

        [(MFModernLabelledAtomList *)self bounds];
        if (CGRectGetWidth(v60) > 0.0)
        {
          [(MFModernLabelledAtomList *)self _frameForAtomAtIndex:v13 withStartingPoint:&v53 row:MaxX, MaxY];
          [v20 setFrame:?];
          v12 = [v20 numberOfLines] > 1;
          [v20 frame];
          v4 = v26;
          v19 = v27;
          v29 = v28;
          v17 = v30;
          [v20 edgeInsets];
          v18 = v29 + v31;
        }

        ++v13;
      }

      while (v11 != v13);
    }

    [(MFModernLabelledAtomList *)self baselinePointForRow:v53];
    v33 = v32;
    self->_numberOfRows = v53 + 1;
    [(MFModernLabelledAtomList *)self frame];
    if (v34 != v33)
    {
      [(MFModernLabelledAtomList *)self setFrame:?];
      [(MFModernLabelledAtomList *)self invalidateIntrinsicContentSize];
    }

    if (v3 == 1)
    {
      [(UILabel *)self->_label frame];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      [(MFModernLabelledAtomList *)self bounds];
      [(UILabel *)self->_label setFrame:v41 - v38, v36, v38, v40];
    }

    [(UILabel *)self->_lastBaselineDeceptionLabel frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [(UILabel *)self->_lastBaselineDeceptionLabel _firstBaselineOffsetFromTop];
    [(UILabel *)self->_lastBaselineDeceptionLabel setFrame:v43, v33 - v48, v45, v47];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained displayStringsDidChangeForLabelledAtomList:self];
  }
}

- (CGRect)_frameForAtomAtIndex:(unint64_t)a3 withStartingPoint:(CGPoint)a4 row:(unint64_t *)a5
{
  x = a4.x;
  v9 = [(NSMutableArray *)self->_addressAtoms objectAtIndex:a4.x, a4.y];
  v10 = [(MFModernLabelledAtomList *)self effectiveUserInterfaceLayoutDirection];
  [(MFModernLabelledAtomList *)self baselinePointForRow:*a5];
  v12 = v11;
  if (!a3)
  {
    v13 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);

    if (IsAccessibilityCategory && self->_labelVisible)
    {
      [(MFModernLabelledAtomList *)self _remainingSpaceForRowAtPoint:x, v12];
      if (v15 >= 1.0)
      {
        [(UILabel *)self->_label origin];
        x = v17;
        [(UILabel *)self->_label bounds];
        [v9 setFirstLineIndent:v18];
      }

      else
      {
        [v9 setFirstLineIndent:0.0];
        ++*a5;
        [(MFModernLabelledAtomList *)self baselinePointForRow:?];
        v12 = v16;
        x = 0.0;
      }
    }
  }

  [(MFModernLabelledAtomList *)self _remainingSpaceForRowAtPoint:x, v12];
  v20 = v19;
  [(MFModernLabelledAtomList *)self bounds];
  Width = CGRectGetWidth(v44);
  if (!a3)
  {
    Width = v20;
  }

  [v9 setMaxWidth:Width];
  [v9 layoutIfNeeded];
  [v9 frame];
  v26 = v24;
  v27 = v25;
  if (v10 == 1)
  {
    CGRectGetWidth(*&v22);
  }

  [v9 edgeInsets];
  UIRoundToViewScale();
  v29 = v28;
  [v9 baselinePoint];
  UIRoundToViewScale();
  v31 = v30;
  v32 = [v9 numberOfLines];
  if (a3 && ([(MFModernLabelledAtomList *)self lineSpacing], v33 > 0.0) && (v45.origin.x = v29, v45.origin.y = v31, v45.size.width = v26, v45.size.height = v27, CGRectGetWidth(v45) > v20))
  {
    ++*a5;
    v34 = MEMORY[0x1E695EFF8];
    if (v10 == 1)
    {
      [(MFModernLabelledAtomList *)self bounds];
      v35 = CGRectGetWidth(v46);
    }

    else
    {
      v35 = *MEMORY[0x1E695EFF8];
    }

    [(MFModernLabelledAtomList *)self _frameForAtomAtIndex:a3 withStartingPoint:a5 row:v35, *(v34 + 8)];
    v29 = v36;
    v31 = v37;
    v26 = v38;
    v27 = v39;
  }

  else if (v32 >= 2)
  {
    *a5 = [v9 numberOfLines] + *a5 - 1;
  }

  v40 = v29;
  v41 = v31;
  v42 = v26;
  v43 = v27;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (double)_remainingSpaceForRowAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v52 = *MEMORY[0x1E69E9840];
  v6 = [(MFModernLabelledAtomList *)self effectiveUserInterfaceLayoutDirection];
  [(MFModernLabelledAtomList *)self bounds];
  v7 = CGRectGetWidth(v53) - x;
  [(MFModernLabelledAtomList *)self baselinePointForRow:0];
  v9 = v8;
  if (v6 == 1)
  {
    v10 = x;
  }

  else
  {
    v10 = v7;
  }

  v46 = v10;
  if (v6 == 1)
  {
    v11 = 0.0;
    v7 = x;
  }

  else
  {
    [(MFModernLabelledAtomList *)self bounds];
    v11 = CGRectGetWidth(v54) - v7;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = [(MFModernLabelledAtomList *)self viewsToDodge];
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v13)
  {
    v14 = y - v9;
    v15 = *v48;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        [v17 frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = [v17 superview];
        [(MFModernLabelledAtomList *)self convertRect:v26 fromView:v19, v21, v23, v25];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v55.origin.x = v28;
        v55.origin.y = v30;
        v55.size.width = v32;
        v55.size.height = v34;
        v57.origin.x = v11;
        v57.origin.y = v14;
        v57.size.width = v7;
        v57.size.height = v9;
        v56 = CGRectIntersection(v55, v57);
        v35 = v56.origin.x;
        v36 = v56.origin.y;
        width = v56.size.width;
        height = v56.size.height;
        if (!CGRectIsEmpty(v56))
        {
          v39 = v35;
          v40 = v36;
          v41 = width;
          v42 = height;
          if (v6 == 1)
          {
            v43 = v45 - CGRectGetMaxX(*&v39);
          }

          else
          {
            v43 = CGRectGetMinX(*&v39) - v45;
          }

          v46 = v43;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v13);
  }

  return v46;
}

- (void)setAddressAtomTarget:(id)a3 action:(SEL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_addressAtoms;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 removeTarget:0 action:0 forControlEvents:{0xFFFFFFFFLL, v12}];
        if (v6)
        {
          [v11 addTarget:v6 action:a4 forControlEvents:64];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setAddressAtomScale:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_addressAtoms;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) setScale:{a3, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setAddressAtomSeparatorStyle:(int)a3
{
  v3 = *&a3;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_addressAtoms;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) setSeparatorStyle:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(MFModernLabelledAtomList *)self _updateLastAddressAtomIfNecessary];
  [(MFModernLabelledAtomList *)self _setNeedsReflow];
}

- (void)setAddressAtomsArePrimary:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_addressAtoms;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) setIsPrimaryAddressAtom:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(MFModernLabelledAtomList *)self _setNeedsReflow];
}

- (CGRect)labelFrame
{
  if ([(MFModernLabelledAtomList *)self isLabelVisible])
  {
    [(UILabel *)self->_label frame];
  }

  else
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setLabelVisible:(BOOL)a3
{
  if (self->_labelVisible != a3)
  {
    v3 = a3;
    self->_labelVisible = a3;
    v5 = 0.0;
    if (a3)
    {
      v5 = 1.0;
    }

    [(UILabel *)self->_label setAlpha:v5];
    v6 = [(NSMutableArray *)self->_addressAtoms firstObject];
    [v6 setEnabled:v3];
    [(MFModernLabelledAtomList *)self _setNeedsReflow];
  }
}

- (id)atomDisplayStrings
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_addressAtoms, "count")}];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_addressAtoms;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) displayString];
        [v3 addObject:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)addressAtoms
{
  v2 = [(NSMutableArray *)self->_addressAtoms copy];

  return v2;
}

- (void)setAtomAlpha:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_addressAtoms;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) setAlpha:{a3, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MFModernLabelledAtomList;
  [(MFModernLabelledAtomList *)&v7 setOpaque:?];
  label = self->_label;
  if (v3)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v6 = ;
  [(UILabel *)label setBackgroundColor:v6];
}

- (id)passthroughViews
{
  v2 = [(NSMutableArray *)self->_addressAtoms copy];

  return v2;
}

- (void)crossFadeLabelVisibility:(BOOL)a3 atomSeparatorStyle:(int)a4 withAnimationCoordinator:(id)a5
{
  v8 = a5;
  if ([(NSMutableArray *)self->_addressAtoms count])
  {
    v9 = [(NSMutableArray *)self->_addressAtoms objectAtIndex:0];
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x4010000000;
    v36[3] = "";
    *&v10 = -1;
    *(&v10 + 1) = -1;
    v37 = v10;
    v38 = v10;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x4010000000;
    v33[3] = "";
    v34 = v10;
    v35 = v10;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__9;
    v31[4] = __Block_byref_object_dispose__9;
    v32 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__9;
    v29[4] = __Block_byref_object_dispose__9;
    v30 = 0;
    v11 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __97__MFModernLabelledAtomList_crossFadeLabelVisibility_atomSeparatorStyle_withAnimationCoordinator___block_invoke;
    v20[3] = &unk_1E8070508;
    v23 = v33;
    v12 = v9;
    v21 = v12;
    v22 = self;
    v28 = a3;
    v27 = a4;
    v24 = v31;
    v25 = v36;
    v26 = v29;
    [v11 performWithoutAnimation:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__MFModernLabelledAtomList_crossFadeLabelVisibility_atomSeparatorStyle_withAnimationCoordinator___block_invoke_2;
    v18[3] = &unk_1E8070530;
    v19 = a3;
    v18[4] = self;
    v18[5] = v29;
    v18[6] = v31;
    v18[7] = v36;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__MFModernLabelledAtomList_crossFadeLabelVisibility_atomSeparatorStyle_withAnimationCoordinator___block_invoke_3;
    v14[3] = &unk_1E806D388;
    v13 = v12;
    v15 = v13;
    v16 = v31;
    v17 = v29;
    [v8 animateAlongsideAnimations:v18 completion:v14];

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v31, 8);

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v36, 8);
  }
}

uint64_t __97__MFModernLabelledAtomList_crossFadeLabelVisibility_atomSeparatorStyle_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v2 = *(*(a1 + 48) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  v7 = [*(a1 + 32) snapshotView];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) layer];
  [v10 setAnchorPoint:{0.0, 0.5}];

  [*(*(*(a1 + 56) + 8) + 40) setFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  [*(a1 + 40) addSubview:*(*(*(a1 + 56) + 8) + 40)];
  [*(a1 + 32) setEnabled:*(a1 + 84)];
  *(*(a1 + 40) + 432) = *(a1 + 84);
  [*(a1 + 40) setAddressAtomSeparatorStyle:*(a1 + 80)];
  [*(a1 + 32) sizeToFit];
  [*(a1 + 40) _reflow];
  [*(a1 + 32) frame];
  v11 = *(*(a1 + 64) + 8);
  v11[4] = v12;
  v11[5] = v13;
  v11[6] = v14;
  v11[7] = v15;
  v16 = [objc_alloc(MEMORY[0x1E69DCF70]) initWithFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  v17 = *(*(a1 + 72) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  [*(*(*(a1 + 72) + 8) + 40) captureSnapshotOfView:*(a1 + 32) withSnapshotType:0];
  [*(*(*(a1 + 72) + 8) + 40) setAlpha:0.0];
  [*(a1 + 40) addSubview:*(*(*(a1 + 72) + 8) + 40)];
  v19 = *(a1 + 32);

  return [v19 setAlpha:0.0];
}

uint64_t __97__MFModernLabelledAtomList_crossFadeLabelVisibility_atomSeparatorStyle_withAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 64))
  {
    v2 = 1.0;
  }

  [*(*(a1 + 32) + 448) setAlpha:v2];
  [*(*(*(a1 + 40) + 8) + 40) setAlpha:1.0];
  [*(*(*(a1 + 48) + 8) + 40) setAlpha:0.0];
  [*(*(*(a1 + 48) + 8) + 40) setFrame:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
  v3 = *(*(a1 + 56) + 8);
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = *(*(*(a1 + 40) + 8) + 40);

  return [v8 setFrame:{v4, v5, v6, v7}];
}

uint64_t __97__MFModernLabelledAtomList_crossFadeLabelVisibility_atomSeparatorStyle_withAnimationCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(*(*(a1 + 40) + 8) + 40) removeFromSuperview];
  v2 = *(*(*(a1 + 48) + 8) + 40);

  return [v2 removeFromSuperview];
}

- (void)setOverrideFont:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DB878];
  [v4 pointSize];
  v6 = [v5 systemFontOfSize:?];
  [(UILabel *)self->_label setFont:v6];
  [(UILabel *)self->_label sizeToFit];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__MFModernLabelledAtomList_setOverrideFont___block_invoke;
  v8[3] = &unk_1E8070558;
  v7 = v4;
  v9 = v7;
  [(MFModernLabelledAtomList *)self enumerateAddressAtomsUsingBlock:v8];
  [(MFModernLabelledAtomList *)self _setNeedsReflow];
}

- (void)setViewsToDodge:(id)a3
{
  v5 = a3;
  if (([(NSArray *)self->_viewsToDodge isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewsToDodge, a3);
    [(MFModernLabelledAtomList *)self _setNeedsReflow];
  }
}

- (CGPoint)baselinePointForRow:(unint64_t)a3
{
  [(UILabel *)self->_label frame];
  MaxY = CGRectGetMaxY(v12);
  [(UILabel *)self->_label _baselineOffsetFromBottom];
  v6 = MaxY - v5;
  v7 = *MEMORY[0x1E695EFF8];
  [(MFModernLabelledAtomList *)self lineSpacing];
  UIRoundToViewScale();
  v9 = v6 + v8;
  v10 = v7;
  result.y = v9;
  result.x = v10;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MFModernLabelledAtomList *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(MFModernLabelledAtomList *)self superview];
  [v15 convertPoint:self fromView:{x, y}];
  v17 = v16;
  v19 = v18;

  if ([(NSMutableArray *)self->_addressAtoms count])
  {
    v20 = [(NSMutableArray *)self->_addressAtoms objectAtIndex:0];
    [v20 baselinePoint];
    v22 = v21;
    [v20 frame];
    v14 = v14 + (v23 - v22) * 2.0;
    v10 = v10 - (v23 - v22);
  }

  v24 = v8;
  v25 = v10;
  v26 = v12;
  v27 = v14;
  v28 = v17;
  v29 = v19;

  return CGRectContainsPoint(*&v24, *&v28);
}

- (MFModernLabelledAtomListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end