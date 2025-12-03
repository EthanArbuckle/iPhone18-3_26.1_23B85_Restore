@interface MessageListTableViewCell
- (MessageListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)configurationState;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation MessageListTableViewCell

- (MessageListTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = MessageListTableViewCell;
  v7 = [(MessageListTableViewCell *)&v17 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = [MessageListCellView alloc];
    contentView = [(MessageListTableViewCell *)v7 contentView];
    [contentView bounds];
    v10 = [(MessageListCellView *)v8 initWithFrame:?];

    v11 = [MessageListCellHelper alloc];
    contentView2 = [(MessageListTableViewCell *)v7 contentView];
    v13 = +[MessageListCellHelperMobileMailProxy sharedApplicationProxy];
    v14 = [v11 initWithParentView:v7 contentView:contentView2 cellView:v10 applicationProxy:v13];
    cellHelper = v7->_cellHelper;
    v7->_cellHelper = v14;

    [(MessageListTableViewCell *)v7 setAccessoryType:0];
  }

  return v7;
}

- (id)configurationState
{
  v7.receiver = self;
  v7.super_class = MessageListTableViewCell;
  configurationState = [(MessageListTableViewCell *)&v7 configurationState];
  cellHelper = [(MessageListTableViewCell *)self cellHelper];
  v5 = [cellHelper configurationStateForCellConfigurationState:configurationState];

  return v5;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  cellHelper = [(MessageListTableViewCell *)self cellHelper];
  [cellHelper setHighlighted:highlightedCopy];

  v8.receiver = self;
  v8.super_class = MessageListTableViewCell;
  [(MessageListTableViewCell *)&v8 setHighlighted:highlightedCopy animated:animatedCopy];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  cellHelper = [(MessageListTableViewCell *)self cellHelper];
  [cellHelper setSelected:selectedCopy];

  v8.receiver = self;
  v8.super_class = MessageListTableViewCell;
  [(MessageListTableViewCell *)&v8 setSelected:selectedCopy animated:animatedCopy];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  cellHelper = [(MessageListTableViewCell *)self cellHelper];
  v5 = [cellHelper contentConfigurationForState:stateCopy];
  v6 = [cellHelper backgroundConfigurationForState:stateCopy];
  [cellHelper updateViewConfigurationForState:stateCopy];
  [cellHelper updateViewContentConfiguration:v5];
  [cellHelper updateViewBackgroundConfiguration:v6];
  [(MessageListTableViewCell *)self setBackgroundConfiguration:v6];
}

- (void)layoutSubviews
{
  [(MessageListTableViewCell *)self frame];
  if (v3 >= 1.0)
  {
    v15.receiver = self;
    v15.super_class = MessageListTableViewCell;
    [(MessageListTableViewCell *)&v15 layoutSubviews];
    contentView = [(MessageListTableViewCell *)self contentView];
    [contentView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    cellHelper = [(MessageListTableViewCell *)self cellHelper];
    cellView = [cellHelper cellView];
    [cellView setFrame:{v6, v8, v10, v12}];
  }
}

@end