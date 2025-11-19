@interface ICSETableViewCell
+ (id)newHeaderCell;
- (ICSETableViewCellDelegate)delegate;
- (NSLayoutConstraint)titleLeadingMargin;
- (UIImageView)accessibilityExpansionAccessoryImageView;
- (UIImageView)accountAccessoryImageView;
- (UIImageView)defaultExpansionAccessoryImageView;
- (UIImageView)disclosureAccessoryImageView;
- (UIImageView)expansionAccessoryImageView;
- (UIImageView)iconView;
- (UILabel)secondaryLabel;
- (UILabel)titleLabel;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)alternateConstraintsForAXLargerTextSizes;
- (id)defaultConstraintsForRegularTextSizes;
- (unint64_t)accessibilityTraits;
- (void)awakeFromNib;
- (void)disableConstraintsBySettingPriority:(id)a3;
- (void)enableConstraintsBySettingPriority:(id)a3;
- (void)expandCollapseTapped:(id)a3;
- (void)prepareForReuse;
- (void)setCollapsed:(BOOL)a3;
- (void)setCollapsible:(BOOL)a3;
- (void)setTableViewItem:(id)a3;
- (void)setUpForHeaderItem:(id)a3;
- (void)setUpForTableViewItem:(id)a3;
- (void)updateAccessoryView;
- (void)updateCollapsedDisclosure;
- (void)updateConstraints;
@end

@implementation ICSETableViewCell

- (void)awakeFromNib
{
  v51.receiver = self;
  v51.super_class = ICSETableViewCell;
  [(ICSETableViewCell *)&v51 awakeFromNib];
  if (qword_100108E98 != -1)
  {
    sub_1000B301C();
  }

  v3 = *&qword_100108E90;
  [(ICSETableViewCell *)self layoutMargins];
  v5 = v3 - v4;
  [(ICSETableViewCell *)self layoutMargins];
  v7 = v5 - v6;
  v8 = [(ICSETableViewCell *)self iconViewContainerMinHeightConstraint];
  [v8 setConstant:v7];

  if (+[UIDevice ic_isVision])
  {
    v9 = +[UIColor clearColor];
    [(ICSETableViewCell *)self setBackgroundColor:v9];

    [(ICSETableViewCell *)self setBackgroundView:0];
  }

  else
  {
    v10 = +[UIColor tableCellGroupedBackgroundColor];
    [(ICSETableViewCell *)self setBackgroundColor:v10];

    [(ICSETableViewCell *)self setBackgroundView:0];
    v11 = objc_alloc_init(UIView);
    v12 = +[UIColor ICTintedSelectionColor];
    [v11 setBackgroundColor:v12];

    [(ICSETableViewCell *)self setSelectedBackgroundView:v11];
  }

  v13 = +[NSMutableDictionary dictionary];
  [(ICSETableViewCell *)self setStoredConstraintPriorities:v13];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = [(ICSETableViewCell *)self defaultConstraintsForRegularTextSizes];
  v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v48;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        [v19 priority];
        v20 = [NSNumber numberWithFloat:?];
        v21 = [(ICSETableViewCell *)self storedConstraintPriorities];
        v22 = [v19 identifier];
        [v21 setObject:v20 forKeyedSubscript:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v16);
  }

  v23 = objc_alloc_init(UIView);
  [(ICSETableViewCell *)self setExpandCollapseHitView:v23];

  v24 = [(ICSETableViewCell *)self expandCollapseHitView];
  [(ICSETableViewCell *)self addSubview:v24];

  v25 = [(ICSETableViewCell *)self expandCollapseHitView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 setUserInteractionEnabled:0];
  v26 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"expandCollapseTapped:"];
  [v25 addGestureRecognizer:v26];

  v27 = +[NSMutableArray array];
  v28 = [v25 leadingAnchor];
  v29 = [(ICSETableViewCell *)self secondaryLabel];
  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v27 addObject:v31];

  v32 = [v25 trailingAnchor];
  v33 = [(ICSETableViewCell *)self trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v27 addObject:v34];

  v35 = [v25 topAnchor];
  v36 = [(ICSETableViewCell *)self topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v27 addObject:v37];

  v38 = [v25 bottomAnchor];
  v39 = [(ICSETableViewCell *)self bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v27 addObject:v40];

  [NSLayoutConstraint activateConstraints:v27];
  v41 = +[UIColor labelColor];
  v42 = [(ICSETableViewCell *)self titleLabel];
  [v42 setTextColor:v41];

  v43 = +[UIColor secondaryLabelColor];
  v44 = [(ICSETableViewCell *)self secondaryLabel];
  [v44 setTextColor:v43];

  v45 = +[UIColor labelColor];
  v46 = [(ICSETableViewCell *)self iconView];
  [v46 setTintColor:v45];
}

- (void)prepareForReuse
{
  v15.receiver = self;
  v15.super_class = ICSETableViewCell;
  [(ICSETableViewCell *)&v15 prepareForReuse];
  v3 = [(ICSETableViewCell *)self titleLabel];
  [v3 setHidden:0];

  v4 = [(ICSETableViewCell *)self secondaryLabel];
  [v4 setHidden:0];

  v5 = [(ICSETableViewCell *)self titleLabel];
  [v5 setAlpha:1.0];

  v6 = [(ICSETableViewCell *)self secondaryLabel];
  [v6 setAlpha:1.0];

  v7 = [(ICSETableViewCell *)self iconView];
  [v7 setAlpha:1.0];

  v8 = +[UIColor labelColor];
  v9 = [(ICSETableViewCell *)self titleLabel];
  [v9 setTextColor:v8];

  v10 = +[UIColor secondaryLabelColor];
  v11 = [(ICSETableViewCell *)self secondaryLabel];
  [v11 setTextColor:v10];

  v12 = +[UIColor labelColor];
  v13 = [(ICSETableViewCell *)self iconView];
  [v13 setTintColor:v12];

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v14 = +[UIColor tableCellGroupedBackgroundColor];
    [(ICSETableViewCell *)self setBackgroundColor:v14];
  }

  [(ICSETableViewCell *)self setCollapsible:0];
  [(ICSETableViewCell *)self setCollapsed:0];
}

- (void)setTableViewItem:(id)a3
{
  objc_storeStrong(&self->_tableViewItem, a3);
  v5 = a3;
  [(ICSETableViewCell *)self setUpForTableViewItem:v5];
}

- (void)setUpForTableViewItem:(id)a3
{
  v36 = a3;
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v5 = [v4 ic_fontWithSingleLineA];
  v6 = [(ICSETableViewCell *)self titleLabel];
  [v6 setFont:v5];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v8 = [v7 ic_fontWithSingleLineA];
  v9 = [(ICSETableViewCell *)self secondaryLabel];
  [v9 setFont:v8];

  v10 = [v36 title];
  v11 = [(ICSETableViewCell *)self titleLabel];
  [v11 setText:v10];

  v12 = [v36 secondaryTitle];
  v13 = [(ICSETableViewCell *)self secondaryLabel];
  [v13 setText:v12];

  v14 = [v36 image];
  v15 = [(ICSETableViewCell *)self iconView];
  [v15 setImage:v14];

  if ((+[UIDevice ic_isVision](UIDevice, "ic_isVision") & 1) == 0 && [v36 isInFolderList])
  {
    v16 = +[UIColor ICTintColor];
    v17 = [(ICSETableViewCell *)self iconView];
    [v17 setTintColor:v16];
  }

  if (([v36 isInFolderList] & 1) != 0 || (objc_msgSend(v36, "folder"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = 34.0;
  }

  else
  {
    v19 = 22.0;
  }

  v20 = [(ICSETableViewCell *)self titleLeadingMargin];
  [v20 setConstant:v19];

  if (([v36 isAccountHeader] & 1) == 0)
  {
    v21 = [v36 folderListItem];

    if (v21)
    {
      v22 = [v36 folderListItem];
      v23 = [v22 level] - 1;

      v24 = [(ICSETableViewCell *)self titleLeadingMargin];
      [v24 setConstant:v23 * 33.0 + 34.0];

      v25 = [(ICSETableViewCell *)self iconViewLeadingConstraint];
      [v25 setConstant:v23 * 33.0 + -5.0];
    }
  }

  if ([v36 isAccountPicker])
  {
    goto LABEL_11;
  }

  v26 = [v36 folder];
  if (v26)
  {
  }

  else
  {
    v27 = [v36 account];

    if (!v27)
    {
LABEL_11:
      [(ICSETableViewCell *)self setCollapsible:0];
      goto LABEL_17;
    }
  }

  v28 = [v36 folderListItem];
  -[ICSETableViewCell setCollapsible:](self, "setCollapsible:", [v28 isCollapsible]);

  v29 = [v36 folderListItem];
  -[ICSETableViewCell setCollapsed:](self, "setCollapsed:", [v29 isCollapsed]);

LABEL_17:
  if ([v36 isHeader])
  {
    [(ICSETableViewCell *)self setUpForHeaderItem:v36];
  }

  else
  {
    if ([v36 isSelectable])
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.5;
    }

    v31 = [(ICSETableViewCell *)self titleLabel];
    [v31 setAlpha:v30];

    v32 = [(ICSETableViewCell *)self secondaryLabel];
    [v32 setAlpha:v30];

    v33 = [(ICSETableViewCell *)self iconView];
    [v33 setAlpha:v30];

    if ((+[UIDevice ic_isVision](UIDevice, "ic_isVision") & 1) == 0 && [v36 isChecked])
    {
      if (UIAccessibilityDarkerSystemColorsEnabled())
      {
        +[UIColor ICDarkenedTintColor];
      }

      else
      {
        +[UIColor ICTintColor];
      }
      v34 = ;
      v35 = [(ICSETableViewCell *)self iconView];
      [v35 setTintColor:v34];
    }
  }

  [(ICSETableViewCell *)self updateAccessoryView];
}

- (UIImageView)accountAccessoryImageView
{
  accountAccessoryImageView = self->_accountAccessoryImageView;
  if (!accountAccessoryImageView)
  {
    v4 = [UIImageView alloc];
    v5 = +[UIImageView ic_defaultListAccessoryViewImage];
    v6 = [v4 initWithImage:v5];
    v7 = self->_accountAccessoryImageView;
    self->_accountAccessoryImageView = v6;

    v8 = +[UIColor tertiaryLabelColor];
    [(UIImageView *)self->_disclosureAccessoryImageView setTintColor:v8];

    [(UIImageView *)self->_accountAccessoryImageView setContentMode:4];
    accountAccessoryImageView = self->_accountAccessoryImageView;
  }

  return accountAccessoryImageView;
}

- (UIImageView)disclosureAccessoryImageView
{
  disclosureAccessoryImageView = self->_disclosureAccessoryImageView;
  if (!disclosureAccessoryImageView)
  {
    v4 = [UIImageView alloc];
    v5 = +[UIImageView ic_defaultListAccessoryViewImage];
    v6 = [v4 initWithImage:v5];
    v7 = self->_disclosureAccessoryImageView;
    self->_disclosureAccessoryImageView = v6;

    v8 = +[UIColor tertiaryLabelColor];
    [(UIImageView *)self->_disclosureAccessoryImageView setTintColor:v8];

    [(UIImageView *)self->_disclosureAccessoryImageView setContentMode:4];
    disclosureAccessoryImageView = self->_disclosureAccessoryImageView;
  }

  return disclosureAccessoryImageView;
}

- (UIImageView)expansionAccessoryImageView
{
  if (UIAccessibilityShouldDifferentiateWithoutColor())
  {
    [(ICSETableViewCell *)self accessibilityExpansionAccessoryImageView];
  }

  else
  {
    [(ICSETableViewCell *)self defaultExpansionAccessoryImageView];
  }
  v3 = ;
  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor ICTintColor];
  }
  v4 = ;
  [v3 setTintColor:v4];

  [v3 setContentMode:4];

  return v3;
}

- (UIImageView)defaultExpansionAccessoryImageView
{
  defaultExpansionAccessoryImageView = self->_defaultExpansionAccessoryImageView;
  if (!defaultExpansionAccessoryImageView)
  {
    v4 = [UIImageView alloc];
    v5 = +[UIImageView ic_defaultListAccessoryViewImage];
    v6 = [v4 initWithImage:v5];
    v7 = self->_defaultExpansionAccessoryImageView;
    self->_defaultExpansionAccessoryImageView = v6;

    defaultExpansionAccessoryImageView = self->_defaultExpansionAccessoryImageView;
  }

  return defaultExpansionAccessoryImageView;
}

- (UIImageView)accessibilityExpansionAccessoryImageView
{
  accessibilityExpansionAccessoryImageView = self->_accessibilityExpansionAccessoryImageView;
  if (!accessibilityExpansionAccessoryImageView)
  {
    v4 = [UIImageView alloc];
    v5 = +[UIImageView ic_accessibilityListAccessoryViewImage];
    v6 = [v4 initWithImage:v5];
    v7 = self->_accessibilityExpansionAccessoryImageView;
    self->_accessibilityExpansionAccessoryImageView = v6;

    accessibilityExpansionAccessoryImageView = self->_accessibilityExpansionAccessoryImageView;
  }

  return accessibilityExpansionAccessoryImageView;
}

- (void)updateAccessoryView
{
  v3 = [(ICSETableViewCell *)self tableViewItem];
  v4 = [v3 note];

  if (v4)
  {
    [(ICSETableViewCell *)self setAccessoryView:0];
    v8 = [(ICSETableViewCell *)self expandCollapseHitView];
    [v8 setUserInteractionEnabled:0];
  }

  else
  {
    v5 = [(ICSETableViewCell *)self tableViewItem];
    if ([v5 isHeader])
    {
      [(ICSETableViewCell *)self accountAccessoryImageView];
    }

    else
    {
      [(ICSETableViewCell *)self expansionAccessoryImageView];
    }
    v8 = ;

    if ([(ICSETableViewCell *)self isCollapsible])
    {
      [(ICSETableViewCell *)self setAccessoryView:v8];
    }

    else
    {
      v6 = [(ICSETableViewCell *)self disclosureAccessoryImageView];
      [(ICSETableViewCell *)self setAccessoryView:v6];
    }

    [(ICSETableViewCell *)self updateCollapsedDisclosure];
    v7 = [(ICSETableViewCell *)self expandCollapseHitView];
    [v7 setUserInteractionEnabled:{-[ICSETableViewCell isCollapsible](self, "isCollapsible")}];
  }
}

- (void)setCollapsible:(BOOL)a3
{
  if (self->_collapsible != a3)
  {
    self->_collapsible = a3;
    [(ICSETableViewCell *)self updateAccessoryView];
  }
}

- (void)updateCollapsedDisclosure
{
  v3 = [(ICSETableViewCell *)self accessoryView];

  if (v3)
  {
    v4 = [(ICSETableViewCell *)self _shouldReverseLayoutDirection];
    v5 = *&CGAffineTransformIdentity.c;
    *&v10.a = *&CGAffineTransformIdentity.a;
    *&v10.c = v5;
    *&v10.tx = *&CGAffineTransformIdentity.tx;
    if ([(ICSETableViewCell *)self isCollapsible]&& ![(ICSETableViewCell *)self isCollapsed])
    {
      v6 = 1.57079633;
      if (v4)
      {
        v6 = -1.57079633;
      }

      CGAffineTransformMakeRotation(&v10, v6);
    }

    v9 = v10;
    v7 = [(ICSETableViewCell *)self accessoryView];
    v8 = v9;
    [v7 setTransform:&v8];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(ICSETableViewCell *)self updateCollapsedDisclosure];
  }
}

- (void)expandCollapseTapped:(id)a3
{
  v4 = [(ICSETableViewCell *)self delegate];

  if (v4)
  {
    v5 = [(ICSETableViewCell *)self delegate];
    [v5 tableViewCell:self setCollapsed:{-[ICSETableViewCell isCollapsed](self, "isCollapsed") ^ 1}];
  }

  v6 = [(ICSETableViewCell *)self isCollapsed]^ 1;

  [(ICSETableViewCell *)self setCollapsed:v6 animated:1];
}

- (void)setUpForHeaderItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v28 = ICDynamicCast();

  v5 = +[UIColor secondaryLabelColor];
  v6 = +[UIFontMetrics defaultMetrics];
  v7 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightRegular];
  v8 = [v6 scaledFontForFont:v7];
  v9 = [v8 ic_fontWithSingleLineA];

  v10 = [(ICSETableViewCell *)self titleLabel];
  [v10 setFont:v9];

  v11 = [(ICSETableViewCell *)self titleLabel];
  [v11 setTextColor:v5];

  v12 = [(ICSETableViewCell *)self titleLabel];
  v13 = [v12 font];
  v14 = [(ICSETableViewCell *)self secondaryLabel];
  [v14 setFont:v13];

  v15 = [(ICSETableViewCell *)self secondaryLabel];
  [v15 setTextColor:v5];

  v16 = [v28 image];
  v17 = [(ICSETableViewCell *)self iconView];
  [v17 setImage:v16];

  v18 = [(ICSETableViewCell *)self iconView];
  [v18 setTintColor:v5];

  if ([v28 headerType] == 2)
  {
    v19 = [(ICSETableViewCell *)self titleLeadingMargin];
    [v19 setConstant:7.0];

    v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v21 = [v20 ic_fontWithSingleLineA];
    v22 = [(ICSETableViewCell *)self titleLabel];
    [v22 setFont:v21];

    v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v24 = [v23 ic_fontWithSingleLineA];
    v25 = [(ICSETableViewCell *)self secondaryLabel];
    [v25 setFont:v24];

LABEL_5:
    goto LABEL_6;
  }

  if ([v28 headerType] == 1)
  {
    v23 = [(ICSETableViewCell *)self titleLeadingMargin];
    [v23 setConstant:0.0];
    goto LABEL_5;
  }

LABEL_6:
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v26 = [v28 backgroundColor];

    if (v26)
    {
      v27 = [v28 backgroundColor];
      [(ICSETableViewCell *)self setBackgroundColor:v27];
    }
  }
}

+ (id)newHeaderCell
{
  v3 = +[NSBundle mainBundle];
  v4 = NSStringFromClass(a1);
  v5 = [v3 loadNibNamed:v4 owner:a1 options:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v11;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "result != ((void*)0)", "+[ICSETableViewCell newHeaderCell]", 1, 0, @"Unable to load sharing extension header cell view", v14);
  v12 = 0;
LABEL_12:
  [v12 setTranslatesAutoresizingMaskIntoConstraints:{1, v14}];
  [v12 setNeedsUpdateConstraints];

  return v12;
}

- (void)updateConstraints
{
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    v3 = [(ICSETableViewCell *)self defaultConstraintsForRegularTextSizes];
    [(ICSETableViewCell *)self disableConstraintsBySettingPriority:v3];

    [(ICSETableViewCell *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    v4 = [(ICSETableViewCell *)self alternateConstraintsForAXLargerTextSizes];
    [(ICSETableViewCell *)self disableConstraintsBySettingPriority:v4];

    [(ICSETableViewCell *)self defaultConstraintsForRegularTextSizes];
  }
  v5 = ;
  [(ICSETableViewCell *)self enableConstraintsBySettingPriority:v5];

  v6 = [(ICSETableViewCell *)self iconView];
  [v6 setHidden:ICAccessibilityAccessibilityLargerTextSizesEnabled()];

  v7.receiver = self;
  v7.super_class = ICSETableViewCell;
  [(ICSETableViewCell *)&v7 updateConstraints];
}

- (void)disableConstraintsBySettingPriority:(id)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        LODWORD(v5) = 1.0;
        [*(*(&v9 + 1) + 8 * v8) setPriority:v5];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)enableConstraintsBySettingPriority:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [(ICSETableViewCell *)self storedConstraintPriorities];
        v11 = [v9 identifier];
        v12 = [v10 objectForKeyedSubscript:v11];

        LODWORD(v13) = 1148829696;
        if (v12)
        {
          *&v13 = [v12 integerValue];
        }

        [v9 setPriority:v13];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)defaultConstraintsForRegularTextSizes
{
  v3 = [(ICSETableViewCell *)self iconViewBaselineConstraint];
  v11[0] = v3;
  v4 = [(ICSETableViewCell *)self titleLabelBaselineConstraint];
  v11[1] = v4;
  v5 = [(ICSETableViewCell *)self titleLabelCenterConstraint];
  v11[2] = v5;
  v6 = [(ICSETableViewCell *)self secondaryLabelBaselineConstraint];
  v11[3] = v6;
  v7 = [(ICSETableViewCell *)self secondaryLabelLeadingConstraint];
  v11[4] = v7;
  v8 = [(ICSETableViewCell *)self secondaryLabelCenterVerticallyConstraint];
  v11[5] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:6];

  return v9;
}

- (id)alternateConstraintsForAXLargerTextSizes
{
  v3 = [(ICSETableViewCell *)self titleLabelTopConstraintForAXLargerTextSizes];
  v9[0] = v3;
  v4 = [(ICSETableViewCell *)self iconViewCenterYConstraintForAXLargerTextSizes];
  v9[1] = v4;
  v5 = [(ICSETableViewCell *)self secondaryLabelBelowTitleLabelConstraintForAXLargerTextSizes];
  v9[2] = v5;
  v6 = [(ICSETableViewCell *)self secondaryLabelLeadingConstraintForAXLargerTextSizes];
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)accessibilityLabel
{
  v3 = [(ICSETableViewCell *)self tableViewItem];
  v4 = [v3 isHeader];

  if (v4)
  {
    v5 = [(ICSETableViewCell *)self titleLabel];
    v6 = [v5 text];
    v7 = [(ICSETableViewCell *)self secondaryLabel];
    v8 = [v7 text];
    v9 = __ICAccessibilityStringForVariablesSentinel;
    v50 = v8;
    v52 = __ICAccessibilityStringForVariablesSentinel;
    v10 = __ICAccessibilityStringForVariables();
    goto LABEL_16;
  }

  v11 = [(ICSETableViewCell *)self tableViewItem];
  v12 = [v11 note];

  v13 = [(ICSETableViewCell *)self tableViewItem];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 note];
    v5 = [(ICSETableViewCell *)self accessibilitySharedViaICloudStringForNote:v15];
  }

  else
  {
    v5 = [v13 folder];
    if (v5)
    {
      v25 = [(ICSETableViewCell *)self tableViewItem];
      v26 = [v25 folder];
      v27 = [v26 isSharedViaICloud];

      if (!v27)
      {
        v5 = 0;
        goto LABEL_6;
      }

      v14 = +[NSBundle mainBundle];
      v5 = [v14 localizedStringForKey:@"Shared folder" value:&stru_1000F6F48 table:0];
    }
  }

LABEL_6:
  v16 = [(ICSETableViewCell *)self tableViewItem];
  v17 = [v16 note];
  v18 = [v17 isPasswordProtected];

  if (v18)
  {
    v19 = +[NSBundle mainBundle];
    v6 = [v19 localizedStringForKey:@"Locked" value:&stru_1000F6F48 table:0];
  }

  else
  {
    v6 = 0;
  }

  v20 = [(ICSETableViewCell *)self tableViewItem];
  v21 = [v20 note];
  if (v21)
  {
    v22 = [(ICSETableViewCell *)self tableViewItem];
    v23 = [v22 note];
    v24 = [v23 modificationDate];
    v7 = [v24 ic_briefFormattedDateForAccessibility];
  }

  else
  {
    v22 = [(ICSETableViewCell *)self secondaryLabel];
    v7 = [v22 text];
  }

  v8 = [(ICSETableViewCell *)self titleLabel];
  v28 = [v8 text];
  v9 = __ICAccessibilityStringForVariablesSentinel;
  v54 = v7;
  v55 = __ICAccessibilityStringForVariablesSentinel;
  v50 = v5;
  v52 = v6;
  v10 = __ICAccessibilityStringForVariables();

LABEL_16:
  v29 = [(ICSETableViewCell *)self tableViewItem:v50];
  v30 = [v29 folder];

  if (v30)
  {
    v31 = [(ICSETableViewCell *)self tableViewItem];
    v32 = [v31 folder];

    v33 = [v32 parent];
    v34 = [v33 title];
    v35 = [v34 length];

    if (v35)
    {
      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"subfolder of %@" value:&stru_1000F6F48 table:0];

      v38 = [v32 parent];
      v39 = [v38 title];
      v40 = [NSString localizedStringWithFormat:v37, v39];

      v51 = v40;
      v53 = v9;
      v41 = __ICAccessibilityStringForVariables();

      v10 = v41;
    }

    v42 = [v32 visibleNoteContainerChildren];
    v43 = [v42 count];

    if (v43)
    {
      v44 = +[NSBundle mainBundle];
      v45 = [v44 localizedStringForKey:@"NUM_SUBFOLDERS_%lu" value:&stru_1000F6F48 table:0];

      v46 = [v32 visibleNoteContainerChildren];
      v47 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v45, [v46 count]);

      v48 = __ICAccessibilityStringForVariables();

      v10 = v48;
    }
  }

  return v10;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(ICSETableViewCell *)self titleLabel];
  v4 = [v3 text];
  v8[0] = v4;
  v5 = [(ICSETableViewCell *)self accessibilityLabel];
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v15.receiver = self;
  v15.super_class = ICSETableViewCell;
  v3 = [(ICSETableViewCell *)&v15 accessibilityTraits];
  v4 = [(ICSETableViewCell *)self tableViewItem];
  if ([v4 isSelectable])
  {
  }

  else
  {
    v5 = [(ICSETableViewCell *)self tableViewItem];
    v6 = [v5 isHeader];

    v7 = UIAccessibilityTraitNotEnabled;
    if (v6)
    {
      v7 = 0;
    }

    v3 |= v7;
  }

  v8 = [(ICSETableViewCell *)self tableViewItem];
  v9 = [v8 isChecked];

  if (v9)
  {
    v10 = UIAccessibilityTraitSelected;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(ICSETableViewCell *)self tableViewItem];
  v12 = [v11 isHeader];

  v13 = UIAccessibilityTraitHeader;
  if (!v12)
  {
    v13 = 0;
  }

  return v10 | v13 | v3;
}

- (id)accessibilityCustomActions
{
  v13.receiver = self;
  v13.super_class = ICSETableViewCell;
  v3 = [(ICSETableViewCell *)&v13 accessibilityCustomActions];
  if ([(ICSETableViewCell *)self isCollapsible])
  {
    v4 = [v3 mutableCopy];
    if (!v4)
    {
      v4 = [[NSMutableArray alloc] initWithCapacity:1];
    }

    v5 = [(ICSETableViewCell *)self isCollapsed];
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"Expand";
    }

    else
    {
      v8 = @"Collapse";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_1000F6F48 table:0];

    v10 = [[UIAccessibilityCustomAction alloc] initWithName:v9 target:self selector:"expandCollapseTapped:"];
    [v4 addObject:v10];
    v11 = [v4 copy];
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

- (id)accessibilityHint
{
  if ([(ICSETableViewCell *)self isCollapsible])
  {
    v3 = [(ICSETableViewCell *)self isCollapsed];
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (v3)
    {
      v6 = @"Use the actions rotor to expand folder";
    }

    else
    {
      v6 = @"Use the actions rotor to collapse folder";
    }

    v7 = [v4 localizedStringForKey:v6 value:&stru_1000F6F48 table:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ICSETableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)secondaryLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryLabel);

  return WeakRetained;
}

- (UIImageView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (NSLayoutConstraint)titleLeadingMargin
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLeadingMargin);

  return WeakRetained;
}

@end