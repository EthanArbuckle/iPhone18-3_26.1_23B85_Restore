@interface AxisAdjustingStackView
- (AxisAdjustingStackView)initWithArrangedTruncatableSubviews:(id)subviews;
- (AxisAdjustingStackView)initWithFrame:(CGRect)frame;
- (AxisAdjustingStackViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (void)_commonInit;
- (void)addArrangedTruncatableSubview:(id)subview;
- (void)addTruncatableView:(id)view;
- (void)dealloc;
- (void)insertArrangedTruncatableSubview:(id)subview atIndex:(unint64_t)index;
- (void)layoutIfNeeded;
- (void)removeArrangedTruncatableSubview:(id)subview;
- (void)removeTruncatableView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateStackViewAxisIfNeeded;
@end

@implementation AxisAdjustingStackView

- (AxisAdjustingStackViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)intrinsicContentSize
{
  delegate = [(AxisAdjustingStackView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_20;
  }

  delegate2 = [(AxisAdjustingStackView *)self delegate];
  shouldPopulateIntrinsicContentSize = [delegate2 shouldPopulateIntrinsicContentSize];

  if ((shouldPopulateIntrinsicContentSize & 1) == 0)
  {
LABEL_20:
    v35.receiver = self;
    v35.super_class = AxisAdjustingStackView;
    [(AxisAdjustingStackView *)&v35 intrinsicContentSize];
    v8 = v27;
    v9 = v28;
    goto LABEL_21;
  }

  arrangedSubviews = [(AxisAdjustingStackView *)self arrangedSubviews];
  v7 = [arrangedSubviews count];

  v8 = 0.0;
  v9 = 0.0;
  if (v7)
  {
    [(AxisAdjustingStackView *)self spacing];
    v9 = v10 * (v7 - 1);
  }

  axis = [(AxisAdjustingStackView *)self axis];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  arrangedSubviews2 = [(AxisAdjustingStackView *)self arrangedSubviews];
  v13 = [arrangedSubviews2 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(arrangedSubviews2);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        [v17 intrinsicContentSize];
        v19 = v18;
        v21 = v20;
        [v17 intrinsicContentSize];
        if (axis == 1)
        {
          if (v22 > v8)
          {
            [v17 intrinsicContentSize];
            v8 = v24;
          }
        }

        else
        {
          v21 = v19;
          if (v23 > v8)
          {
            [v17 intrinsicContentSize];
            v8 = v25;
          }
        }

        v9 = v21 + v9;
      }

      v14 = [arrangedSubviews2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  if (axis != 1)
  {
    v26 = v8;
    v8 = v9;
    v9 = v26;
  }

LABEL_21:
  v29 = v8;
  v30 = v9;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)updateStackViewAxisIfNeeded
{
  if (self->_calculatedIdealEndRouteButtonStackViewAxis)
  {
    return;
  }

  [(AxisAdjustingStackView *)self invalidateIntrinsicContentSize];
  if (![(NSHashTable *)self->_truncatableViews count])
  {
    return;
  }

  v3 = sub_10006F9A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Updating stack view alignment", buf, 0xCu);
  }

  axis = [(AxisAdjustingStackView *)self axis];
  [(AxisAdjustingStackView *)self setAxis:0];
  [(AxisAdjustingStackView *)self setNeedsLayout];
  [(AxisAdjustingStackView *)self layoutIfNeeded];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_truncatableViews;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  v7 = *v19;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      if ([v9 isHiddenOrHasHiddenAncestor])
      {
        v10 = sub_10006F9A4();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        *buf = 134349314;
        selfCopy5 = self;
        v24 = 2112;
        v25 = v9;
        v11 = v10;
        v12 = "[%{public}p] View or ancestor is hidden; ignoring: %@";
        goto LABEL_16;
      }

      v13 = [v9 isTextTruncatedIgnoringLeading:1];
      v10 = sub_10006F9A4();
      v14 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
      if (v13)
      {
        if (v14)
        {
          *buf = 134349314;
          selfCopy5 = self;
          v24 = 2112;
          v25 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] View is truncated: %@", buf, 0x16u);
        }

        [(AxisAdjustingStackView *)self setAxis:1];
        goto LABEL_23;
      }

      if (v14)
      {
        *buf = 134349314;
        selfCopy5 = self;
        v24 = 2112;
        v25 = v9;
        v11 = v10;
        v12 = "[%{public}p] View is NOT truncated: %@";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, buf, 0x16u);
      }

LABEL_17:
    }

    v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_23:

  self->_calculatedIdealEndRouteButtonStackViewAxis = 1;
  if (axis != [(AxisAdjustingStackView *)self axis])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stackViewDidChangeLayout:self];
  }

  v16 = sub_10006F9A4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Finished updating stack view alignment", buf, 0xCu);
  }
}

- (void)removeArrangedTruncatableSubview:(id)subview
{
  subviewCopy = subview;
  v5 = sub_10006F9A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    selfCopy = self;
    v8 = 2112;
    v9 = subviewCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Removing arranged truncatable subview: %@", &v6, 0x16u);
  }

  [(AxisAdjustingStackView *)self removeArrangedSubview:subviewCopy];
  [(AxisAdjustingStackView *)self removeTruncatableView:subviewCopy];
}

- (void)insertArrangedTruncatableSubview:(id)subview atIndex:(unint64_t)index
{
  subviewCopy = subview;
  v7 = sub_10006F9A4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134349570;
    selfCopy = self;
    v10 = 2112;
    v11 = subviewCopy;
    v12 = 2048;
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Inserting arranged truncatable subview: %@ at index: %lu", &v8, 0x20u);
  }

  [(AxisAdjustingStackView *)self insertArrangedSubview:subviewCopy atIndex:index];
  [(AxisAdjustingStackView *)self addTruncatableView:subviewCopy];
}

- (void)addArrangedTruncatableSubview:(id)subview
{
  subviewCopy = subview;
  v5 = sub_10006F9A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    selfCopy = self;
    v8 = 2112;
    v9 = subviewCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Adding arranged truncatable subview: %@", &v6, 0x16u);
  }

  [(AxisAdjustingStackView *)self addArrangedSubview:subviewCopy];
  [(AxisAdjustingStackView *)self addTruncatableView:subviewCopy];
}

- (void)removeTruncatableView:(id)view
{
  viewCopy = view;
  if ([(NSHashTable *)self->_truncatableViews containsObject:viewCopy])
  {
    v5 = sub_10006F9A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349314;
      selfCopy = self;
      v8 = 2112;
      v9 = viewCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Removing truncatable view: %@", &v6, 0x16u);
    }

    [(NSHashTable *)self->_truncatableViews removeObject:viewCopy];
    [(AxisAdjustingStackView *)self _forceUpdateStackViewAlignment];
  }
}

- (void)addTruncatableView:(id)view
{
  viewCopy = view;
  if (![(NSHashTable *)self->_truncatableViews containsObject:viewCopy])
  {
    v5 = sub_10006F9A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349314;
      selfCopy = self;
      v8 = 2112;
      v9 = viewCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Adding truncatable view: %@", &v6, 0x16u);
    }

    [(NSHashTable *)self->_truncatableViews addObject:viewCopy];
    [(AxisAdjustingStackView *)self _forceUpdateStackViewAlignment];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v13.receiver = self;
  v13.super_class = AxisAdjustingStackView;
  changeCopy = change;
  [(AxisAdjustingStackView *)&v13 traitCollectionDidChange:changeCopy];
  traitCollection = [(AxisAdjustingStackView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    v9 = sub_10006F9A4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      traitCollection2 = [(AxisAdjustingStackView *)self traitCollection];
      preferredContentSizeCategory3 = [traitCollection2 preferredContentSizeCategory];
      *buf = 134349314;
      selfCopy = self;
      v16 = 2112;
      v17 = preferredContentSizeCategory3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Preferred content size category changed to %@", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B7555C;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)layoutIfNeeded
{
  v7.receiver = self;
  v7.super_class = AxisAdjustingStackView;
  [(AxisAdjustingStackView *)&v7 layoutIfNeeded];
  [(AxisAdjustingStackView *)self frame];
  v4 = v3;
  if (!CGFloatIsValid() || vabdd_f64(self->_previousWidth, v4) > 2.22044605e-16)
  {
    v5 = sub_10006F9A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      previousWidth = self->_previousWidth;
      *buf = 134349568;
      selfCopy = self;
      v10 = 2048;
      v11 = previousWidth;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Width changed from %f to %f", buf, 0x20u);
    }

    self->_previousWidth = v4;
    [(AxisAdjustingStackView *)self _forceUpdateStackViewAlignment];
  }
}

- (void)_commonInit
{
  v3 = sub_10006F9A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", &v6, 0xCu);
  }

  [(AxisAdjustingStackView *)self setAxis:0];
  v4 = [[NSHashTable alloc] initWithOptions:0 capacity:0];
  truncatableViews = self->_truncatableViews;
  self->_truncatableViews = v4;

  self->_previousWidth = NAN;
}

- (AxisAdjustingStackView)initWithArrangedTruncatableSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v17.receiver = self;
  v17.super_class = AxisAdjustingStackView;
  v5 = [(AxisAdjustingStackView *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(AxisAdjustingStackView *)v5 _commonInit];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = subviewsCopy;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(AxisAdjustingStackView *)v6 addArrangedTruncatableSubview:*(*(&v13 + 1) + 8 * v11), v13];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = sub_10006F9A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = AxisAdjustingStackView;
  [(AxisAdjustingStackView *)&v4 dealloc];
}

- (AxisAdjustingStackView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AxisAdjustingStackView;
  v3 = [(AxisAdjustingStackView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AxisAdjustingStackView *)v3 _commonInit];
  }

  return v4;
}

@end