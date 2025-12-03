@interface _AEDurationLabelTile
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)setDuration:(double)duration;
@end

@implementation _AEDurationLabelTile

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    if (duration <= 0.0)
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

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = _AEDurationLabelTile;
  v7 = *&geometry->var7.height;
  v14[8] = *&geometry->var6;
  v14[9] = v7;
  v8 = *&geometry->var8.size.height;
  v14[10] = *&geometry->var8.origin.y;
  v14[11] = v8;
  v9 = *&geometry->var3.c;
  v14[4] = *&geometry->var3.a;
  v14[5] = v9;
  v10 = *&geometry->var4;
  v14[6] = *&geometry->var3.tx;
  v14[7] = v10;
  size = geometry->var0.size;
  v14[0] = geometry->var0.origin;
  v14[1] = size;
  var2 = geometry->var2;
  v14[2] = geometry->var1;
  v14[3] = var2;
  [(UIView *)&v15 didApplyGeometry:v14 withUserData:dataCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!dataCopy || (isKindOfClass & 1) != 0)
  {
    [dataCopy doubleValue];
    [(_AEDurationLabelTile *)self setDuration:?];
  }
}

@end