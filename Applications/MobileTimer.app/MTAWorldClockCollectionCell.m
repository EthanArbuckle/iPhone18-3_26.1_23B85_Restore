@interface MTAWorldClockCollectionCell
- (MTAWorldClockCollectionCell)initWithFrame:(CGRect)a3;
- (MTAWorldClockCollectionCellDelegate)delegate;
- (void)deleteTapped:(id)a3;
- (void)layoutSubviews;
- (void)setCity:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)start;
- (void)stop;
@end

@implementation MTAWorldClockCollectionCell

- (MTAWorldClockCollectionCell)initWithFrame:(CGRect)a3
{
  v30.receiver = self;
  v30.super_class = MTAWorldClockCollectionCell;
  v3 = [(MTAWorldClockCollectionCell *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MTAWorldClockCollectionCell *)v3 contentView];
    v6 = +[UIColor mtui_foregroundColor];
    [v5 setBackgroundColor:v6];

    v7 = [(MTAWorldClockCollectionCell *)v4 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    v9 = v8;
    v10 = [(MTAWorldClockCollectionCell *)v4 contentView];
    v11 = [v10 layer];
    [v11 setCornerRadius:v9];

    v12 = [(MTAWorldClockCollectionCell *)v4 contentView];
    [v12 setAutoresizingMask:18];

    v13 = [(MTAWorldClockCollectionCell *)v4 contentView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:1];

    v14 = [[MTAWorldClockView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(MTAWorldClockCollectionCell *)v4 setWorldClockView:v14];

    v15 = [(MTAWorldClockCollectionCell *)v4 contentView];
    v16 = [(MTAWorldClockCollectionCell *)v4 worldClockView];
    [v15 addSubview:v16];

    v17 = [UIButton buttonWithType:0];
    [(MTAWorldClockCollectionCell *)v4 setDeleteButton:v17];

    v18 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    v19 = +[UIImage mtui_deleteButtonImage];
    [v18 setImage:v19 forState:0];

    v20 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    [v20 addTarget:v4 action:"deleteTapped:" forControlEvents:64];

    v21 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    [v21 setAccessibilityIdentifier:@"Remove clock"];

    v22 = +[UIShape circleShape];
    v23 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    v24 = [v23 hoverStyle];
    [v24 setShape:v22];

    v25 = [(MTAWorldClockCollectionCell *)v4 contentView];
    v26 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    [v25 addSubview:v26];

    v27 = [(MTAWorldClockCollectionCell *)v4 deleteButton];
    [v27 setAlpha:0.0];

    v28 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTAWorldClockCollectionCell;
  [(MTAWorldClockCollectionCell *)&v13 layoutSubviews];
  v3 = [(MTAWorldClockCollectionCell *)self deleteButton];
  [v3 sizeToFit];

  v4 = [(MTAWorldClockCollectionCell *)self deleteButton];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  v9 = [(MTAWorldClockCollectionCell *)self deleteButton];
  [v9 setFrame:{24.0, 24.0, v6, v8}];

  [(MTAWorldClockCollectionCell *)self bounds];
  v10 = CGRectGetWidth(v14) + -32.0;
  [(MTAWorldClockCollectionCell *)self bounds];
  Height = CGRectGetHeight(v15);
  v12 = [(MTAWorldClockCollectionCell *)self worldClockView];
  [v12 setFrame:{16.0, 0.0, v10, Height}];
}

- (void)setCity:(id)a3
{
  v5 = a3;
  city = self->_city;
  if (city != v5 && ([(WorldClockCity *)city isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_city, a3);
    v7 = self->_city;
    v8 = [(MTAWorldClockCollectionCell *)self worldClockView];
    [v8 setCity:v7];
  }

  _objc_release_x1();
}

- (void)start
{
  v2 = [(MTAWorldClockCollectionCell *)self worldClockView];
  [v2 start];
}

- (void)stop
{
  v2 = [(MTAWorldClockCollectionCell *)self worldClockView];
  [v2 stop];
}

- (void)setEditing:(BOOL)a3
{
  self->_editing = a3;
  if (a3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [(MTAWorldClockCollectionCell *)self deleteButton];
  [v5 setAlpha:v4];

  editing = self->_editing;
  v7 = [(MTAWorldClockCollectionCell *)self deleteButton];
  [v7 setUserInteractionEnabled:editing];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    [UIView beginAnimations:@"WorldClockCollectionCellEditing"];
    [(MTAWorldClockCollectionCell *)self setEditing:v4];

    +[UIView endAnimations];
  }

  else
  {

    [(MTAWorldClockCollectionCell *)self setEditing:?];
  }
}

- (void)deleteTapped:(id)a3
{
  v4 = [(MTAWorldClockCollectionCell *)self delegate];
  [v4 deleteCell:self];
}

- (MTAWorldClockCollectionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end