@interface RAPMultilineAddressLabelTableViewCell
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (RAPAddressDelegate)delegate;
- (RAPMultilineAddressLabelTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UITableView)parentTableView;
- (void)_addressChanged;
- (void)_clearSubviews;
- (void)_contentSizeDidChange;
- (void)_freeformAddressFieldTapped:(id)a3;
- (void)_recalculateConstraints;
- (void)_scrollTextViewSelectedRangeVisible:(id)a3;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateFreeformCellHeightIfNeeded;
- (void)_updateViews;
- (void)initViews;
- (void)setCanEditFreeformAddress:(BOOL)a3;
- (void)setEditableAndTappable:(BOOL)a3;
- (void)setFreeformAddress:(id)a3;
- (void)setLayoutOptions:(id)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation RAPMultilineAddressLabelTableViewCell

- (UITableView)parentTableView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTableView);

  return WeakRetained;
}

- (RAPAddressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_recalculateConstraints
{
  v3 = +[UIFont system17];
  [v3 _mapkit_scaledValueForValue:33.0];
  v5 = v4;

  v6 = +[UIFont system17];
  [v6 _mapkit_scaledValueForValue:-22.0];
  v8 = v7;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self->_topToFirstBaselineConstraints;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v26 + 1) + 8 * v13) setConstant:v5];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_lastBaselineToBottomConstraints;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v22 + 1) + 8 * v18) setConstant:{v8, v22}];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v19 = +[UIFont system17];
  [v19 _mapkit_scaledValueForValue:10.0];
  [(NSLayoutConstraint *)self->_freeformTopConstraint setConstant:?];

  v20 = +[UIFont system17];
  [v20 _mapkit_scaledValueForValue:10.0];
  [(NSLayoutConstraint *)self->_freeformBottomConstraint setConstant:-v21];
}

- (void)_updateFonts
{
  v3 = +[UIFont system17];
  [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setFont:v3];

  v4 = +[UIFont system17];
  [(UITextField *)self->_floorTextField setFont:v4];

  v5 = +[UIFont system17];
  [(UITextField *)self->_buildingTextField setFont:v5];

  v6 = +[UIFont system17];
  [(UITextField *)self->_unitTextField setFont:v6];
}

- (void)_contentSizeDidChange
{
  [(RAPMultilineAddressLabelTableViewCell *)self _updateFonts];

  [(RAPMultilineAddressLabelTableViewCell *)self _recalculateConstraints];
}

- (void)_clearSubviews
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UIView *)self->_containerView subviews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) removeFromSuperview];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_updateViews
{
  [(RAPMultilineAddressLabelTableViewCell *)self _clearSubviews];
  v8 = self->_containerView;
  [(UIView *)v8 addSubview:self->_freeformAddressTextView];
  v3 = objc_alloc_init(NSMutableArray);
  detailViews = self->_detailViews;
  self->_detailViews = v3;

  v5 = [(RAPAddressLayoutOptions *)self->_layoutOptions numberOfEnabledOptions];
  v6 = v8;
  if (v5)
  {
    [(UIView *)v8 addSubview:self->_topHorizontalHairlineView];
    if ([(RAPAddressLayoutOptions *)self->_layoutOptions showFloor])
    {
      [(NSMutableArray *)self->_detailViews addObject:self->_floorTextField];
      [(UIView *)v8 addSubview:self->_floorTextField];
    }

    if ([(RAPAddressLayoutOptions *)self->_layoutOptions showBuilding])
    {
      [(NSMutableArray *)self->_detailViews addObject:self->_buildingTextField];
      [(UIView *)v8 addSubview:self->_buildingTextField];
    }

    if ([(RAPAddressLayoutOptions *)self->_layoutOptions showUnit])
    {
      [(NSMutableArray *)self->_detailViews addObject:self->_unitTextField];
      [(UIView *)v8 addSubview:self->_unitTextField];
    }

    if (v5 >= 2)
    {
      [(UIView *)v8 addSubview:self->_middleVerticalHairlineView];
      [(NSMutableArray *)self->_detailViews insertObject:self->_middleVerticalHairlineView atIndex:1];
    }

    v7 = [(RAPAddressLayoutOptions *)self->_layoutOptions numberOfEnabledOptions]<= 2;
    v6 = v8;
    if (!v7)
    {
      [(UIView *)v8 addSubview:self->_bottomHorizontalHairlineView];
      [(NSMutableArray *)self->_detailViews insertObject:self->_bottomHorizontalHairlineView atIndex:[(NSMutableArray *)self->_detailViews count]- 1];
      v6 = v8;
    }
  }
}

- (void)setLayoutOptions:(id)a3
{
  v6 = a3;
  if (![(RAPAddressLayoutOptions *)self->_layoutOptions isEqual:?])
  {
    v4 = [v6 copy];
    layoutOptions = self->_layoutOptions;
    self->_layoutOptions = v4;

    [(RAPMultilineAddressLabelTableViewCell *)self _updateViews];
    [(RAPMultilineAddressLabelTableViewCell *)self _updateConstraints];
  }
}

- (void)setEditableAndTappable:(BOOL)a3
{
  if (self->_editableAndTappable != a3)
  {
    self->_editableAndTappable = a3;
    if (a3)
    {
      if (!self->_freeformGestureRecognizer)
      {
        v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_freeformAddressFieldTapped:"];
        freeformGestureRecognizer = self->_freeformGestureRecognizer;
        self->_freeformGestureRecognizer = v5;

        freeformAddressTextView = self->_freeformAddressTextView;
        v8 = self->_freeformGestureRecognizer;

        [(TextViewWithPlaceholderText *)freeformAddressTextView addGestureRecognizer:v8];
      }
    }

    else
    {
      [(RAPMultilineAddressLabelTableViewCell *)self setCanEditFreeformAddress:?];
      [(TextViewWithPlaceholderText *)self->_freeformAddressTextView removeGestureRecognizer:self->_freeformGestureRecognizer];
      v4 = self->_freeformGestureRecognizer;
      self->_freeformGestureRecognizer = 0;
    }
  }
}

- (void)setCanEditFreeformAddress:(BOOL)a3
{
  if (self->_canEditFreeformAddress != a3)
  {
    self->_canEditFreeformAddress = a3;
    if (self->_editableAndTappable)
    {
      [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setEditable:?];
    }
  }
}

- (void)_addressChanged
{
  v8 = objc_alloc_init(RAPAddressFields);
  v3 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView text];
  [(RAPAddressFields *)v8 setFreeformAddress:v3];

  v4 = [(UITextField *)self->_floorTextField text];
  [(RAPAddressFields *)v8 setFloor:v4];

  v5 = [(UITextField *)self->_unitTextField text];
  [(RAPAddressFields *)v8 setUnit:v5];

  v6 = [(UITextField *)self->_buildingTextField text];
  [(RAPAddressFields *)v8 setBuilding:v6];

  v7 = [(RAPMultilineAddressLabelTableViewCell *)self delegate];
  [v7 addressTableViewCell:self updatedAddress:v8];
}

- (void)setFreeformAddress:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_freeformAddress isEqualToString:?])
  {
    objc_storeStrong(&self->_freeformAddress, a3);
    [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setText:self->_freeformAddress];
  }

  if ([(RAPMultilineAddressLabelTableViewCell *)self isEditableAndTappable])
  {
    v5 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView text];
    -[RAPMultilineAddressLabelTableViewCell setCanEditFreeformAddress:](self, "setCanEditFreeformAddress:", [v5 length] != 0);
  }

  else
  {
    [(RAPMultilineAddressLabelTableViewCell *)self setCanEditFreeformAddress:1];
  }
}

- (void)_updateFreeformCellHeightIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTableView);
  v4 = [WeakRetained superview];
  [v4 setNeedsLayout];

  v5 = objc_loadWeakRetained(&self->_parentTableView);
  [v5 _maps_reloadCellHeights];

  freeformAddressTextView = self->_freeformAddressTextView;

  [(RAPMultilineAddressLabelTableViewCell *)self _scrollTextViewSelectedRangeVisible:freeformAddressTextView];
}

- (void)textViewDidEndEditing:(id)a3
{
  v5 = a3;
  if ([(RAPMultilineAddressLabelTableViewCell *)self isEditableAndTappable])
  {
    v4 = [v5 text];
    -[RAPMultilineAddressLabelTableViewCell setCanEditFreeformAddress:](self, "setCanEditFreeformAddress:", [v4 length] != 0);
  }
}

- (void)textViewDidChange:(id)a3
{
  [(RAPMultilineAddressLabelTableViewCell *)self _updateFreeformCellHeightIfNeeded];

  [(RAPMultilineAddressLabelTableViewCell *)self _addressChanged];
}

- (void)textViewDidBeginEditing:(id)a3
{
  v3 = [(RAPMultilineAddressLabelTableViewCell *)self analyticTarget];

  [GEOAPPortal captureUserAction:10167 target:v3 value:0];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = [v7 text];
  v9 = +[NSCharacterSet newlineCharacterSet];
  v10 = [v8 componentsSeparatedByCharactersInSet:v9];

  v11 = +[NSCharacterSet newlineCharacterSet];
  v12 = [v6 componentsSeparatedByCharactersInSet:v11];

  v13 = [v10 count];
  v14 = [v12 count] + v13 - 1;
  v15 = [v7 textContainer];

  LOBYTE(v7) = v14 <= [v15 maximumNumberOfLines];
  return v7;
}

- (void)_scrollTextViewSelectedRangeVisible:(id)a3
{
  v30 = a3;
  v4 = [v30 selectedTextRange];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentTableView);
    [v30 firstRectForRange:v4];
    [WeakRetained convertRect:v30 toView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = 0;
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    while (1)
    {
      v32.origin.x = v7;
      v32.origin.y = v9;
      v32.size.width = v11;
      v32.size.height = v13;
      if (CGRectEqualToRect(v32, *&x) || v14 > 9)
      {
        break;
      }

      v19 = objc_loadWeakRetained(&self->_parentTableView);
      [v19 scrollRectToVisible:0 animated:{v7, v9, v11, v13}];

      v20 = objc_loadWeakRetained(&self->_parentTableView);
      [v20 layoutIfNeeded];

      v21 = objc_loadWeakRetained(&self->_parentTableView);
      [v30 firstRectForRange:v4];
      [v21 convertRect:v30 toView:?];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      ++v14;
      width = v11;
      height = v13;
      y = v9;
      x = v7;
      v7 = v23;
      v9 = v25;
      v11 = v27;
      v13 = v29;
    }
  }
}

- (void)_freeformAddressFieldTapped:(id)a3
{
  v7 = a3;
  v4 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView text];
  v5 = [v4 length];

  if (v5)
  {
    if ([v7 state] != 3 || self->_canEditFreeformAddress)
    {
      [(TextViewWithPlaceholderText *)self->_freeformAddressTextView becomeFirstResponder];
      goto LABEL_7;
    }
  }

  else
  {
    [(TextViewWithPlaceholderText *)self->_freeformAddressTextView resignFirstResponder];
  }

  v6 = [(RAPMultilineAddressLabelTableViewCell *)self delegate];
  [v6 userTappedOnAddressTableViewCell:self];

LABEL_7:
}

- (void)_updateConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_topToFirstBaselineConstraints removeAllObjects];
  [(NSMutableArray *)self->_lastBaselineToBottomConstraints removeAllObjects];
  v3 = self->_containerView;
  v4 = objc_alloc_init(NSMutableArray);
  constraints = self->_constraints;
  self->_constraints = v4;

  v6 = objc_alloc_init(NSMutableArray);
  topToFirstBaselineConstraints = self->_topToFirstBaselineConstraints;
  self->_topToFirstBaselineConstraints = v6;

  v8 = objc_alloc_init(NSMutableArray);
  lastBaselineToBottomConstraints = self->_lastBaselineToBottomConstraints;
  self->_lastBaselineToBottomConstraints = v8;

  v10 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView topAnchor];
  v11 = [(UIView *)v3 topAnchor];
  v12 = +[UIFont system17];
  [v12 _mapkit_scaledValueForValue:10.0];
  v13 = [v10 constraintEqualToAnchor:v11 constant:?];
  freeformTopConstraint = self->_freeformTopConstraint;
  self->_freeformTopConstraint = v13;

  v15 = self->_constraints;
  v16 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView leadingAnchor];
  v17 = [(UIView *)v3 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];
  v109[0] = v18;
  v19 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView trailingAnchor];
  v97 = v3;
  v20 = [(UIView *)v3 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-8.0];
  v22 = self->_freeformTopConstraint;
  v109[1] = v21;
  v109[2] = v22;
  v23 = [NSArray arrayWithObjects:v109 count:3];
  [(NSMutableArray *)v15 addObjectsFromArray:v23];

  v24 = objc_alloc_init(NSMutableArray);
  v25 = [(NSMutableArray *)self->_detailViews count];
  v26 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView bottomAnchor];
  if (v25)
  {
    v27 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView topAnchor];
    v28 = +[UIFont system17];
    [v28 _mapkit_scaledValueForValue:10.0];
    v30 = [v26 constraintEqualToAnchor:v27 constant:-v29];
    freeformBottomConstraint = self->_freeformBottomConstraint;
    self->_freeformBottomConstraint = v30;

    [(NSMutableArray *)self->_constraints addObject:self->_freeformBottomConstraint];
    v32 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView heightAnchor];
    +[RAPSeparatorBar thickness];
    v33 = [v32 constraintEqualToConstant:?];
    [v24 addObject:v33];

    v34 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView leadingAnchor];
    v35 = v97;
    v36 = [(UIView *)v97 leadingAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 constant:8.0];
    [v24 addObject:v37];

    v38 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView trailingAnchor];
    v39 = [(UIView *)v97 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:-8.0];
    [v24 addObject:v40];

    v103 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView bottomAnchor];
    v41 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
    if ([(RAPAddressLayoutOptions *)self->_layoutOptions numberOfEnabledOptions]< 3)
    {
      [(UIView *)v97 bottomAnchor];
    }

    else
    {
      [(RAPSeparatorBar *)self->_bottomHorizontalHairlineView topAnchor];
    }
    v102 = ;
    v46 = +[UIFont system17];
    [v46 _mapkit_scaledValueForValue:33.0];
    v48 = v47;

    v49 = +[UIFont system17];
    [v49 _mapkit_scaledValueForValue:-22.0];
    v51 = v50;

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = self->_detailViews;
    v101 = [(NSMutableArray *)obj countByEnumeratingWithState:&v104 objects:v108 count:16];
    v52 = 0;
    if (!v101)
    {
      v99 = 0;
      goto LABEL_32;
    }

    v99 = 0;
    v100 = *v105;
    while (1)
    {
      v53 = 0;
      v54 = v52;
      do
      {
        if (*v105 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v104 + 1) + 8 * v53);
        v56 = [(NSMutableArray *)self->_detailViews firstObject];

        if (v55 == v56)
        {
          v57 = [v55 leadingAnchor];
          v58 = [(UIView *)v35 leadingAnchor];
          v59 = [v57 constraintEqualToAnchor:v58 constant:10.0];
          [v24 addObject:v59];

          v41 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
          v35 = v97;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v55 == *(&self->super.super.super.super.isa + v41[209]))
          {
            v83 = [v55 heightAnchor];
            +[RAPSeparatorBar thickness];
            v84 = [v83 constraintEqualToConstant:?];
            [v24 addObject:v84];

            v85 = [v55 leadingAnchor];
            v86 = [(UIView *)v35 leadingAnchor];
            [v85 constraintEqualToAnchor:v86 constant:8.0];
            v88 = v87 = v35;
            [v24 addObject:v88];

            v67 = [v55 trailingAnchor];
            v68 = [(UIView *)v87 trailingAnchor];
            v89 = [v67 constraintEqualToAnchor:v68 constant:-8.0];
            [v24 addObject:v89];
          }

          else
          {
            v60 = [v55 widthAnchor];
            +[RAPSeparatorBar thickness];
            v61 = [v60 constraintEqualToConstant:?];
            [v24 addObject:v61];

            v62 = [v55 centerXAnchor];
            v63 = [(UIView *)v35 centerXAnchor];
            v64 = [v62 constraintEqualToAnchor:v63];
            [v24 addObject:v64];

            v65 = [v55 topAnchor];
            v66 = [v65 constraintEqualToAnchor:v103 constant:10.0];
            [v24 addObject:v66];

            v67 = [v55 bottomAnchor];
            v68 = [v67 constraintEqualToAnchor:v102 constant:-10.0];
            [v24 addObject:v68];
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_24;
          }

          if (v99)
          {
            v69 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView bottomAnchor];

            v70 = v97;
            if (v103 == v69)
            {
              v71 = [v55 widthAnchor];
              v72 = [v99 widthAnchor];
              v73 = [v71 constraintEqualToAnchor:v72];
              [v24 addObject:v73];

              v70 = v54;
            }

            v74 = [v55 leadingAnchor];
            v75 = [(UIView *)v70 leadingAnchor];
            v76 = [v74 constraintEqualToAnchor:v75 constant:10.0];
            [v24 addObject:v76];

            v77 = [v55 trailingAnchor];
            v78 = [(UIView *)v97 trailingAnchor];
            v79 = [v77 constraintEqualToAnchor:v78 constant:-8.0];
            [v24 addObject:v79];
          }

          v80 = [v55 firstBaselineAnchor];
          v67 = [v80 constraintEqualToAnchor:v103 constant:v48];

          v81 = [v55 lastBaselineAnchor];
          v68 = [v81 constraintEqualToAnchor:v102 constant:v51];

          [v24 addObject:v67];
          [v24 addObject:v68];
          [(NSMutableArray *)self->_topToFirstBaselineConstraints addObject:v67];
          [(NSMutableArray *)self->_lastBaselineToBottomConstraints addObject:v68];
          v82 = v55;

          v99 = v82;
        }

        v35 = v97;
        v41 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
LABEL_24:
        v90 = [(NSMutableArray *)self->_detailViews lastObject];

        if (v55 == v90)
        {
          v91 = [v55 trailingAnchor];
          v92 = [(UIView *)v35 trailingAnchor];
          v93 = [v91 constraintEqualToAnchor:v92 constant:-8.0];
          [v24 addObject:v93];

          v35 = v97;
          v41 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
        }

        v94 = *(&self->super.super.super.super.isa + v41[209]);
        if (v55 == v94)
        {
          v95 = [v94 bottomAnchor];

          v96 = [(UIView *)v35 bottomAnchor];

          v102 = v96;
          v103 = v95;
        }

        v52 = v55;

        v53 = v53 + 1;
        v54 = v52;
      }

      while (v101 != v53);
      v101 = [(NSMutableArray *)obj countByEnumeratingWithState:&v104 objects:v108 count:16];
      if (!v101)
      {
LABEL_32:

        v45 = v103;
        goto LABEL_33;
      }
    }
  }

  v35 = v97;
  v42 = [(UIView *)v97 bottomAnchor];
  v43 = +[UIFont system17];
  [v43 _mapkit_scaledValueForValue:10.0];
  v45 = [v26 constraintEqualToAnchor:v42 constant:-v44];

  [(NSMutableArray *)self->_constraints addObject:v45];
LABEL_33:

  [(NSMutableArray *)self->_constraints addObjectsFromArray:v24];
  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)initViews
{
  v3 = [[TextViewWithPlaceholderText alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  freeformAddressTextView = self->_freeformAddressTextView;
  self->_freeformAddressTextView = v3;

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Add Street or Address [Report an Issue]" value:@"localized string not found" table:0];
  v7 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView placeholderLabel];
  [v7 setText:v6];

  [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setScrollEnabled:0];
  v8 = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView textContainer];
  [v8 setMaximumNumberOfLines:8];

  v9 = [(RAPMultilineAddressLabelTableViewCell *)self traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 5)
  {
    +[UIColor systemGray6Color];
  }

  else
  {
    +[UIColor clearColor];
  }
  v11 = ;
  [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setBackgroundColor:v11];

  [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setDelegate:self];
  v12 = objc_alloc_init(RAPSeparatorBar);
  topHorizontalHairlineView = self->_topHorizontalHairlineView;
  self->_topHorizontalHairlineView = v12;

  v14 = objc_alloc_init(UITextField);
  buildingTextField = self->_buildingTextField;
  self->_buildingTextField = v14;

  v16 = objc_alloc_init(RAPSeparatorBar);
  middleVerticalHairlineView = self->_middleVerticalHairlineView;
  self->_middleVerticalHairlineView = v16;

  v18 = objc_alloc_init(UITextField);
  floorTextField = self->_floorTextField;
  self->_floorTextField = v18;

  v20 = objc_alloc_init(RAPSeparatorBar);
  bottomHorizontalHairlineView = self->_bottomHorizontalHairlineView;
  self->_bottomHorizontalHairlineView = v20;

  v22 = objc_alloc_init(UITextField);
  unitTextField = self->_unitTextField;
  self->_unitTextField = v22;

  [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPSeparatorBar *)self->_topHorizontalHairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_buildingTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPSeparatorBar *)self->_middleVerticalHairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_floorTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPSeparatorBar *)self->_bottomHorizontalHairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_unitTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_buildingTextField setTextAlignment:0];
  [(UITextField *)self->_floorTextField setTextAlignment:0];
  [(UITextField *)self->_unitTextField setTextAlignment:0];
  [(UITextField *)self->_buildingTextField setClearButtonMode:1];
  [(UITextField *)self->_floorTextField setClearButtonMode:1];
  [(UITextField *)self->_unitTextField setClearButtonMode:1];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"Building [Report an Issue]" value:@"localized string not found" table:0];
  [(UITextField *)self->_buildingTextField setPlaceholder:v25];

  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"Floor [Report an Issue]" value:@"localized string not found" table:0];
  [(UITextField *)self->_floorTextField setPlaceholder:v27];

  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"Unit [Report an Issue]" value:@"localized string not found" table:0];
  [(UITextField *)self->_unitTextField setPlaceholder:v29];

  [(UITextField *)self->_floorTextField addTarget:self action:"_addressChanged" forControlEvents:0x20000];
  [(UITextField *)self->_unitTextField addTarget:self action:"_addressChanged" forControlEvents:0x20000];
  [(UITextField *)self->_buildingTextField addTarget:self action:"_addressChanged" forControlEvents:0x20000];
  v30 = objc_alloc_init(UIView);
  containerView = self->_containerView;
  self->_containerView = v30;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  [v32 addSubview:self->_containerView];

  v53 = [(UIView *)self->_containerView leadingAnchor];
  v54 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  v52 = [v54 leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:0.0];
  v55[0] = v51;
  v49 = [(UIView *)self->_containerView trailingAnchor];
  v50 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  v48 = [v50 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48 constant:-0.0];
  v55[1] = v47;
  v46 = [(UIView *)self->_containerView topAnchor];
  v33 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  v34 = [v33 topAnchor];
  v35 = [v46 constraintEqualToAnchor:v34 constant:0.0];
  v55[2] = v35;
  v36 = [(UIView *)self->_containerView bottomAnchor];
  v37 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:-0.0];
  v55[3] = v39;
  v40 = [NSArray arrayWithObjects:v55 count:4];
  [NSLayoutConstraint activateConstraints:v40];

  v41 = [(RAPMultilineAddressLabelTableViewCell *)self traitCollection];
  v42 = [v41 userInterfaceIdiom];

  if (v42 == 5)
  {
    v43 = +[UIColor systemBackgroundColor];
    [(RAPMultilineAddressLabelTableViewCell *)self setBackgroundColor:v43];

    v44 = +[UIColor systemGray6Color];
    [(UIView *)self->_containerView setBackgroundColor:v44];

    v45 = [(UIView *)self->_containerView layer];
    [v45 setCornerRadius:7.5];

    [(UIView *)self->_containerView setClipsToBounds:1];
  }
}

- (RAPMultilineAddressLabelTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = RAPMultilineAddressLabelTableViewCell;
  v4 = [(RAPMultilineAddressLabelTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(RAPMultilineAddressLabelTableViewCell *)v4 initViews];
    [(RAPMultilineAddressLabelTableViewCell *)v5 _updateFonts];
    [(RAPMultilineAddressLabelTableViewCell *)v5 setSelectionStyle:0];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v5 selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v5->_editableAndTappable = 0;
  }

  return v5;
}

@end