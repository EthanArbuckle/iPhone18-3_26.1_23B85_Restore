@interface _AEDurationLabelTile
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)setDuration:(double)a3;
@end

@implementation _AEDurationLabelTile

- (void)setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    if (a3 <= 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = PXLocalizedVideoDuration();
    }

    v6 = v5;
    [(_AEDurationLabelTile *)self setText:v5];
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = _AEDurationLabelTile;
  v7 = *&a3->var7.height;
  v14[8] = *&a3->var6;
  v14[9] = v7;
  v8 = *&a3->var8.size.height;
  v14[10] = *&a3->var8.origin.y;
  v14[11] = v8;
  v9 = *&a3->var3.c;
  v14[4] = *&a3->var3.a;
  v14[5] = v9;
  v10 = *&a3->var4;
  v14[6] = *&a3->var3.tx;
  v14[7] = v10;
  size = a3->var0.size;
  v14[0] = a3->var0.origin;
  v14[1] = size;
  var2 = a3->var2;
  v14[2] = a3->var1;
  v14[3] = var2;
  [(UIView *)&v15 didApplyGeometry:v14 withUserData:v6];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v6 || (isKindOfClass & 1) != 0)
  {
    [v6 doubleValue];
    [(_AEDurationLabelTile *)self setDuration:?];
  }
}

@end