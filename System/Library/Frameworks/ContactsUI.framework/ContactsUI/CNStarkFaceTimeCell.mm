@interface CNStarkFaceTimeCell
- (CNPropertyCellDelegate)delegate;
- (CNStarkFaceTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)constantConstraints;
- (void)_cnui_applyContactStyle;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)performDefaultAction;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CNStarkFaceTimeCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performDefaultAction
{
  v4 = [(CNStarkFaceTimeCell *)self delegate];
  v3 = [(CNContactCell *)self cardGroupItem];
  [v4 propertyCell:self performActionForItem:v3 withTransportType:1];
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = CNStarkFaceTimeCell;
  [(CNStarkFaceTimeCell *)&v3 setSeparatorStyle:1];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CNStarkFaceTimeCell;
  [(CNStarkFaceTimeCell *)&v13 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];
  if (v7 == self)
  {
    v9 = 1;
  }

  else
  {
    v8 = [v6 previouslyFocusedView];
    v9 = v8 == self;
  }

  v10 = [v6 nextFocusedView];

  if (v9)
  {
    v11 = v10 == self;
    v12 = [(CNStarkFaceTimeCell *)self actionView];
    [v12 updateForFocusedState:v11];
  }
}

- (id)constantConstraints
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v26[0] = @"label";
  v4 = [(CNStarkFaceTimeCell *)self faceTimeLabel];
  v26[1] = @"actionView";
  v27[0] = v4;
  v5 = [(CNStarkFaceTimeCell *)self actionView];
  v27[1] = v5;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v23 = [(CNStarkFaceTimeCell *)self faceTimeLabel];
  v22 = [v23 centerYAnchor];
  v6 = [(CNStarkFaceTimeCell *)self contentView];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 centerYAnchor];
  v9 = [v22 constraintEqualToAnchor:v8];
  v25[0] = v9;
  v10 = [(CNStarkFaceTimeCell *)self contentView];
  v11 = [v10 heightAnchor];
  +[CNStarkContactPropertyCell minimumContentHeight];
  v12 = [v11 constraintEqualToConstant:?];
  v25[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  [v3 addObjectsFromArray:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(60)-[actionView(==36)]-(12)-[label]-(>=12)-|" options:1024 metrics:0 views:v24];
  [v3 addObjectsFromArray:v14];

  v15 = [(CNStarkFaceTimeCell *)self actionView];
  v16 = [v15 centerYAnchor];
  v17 = [(CNStarkFaceTimeCell *)self contentView];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 centerYAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];
  [v3 addObject:v20];

  return v3;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v6 = a3;
  if (([v6 isHighlighted] & 1) != 0 || (objc_msgSend(v6, "isFocused") & 1) != 0 || objc_msgSend(v6, "isSelected"))
  {
    v4 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v5 = [MEMORY[0x1E69DC888] _carSystemFocusColor];
    [v4 setBackgroundColor:v5];

    [v4 setCornerRadius:14.0];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  }

  [(CNStarkFaceTimeCell *)self setBackgroundConfiguration:v4];
}

- (void)_cnui_applyContactStyle
{
  v3 = +[CNUIColorRepository carPlayTableViewCellTitleTextColor];
  v4 = [(CNStarkFaceTimeCell *)self faceTimeLabel];
  [v4 setTextColor:v3];

  v5 = +[CNUIColorRepository carPlayTableViewCellTitleTextHighlightedColor];
  v6 = [(CNStarkFaceTimeCell *)self faceTimeLabel];
  [v6 setHighlightedTextColor:v5];

  [(CNStarkFaceTimeCell *)self setNeedsUpdateConfiguration];
}

- (CNStarkFaceTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = CNStarkFaceTimeCell;
  v4 = [(CNContactCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
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

    v10 = [(CNStarkFaceTimeCell *)v4 contentView];
    [v10 addSubview:v4->_faceTimeLabel];

    v11 = [CNStarkActionView propertyTransportButtonWithDelegate:v4];
    actionView = v4->_actionView;
    v4->_actionView = v11;

    [(CNStarkActionView *)v4->_actionView setPrefersSmallImageScale:1];
    [(CNStarkActionView *)v4->_actionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNStarkActionView *)v4->_actionView setActionType:*MEMORY[0x1E695C150]];
    [(CNStarkActionView *)v4->_actionView setEnabled:0];
    v13 = [(CNStarkFaceTimeCell *)v4 contentView];
    [v13 addSubview:v4->_actionView];

    v14 = v4;
  }

  return v4;
}

@end