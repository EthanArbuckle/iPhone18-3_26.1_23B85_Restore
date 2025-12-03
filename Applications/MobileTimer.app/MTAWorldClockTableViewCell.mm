@interface MTAWorldClockTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTAWorldClockTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCity:(id)city;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation MTAWorldClockTableViewCell

- (MTAWorldClockTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = MTAWorldClockTableViewCell;
  v4 = [(MTAWorldClockTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTAWorldClockTableViewCell *)v4 setOpaque:0];
    [(MTAWorldClockTableViewCell *)v5 setSelectionStyle:0];
    contentView = [(MTAWorldClockTableViewCell *)v5 contentView];
    [contentView setOpaque:0];
    v7 = [MTUIWorldClockCellView alloc];
    [(MTAWorldClockTableViewCell *)v5 bounds];
    v8 = [v7 initWithFrame:?];
    clockCellView = v5->_clockCellView;
    v5->_clockCellView = v8;

    [(MTUIWorldClockCellView *)v5->_clockCellView setDelegate:v5];
    [(MTUIWorldClockCellView *)v5->_clockCellView setAutoresizingMask:18];
    [contentView addSubview:v5->_clockCellView];
    v10 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(MTUIWorldClockCellView *)self->_clockCellView setDelegate:0];
  v3.receiver = self;
  v3.super_class = MTAWorldClockTableViewCell;
  [(MTAWorldClockTableViewCell *)&v3 dealloc];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MTAWorldClockTableViewCell;
  [(MTAWorldClockTableViewCell *)&v3 prepareForReuse];
  [(MTAWorldClockTableViewCell *)self setCity:0];
  [(MTAWorldClockTableViewCell *)self setAccessoryView:0];
  [(MTAWorldClockTableViewCell *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  contentView = [(MTAWorldClockTableViewCell *)self contentView];
  [contentView bounds];
  v7 = v6;

  [(MTUIWorldClockCellView *)self->_clockCellView sizeThatFits:v7, height];
  v9 = v8;
  v11 = v10;
  [(MTAWorldClockTableViewCell *)self _separatorFrame];
  v13 = v11 + v12;
  v14 = v9;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MTAWorldClockTableViewCell;
  [(MTAWorldClockTableViewCell *)&v4 layoutSubviews];
  contentView = [(MTAWorldClockTableViewCell *)self contentView];
  [contentView bounds];
  [(MTUIWorldClockCellView *)self->_clockCellView setFrame:?];
}

- (void)setCity:(id)city
{
  cityCopy = city;
  if (self->_city != cityCopy)
  {
    v11 = cityCopy;
    objc_storeStrong(&self->_city, city);
    nameLabel = [(MTUIWorldClockCellView *)self->_clockCellView nameLabel];
    name = [(WorldClockCity *)self->_city name];
    [nameLabel setText:name];

    v8 = [NSTimeZone alloc];
    timeZone = [(WorldClockCity *)self->_city timeZone];
    v10 = [v8 initWithName:timeZone];

    [(MTUIWorldClockCellView *)self->_clockCellView setTimeZone:v10];
    if (!self->_city)
    {
      goto LABEL_5;
    }

    if (([(MTUIWorldClockCellView *)self->_clockCellView started]& 1) != 0)
    {
      if (!self->_city)
      {
LABEL_5:
        if ([(MTUIWorldClockCellView *)self->_clockCellView started])
        {
          [(MTUIWorldClockCellView *)self->_clockCellView stop];
        }
      }
    }

    else
    {
      [(MTUIWorldClockCellView *)self->_clockCellView start];
    }

    cityCopy = v11;
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = MTAWorldClockTableViewCell;
  [MTAWorldClockTableViewCell setEditing:"setEditing:animated:" animated:?];
  clockCellView = self->_clockCellView;
  if (editingCopy)
  {
    showsReorderControl = [(MTAWorldClockTableViewCell *)self showsReorderControl];
  }

  else
  {
    showsReorderControl = 0;
  }

  [(MTUIWorldClockCellView *)clockCellView setEditing:showsReorderControl animated:animatedCopy];
}

- (void)willTransitionToState:(unint64_t)state
{
  if ((state & 1) == 0)
  {
    [(MTAWorldClockTableViewCell *)self setShowsReorderControl:0];
  }

  v5.receiver = self;
  v5.super_class = MTAWorldClockTableViewCell;
  [(MTAWorldClockTableViewCell *)&v5 willTransitionToState:state];
}

@end