@interface MTAWorldClockCollectionCell
- (MTAWorldClockCollectionCell)initWithFrame:(CGRect)frame;
- (MTAWorldClockCollectionCellDelegate)delegate;
- (void)deleteTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setCity:(id)city;
- (void)setEditing:(BOOL)editing;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)start;
- (void)stop;
@end

@implementation MTAWorldClockCollectionCell

- (MTAWorldClockCollectionCell)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = MTAWorldClockCollectionCell;
  v3 = [(MTAWorldClockCollectionCell *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(MTAWorldClockCollectionCell *)v3 contentView];
    v6 = +[UIColor mtui_foregroundColor];
    [contentView setBackgroundColor:v6];

    traitCollection = [(MTAWorldClockCollectionCell *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v9 = v8;
    contentView2 = [(MTAWorldClockCollectionCell *)v4 contentView];
    layer = [contentView2 layer];
    [layer setCornerRadius:v9];

    contentView3 = [(MTAWorldClockCollectionCell *)v4 contentView];
    [contentView3 setAutoresizingMask:18];

    contentView4 = [(MTAWorldClockCollectionCell *)v4 contentView];
    [contentView4 setTranslatesAutoresizingMaskIntoConstraints:1];

    v14 = [[MTAWorldClockView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(MTAWorldClockCollectionCell *)v4 setWorldClockView:v14];

    contentView5 = [(MTAWorldClockCollectionCell *)v4 contentView];
    worldClockView = [(MTAWorldClockCollectionCell *)v4 worldClockView];
    [contentView5 addSubview:worldClockView];

    v17 = [UIButton buttonWithType:0];
    [(MTAWorldClockCollectionCell *)v4 setDeleteButton:v17];

    deleteButton = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    v19 = +[UIImage mtui_deleteButtonImage];
    [deleteButton setImage:v19 forState:0];

    deleteButton2 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    [deleteButton2 addTarget:v4 action:"deleteTapped:" forControlEvents:64];

    deleteButton3 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    [deleteButton3 setAccessibilityIdentifier:@"Remove clock"];

    v22 = +[UIShape circleShape];
    deleteButton4 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    hoverStyle = [deleteButton4 hoverStyle];
    [hoverStyle setShape:v22];

    contentView6 = [(MTAWorldClockCollectionCell *)v4 contentView];
    deleteButton5 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    [contentView6 addSubview:deleteButton5];

    deleteButton6 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    [deleteButton6 setAlpha:0.0];

    v28 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTAWorldClockCollectionCell;
  [(MTAWorldClockCollectionCell *)&v13 layoutSubviews];
  deleteButton = [(MTAWorldClockCollectionCell *)self deleteButton];
  [deleteButton sizeToFit];

  deleteButton2 = [(MTAWorldClockCollectionCell *)self deleteButton];
  [deleteButton2 frame];
  v6 = v5;
  v8 = v7;

  deleteButton3 = [(MTAWorldClockCollectionCell *)self deleteButton];
  [deleteButton3 setFrame:{24.0, 24.0, v6, v8}];

  [(MTAWorldClockCollectionCell *)self bounds];
  v10 = CGRectGetWidth(v14) + -32.0;
  [(MTAWorldClockCollectionCell *)self bounds];
  Height = CGRectGetHeight(v15);
  worldClockView = [(MTAWorldClockCollectionCell *)self worldClockView];
  [worldClockView setFrame:{16.0, 0.0, v10, Height}];
}

- (void)setCity:(id)city
{
  cityCopy = city;
  city = self->_city;
  if (city != cityCopy && ([(WorldClockCity *)city isEqual:cityCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_city, city);
    v7 = self->_city;
    worldClockView = [(MTAWorldClockCollectionCell *)self worldClockView];
    [worldClockView setCity:v7];
  }

  _objc_release_x1();
}

- (void)start
{
  worldClockView = [(MTAWorldClockCollectionCell *)self worldClockView];
  [worldClockView start];
}

- (void)stop
{
  worldClockView = [(MTAWorldClockCollectionCell *)self worldClockView];
  [worldClockView stop];
}

- (void)setEditing:(BOOL)editing
{
  self->_editing = editing;
  if (editing)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  deleteButton = [(MTAWorldClockCollectionCell *)self deleteButton];
  [deleteButton setAlpha:v4];

  editing = self->_editing;
  deleteButton2 = [(MTAWorldClockCollectionCell *)self deleteButton];
  [deleteButton2 setUserInteractionEnabled:editing];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  if (animated)
  {
    [UIView beginAnimations:@"WorldClockCollectionCellEditing"];
    [(MTAWorldClockCollectionCell *)self setEditing:editingCopy];

    +[UIView endAnimations];
  }

  else
  {

    [(MTAWorldClockCollectionCell *)self setEditing:?];
  }
}

- (void)deleteTapped:(id)tapped
{
  delegate = [(MTAWorldClockCollectionCell *)self delegate];
  [delegate deleteCell:self];
}

- (MTAWorldClockCollectionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end