@interface NTKActivityDialView
- (NTKActivityDialView)initWithFrame:(CGRect)a3 forDevice:(id)a4;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (double)_segmentAlphaForEditMode:(int64_t)a3;
- (void)applyTransitionFromScheme:(id)a3 toScheme:(id)a4 fraction:(double)a5;
- (void)setColorScheme:(id)a3;
@end

@implementation NTKActivityDialView

- (NTKActivityDialView)initWithFrame:(CGRect)a3 forDevice:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v31.receiver = self;
  v31.super_class = NTKActivityDialView;
  v11 = [(NTKActivityDialView *)&v31 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, a4);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_122C4(v12->_device, &v28);
    [(NTKActivityDialView *)v12 bounds];
    v14 = v13;
    v15 = v29;
    v16 = [NSMutableArray arrayWithCapacity:v29];
    v17 = [(NTKActivityDialView *)v12 layer];
    if (v15 >= 1)
    {
      v18 = 0;
      v19 = v14 * 0.5;
      do
      {
        v20 = [[NTKActivityDialSegment alloc] initWithHourIndex:v18 LayoutConstants:&v28 dialRadius:v10 device:v19];
        v21 = [(NTKActivityDialSegment *)v20 tickLayer];
        [v17 addSublayer:v21];

        v22 = [(NTKActivityDialSegment *)v20 arcLayer];
        [v17 addSublayer:v22];

        [v16 addObject:v20];
        ++v18;
      }

      while (v29 > v18);
    }

    v23 = [v16 objectAtIndexedSubscript:0];
    v24 = [v23 tickLayer];

    [v24 removeFromSuperlayer];
    [v17 addSublayer:v24];
    v25 = [v16 copy];
    segments = v12->_segments;
    v12->_segments = v25;
  }

  return v12;
}

- (void)applyTransitionFromScheme:(id)a3 toScheme:(id)a4 fraction:(double)a5
{
  v7 = a3;
  v8 = a4;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_122C4(self->_device, &v24);
  v9 = v26;
  v10 = v25;
  CLKInterpolateBetweenFloatsUnclipped();
  segments = self->_segments;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_11800;
  v15[3] = &unk_20D10;
  v18 = v10;
  v19 = v9;
  v20 = v12;
  v21 = v24;
  v22 = v25;
  v23 = v26;
  v16 = v7;
  v17 = v8;
  v13 = v8;
  v14 = v7;
  [(NSArray *)segments enumerateObjectsUsingBlock:v15];
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    objc_storeStrong(&self->_colorScheme, a3);
    segments = self->_segments;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_119D8;
    v7[3] = &unk_20D38;
    v8 = v5;
    [(NSArray *)segments enumerateObjectsUsingBlock:v7];
  }
}

- (double)_handAlphaForEditMode:(int64_t)a3
{
  result = 0.0;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_segmentAlphaForEditMode:(int64_t)a3
{
  v3 = a3 == 10 || a3 == 0;
  result = NTKEditModeDimmedAlpha;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

@end