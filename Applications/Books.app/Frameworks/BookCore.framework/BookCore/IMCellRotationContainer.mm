@interface IMCellRotationContainer
- (void)crossfadeWithDuration:(double)duration;
- (void)dealloc;
- (void)didFinishRotation;
- (void)prepareToCrossfade;
- (void)setEndCell:(id)cell;
- (void)setOrigin:(CGPoint)origin;
- (void)setStartCell:(id)cell;
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

- (void)setStartCell:(id)cell
{
  cellCopy = cell;
  startCell = self->_startCell;
  v8 = cellCopy;
  if (startCell != cellCopy)
  {
    [(IMGridViewCell *)startCell removeFromSuperview];
    v7 = self->_startCell;
    self->_startCell = 0;

    objc_storeStrong(&self->_startCell, cell);
    if (self->_startCell)
    {
      [(IMCellRotationContainer *)self addSubview:?];
      [(IMGridViewCell *)self->_startCell frame];
      [(IMGridViewCell *)self->_startCell setFrame:CGPointZero.x, CGPointZero.y];
    }
  }
}

- (void)setEndCell:(id)cell
{
  cellCopy = cell;
  endCell = self->_endCell;
  v8 = cellCopy;
  if (endCell != cellCopy)
  {
    [(IMGridViewCell *)endCell removeFromSuperview];
    v7 = self->_endCell;
    self->_endCell = 0;

    objc_storeStrong(&self->_endCell, cell);
    if (self->_endCell)
    {
      [(IMCellRotationContainer *)self addSubview:?];
      [(IMGridViewCell *)self->_endCell frame];
      [(IMGridViewCell *)self->_endCell setFrame:CGPointZero.x, CGPointZero.y];
    }
  }
}

- (void)setOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  [(IMCellRotationContainer *)self frame];

  [(IMCellRotationContainer *)self setFrame:x, y];
}

- (void)prepareToCrossfade
{
  layer = [(IMGridViewCell *)self->_startCell layer];
  [layer setShouldRasterize:1];

  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;
  layer2 = [(IMGridViewCell *)self->_startCell layer];
  [layer2 setRasterizationScale:v6];

  layer3 = [(IMGridViewCell *)self->_startCell layer];
  [layer3 setPreloadsCache:1];

  layer4 = [(IMGridViewCell *)self->_startCell layer];
  [layer4 setFrozen:1];

  layer5 = [(IMGridViewCell *)self->_endCell layer];
  [layer5 setShouldRasterize:1];

  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;
  layer6 = [(IMGridViewCell *)self->_endCell layer];
  [layer6 setRasterizationScale:v13];

  layer7 = [(IMGridViewCell *)self->_endCell layer];
  [layer7 setPreloadsCache:1];

  layer8 = [(IMGridViewCell *)self->_endCell layer];
  [layer8 setFrozen:1];

  [(IMGridViewCell *)self->_startCell setAlpha:1.0];
  endCell = self->_endCell;

  [(IMGridViewCell *)endCell setAlpha:0.0];
}

- (void)didFinishRotation
{
  layer = [(IMGridViewCell *)self->_startCell layer];
  [layer setShouldRasterize:0];

  layer2 = [(IMGridViewCell *)self->_startCell layer];
  [layer2 setRasterizationScale:1.0];

  layer3 = [(IMGridViewCell *)self->_startCell layer];
  [layer3 setPreloadsCache:0];

  layer4 = [(IMGridViewCell *)self->_startCell layer];
  [layer4 setFrozen:0];

  layer5 = [(IMGridViewCell *)self->_endCell layer];
  [layer5 setShouldRasterize:0];

  layer6 = [(IMGridViewCell *)self->_endCell layer];
  [layer6 setRasterizationScale:1.0];

  layer7 = [(IMGridViewCell *)self->_endCell layer];
  [layer7 setPreloadsCache:0];

  layer8 = [(IMGridViewCell *)self->_endCell layer];
  [layer8 setFrozen:0];
}

- (void)crossfadeWithDuration:(double)duration
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
  [UIView animateWithDuration:v4 animations:v3 * duration];
}

@end