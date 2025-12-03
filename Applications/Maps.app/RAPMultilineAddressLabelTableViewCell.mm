@interface RAPMultilineAddressLabelTableViewCell
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (RAPAddressDelegate)delegate;
- (RAPMultilineAddressLabelTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UITableView)parentTableView;
- (void)_addressChanged;
- (void)_clearSubviews;
- (void)_contentSizeDidChange;
- (void)_freeformAddressFieldTapped:(id)tapped;
- (void)_recalculateConstraints;
- (void)_scrollTextViewSelectedRangeVisible:(id)visible;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateFreeformCellHeightIfNeeded;
- (void)_updateViews;
- (void)initViews;
- (void)setCanEditFreeformAddress:(BOOL)address;
- (void)setEditableAndTappable:(BOOL)tappable;
- (void)setFreeformAddress:(id)address;
- (void)setLayoutOptions:(id)options;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
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
  subviews = [(UIView *)self->_containerView subviews];
  v3 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v7 + 1) + 8 * v6) removeFromSuperview];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
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

  numberOfEnabledOptions = [(RAPAddressLayoutOptions *)self->_layoutOptions numberOfEnabledOptions];
  v6 = v8;
  if (numberOfEnabledOptions)
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

    if (numberOfEnabledOptions >= 2)
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

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (![(RAPAddressLayoutOptions *)self->_layoutOptions isEqual:?])
  {
    v4 = [optionsCopy copy];
    layoutOptions = self->_layoutOptions;
    self->_layoutOptions = v4;

    [(RAPMultilineAddressLabelTableViewCell *)self _updateViews];
    [(RAPMultilineAddressLabelTableViewCell *)self _updateConstraints];
  }
}

- (void)setEditableAndTappable:(BOOL)tappable
{
  if (self->_editableAndTappable != tappable)
  {
    self->_editableAndTappable = tappable;
    if (tappable)
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

- (void)setCanEditFreeformAddress:(BOOL)address
{
  if (self->_canEditFreeformAddress != address)
  {
    self->_canEditFreeformAddress = address;
    if (self->_editableAndTappable)
    {
      [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setEditable:?];
    }
  }
}

- (void)_addressChanged
{
  v8 = objc_alloc_init(RAPAddressFields);
  text = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView text];
  [(RAPAddressFields *)v8 setFreeformAddress:text];

  text2 = [(UITextField *)self->_floorTextField text];
  [(RAPAddressFields *)v8 setFloor:text2];

  text3 = [(UITextField *)self->_unitTextField text];
  [(RAPAddressFields *)v8 setUnit:text3];

  text4 = [(UITextField *)self->_buildingTextField text];
  [(RAPAddressFields *)v8 setBuilding:text4];

  delegate = [(RAPMultilineAddressLabelTableViewCell *)self delegate];
  [delegate addressTableViewCell:self updatedAddress:v8];
}

- (void)setFreeformAddress:(id)address
{
  addressCopy = address;
  if (![(NSString *)self->_freeformAddress isEqualToString:?])
  {
    objc_storeStrong(&self->_freeformAddress, address);
    [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setText:self->_freeformAddress];
  }

  if ([(RAPMultilineAddressLabelTableViewCell *)self isEditableAndTappable])
  {
    text = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView text];
    -[RAPMultilineAddressLabelTableViewCell setCanEditFreeformAddress:](self, "setCanEditFreeformAddress:", [text length] != 0);
  }

  else
  {
    [(RAPMultilineAddressLabelTableViewCell *)self setCanEditFreeformAddress:1];
  }
}

- (void)_updateFreeformCellHeightIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_parentTableView);
  superview = [WeakRetained superview];
  [superview setNeedsLayout];

  v5 = objc_loadWeakRetained(&self->_parentTableView);
  [v5 _maps_reloadCellHeights];

  freeformAddressTextView = self->_freeformAddressTextView;

  [(RAPMultilineAddressLabelTableViewCell *)self _scrollTextViewSelectedRangeVisible:freeformAddressTextView];
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  if ([(RAPMultilineAddressLabelTableViewCell *)self isEditableAndTappable])
  {
    text = [editingCopy text];
    -[RAPMultilineAddressLabelTableViewCell setCanEditFreeformAddress:](self, "setCanEditFreeformAddress:", [text length] != 0);
  }
}

- (void)textViewDidChange:(id)change
{
  [(RAPMultilineAddressLabelTableViewCell *)self _updateFreeformCellHeightIfNeeded];

  [(RAPMultilineAddressLabelTableViewCell *)self _addressChanged];
}

- (void)textViewDidBeginEditing:(id)editing
{
  analyticTarget = [(RAPMultilineAddressLabelTableViewCell *)self analyticTarget];

  [GEOAPPortal captureUserAction:10167 target:analyticTarget value:0];
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  textCopy = text;
  viewCopy = view;
  text = [viewCopy text];
  v9 = +[NSCharacterSet newlineCharacterSet];
  v10 = [text componentsSeparatedByCharactersInSet:v9];

  v11 = +[NSCharacterSet newlineCharacterSet];
  v12 = [textCopy componentsSeparatedByCharactersInSet:v11];

  v13 = [v10 count];
  v14 = [v12 count] + v13 - 1;
  textContainer = [viewCopy textContainer];

  LOBYTE(viewCopy) = v14 <= [textContainer maximumNumberOfLines];
  return viewCopy;
}

- (void)_scrollTextViewSelectedRangeVisible:(id)visible
{
  visibleCopy = visible;
  selectedTextRange = [visibleCopy selectedTextRange];
  if (selectedTextRange)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentTableView);
    [visibleCopy firstRectForRange:selectedTextRange];
    [WeakRetained convertRect:visibleCopy toView:?];
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
      [visibleCopy firstRectForRange:selectedTextRange];
      [v21 convertRect:visibleCopy toView:?];
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

- (void)_freeformAddressFieldTapped:(id)tapped
{
  tappedCopy = tapped;
  text = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView text];
  v5 = [text length];

  if (v5)
  {
    if ([tappedCopy state] != 3 || self->_canEditFreeformAddress)
    {
      [(TextViewWithPlaceholderText *)self->_freeformAddressTextView becomeFirstResponder];
      goto LABEL_7;
    }
  }

  else
  {
    [(TextViewWithPlaceholderText *)self->_freeformAddressTextView resignFirstResponder];
  }

  delegate = [(RAPMultilineAddressLabelTableViewCell *)self delegate];
  [delegate userTappedOnAddressTableViewCell:self];

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

  topAnchor = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView topAnchor];
  topAnchor2 = [(UIView *)v3 topAnchor];
  v12 = +[UIFont system17];
  [v12 _mapkit_scaledValueForValue:10.0];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  freeformTopConstraint = self->_freeformTopConstraint;
  self->_freeformTopConstraint = v13;

  v15 = self->_constraints;
  leadingAnchor = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView leadingAnchor];
  leadingAnchor2 = [(UIView *)v3 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v109[0] = v18;
  trailingAnchor = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView trailingAnchor];
  v97 = v3;
  trailingAnchor2 = [(UIView *)v3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v22 = self->_freeformTopConstraint;
  v109[1] = v21;
  v109[2] = v22;
  v23 = [NSArray arrayWithObjects:v109 count:3];
  [(NSMutableArray *)v15 addObjectsFromArray:v23];

  v24 = objc_alloc_init(NSMutableArray);
  v25 = [(NSMutableArray *)self->_detailViews count];
  bottomAnchor = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView bottomAnchor];
  if (v25)
  {
    topAnchor3 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView topAnchor];
    v28 = +[UIFont system17];
    [v28 _mapkit_scaledValueForValue:10.0];
    v30 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-v29];
    freeformBottomConstraint = self->_freeformBottomConstraint;
    self->_freeformBottomConstraint = v30;

    [(NSMutableArray *)self->_constraints addObject:self->_freeformBottomConstraint];
    heightAnchor = [(RAPSeparatorBar *)self->_topHorizontalHairlineView heightAnchor];
    +[RAPSeparatorBar thickness];
    v33 = [heightAnchor constraintEqualToConstant:?];
    [v24 addObject:v33];

    leadingAnchor3 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView leadingAnchor];
    v35 = v97;
    leadingAnchor4 = [(UIView *)v97 leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
    [v24 addObject:v37];

    trailingAnchor3 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView trailingAnchor];
    trailingAnchor4 = [(UIView *)v97 trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
    [v24 addObject:v40];

    bottomAnchor2 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView bottomAnchor];
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
        firstObject = [(NSMutableArray *)self->_detailViews firstObject];

        if (v55 == firstObject)
        {
          leadingAnchor5 = [v55 leadingAnchor];
          leadingAnchor6 = [(UIView *)v35 leadingAnchor];
          v59 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
          [v24 addObject:v59];

          v41 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
          v35 = v97;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v55 == *(&self->super.super.super.super.isa + v41[209]))
          {
            heightAnchor2 = [v55 heightAnchor];
            +[RAPSeparatorBar thickness];
            v84 = [heightAnchor2 constraintEqualToConstant:?];
            [v24 addObject:v84];

            leadingAnchor7 = [v55 leadingAnchor];
            leadingAnchor8 = [(UIView *)v35 leadingAnchor];
            [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:8.0];
            v88 = v87 = v35;
            [v24 addObject:v88];

            trailingAnchor5 = [v55 trailingAnchor];
            trailingAnchor6 = [(UIView *)v87 trailingAnchor];
            v89 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-8.0];
            [v24 addObject:v89];
          }

          else
          {
            widthAnchor = [v55 widthAnchor];
            +[RAPSeparatorBar thickness];
            v61 = [widthAnchor constraintEqualToConstant:?];
            [v24 addObject:v61];

            centerXAnchor = [v55 centerXAnchor];
            centerXAnchor2 = [(UIView *)v35 centerXAnchor];
            v64 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
            [v24 addObject:v64];

            topAnchor4 = [v55 topAnchor];
            v66 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
            [v24 addObject:v66];

            trailingAnchor5 = [v55 bottomAnchor];
            trailingAnchor6 = [trailingAnchor5 constraintEqualToAnchor:v102 constant:-10.0];
            [v24 addObject:trailingAnchor6];
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
            bottomAnchor3 = [(RAPSeparatorBar *)self->_topHorizontalHairlineView bottomAnchor];

            v70 = v97;
            if (bottomAnchor2 == bottomAnchor3)
            {
              widthAnchor2 = [v55 widthAnchor];
              widthAnchor3 = [v99 widthAnchor];
              v73 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
              [v24 addObject:v73];

              v70 = v54;
            }

            leadingAnchor9 = [v55 leadingAnchor];
            leadingAnchor10 = [(UIView *)v70 leadingAnchor];
            v76 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:10.0];
            [v24 addObject:v76];

            trailingAnchor7 = [v55 trailingAnchor];
            trailingAnchor8 = [(UIView *)v97 trailingAnchor];
            v79 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-8.0];
            [v24 addObject:v79];
          }

          firstBaselineAnchor = [v55 firstBaselineAnchor];
          trailingAnchor5 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor2 constant:v48];

          lastBaselineAnchor = [v55 lastBaselineAnchor];
          trailingAnchor6 = [lastBaselineAnchor constraintEqualToAnchor:v102 constant:v51];

          [v24 addObject:trailingAnchor5];
          [v24 addObject:trailingAnchor6];
          [(NSMutableArray *)self->_topToFirstBaselineConstraints addObject:trailingAnchor5];
          [(NSMutableArray *)self->_lastBaselineToBottomConstraints addObject:trailingAnchor6];
          v82 = v55;

          v99 = v82;
        }

        v35 = v97;
        v41 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
LABEL_24:
        lastObject = [(NSMutableArray *)self->_detailViews lastObject];

        if (v55 == lastObject)
        {
          trailingAnchor9 = [v55 trailingAnchor];
          trailingAnchor10 = [(UIView *)v35 trailingAnchor];
          v93 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-8.0];
          [v24 addObject:v93];

          v35 = v97;
          v41 = &OBJC_IVAR___TransitNavigationTrayViewController__hasForcedInitialContaineeHeight;
        }

        v94 = *(&self->super.super.super.super.isa + v41[209]);
        if (v55 == v94)
        {
          bottomAnchor4 = [v94 bottomAnchor];

          bottomAnchor5 = [(UIView *)v35 bottomAnchor];

          v102 = bottomAnchor5;
          bottomAnchor2 = bottomAnchor4;
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

        v45 = bottomAnchor2;
        goto LABEL_33;
      }
    }
  }

  v35 = v97;
  bottomAnchor6 = [(UIView *)v97 bottomAnchor];
  v43 = +[UIFont system17];
  [v43 _mapkit_scaledValueForValue:10.0];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor6 constant:-v44];

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
  placeholderLabel = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView placeholderLabel];
  [placeholderLabel setText:v6];

  [(TextViewWithPlaceholderText *)self->_freeformAddressTextView setScrollEnabled:0];
  textContainer = [(TextViewWithPlaceholderText *)self->_freeformAddressTextView textContainer];
  [textContainer setMaximumNumberOfLines:8];

  traitCollection = [(RAPMultilineAddressLabelTableViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
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
  contentView = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  [contentView addSubview:self->_containerView];

  leadingAnchor = [(UIView *)self->_containerView leadingAnchor];
  contentView2 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v55[0] = v51;
  trailingAnchor = [(UIView *)self->_containerView trailingAnchor];
  contentView3 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-0.0];
  v55[1] = v47;
  topAnchor = [(UIView *)self->_containerView topAnchor];
  contentView4 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v55[2] = v35;
  bottomAnchor = [(UIView *)self->_containerView bottomAnchor];
  contentView5 = [(RAPMultilineAddressLabelTableViewCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
  v55[3] = v39;
  v40 = [NSArray arrayWithObjects:v55 count:4];
  [NSLayoutConstraint activateConstraints:v40];

  traitCollection2 = [(RAPMultilineAddressLabelTableViewCell *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 5)
  {
    v43 = +[UIColor systemBackgroundColor];
    [(RAPMultilineAddressLabelTableViewCell *)self setBackgroundColor:v43];

    v44 = +[UIColor systemGray6Color];
    [(UIView *)self->_containerView setBackgroundColor:v44];

    layer = [(UIView *)self->_containerView layer];
    [layer setCornerRadius:7.5];

    [(UIView *)self->_containerView setClipsToBounds:1];
  }
}

- (RAPMultilineAddressLabelTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = RAPMultilineAddressLabelTableViewCell;
  v4 = [(RAPMultilineAddressLabelTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
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