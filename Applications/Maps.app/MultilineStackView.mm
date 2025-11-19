@interface MultilineStackView
- (BOOL)_justifiedLayoutWouldCrushWhenAddingView:(id)a3 toRowViews:(id)a4 availableRowWidth:(double)a5;
- (CGSize)intrinsicContentSize;
- (MultilineStackView)initWithHorizontalArrangement:(unint64_t)a3 verticalArrangement:(unint64_t)a4;
- (UIEdgeInsets)edgeInsets;
- (id)_appendRowViewWithViews:(id)a3 topAnchor:(id)a4 topInset:(double)a5 rowContentWidth:(double)a6 availableRowWidth:(double)a7 rowHeight:(double)a8 constraints:(id)a9;
- (void)_computeJustifiedRowWithViews:(id)a3 itemWidth:(double)a4 rowView:(id)a5 constraints:(id)a6;
- (void)_computeLayout;
- (void)_computeLayoutIfNeeded;
- (void)_computeLeadingRowWithViews:(id)a3 rowView:(id)a4 constraints:(id)a5;
- (void)_computeMaximumRowWithViews:(id)a3 interItemSpace:(double)a4 rowView:(id)a5 constraints:(id)a6;
- (void)_computeTrailingRowWithViews:(id)a3 rowView:(id)a4 constraints:(id)a5;
- (void)_prepareSubviewsForReuse:(id)a3;
- (void)addArrangedSubview:(id)a3;
- (void)insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4;
- (void)removeArrangedSubview:(id)a3;
- (void)setArrangedSubviews:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCalculatedHeight:(double)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setFrame:(CGRect)a3;
- (void)setInterItemHorizontalPadding:(double)a3;
- (void)setInterItemVerticalPadding:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MultilineStackView

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_computeJustifiedRowWithViews:(id)a3 itemWidth:(double)a4 rowView:(id)a5 constraints:(id)a6
{
  v40 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v10 leadingAnchor];
  if ([v40 count])
  {
    v13 = 0;
    v14 = 0.0;
    v15 = @"MapsWidthConstraint";
    while (1)
    {
      v16 = [v40 objectAtIndexedSubscript:v13];
      [v10 addSubview:v16];
      v17 = [v16 leadingAnchor];
      v18 = [v17 constraintEqualToAnchor:v12 constant:v14];
      [v11 addObject:v18];

      v19 = [(MultilineStackView *)self verticalArrangement];
      if (v19 == 2)
      {
        v22 = [v16 topAnchor];
        v23 = [v10 topAnchor];
        v24 = [v22 constraintEqualToAnchor:v23];
        [v11 addObject:v24];

        v20 = [v16 bottomAnchor];
        v21 = [v10 bottomAnchor];
        goto LABEL_9;
      }

      if (v19 == 1)
      {
        break;
      }

      if (!v19)
      {
        v20 = [v16 topAnchor];
        v21 = [v10 topAnchor];
LABEL_9:
        v25 = v21;
        v26 = [v20 constraintEqualToAnchor:v21];
        [v11 addObject:v26];
      }

      v27 = [v16 widthAnchor];
      v28 = [v27 constraintEqualToConstant:a4];

      [v28 setIdentifier:v15];
      [v11 addObject:v28];
      if (v13 == [v40 count] - 1)
      {
        v29 = [v16 trailingAnchor];
        v30 = [v10 trailingAnchor];
        [v29 constraintEqualToAnchor:v30];
        v39 = v13;
        v31 = v16;
        v32 = v12;
        v33 = v10;
        v34 = self;
        v36 = v35 = v15;
        [v11 addObject:v36];

        v15 = v35;
        self = v34;
        v10 = v33;
        v12 = v32;
        v16 = v31;
        v13 = v39;
      }

      v37 = [v16 trailingAnchor];

      [(MultilineStackView *)self interItemHorizontalPadding];
      v14 = v38;

      ++v13;
      v12 = v37;
      if (v13 >= [v40 count])
      {
        goto LABEL_15;
      }
    }

    v20 = [v16 centerYAnchor];
    v21 = [v10 centerYAnchor];
    goto LABEL_9;
  }

  v37 = v12;
LABEL_15:
}

- (void)_computeMaximumRowWithViews:(id)a3 interItemSpace:(double)a4 rowView:(id)a5 constraints:(id)a6
{
  v39 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v39 count];
  v13 = v39;
  if (v12)
  {
    v14 = [v39 firstObject];
    [v10 addSubview:v14];
    v15 = [v14 leadingAnchor];
    v16 = [v10 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v11 addObject:v17];

    if ([(MultilineStackView *)self verticalArrangement])
    {
      v18 = [v14 centerYAnchor];
      [v10 centerYAnchor];
    }

    else
    {
      v18 = [v14 topAnchor];
      [v10 topAnchor];
    }
    v19 = ;
    v20 = [v18 constraintEqualToAnchor:v19];
    [v11 addObject:v20];

    v13 = v39;
  }

  v21 = [v13 count];
  v22 = v39;
  if (v21 >= 2)
  {
    v23 = [v39 lastObject];
    [v10 addSubview:v23];
    v24 = [v23 trailingAnchor];
    v25 = [v10 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v11 addObject:v26];

    if ([(MultilineStackView *)self verticalArrangement])
    {
      v27 = [v23 centerYAnchor];
      [v10 centerYAnchor];
    }

    else
    {
      v27 = [v23 topAnchor];
      [v10 topAnchor];
    }
    v28 = ;
    v29 = [v27 constraintEqualToAnchor:v28];
    [v11 addObject:v29];

    v22 = v39;
  }

  if ([v22 count] >= 3)
  {
    v30 = [v39 firstObject];
    v31 = [v30 trailingAnchor];

    if ([v39 count] - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = 1;
      do
      {
        v33 = [v39 objectAtIndexedSubscript:v32];
        [v10 addSubview:v33];
        v34 = [v33 leadingAnchor];
        v35 = [v34 constraintEqualToAnchor:v31 constant:a4];
        [v11 addObject:v35];

        if ([(MultilineStackView *)self verticalArrangement])
        {
          v36 = [v33 centerYAnchor];
          [v10 centerYAnchor];
        }

        else
        {
          v36 = [v33 topAnchor];
          [v10 topAnchor];
        }
        v37 = ;
        v38 = [v36 constraintEqualToAnchor:v37];
        [v11 addObject:v38];

        ++v32;
      }

      while (v32 < [v39 count] - 1);
    }
  }
}

- (void)_computeTrailingRowWithViews:(id)a3 rowView:(id)a4 constraints:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100007430;
  v24[4] = sub_100010EB8;
  v25 = [v9 trailingAnchor];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v11 = [v8 reverseObjectEnumerator];
  v12 = [v11 allObjects];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100570C44;
  v16[3] = &unk_101621F88;
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v21 = v24;
  v22 = v23;
  v18 = v14;
  v19 = self;
  v15 = v8;
  v20 = v15;
  [v12 enumerateObjectsUsingBlock:v16];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
}

- (void)_computeLeadingRowWithViews:(id)a3 rowView:(id)a4 constraints:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 leadingAnchor];
  if ([v24 count])
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = [v24 objectAtIndexedSubscript:v11];
      [v8 addSubview:v13];
      v14 = [v13 leadingAnchor];
      v15 = [v14 constraintEqualToAnchor:v10 constant:v12];
      [v9 addObject:v15];

      if ([(MultilineStackView *)self verticalArrangement])
      {
        v16 = [v13 centerYAnchor];
        [v8 centerYAnchor];
      }

      else
      {
        v16 = [v13 topAnchor];
        [v8 topAnchor];
      }
      v17 = ;
      v18 = [v16 constraintEqualToAnchor:v17];
      [v9 addObject:v18];

      if (v11 == [v24 count] - 1)
      {
        v19 = [v13 trailingAnchor];
        v20 = [v8 trailingAnchor];
        v21 = [v19 constraintLessThanOrEqualToAnchor:v20];
        [v9 addObject:v21];
      }

      v22 = [v13 trailingAnchor];

      [(MultilineStackView *)self interItemHorizontalPadding];
      v12 = v23;

      ++v11;
      v10 = v22;
    }

    while (v11 < [v24 count]);
  }

  else
  {
    v22 = v10;
  }
}

- (id)_appendRowViewWithViews:(id)a3 topAnchor:(id)a4 topInset:(double)a5 rowContentWidth:(double)a6 availableRowWidth:(double)a7 rowHeight:(double)a8 constraints:(id)a9
{
  v16 = a3;
  v17 = a9;
  v18 = a4;
  v19 = objc_opt_new();
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MultilineStackView *)self addSubview:v19];
  v20 = [(MultilineStackView *)self horizontalArrangement];
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      -[MultilineStackView _computeMaximumRowWithViews:interItemSpace:rowView:constraints:](self, "_computeMaximumRowWithViews:interItemSpace:rowView:constraints:", v16, v19, v17, (a7 - a6) / ([v16 count] - 1));
    }

    else if (v20 == 3)
    {
      v21 = ([v16 count] - 1);
      [(MultilineStackView *)self interItemHorizontalPadding];
      -[MultilineStackView _computeJustifiedRowWithViews:itemWidth:rowView:constraints:](self, "_computeJustifiedRowWithViews:itemWidth:rowView:constraints:", v16, v19, v17, (a7 - v22 * v21) / [v16 count]);
    }
  }

  else if (v20)
  {
    if (v20 == 1)
    {
      [(MultilineStackView *)self _computeTrailingRowWithViews:v16 rowView:v19 constraints:v17];
    }
  }

  else
  {
    [(MultilineStackView *)self _computeLeadingRowWithViews:v16 rowView:v19 constraints:v17];
  }

  v23 = [v19 leadingAnchor];
  v24 = [(MultilineStackView *)self leadingAnchor];
  [(MultilineStackView *)self edgeInsets];
  v26 = [v23 constraintEqualToAnchor:v24 constant:v25];
  [v17 addObject:v26];

  v27 = [v19 trailingAnchor];
  v28 = [(MultilineStackView *)self trailingAnchor];
  [(MultilineStackView *)self edgeInsets];
  v30 = [v27 constraintEqualToAnchor:v28 constant:v29];
  [v17 addObject:v30];

  v31 = [v19 topAnchor];
  v32 = [v31 constraintEqualToAnchor:v18 constant:a5];

  [v17 addObject:v32];
  v33 = [v19 heightAnchor];
  v34 = [v33 constraintEqualToConstant:a8];
  [v17 addObject:v34];

  return v19;
}

- (void)_computeLayout
{
  v3 = [(MultilineStackView *)self subviews];
  [(MultilineStackView *)self _prepareSubviewsForReuse:v3];

  [(MultilineStackView *)self _prepareSubviewsForReuse:self->_arrangedSubviews];
  [(MultilineStackView *)self frame];
  v5 = v4;
  [(MultilineStackView *)self edgeInsets];
  v7 = v6;
  [(MultilineStackView *)self edgeInsets];
  v9 = v5 - (v7 + v8);
  if (v9 <= 2.22044605e-16)
  {
    v38 = [NSNumber numberWithDouble:v5];
    computedWidth = self->_computedWidth;
    self->_computedWidth = v38;

    [(MultilineStackView *)self setCalculatedHeight:0.0];
  }

  else
  {
    v57 = v5;
    [(MultilineStackView *)self edgeInsets];
    v11 = v10;
    [(MultilineStackView *)self edgeInsets];
    v62 = v12 + v11;
    v13 = objc_opt_new();
    v58 = objc_opt_new();
    v59 = +[NSMapTable strongToStrongObjectsMapTable];
    v14 = [(MultilineStackView *)self topAnchor];
    [(MultilineStackView *)self edgeInsets];
    v16 = v15;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = self->_arrangedSubviews;
    v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v17)
    {
      v18 = v17;
      v61 = 0;
      v19 = *v71;
      v20 = 0.0;
      v21 = 0.0;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v71 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v70 + 1) + 8 * i);
          v69[0] = _NSConcreteStackBlock;
          v69[1] = 3221225472;
          v69[2] = sub_100571A18;
          v69[3] = &unk_101661B18;
          v69[4] = v23;
          [UIView performWithoutAnimation:v69];
          [v23 _maps_intrinsicContentSize];
          v25 = v24;
          v27 = v26;
          if ([v13 count])
          {
            [(MultilineStackView *)self interItemHorizontalPadding];
            v29 = v28;
          }

          else
          {
            v29 = 0.0;
          }

          if ([(MultilineStackView *)self horizontalArrangement]== 3)
          {
            v30 = [(MultilineStackView *)self _justifiedLayoutWouldCrushWhenAddingView:v23 toRowViews:v13 availableRowWidth:v9];
          }

          else
          {
            v30 = 0;
          }

          v20 = fmax(v20, v27);
          v31 = v25 + v21 + v29;
          if ([v13 count] && (v31 >= v9) | v30 & 1)
          {
            v32 = [(MultilineStackView *)self rowHeightBlock];

            if (v32)
            {
              v33 = [(MultilineStackView *)self rowHeightBlock];
              v20 = (v33)[2](v33, v13, v20);
            }

            v62 = v20 + v62;
            v34 = [(MultilineStackView *)self _appendRowViewWithViews:v13 topAnchor:v14 topInset:v58 rowContentWidth:v16 availableRowWidth:v21 rowHeight:v9 constraints:v20];
            ++v61;
            v35 = v14;
            v36 = [v13 copy];
            [v59 setObject:v36 forKey:v34];

            [v13 removeAllObjects];
            v14 = [v34 bottomAnchor];

            [(MultilineStackView *)self interItemVerticalPadding];
            v16 = v37;
            [v13 addObject:v23];

            v20 = v27;
            v21 = v25;
          }

          else
          {
            [v13 addObject:v23];
            v21 = v31;
          }
        }

        v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v18);
    }

    else
    {
      v61 = 0;
      v20 = 0.0;
      v21 = 0.0;
    }

    if ([v13 count])
    {
      v40 = [(MultilineStackView *)self rowHeightBlock];

      v41 = v58;
      if (v40)
      {
        v42 = [(MultilineStackView *)self rowHeightBlock];
        v20 = (v42)[2](v42, v13, v20);
      }

      v62 = v20 + v62;
      v43 = [(MultilineStackView *)self _appendRowViewWithViews:v13 topAnchor:v14 topInset:v58 rowContentWidth:v16 availableRowWidth:v21 rowHeight:v9 constraints:v20];
      v44 = [v13 copy];
      [v59 setObject:v44 forKey:v43];

      ++v61;
    }

    else
    {
      v41 = v58;
    }

    [NSLayoutConstraint activateConstraints:v41];
    v45 = [NSNumber numberWithDouble:v57];
    v46 = self->_computedWidth;
    self->_computedWidth = v45;

    v47 = [(MultilineStackView *)self customizationBlock];

    if (v47)
    {
      v68 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v48 = v59;
      v49 = [v48 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v66;
        do
        {
          for (j = 0; j != v50; j = j + 1)
          {
            if (*v66 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = [v48 objectForKey:*(*(&v65 + 1) + 8 * j)];
            v54 = [v53 count];
            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_100571A20;
            v64[3] = &unk_101621F60;
            v64[4] = self;
            v64[5] = v54;
            [v53 enumerateObjectsUsingBlock:v64];
          }

          v50 = [v48 countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v50);
      }

      v41 = v58;
    }

    if (v61)
    {
      [(MultilineStackView *)self interItemVerticalPadding];
      v56 = v62 + v55 * (v61 - 1);
    }

    else
    {
      v56 = v62;
    }

    [(MultilineStackView *)self setCalculatedHeight:v56];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100571AA0;
    v63[3] = &unk_101661B18;
    v63[4] = self;
    [UIView performWithoutAnimation:v63];
  }
}

- (void)_prepareSubviewsForReuse:(id)a3
{
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        [v8 removeFromSuperview];
        v9 = [v8 constraints];
        v10 = [v9 count];

        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = [v8 constraints];
            v13 = [v12 objectAtIndexedSubscript:v11];

            v14 = [v13 identifier];
            v15 = [v14 isEqualToString:@"MapsWidthConstraint"];

            if (v15)
            {
              [v8 removeConstraint:v13];
            }

            else
            {
              ++v11;
            }

            v16 = [v8 constraints];
            v17 = [v16 count];
          }

          while (v11 < v17);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (BOOL)_justifiedLayoutWouldCrushWhenAddingView:(id)a3 toRowViews:(id)a4 availableRowWidth:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 count];
  [(MultilineStackView *)self interItemHorizontalPadding];
  v22 = 0u;
  v23 = 0u;
  v12 = (a5 - v11 * v10) / ([v9 count] + 1);
  v24 = 0u;
  v25 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v22 + 1) + 8 * i) _maps_intrinsicContentSize];
        if (v18 > v12)
        {

          v20 = 1;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  [v8 _maps_intrinsicContentSize];
  v20 = v19 > v12;
LABEL_11:

  return v20;
}

- (void)_computeLayoutIfNeeded
{
  computedWidth = self->_computedWidth;
  if (!computedWidth || ([(NSNumber *)computedWidth cgFloatValue], v5 = v4, [(MultilineStackView *)self frame], vabdd_f64(v5, v6) > 2.22044605e-16))
  {

    [(MultilineStackView *)self _computeLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  [(MultilineStackView *)self frame];
  Width = CGRectGetWidth(v6);
  calculatedHeight = self->_calculatedHeight;
  result.height = calculatedHeight;
  result.width = Width;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = MultilineStackView;
  [(MultilineStackView *)&v4 traitCollectionDidChange:a3];
  [(MultilineStackView *)self _computeLayout];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MultilineStackView;
  [(MultilineStackView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MultilineStackView *)self _computeLayoutIfNeeded];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MultilineStackView;
  [(MultilineStackView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MultilineStackView *)self _computeLayoutIfNeeded];
}

- (void)removeArrangedSubview:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_arrangedSubviews containsObject:?])
  {
    [(NSMutableArray *)self->_arrangedSubviews removeObject:v4];
    [(MultilineStackView *)self _computeLayout];
  }
}

- (void)insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NSMutableArray *)self->_arrangedSubviews removeObject:v6];
  [(NSMutableArray *)self->_arrangedSubviews insertObject:v6 atIndex:a4];

  [(MultilineStackView *)self _computeLayout];
}

- (void)addArrangedSubview:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_arrangedSubviews containsObject:?]& 1) == 0)
  {
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NSMutableArray *)self->_arrangedSubviews addObject:v4];
    [(MultilineStackView *)self _computeLayout];
  }
}

- (void)setArrangedSubviews:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  arrangedSubviews = self->_arrangedSubviews;
  self->_arrangedSubviews = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) setTranslatesAutoresizingMaskIntoConstraints:{0, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(MultilineStackView *)self _computeLayout];
}

- (void)setCalculatedHeight:(double)a3
{
  if (vabdd_f64(self->_calculatedHeight, a3) > 2.22044605e-16)
  {
    self->_calculatedHeight = a3;
    [(MultilineStackView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4))), 0xFuLL))) & 1) == 0)
  {
    self->_edgeInsets = a3;
    [(MultilineStackView *)self invalidateLayout];
  }
}

- (void)setInterItemVerticalPadding:(double)a3
{
  if (vabdd_f64(self->_interItemVerticalPadding, a3) >= 2.22044605e-16)
  {
    self->_interItemVerticalPadding = a3;
    [(MultilineStackView *)self invalidateLayout];
  }
}

- (void)setInterItemHorizontalPadding:(double)a3
{
  if (vabdd_f64(self->_interItemHorizontalPadding, a3) >= 2.22044605e-16)
  {
    self->_interItemHorizontalPadding = a3;
    [(MultilineStackView *)self invalidateLayout];
  }
}

- (MultilineStackView)initWithHorizontalArrangement:(unint64_t)a3 verticalArrangement:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = MultilineStackView;
  v6 = [(MultilineStackView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_horizontalArrangement = a3;
    v6->_verticalArrangement = a4;
    v8 = objc_opt_new();
    arrangedSubviews = v7->_arrangedSubviews;
    v7->_arrangedSubviews = v8;
  }

  return v7;
}

@end