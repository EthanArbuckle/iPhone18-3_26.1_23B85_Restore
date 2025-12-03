@interface CNStarkFaceTimeCell
- (CNPropertyCellDelegate)delegate;
- (CNStarkFaceTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)constantConstraints;
- (void)_cnui_applyContactStyle;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)performDefaultAction;
- (void)setSeparatorStyle:(int64_t)style;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CNStarkFaceTimeCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performDefaultAction
{
  delegate = [(CNStarkFaceTimeCell *)self delegate];
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  [delegate propertyCell:self performActionForItem:cardGroupItem withTransportType:1];
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = CNStarkFaceTimeCell;
  [(CNStarkFaceTimeCell *)&v3 setSeparatorStyle:1];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = CNStarkFaceTimeCell;
  [(CNStarkFaceTimeCell *)&v13 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];
  if (nextFocusedView == self)
  {
    v9 = 1;
  }

  else
  {
    previouslyFocusedView = [contextCopy previouslyFocusedView];
    v9 = previouslyFocusedView == self;
  }

  nextFocusedView2 = [contextCopy nextFocusedView];

  if (v9)
  {
    v11 = nextFocusedView2 == self;
    actionView = [(CNStarkFaceTimeCell *)self actionView];
    [actionView updateForFocusedState:v11];
  }
}

- (id)constantConstraints
{
  v27[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v26[0] = @"label";
  faceTimeLabel = [(CNStarkFaceTimeCell *)self faceTimeLabel];
  v26[1] = @"actionView";
  v27[0] = faceTimeLabel;
  actionView = [(CNStarkFaceTimeCell *)self actionView];
  v27[1] = actionView;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

  faceTimeLabel2 = [(CNStarkFaceTimeCell *)self faceTimeLabel];
  centerYAnchor = [faceTimeLabel2 centerYAnchor];
  contentView = [(CNStarkFaceTimeCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
  v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v25[0] = v9;
  contentView2 = [(CNStarkFaceTimeCell *)self contentView];
  heightAnchor = [contentView2 heightAnchor];
  +[CNStarkContactPropertyCell minimumContentHeight];
  v12 = [heightAnchor constraintEqualToConstant:?];
  v25[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [array addObjectsFromArray:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(60)-[actionView(==36)]-(12)-[label]-(>=12)-|" options:1024 metrics:0 views:v24];
  [array addObjectsFromArray:v14];

  actionView2 = [(CNStarkFaceTimeCell *)self actionView];
  centerYAnchor3 = [actionView2 centerYAnchor];
  contentView3 = [(CNStarkFaceTimeCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView3 safeAreaLayoutGuide];
  centerYAnchor4 = [safeAreaLayoutGuide2 centerYAnchor];
  v20 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [array addObject:v20];

  return array;
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  if (([stateCopy isHighlighted] & 1) != 0 || (objc_msgSend(stateCopy, "isFocused") & 1) != 0 || objc_msgSend(stateCopy, "isSelected"))
  {
    listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    _carSystemFocusColor = [MEMORY[0x1E69DC888] _carSystemFocusColor];
    [listCellConfiguration setBackgroundColor:_carSystemFocusColor];

    [listCellConfiguration setCornerRadius:14.0];
  }

  else
  {
    listCellConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  }

  [(CNStarkFaceTimeCell *)self setBackgroundConfiguration:listCellConfiguration];
}

- (void)_cnui_applyContactStyle
{
  v3 = +[CNUIColorRepository carPlayTableViewCellTitleTextColor];
  faceTimeLabel = [(CNStarkFaceTimeCell *)self faceTimeLabel];
  [faceTimeLabel setTextColor:v3];

  v5 = +[CNUIColorRepository carPlayTableViewCellTitleTextHighlightedColor];
  faceTimeLabel2 = [(CNStarkFaceTimeCell *)self faceTimeLabel];
  [faceTimeLabel2 setHighlightedTextColor:v5];

  [(CNStarkFaceTimeCell *)self setNeedsUpdateConfiguration];
}

- (CNStarkFaceTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = CNStarkFaceTimeCell;
  v4 = [(CNContactCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    faceTimeLabel = v4->_faceTimeLabel;
    v4->_faceTimeLabel = v6;

    [(UILabel *)v4->_faceTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_faceTimeLabel setTextAlignment:4];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"PHONE_ACTION_VIDEO_CONFERENCE" value:&stru_1F0CE7398 table:@"Localized"];
    [(UILabel *)v4->_faceTimeLabel setText:v9];

    contentView = [(CNStarkFaceTimeCell *)v4 contentView];
    [contentView addSubview:v4->_faceTimeLabel];

    v11 = [CNStarkActionView propertyTransportButtonWithDelegate:v4];
    actionView = v4->_actionView;
    v4->_actionView = v11;

    [(CNStarkActionView *)v4->_actionView setPrefersSmallImageScale:1];
    [(CNStarkActionView *)v4->_actionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNStarkActionView *)v4->_actionView setActionType:*MEMORY[0x1E695C150]];
    [(CNStarkActionView *)v4->_actionView setEnabled:0];
    contentView2 = [(CNStarkFaceTimeCell *)v4 contentView];
    [contentView2 addSubview:v4->_actionView];

    v14 = v4;
  }

  return v4;
}

@end