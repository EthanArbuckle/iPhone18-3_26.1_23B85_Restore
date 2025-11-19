@interface IMCellRotationContainer
- (void)crossfadeWithDuration:(double)a3;
- (void)dealloc;
- (void)didFinishRotation;
- (void)prepareToCrossfade;
- (void)setEndCell:(id)a3;
- (void)setOrigin:(CGPoint)a3;
- (void)setStartCell:(id)a3;
@end

@implementation IMCellRotationContainer

- (void)dealloc
{
  [(IMGridViewCell *)self->_endCell removeFromSuperview];
  [(IMGridViewCell *)self->_startCell removeFromSuperview];
  v3.receiver = self;
  v3.super_class = IMCellRotationContainer;
  [(IMCellRotationContainer *)&v3 dealloc];
}

- (void)setStartCell:(id)a3
{
  v5 = a3;
  startCell = self->_startCell;
  v8 = v5;
  if (startCell != v5)
  {
    [(IMGridViewCell *)startCell removeFromSuperview];
    v7 = self->_startCell;
    self->_startCell = 0;

    objc_storeStrong(&self->_startCell, a3);
    if (self->_startCell)
    {
      [(IMCellRotationContainer *)self addSubview:?];
      [(IMGridViewCell *)self->_startCell frame];
      [(IMGridViewCell *)self->_startCell setFrame:CGPointZero.x, CGPointZero.y];
    }
  }
}

- (void)setEndCell:(id)a3
{
  v5 = a3;
  endCell = self->_endCell;
  v8 = v5;
  if (endCell != v5)
  {
    [(IMGridViewCell *)endCell removeFromSuperview];
    v7 = self->_endCell;
    self->_endCell = 0;

    objc_storeStrong(&self->_endCell, a3);
    if (self->_endCell)
    {
      [(IMCellRotationContainer *)self addSubview:?];
      [(IMGridViewCell *)self->_endCell frame];
      [(IMGridViewCell *)self->_endCell setFrame:CGPointZero.x, CGPointZero.y];
    }
  }
}

- (void)setOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(IMCellRotationContainer *)self frame];

  [(IMCellRotationContainer *)self setFrame:x, y];
}

- (void)prepareToCrossfade
{
  v3 = [(IMGridViewCell *)self->_startCell layer];
  [v3 setShouldRasterize:1];

  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;
  v7 = [(IMGridViewCell *)self->_startCell layer];
  [v7 setRasterizationScale:v6];

  v8 = [(IMGridViewCell *)self->_startCell layer];
  [v8 setPreloadsCache:1];

  v9 = [(IMGridViewCell *)self->_startCell layer];
  [v9 setFrozen:1];

  v10 = [(IMGridViewCell *)self->_endCell layer];
  [v10 setShouldRasterize:1];

  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;
  v14 = [(IMGridViewCell *)self->_endCell layer];
  [v14 setRasterizationScale:v13];

  v15 = [(IMGridViewCell *)self->_endCell layer];
  [v15 setPreloadsCache:1];

  v16 = [(IMGridViewCell *)self->_endCell layer];
  [v16 setFrozen:1];

  [(IMGridViewCell *)self->_startCell setAlpha:1.0];
  endCell = self->_endCell;

  [(IMGridViewCell *)endCell setAlpha:0.0];
}

- (void)didFinishRotation
{
  v3 = [(IMGridViewCell *)self->_startCell layer];
  [v3 setShouldRasterize:0];

  v4 = [(IMGridViewCell *)self->_startCell layer];
  [v4 setRasterizationScale:1.0];

  v5 = [(IMGridViewCell *)self->_startCell layer];
  [v5 setPreloadsCache:0];

  v6 = [(IMGridViewCell *)self->_startCell layer];
  [v6 setFrozen:0];

  v7 = [(IMGridViewCell *)self->_endCell layer];
  [v7 setShouldRasterize:0];

  v8 = [(IMGridViewCell *)self->_endCell layer];
  [v8 setRasterizationScale:1.0];

  v9 = [(IMGridViewCell *)self->_endCell layer];
  [v9 setPreloadsCache:0];

  v10 = [(IMGridViewCell *)self->_endCell layer];
  [v10 setFrozen:0];
}

- (void)crossfadeWithDuration:(double)a3
{
  v3 = 1.0;
  if (!self->_endCell)
  {
    v3 = 0.5;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_73828;
  v4[3] = &unk_2C7D40;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:v3 * a3];
}

@end