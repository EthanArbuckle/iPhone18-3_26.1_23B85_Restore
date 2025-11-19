@interface MKCustomSeparatorCell
- (CGRect)_separatorFrame;
- (MKCustomSeparatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)leadingSeparatorInset;
- (double)trailingSeparatorInset;
- (void)_updateSeparatorInset;
- (void)setLeadingSeparatorInset:(double)a3;
- (void)setLeftSeparatorInset:(double)a3;
- (void)setRightSeparatorInset:(double)a3;
- (void)setTrailingSeparatorInset:(double)a3;
@end

@implementation MKCustomSeparatorCell

- (double)trailingSeparatorInset
{
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {

    [(MKCustomSeparatorCell *)self leftSeparatorInset];
  }

  else
  {

    [(MKCustomSeparatorCell *)self rightSeparatorInset];
  }

  return result;
}

- (void)setTrailingSeparatorInset:(double)a3
{
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {

    [(MKCustomSeparatorCell *)self setLeftSeparatorInset:a3];
  }

  else
  {

    [(MKCustomSeparatorCell *)self setRightSeparatorInset:a3];
  }
}

- (double)leadingSeparatorInset
{
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {

    [(MKCustomSeparatorCell *)self rightSeparatorInset];
  }

  else
  {

    [(MKCustomSeparatorCell *)self leftSeparatorInset];
  }

  return result;
}

- (void)setLeadingSeparatorInset:(double)a3
{
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {

    [(MKCustomSeparatorCell *)self setRightSeparatorInset:a3];
  }

  else
  {

    [(MKCustomSeparatorCell *)self setLeftSeparatorInset:a3];
  }
}

- (void)setRightSeparatorInset:(double)a3
{
  if (self->_rightSeparatorInset != a3)
  {
    self->_rightSeparatorInset = a3;
    [(MKCustomSeparatorCell *)self _updateSeparatorInset];
  }
}

- (void)setLeftSeparatorInset:(double)a3
{
  if (self->_leftSeparatorInset != a3)
  {
    self->_leftSeparatorInset = a3;
    [(MKCustomSeparatorCell *)self _updateSeparatorInset];
  }
}

- (void)_updateSeparatorInset
{
  [(MKCustomSeparatorCell *)self leftSeparatorInset];
  v4 = v3;
  [(MKCustomSeparatorCell *)self rightSeparatorInset];

  [(MKCustomSeparatorCell *)self setSeparatorInset:0.0, v4, 0.0, v5];
}

- (CGRect)_separatorFrame
{
  if ([(MKCustomSeparatorCell *)self isSeparatorHidden])
  {
    v4 = *MEMORY[0x1E695F058];
    v3 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = MKCustomSeparatorCell;
    [(MKTableViewCell *)&v17 _separatorFrame];
    v3 = v7;
    v6 = v8;
    [(MKCustomSeparatorCell *)self leftSeparatorInset];
    v4 = v9;
    [(MKCustomSeparatorCell *)self bounds];
    Width = CGRectGetWidth(v18);
    [(MKCustomSeparatorCell *)self leftSeparatorInset];
    v12 = Width - v11;
    [(MKCustomSeparatorCell *)self rightSeparatorInset];
    v5 = v12 - v13;
  }

  v14 = v4;
  v15 = v3;
  v16 = v6;
  result.size.height = v16;
  result.size.width = v5;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (MKCustomSeparatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MKCustomSeparatorCell;
  v4 = [(MKCustomSeparatorCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MKCustomSeparatorCell *)v4 _updateSeparatorInset];
  }

  return v5;
}

@end