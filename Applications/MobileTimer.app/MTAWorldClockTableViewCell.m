@interface MTAWorldClockTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTAWorldClockTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCity:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation MTAWorldClockTableViewCell

- (MTAWorldClockTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = MTAWorldClockTableViewCell;
  v4 = [(MTAWorldClockTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTAWorldClockTableViewCell *)v4 setOpaque:0];
    [(MTAWorldClockTableViewCell *)v5 setSelectionStyle:0];
    v6 = [(MTAWorldClockTableViewCell *)v5 contentView];
    [v6 setOpaque:0];
    v7 = [MTUIWorldClockCellView alloc];
    [(MTAWorldClockTableViewCell *)v5 bounds];
    v8 = [v7 initWithFrame:?];
    clockCellView = v5->_clockCellView;
    v5->_clockCellView = v8;

    [(MTUIWorldClockCellView *)v5->_clockCellView setDelegate:v5];
    [(MTUIWorldClockCellView *)v5->_clockCellView setAutoresizingMask:18];
    [v6 addSubview:v5->_clockCellView];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v5 = [(MTAWorldClockTableViewCell *)self contentView];
  [v5 bounds];
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
  v3 = [(MTAWorldClockTableViewCell *)self contentView];
  [v3 bounds];
  [(MTUIWorldClockCellView *)self->_clockCellView setFrame:?];
}

- (void)setCity:(id)a3
{
  v5 = a3;
  if (self->_city != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_city, a3);
    v6 = [(MTUIWorldClockCellView *)self->_clockCellView nameLabel];
    v7 = [(WorldClockCity *)self->_city name];
    [v6 setText:v7];

    v8 = [NSTimeZone alloc];
    v9 = [(WorldClockCity *)self->_city timeZone];
    v10 = [v8 initWithName:v9];

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

    v5 = v11;
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTAWorldClockTableViewCell;
  [MTAWorldClockTableViewCell setEditing:"setEditing:animated:" animated:?];
  clockCellView = self->_clockCellView;
  if (v5)
  {
    v8 = [(MTAWorldClockTableViewCell *)self showsReorderControl];
  }

  else
  {
    v8 = 0;
  }

  [(MTUIWorldClockCellView *)clockCellView setEditing:v8 animated:v4];
}

- (void)willTransitionToState:(unint64_t)a3
{
  if ((a3 & 1) == 0)
  {
    [(MTAWorldClockTableViewCell *)self setShowsReorderControl:0];
  }

  v5.receiver = self;
  v5.super_class = MTAWorldClockTableViewCell;
  [(MTAWorldClockTableViewCell *)&v5 willTransitionToState:a3];
}

@end