@interface MultilineStackView
- (BOOL)_justifiedLayoutWouldCrushWhenAddingView:(id)view toRowViews:(id)views availableRowWidth:(double)width;
- (CGSize)intrinsicContentSize;
- (MultilineStackView)initWithHorizontalArrangement:(unint64_t)arrangement verticalArrangement:(unint64_t)verticalArrangement;
- (UIEdgeInsets)edgeInsets;
- (id)_appendRowViewWithViews:(id)views topAnchor:(id)anchor topInset:(double)inset rowContentWidth:(double)width availableRowWidth:(double)rowWidth rowHeight:(double)height constraints:(id)constraints;
- (void)_computeJustifiedRowWithViews:(id)views itemWidth:(double)width rowView:(id)view constraints:(id)constraints;
- (void)_computeLayout;
- (void)_computeLayoutIfNeeded;
- (void)_computeLeadingRowWithViews:(id)views rowView:(id)view constraints:(id)constraints;
- (void)_computeMaximumRowWithViews:(id)views interItemSpace:(double)space rowView:(id)view constraints:(id)constraints;
- (void)_computeTrailingRowWithViews:(id)views rowView:(id)view constraints:(id)constraints;
- (void)_prepareSubviewsForReuse:(id)reuse;
- (void)addArrangedSubview:(id)subview;
- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index;
- (void)removeArrangedSubview:(id)subview;
- (void)setArrangedSubviews:(id)subviews;
- (void)setBounds:(CGRect)bounds;
- (void)setCalculatedHeight:(double)height;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setFrame:(CGRect)frame;
- (void)setInterItemHorizontalPadding:(double)padding;
- (void)setInterItemVerticalPadding:(double)padding;
- (void)traitCollectionDidChange:(id)change;
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

- (void)_computeJustifiedRowWithViews:(id)views itemWidth:(double)width rowView:(id)view constraints:(id)constraints
{
  viewsCopy = views;
  viewCopy = view;
  constraintsCopy = constraints;
  leadingAnchor = [viewCopy leadingAnchor];
  if ([viewsCopy count])
  {
    v13 = 0;
    v14 = 0.0;
    v15 = @"MapsWidthConstraint";
    while (1)
    {
      v16 = [viewsCopy objectAtIndexedSubscript:v13];
      [viewCopy addSubview:v16];
      leadingAnchor2 = [v16 leadingAnchor];
      v18 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor constant:v14];
      [constraintsCopy addObject:v18];

      verticalArrangement = [(MultilineStackView *)self verticalArrangement];
      if (verticalArrangement == 2)
      {
        topAnchor = [v16 topAnchor];
        topAnchor2 = [viewCopy topAnchor];
        v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [constraintsCopy addObject:v24];

        bottomAnchor = [v16 bottomAnchor];
        bottomAnchor2 = [viewCopy bottomAnchor];
        goto LABEL_9;
      }

      if (verticalArrangement == 1)
      {
        break;
      }

      if (!verticalArrangement)
      {
        bottomAnchor = [v16 topAnchor];
        bottomAnchor2 = [viewCopy topAnchor];
LABEL_9:
        v25 = bottomAnchor2;
        v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [constraintsCopy addObject:v26];
      }

      widthAnchor = [v16 widthAnchor];
      v28 = [widthAnchor constraintEqualToConstant:width];

      [v28 setIdentifier:v15];
      [constraintsCopy addObject:v28];
      if (v13 == [viewsCopy count] - 1)
      {
        trailingAnchor = [v16 trailingAnchor];
        trailingAnchor2 = [viewCopy trailingAnchor];
        [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v39 = v13;
        v31 = v16;
        v32 = leadingAnchor;
        v33 = viewCopy;
        selfCopy = self;
        v36 = v35 = v15;
        [constraintsCopy addObject:v36];

        v15 = v35;
        self = selfCopy;
        viewCopy = v33;
        leadingAnchor = v32;
        v16 = v31;
        v13 = v39;
      }

      trailingAnchor3 = [v16 trailingAnchor];

      [(MultilineStackView *)self interItemHorizontalPadding];
      v14 = v38;

      ++v13;
      leadingAnchor = trailingAnchor3;
      if (v13 >= [viewsCopy count])
      {
        goto LABEL_15;
      }
    }

    bottomAnchor = [v16 centerYAnchor];
    bottomAnchor2 = [viewCopy centerYAnchor];
    goto LABEL_9;
  }

  trailingAnchor3 = leadingAnchor;
LABEL_15:
}

- (void)_computeMaximumRowWithViews:(id)views interItemSpace:(double)space rowView:(id)view constraints:(id)constraints
{
  viewsCopy = views;
  viewCopy = view;
  constraintsCopy = constraints;
  v12 = [viewsCopy count];
  v13 = viewsCopy;
  if (v12)
  {
    firstObject = [viewsCopy firstObject];
    [viewCopy addSubview:firstObject];
    leadingAnchor = [firstObject leadingAnchor];
    leadingAnchor2 = [viewCopy leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [constraintsCopy addObject:v17];

    if ([(MultilineStackView *)self verticalArrangement])
    {
      centerYAnchor = [firstObject centerYAnchor];
      [viewCopy centerYAnchor];
    }

    else
    {
      centerYAnchor = [firstObject topAnchor];
      [viewCopy topAnchor];
    }
    v19 = ;
    v20 = [centerYAnchor constraintEqualToAnchor:v19];
    [constraintsCopy addObject:v20];

    v13 = viewsCopy;
  }

  v21 = [v13 count];
  v22 = viewsCopy;
  if (v21 >= 2)
  {
    lastObject = [viewsCopy lastObject];
    [viewCopy addSubview:lastObject];
    trailingAnchor = [lastObject trailingAnchor];
    trailingAnchor2 = [viewCopy trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [constraintsCopy addObject:v26];

    if ([(MultilineStackView *)self verticalArrangement])
    {
      centerYAnchor2 = [lastObject centerYAnchor];
      [viewCopy centerYAnchor];
    }

    else
    {
      centerYAnchor2 = [lastObject topAnchor];
      [viewCopy topAnchor];
    }
    v28 = ;
    v29 = [centerYAnchor2 constraintEqualToAnchor:v28];
    [constraintsCopy addObject:v29];

    v22 = viewsCopy;
  }

  if ([v22 count] >= 3)
  {
    firstObject2 = [viewsCopy firstObject];
    trailingAnchor3 = [firstObject2 trailingAnchor];

    if ([viewsCopy count] - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = 1;
      do
      {
        v33 = [viewsCopy objectAtIndexedSubscript:v32];
        [viewCopy addSubview:v33];
        leadingAnchor3 = [v33 leadingAnchor];
        v35 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:space];
        [constraintsCopy addObject:v35];

        if ([(MultilineStackView *)self verticalArrangement])
        {
          centerYAnchor3 = [v33 centerYAnchor];
          [viewCopy centerYAnchor];
        }

        else
        {
          centerYAnchor3 = [v33 topAnchor];
          [viewCopy topAnchor];
        }
        v37 = ;
        v38 = [centerYAnchor3 constraintEqualToAnchor:v37];
        [constraintsCopy addObject:v38];

        ++v32;
      }

      while (v32 < [viewsCopy count] - 1);
    }
  }
}

- (void)_computeTrailingRowWithViews:(id)views rowView:(id)view constraints:(id)constraints
{
  viewsCopy = views;
  viewCopy = view;
  constraintsCopy = constraints;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100007430;
  v24[4] = sub_100010EB8;
  trailingAnchor = [viewCopy trailingAnchor];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  reverseObjectEnumerator = [viewsCopy reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100570C44;
  v16[3] = &unk_101621F88;
  v13 = viewCopy;
  v17 = v13;
  v14 = constraintsCopy;
  v21 = v24;
  v22 = v23;
  v18 = v14;
  selfCopy = self;
  v15 = viewsCopy;
  v20 = v15;
  [allObjects enumerateObjectsUsingBlock:v16];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
}

- (void)_computeLeadingRowWithViews:(id)views rowView:(id)view constraints:(id)constraints
{
  viewsCopy = views;
  viewCopy = view;
  constraintsCopy = constraints;
  leadingAnchor = [viewCopy leadingAnchor];
  if ([viewsCopy count])
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = [viewsCopy objectAtIndexedSubscript:v11];
      [viewCopy addSubview:v13];
      leadingAnchor2 = [v13 leadingAnchor];
      v15 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor constant:v12];
      [constraintsCopy addObject:v15];

      if ([(MultilineStackView *)self verticalArrangement])
      {
        centerYAnchor = [v13 centerYAnchor];
        [viewCopy centerYAnchor];
      }

      else
      {
        centerYAnchor = [v13 topAnchor];
        [viewCopy topAnchor];
      }
      v17 = ;
      v18 = [centerYAnchor constraintEqualToAnchor:v17];
      [constraintsCopy addObject:v18];

      if (v11 == [viewsCopy count] - 1)
      {
        trailingAnchor = [v13 trailingAnchor];
        trailingAnchor2 = [viewCopy trailingAnchor];
        v21 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
        [constraintsCopy addObject:v21];
      }

      trailingAnchor3 = [v13 trailingAnchor];

      [(MultilineStackView *)self interItemHorizontalPadding];
      v12 = v23;

      ++v11;
      leadingAnchor = trailingAnchor3;
    }

    while (v11 < [viewsCopy count]);
  }

  else
  {
    trailingAnchor3 = leadingAnchor;
  }
}

- (id)_appendRowViewWithViews:(id)views topAnchor:(id)anchor topInset:(double)inset rowContentWidth:(double)width availableRowWidth:(double)rowWidth rowHeight:(double)height constraints:(id)constraints
{
  viewsCopy = views;
  constraintsCopy = constraints;
  anchorCopy = anchor;
  v19 = objc_opt_new();
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MultilineStackView *)self addSubview:v19];
  horizontalArrangement = [(MultilineStackView *)self horizontalArrangement];
  if (horizontalArrangement > 1)
  {
    if (horizontalArrangement == 2)
    {
      -[MultilineStackView _computeMaximumRowWithViews:interItemSpace:rowView:constraints:](self, "_computeMaximumRowWithViews:interItemSpace:rowView:constraints:", viewsCopy, v19, constraintsCopy, (rowWidth - width) / ([viewsCopy count] - 1));
    }

    else if (horizontalArrangement == 3)
    {
      v21 = ([viewsCopy count] - 1);
      [(MultilineStackView *)self interItemHorizontalPadding];
      -[MultilineStackView _computeJustifiedRowWithViews:itemWidth:rowView:constraints:](self, "_computeJustifiedRowWithViews:itemWidth:rowView:constraints:", viewsCopy, v19, constraintsCopy, (rowWidth - v22 * v21) / [viewsCopy count]);
    }
  }

  else if (horizontalArrangement)
  {
    if (horizontalArrangement == 1)
    {
      [(MultilineStackView *)self _computeTrailingRowWithViews:viewsCopy rowView:v19 constraints:constraintsCopy];
    }
  }

  else
  {
    [(MultilineStackView *)self _computeLeadingRowWithViews:viewsCopy rowView:v19 constraints:constraintsCopy];
  }

  leadingAnchor = [v19 leadingAnchor];
  leadingAnchor2 = [(MultilineStackView *)self leadingAnchor];
  [(MultilineStackView *)self edgeInsets];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v25];
  [constraintsCopy addObject:v26];

  trailingAnchor = [v19 trailingAnchor];
  trailingAnchor2 = [(MultilineStackView *)self trailingAnchor];
  [(MultilineStackView *)self edgeInsets];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v29];
  [constraintsCopy addObject:v30];

  topAnchor = [v19 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:anchorCopy constant:inset];

  [constraintsCopy addObject:v32];
  heightAnchor = [v19 heightAnchor];
  v34 = [heightAnchor constraintEqualToConstant:height];
  [constraintsCopy addObject:v34];

  return v19;
}

- (void)_computeLayout
{
  subviews = [(MultilineStackView *)self subviews];
  [(MultilineStackView *)self _prepareSubviewsForReuse:subviews];

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
    topAnchor = [(MultilineStackView *)self topAnchor];
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
            rowHeightBlock = [(MultilineStackView *)self rowHeightBlock];

            if (rowHeightBlock)
            {
              rowHeightBlock2 = [(MultilineStackView *)self rowHeightBlock];
              v20 = (rowHeightBlock2)[2](rowHeightBlock2, v13, v20);
            }

            v62 = v20 + v62;
            v34 = [(MultilineStackView *)self _appendRowViewWithViews:v13 topAnchor:topAnchor topInset:v58 rowContentWidth:v16 availableRowWidth:v21 rowHeight:v9 constraints:v20];
            ++v61;
            v35 = topAnchor;
            v36 = [v13 copy];
            [v59 setObject:v36 forKey:v34];

            [v13 removeAllObjects];
            topAnchor = [v34 bottomAnchor];

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
      rowHeightBlock3 = [(MultilineStackView *)self rowHeightBlock];

      v41 = v58;
      if (rowHeightBlock3)
      {
        rowHeightBlock4 = [(MultilineStackView *)self rowHeightBlock];
        v20 = (rowHeightBlock4)[2](rowHeightBlock4, v13, v20);
      }

      v62 = v20 + v62;
      v43 = [(MultilineStackView *)self _appendRowViewWithViews:v13 topAnchor:topAnchor topInset:v58 rowContentWidth:v16 availableRowWidth:v21 rowHeight:v9 constraints:v20];
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

    customizationBlock = [(MultilineStackView *)self customizationBlock];

    if (customizationBlock)
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

- (void)_prepareSubviewsForReuse:(id)reuse
{
  reuseCopy = reuse;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [reuseCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(reuseCopy);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        [v8 removeFromSuperview];
        constraints = [v8 constraints];
        v10 = [constraints count];

        if (v10)
        {
          v11 = 0;
          do
          {
            constraints2 = [v8 constraints];
            v13 = [constraints2 objectAtIndexedSubscript:v11];

            identifier = [v13 identifier];
            v15 = [identifier isEqualToString:@"MapsWidthConstraint"];

            if (v15)
            {
              [v8 removeConstraint:v13];
            }

            else
            {
              ++v11;
            }

            constraints3 = [v8 constraints];
            v17 = [constraints3 count];
          }

          while (v11 < v17);
        }
      }

      v5 = [reuseCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (BOOL)_justifiedLayoutWouldCrushWhenAddingView:(id)view toRowViews:(id)views availableRowWidth:(double)width
{
  viewCopy = view;
  viewsCopy = views;
  v10 = [viewsCopy count];
  [(MultilineStackView *)self interItemHorizontalPadding];
  v22 = 0u;
  v23 = 0u;
  v12 = (width - v11 * v10) / ([viewsCopy count] + 1);
  v24 = 0u;
  v25 = 0u;
  v13 = viewsCopy;
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

  [viewCopy _maps_intrinsicContentSize];
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = MultilineStackView;
  [(MultilineStackView *)&v4 traitCollectionDidChange:change];
  [(MultilineStackView *)self _computeLayout];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = MultilineStackView;
  [(MultilineStackView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MultilineStackView *)self _computeLayoutIfNeeded];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = MultilineStackView;
  [(MultilineStackView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(MultilineStackView *)self _computeLayoutIfNeeded];
}

- (void)removeArrangedSubview:(id)subview
{
  subviewCopy = subview;
  if ([(NSMutableArray *)self->_arrangedSubviews containsObject:?])
  {
    [(NSMutableArray *)self->_arrangedSubviews removeObject:subviewCopy];
    [(MultilineStackView *)self _computeLayout];
  }
}

- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index
{
  subviewCopy = subview;
  [subviewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NSMutableArray *)self->_arrangedSubviews removeObject:subviewCopy];
  [(NSMutableArray *)self->_arrangedSubviews insertObject:subviewCopy atIndex:index];

  [(MultilineStackView *)self _computeLayout];
}

- (void)addArrangedSubview:(id)subview
{
  subviewCopy = subview;
  if (([(NSMutableArray *)self->_arrangedSubviews containsObject:?]& 1) == 0)
  {
    [subviewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NSMutableArray *)self->_arrangedSubviews addObject:subviewCopy];
    [(MultilineStackView *)self _computeLayout];
  }
}

- (void)setArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5 = [subviewsCopy mutableCopy];
  arrangedSubviews = self->_arrangedSubviews;
  self->_arrangedSubviews = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = subviewsCopy;
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

- (void)setCalculatedHeight:(double)height
{
  if (vabdd_f64(self->_calculatedHeight, height) > 2.22044605e-16)
  {
    self->_calculatedHeight = height;
    [(MultilineStackView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4))), 0xFuLL))) & 1) == 0)
  {
    self->_edgeInsets = insets;
    [(MultilineStackView *)self invalidateLayout];
  }
}

- (void)setInterItemVerticalPadding:(double)padding
{
  if (vabdd_f64(self->_interItemVerticalPadding, padding) >= 2.22044605e-16)
  {
    self->_interItemVerticalPadding = padding;
    [(MultilineStackView *)self invalidateLayout];
  }
}

- (void)setInterItemHorizontalPadding:(double)padding
{
  if (vabdd_f64(self->_interItemHorizontalPadding, padding) >= 2.22044605e-16)
  {
    self->_interItemHorizontalPadding = padding;
    [(MultilineStackView *)self invalidateLayout];
  }
}

- (MultilineStackView)initWithHorizontalArrangement:(unint64_t)arrangement verticalArrangement:(unint64_t)verticalArrangement
{
  v11.receiver = self;
  v11.super_class = MultilineStackView;
  v6 = [(MultilineStackView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_horizontalArrangement = arrangement;
    v6->_verticalArrangement = verticalArrangement;
    v8 = objc_opt_new();
    arrangedSubviews = v7->_arrangedSubviews;
    v7->_arrangedSubviews = v8;
  }

  return v7;
}

@end