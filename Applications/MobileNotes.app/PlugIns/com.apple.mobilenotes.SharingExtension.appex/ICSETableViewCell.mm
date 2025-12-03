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
- (void)disableConstraintsBySettingPriority:(id)priority;
- (void)enableConstraintsBySettingPriority:(id)priority;
- (void)expandCollapseTapped:(id)tapped;
- (void)prepareForReuse;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setCollapsible:(BOOL)collapsible;
- (void)setTableViewItem:(id)item;
- (void)setUpForHeaderItem:(id)item;
- (void)setUpForTableViewItem:(id)item;
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
  iconViewContainerMinHeightConstraint = [(ICSETableViewCell *)self iconViewContainerMinHeightConstraint];
  [iconViewContainerMinHeightConstraint setConstant:v7];

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
  defaultConstraintsForRegularTextSizes = [(ICSETableViewCell *)self defaultConstraintsForRegularTextSizes];
  v15 = [defaultConstraintsForRegularTextSizes countByEnumeratingWithState:&v47 objects:v52 count:16];
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
          objc_enumerationMutation(defaultConstraintsForRegularTextSizes);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        [v19 priority];
        v20 = [NSNumber numberWithFloat:?];
        storedConstraintPriorities = [(ICSETableViewCell *)self storedConstraintPriorities];
        identifier = [v19 identifier];
        [storedConstraintPriorities setObject:v20 forKeyedSubscript:identifier];
      }

      v16 = [defaultConstraintsForRegularTextSizes countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v16);
  }

  v23 = objc_alloc_init(UIView);
  [(ICSETableViewCell *)self setExpandCollapseHitView:v23];

  expandCollapseHitView = [(ICSETableViewCell *)self expandCollapseHitView];
  [(ICSETableViewCell *)self addSubview:expandCollapseHitView];

  expandCollapseHitView2 = [(ICSETableViewCell *)self expandCollapseHitView];
  [expandCollapseHitView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [expandCollapseHitView2 setUserInteractionEnabled:0];
  v26 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"expandCollapseTapped:"];
  [expandCollapseHitView2 addGestureRecognizer:v26];

  v27 = +[NSMutableArray array];
  leadingAnchor = [expandCollapseHitView2 leadingAnchor];
  secondaryLabel = [(ICSETableViewCell *)self secondaryLabel];
  trailingAnchor = [secondaryLabel trailingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
  [v27 addObject:v31];

  trailingAnchor2 = [expandCollapseHitView2 trailingAnchor];
  trailingAnchor3 = [(ICSETableViewCell *)self trailingAnchor];
  v34 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v27 addObject:v34];

  topAnchor = [expandCollapseHitView2 topAnchor];
  topAnchor2 = [(ICSETableViewCell *)self topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v27 addObject:v37];

  bottomAnchor = [expandCollapseHitView2 bottomAnchor];
  bottomAnchor2 = [(ICSETableViewCell *)self bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v27 addObject:v40];

  [NSLayoutConstraint activateConstraints:v27];
  v41 = +[UIColor labelColor];
  titleLabel = [(ICSETableViewCell *)self titleLabel];
  [titleLabel setTextColor:v41];

  v43 = +[UIColor secondaryLabelColor];
  secondaryLabel2 = [(ICSETableViewCell *)self secondaryLabel];
  [secondaryLabel2 setTextColor:v43];

  v45 = +[UIColor labelColor];
  iconView = [(ICSETableViewCell *)self iconView];
  [iconView setTintColor:v45];
}

- (void)prepareForReuse
{
  v15.receiver = self;
  v15.super_class = ICSETableViewCell;
  [(ICSETableViewCell *)&v15 prepareForReuse];
  titleLabel = [(ICSETableViewCell *)self titleLabel];
  [titleLabel setHidden:0];

  secondaryLabel = [(ICSETableViewCell *)self secondaryLabel];
  [secondaryLabel setHidden:0];

  titleLabel2 = [(ICSETableViewCell *)self titleLabel];
  [titleLabel2 setAlpha:1.0];

  secondaryLabel2 = [(ICSETableViewCell *)self secondaryLabel];
  [secondaryLabel2 setAlpha:1.0];

  iconView = [(ICSETableViewCell *)self iconView];
  [iconView setAlpha:1.0];

  v8 = +[UIColor labelColor];
  titleLabel3 = [(ICSETableViewCell *)self titleLabel];
  [titleLabel3 setTextColor:v8];

  v10 = +[UIColor secondaryLabelColor];
  secondaryLabel3 = [(ICSETableViewCell *)self secondaryLabel];
  [secondaryLabel3 setTextColor:v10];

  v12 = +[UIColor labelColor];
  iconView2 = [(ICSETableViewCell *)self iconView];
  [iconView2 setTintColor:v12];

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v14 = +[UIColor tableCellGroupedBackgroundColor];
    [(ICSETableViewCell *)self setBackgroundColor:v14];
  }

  [(ICSETableViewCell *)self setCollapsible:0];
  [(ICSETableViewCell *)self setCollapsed:0];
}

- (void)setTableViewItem:(id)item
{
  objc_storeStrong(&self->_tableViewItem, item);
  itemCopy = item;
  [(ICSETableViewCell *)self setUpForTableViewItem:itemCopy];
}

- (void)setUpForTableViewItem:(id)item
{
  itemCopy = item;
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  ic_fontWithSingleLineA = [v4 ic_fontWithSingleLineA];
  titleLabel = [(ICSETableViewCell *)self titleLabel];
  [titleLabel setFont:ic_fontWithSingleLineA];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  ic_fontWithSingleLineA2 = [v7 ic_fontWithSingleLineA];
  secondaryLabel = [(ICSETableViewCell *)self secondaryLabel];
  [secondaryLabel setFont:ic_fontWithSingleLineA2];

  title = [itemCopy title];
  titleLabel2 = [(ICSETableViewCell *)self titleLabel];
  [titleLabel2 setText:title];

  secondaryTitle = [itemCopy secondaryTitle];
  secondaryLabel2 = [(ICSETableViewCell *)self secondaryLabel];
  [secondaryLabel2 setText:secondaryTitle];

  image = [itemCopy image];
  iconView = [(ICSETableViewCell *)self iconView];
  [iconView setImage:image];

  if ((+[UIDevice ic_isVision](UIDevice, "ic_isVision") & 1) == 0 && [itemCopy isInFolderList])
  {
    v16 = +[UIColor ICTintColor];
    iconView2 = [(ICSETableViewCell *)self iconView];
    [iconView2 setTintColor:v16];
  }

  if (([itemCopy isInFolderList] & 1) != 0 || (objc_msgSend(itemCopy, "folder"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
  {
    v19 = 34.0;
  }

  else
  {
    v19 = 22.0;
  }

  titleLeadingMargin = [(ICSETableViewCell *)self titleLeadingMargin];
  [titleLeadingMargin setConstant:v19];

  if (([itemCopy isAccountHeader] & 1) == 0)
  {
    folderListItem = [itemCopy folderListItem];

    if (folderListItem)
    {
      folderListItem2 = [itemCopy folderListItem];
      v23 = [folderListItem2 level] - 1;

      titleLeadingMargin2 = [(ICSETableViewCell *)self titleLeadingMargin];
      [titleLeadingMargin2 setConstant:v23 * 33.0 + 34.0];

      iconViewLeadingConstraint = [(ICSETableViewCell *)self iconViewLeadingConstraint];
      [iconViewLeadingConstraint setConstant:v23 * 33.0 + -5.0];
    }
  }

  if ([itemCopy isAccountPicker])
  {
    goto LABEL_11;
  }

  folder = [itemCopy folder];
  if (folder)
  {
  }

  else
  {
    account = [itemCopy account];

    if (!account)
    {
LABEL_11:
      [(ICSETableViewCell *)self setCollapsible:0];
      goto LABEL_17;
    }
  }

  folderListItem3 = [itemCopy folderListItem];
  -[ICSETableViewCell setCollapsible:](self, "setCollapsible:", [folderListItem3 isCollapsible]);

  folderListItem4 = [itemCopy folderListItem];
  -[ICSETableViewCell setCollapsed:](self, "setCollapsed:", [folderListItem4 isCollapsed]);

LABEL_17:
  if ([itemCopy isHeader])
  {
    [(ICSETableViewCell *)self setUpForHeaderItem:itemCopy];
  }

  else
  {
    if ([itemCopy isSelectable])
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.5;
    }

    titleLabel3 = [(ICSETableViewCell *)self titleLabel];
    [titleLabel3 setAlpha:v30];

    secondaryLabel3 = [(ICSETableViewCell *)self secondaryLabel];
    [secondaryLabel3 setAlpha:v30];

    iconView3 = [(ICSETableViewCell *)self iconView];
    [iconView3 setAlpha:v30];

    if ((+[UIDevice ic_isVision](UIDevice, "ic_isVision") & 1) == 0 && [itemCopy isChecked])
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
      iconView4 = [(ICSETableViewCell *)self iconView];
      [iconView4 setTintColor:v34];
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
  tableViewItem = [(ICSETableViewCell *)self tableViewItem];
  note = [tableViewItem note];

  if (note)
  {
    [(ICSETableViewCell *)self setAccessoryView:0];
    expandCollapseHitView = [(ICSETableViewCell *)self expandCollapseHitView];
    [expandCollapseHitView setUserInteractionEnabled:0];
  }

  else
  {
    tableViewItem2 = [(ICSETableViewCell *)self tableViewItem];
    if ([tableViewItem2 isHeader])
    {
      [(ICSETableViewCell *)self accountAccessoryImageView];
    }

    else
    {
      [(ICSETableViewCell *)self expansionAccessoryImageView];
    }
    expandCollapseHitView = ;

    if ([(ICSETableViewCell *)self isCollapsible])
    {
      [(ICSETableViewCell *)self setAccessoryView:expandCollapseHitView];
    }

    else
    {
      disclosureAccessoryImageView = [(ICSETableViewCell *)self disclosureAccessoryImageView];
      [(ICSETableViewCell *)self setAccessoryView:disclosureAccessoryImageView];
    }

    [(ICSETableViewCell *)self updateCollapsedDisclosure];
    expandCollapseHitView2 = [(ICSETableViewCell *)self expandCollapseHitView];
    [expandCollapseHitView2 setUserInteractionEnabled:{-[ICSETableViewCell isCollapsible](self, "isCollapsible")}];
  }
}

- (void)setCollapsible:(BOOL)collapsible
{
  if (self->_collapsible != collapsible)
  {
    self->_collapsible = collapsible;
    [(ICSETableViewCell *)self updateAccessoryView];
  }
}

- (void)updateCollapsedDisclosure
{
  accessoryView = [(ICSETableViewCell *)self accessoryView];

  if (accessoryView)
  {
    _shouldReverseLayoutDirection = [(ICSETableViewCell *)self _shouldReverseLayoutDirection];
    v5 = *&CGAffineTransformIdentity.c;
    *&v10.a = *&CGAffineTransformIdentity.a;
    *&v10.c = v5;
    *&v10.tx = *&CGAffineTransformIdentity.tx;
    if ([(ICSETableViewCell *)self isCollapsible]&& ![(ICSETableViewCell *)self isCollapsed])
    {
      v6 = 1.57079633;
      if (_shouldReverseLayoutDirection)
      {
        v6 = -1.57079633;
      }

      CGAffineTransformMakeRotation(&v10, v6);
    }

    v9 = v10;
    accessoryView2 = [(ICSETableViewCell *)self accessoryView];
    v8 = v9;
    [accessoryView2 setTransform:&v8];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(ICSETableViewCell *)self updateCollapsedDisclosure];
  }
}

- (void)expandCollapseTapped:(id)tapped
{
  delegate = [(ICSETableViewCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(ICSETableViewCell *)self delegate];
    [delegate2 tableViewCell:self setCollapsed:{-[ICSETableViewCell isCollapsed](self, "isCollapsed") ^ 1}];
  }

  v6 = [(ICSETableViewCell *)self isCollapsed]^ 1;

  [(ICSETableViewCell *)self setCollapsed:v6 animated:1];
}

- (void)setUpForHeaderItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v28 = ICDynamicCast();

  v5 = +[UIColor secondaryLabelColor];
  v6 = +[UIFontMetrics defaultMetrics];
  v7 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightRegular];
  v8 = [v6 scaledFontForFont:v7];
  ic_fontWithSingleLineA = [v8 ic_fontWithSingleLineA];

  titleLabel = [(ICSETableViewCell *)self titleLabel];
  [titleLabel setFont:ic_fontWithSingleLineA];

  titleLabel2 = [(ICSETableViewCell *)self titleLabel];
  [titleLabel2 setTextColor:v5];

  titleLabel3 = [(ICSETableViewCell *)self titleLabel];
  font = [titleLabel3 font];
  secondaryLabel = [(ICSETableViewCell *)self secondaryLabel];
  [secondaryLabel setFont:font];

  secondaryLabel2 = [(ICSETableViewCell *)self secondaryLabel];
  [secondaryLabel2 setTextColor:v5];

  image = [v28 image];
  iconView = [(ICSETableViewCell *)self iconView];
  [iconView setImage:image];

  iconView2 = [(ICSETableViewCell *)self iconView];
  [iconView2 setTintColor:v5];

  if ([v28 headerType] == 2)
  {
    titleLeadingMargin = [(ICSETableViewCell *)self titleLeadingMargin];
    [titleLeadingMargin setConstant:7.0];

    v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    ic_fontWithSingleLineA2 = [v20 ic_fontWithSingleLineA];
    titleLabel4 = [(ICSETableViewCell *)self titleLabel];
    [titleLabel4 setFont:ic_fontWithSingleLineA2];

    titleLeadingMargin2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    ic_fontWithSingleLineA3 = [titleLeadingMargin2 ic_fontWithSingleLineA];
    secondaryLabel3 = [(ICSETableViewCell *)self secondaryLabel];
    [secondaryLabel3 setFont:ic_fontWithSingleLineA3];

LABEL_5:
    goto LABEL_6;
  }

  if ([v28 headerType] == 1)
  {
    titleLeadingMargin2 = [(ICSETableViewCell *)self titleLeadingMargin];
    [titleLeadingMargin2 setConstant:0.0];
    goto LABEL_5;
  }

LABEL_6:
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    backgroundColor = [v28 backgroundColor];

    if (backgroundColor)
    {
      backgroundColor2 = [v28 backgroundColor];
      [(ICSETableViewCell *)self setBackgroundColor:backgroundColor2];
    }
  }
}

+ (id)newHeaderCell
{
  v3 = +[NSBundle mainBundle];
  v4 = NSStringFromClass(self);
  v5 = [v3 loadNibNamed:v4 owner:self options:0];

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
    defaultConstraintsForRegularTextSizes = [(ICSETableViewCell *)self defaultConstraintsForRegularTextSizes];
    [(ICSETableViewCell *)self disableConstraintsBySettingPriority:defaultConstraintsForRegularTextSizes];

    [(ICSETableViewCell *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    alternateConstraintsForAXLargerTextSizes = [(ICSETableViewCell *)self alternateConstraintsForAXLargerTextSizes];
    [(ICSETableViewCell *)self disableConstraintsBySettingPriority:alternateConstraintsForAXLargerTextSizes];

    [(ICSETableViewCell *)self defaultConstraintsForRegularTextSizes];
  }
  v5 = ;
  [(ICSETableViewCell *)self enableConstraintsBySettingPriority:v5];

  iconView = [(ICSETableViewCell *)self iconView];
  [iconView setHidden:ICAccessibilityAccessibilityLargerTextSizesEnabled()];

  v7.receiver = self;
  v7.super_class = ICSETableViewCell;
  [(ICSETableViewCell *)&v7 updateConstraints];
}

- (void)disableConstraintsBySettingPriority:(id)priority
{
  priorityCopy = priority;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [priorityCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(priorityCopy);
        }

        LODWORD(v5) = 1.0;
        [*(*(&v9 + 1) + 8 * v8) setPriority:v5];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [priorityCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)enableConstraintsBySettingPriority:(id)priority
{
  priorityCopy = priority;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [priorityCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(priorityCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        storedConstraintPriorities = [(ICSETableViewCell *)self storedConstraintPriorities];
        identifier = [v9 identifier];
        v12 = [storedConstraintPriorities objectForKeyedSubscript:identifier];

        LODWORD(v13) = 1148829696;
        if (v12)
        {
          *&v13 = [v12 integerValue];
        }

        [v9 setPriority:v13];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [priorityCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)defaultConstraintsForRegularTextSizes
{
  iconViewBaselineConstraint = [(ICSETableViewCell *)self iconViewBaselineConstraint];
  v11[0] = iconViewBaselineConstraint;
  titleLabelBaselineConstraint = [(ICSETableViewCell *)self titleLabelBaselineConstraint];
  v11[1] = titleLabelBaselineConstraint;
  titleLabelCenterConstraint = [(ICSETableViewCell *)self titleLabelCenterConstraint];
  v11[2] = titleLabelCenterConstraint;
  secondaryLabelBaselineConstraint = [(ICSETableViewCell *)self secondaryLabelBaselineConstraint];
  v11[3] = secondaryLabelBaselineConstraint;
  secondaryLabelLeadingConstraint = [(ICSETableViewCell *)self secondaryLabelLeadingConstraint];
  v11[4] = secondaryLabelLeadingConstraint;
  secondaryLabelCenterVerticallyConstraint = [(ICSETableViewCell *)self secondaryLabelCenterVerticallyConstraint];
  v11[5] = secondaryLabelCenterVerticallyConstraint;
  v9 = [NSArray arrayWithObjects:v11 count:6];

  return v9;
}

- (id)alternateConstraintsForAXLargerTextSizes
{
  titleLabelTopConstraintForAXLargerTextSizes = [(ICSETableViewCell *)self titleLabelTopConstraintForAXLargerTextSizes];
  v9[0] = titleLabelTopConstraintForAXLargerTextSizes;
  iconViewCenterYConstraintForAXLargerTextSizes = [(ICSETableViewCell *)self iconViewCenterYConstraintForAXLargerTextSizes];
  v9[1] = iconViewCenterYConstraintForAXLargerTextSizes;
  secondaryLabelBelowTitleLabelConstraintForAXLargerTextSizes = [(ICSETableViewCell *)self secondaryLabelBelowTitleLabelConstraintForAXLargerTextSizes];
  v9[2] = secondaryLabelBelowTitleLabelConstraintForAXLargerTextSizes;
  secondaryLabelLeadingConstraintForAXLargerTextSizes = [(ICSETableViewCell *)self secondaryLabelLeadingConstraintForAXLargerTextSizes];
  v9[3] = secondaryLabelLeadingConstraintForAXLargerTextSizes;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (id)accessibilityLabel
{
  tableViewItem = [(ICSETableViewCell *)self tableViewItem];
  isHeader = [tableViewItem isHeader];

  if (isHeader)
  {
    titleLabel = [(ICSETableViewCell *)self titleLabel];
    text = [titleLabel text];
    secondaryLabel = [(ICSETableViewCell *)self secondaryLabel];
    text2 = [secondaryLabel text];
    v9 = __ICAccessibilityStringForVariablesSentinel;
    v50 = text2;
    v52 = __ICAccessibilityStringForVariablesSentinel;
    v10 = __ICAccessibilityStringForVariables();
    goto LABEL_16;
  }

  tableViewItem2 = [(ICSETableViewCell *)self tableViewItem];
  note = [tableViewItem2 note];

  tableViewItem3 = [(ICSETableViewCell *)self tableViewItem];
  v14 = tableViewItem3;
  if (note)
  {
    note2 = [tableViewItem3 note];
    titleLabel = [(ICSETableViewCell *)self accessibilitySharedViaICloudStringForNote:note2];
  }

  else
  {
    titleLabel = [tableViewItem3 folder];
    if (titleLabel)
    {
      tableViewItem4 = [(ICSETableViewCell *)self tableViewItem];
      folder = [tableViewItem4 folder];
      isSharedViaICloud = [folder isSharedViaICloud];

      if (!isSharedViaICloud)
      {
        titleLabel = 0;
        goto LABEL_6;
      }

      v14 = +[NSBundle mainBundle];
      titleLabel = [v14 localizedStringForKey:@"Shared folder" value:&stru_1000F6F48 table:0];
    }
  }

LABEL_6:
  tableViewItem5 = [(ICSETableViewCell *)self tableViewItem];
  note3 = [tableViewItem5 note];
  isPasswordProtected = [note3 isPasswordProtected];

  if (isPasswordProtected)
  {
    v19 = +[NSBundle mainBundle];
    text = [v19 localizedStringForKey:@"Locked" value:&stru_1000F6F48 table:0];
  }

  else
  {
    text = 0;
  }

  tableViewItem6 = [(ICSETableViewCell *)self tableViewItem];
  note4 = [tableViewItem6 note];
  if (note4)
  {
    tableViewItem7 = [(ICSETableViewCell *)self tableViewItem];
    note5 = [tableViewItem7 note];
    modificationDate = [note5 modificationDate];
    secondaryLabel = [modificationDate ic_briefFormattedDateForAccessibility];
  }

  else
  {
    tableViewItem7 = [(ICSETableViewCell *)self secondaryLabel];
    secondaryLabel = [tableViewItem7 text];
  }

  text2 = [(ICSETableViewCell *)self titleLabel];
  v8Text = [text2 text];
  v9 = __ICAccessibilityStringForVariablesSentinel;
  v54 = secondaryLabel;
  v55 = __ICAccessibilityStringForVariablesSentinel;
  v50 = titleLabel;
  v52 = text;
  v10 = __ICAccessibilityStringForVariables();

LABEL_16:
  v29 = [(ICSETableViewCell *)self tableViewItem:v50];
  folder2 = [v29 folder];

  if (folder2)
  {
    tableViewItem8 = [(ICSETableViewCell *)self tableViewItem];
    folder3 = [tableViewItem8 folder];

    parent = [folder3 parent];
    title = [parent title];
    v35 = [title length];

    if (v35)
    {
      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"subfolder of %@" value:&stru_1000F6F48 table:0];

      parent2 = [folder3 parent];
      title2 = [parent2 title];
      v40 = [NSString localizedStringWithFormat:v37, title2];

      v51 = v40;
      v53 = v9;
      v41 = __ICAccessibilityStringForVariables();

      v10 = v41;
    }

    visibleNoteContainerChildren = [folder3 visibleNoteContainerChildren];
    v43 = [visibleNoteContainerChildren count];

    if (v43)
    {
      v44 = +[NSBundle mainBundle];
      v45 = [v44 localizedStringForKey:@"NUM_SUBFOLDERS_%lu" value:&stru_1000F6F48 table:0];

      visibleNoteContainerChildren2 = [folder3 visibleNoteContainerChildren];
      v47 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v45, [visibleNoteContainerChildren2 count]);

      v48 = __ICAccessibilityStringForVariables();

      v10 = v48;
    }
  }

  return v10;
}

- (id)accessibilityUserInputLabels
{
  titleLabel = [(ICSETableViewCell *)self titleLabel];
  text = [titleLabel text];
  v8[0] = text;
  accessibilityLabel = [(ICSETableViewCell *)self accessibilityLabel];
  v8[1] = accessibilityLabel;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v15.receiver = self;
  v15.super_class = ICSETableViewCell;
  accessibilityTraits = [(ICSETableViewCell *)&v15 accessibilityTraits];
  tableViewItem = [(ICSETableViewCell *)self tableViewItem];
  if ([tableViewItem isSelectable])
  {
  }

  else
  {
    tableViewItem2 = [(ICSETableViewCell *)self tableViewItem];
    isHeader = [tableViewItem2 isHeader];

    v7 = UIAccessibilityTraitNotEnabled;
    if (isHeader)
    {
      v7 = 0;
    }

    accessibilityTraits |= v7;
  }

  tableViewItem3 = [(ICSETableViewCell *)self tableViewItem];
  isChecked = [tableViewItem3 isChecked];

  if (isChecked)
  {
    v10 = UIAccessibilityTraitSelected;
  }

  else
  {
    v10 = 0;
  }

  tableViewItem4 = [(ICSETableViewCell *)self tableViewItem];
  isHeader2 = [tableViewItem4 isHeader];

  v13 = UIAccessibilityTraitHeader;
  if (!isHeader2)
  {
    v13 = 0;
  }

  return v10 | v13 | accessibilityTraits;
}

- (id)accessibilityCustomActions
{
  v13.receiver = self;
  v13.super_class = ICSETableViewCell;
  accessibilityCustomActions = [(ICSETableViewCell *)&v13 accessibilityCustomActions];
  if ([(ICSETableViewCell *)self isCollapsible])
  {
    v4 = [accessibilityCustomActions mutableCopy];
    if (!v4)
    {
      v4 = [[NSMutableArray alloc] initWithCapacity:1];
    }

    isCollapsed = [(ICSETableViewCell *)self isCollapsed];
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (isCollapsed)
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
    v11 = accessibilityCustomActions;
  }

  return v11;
}

- (id)accessibilityHint
{
  if ([(ICSETableViewCell *)self isCollapsible])
  {
    isCollapsed = [(ICSETableViewCell *)self isCollapsed];
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (isCollapsed)
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