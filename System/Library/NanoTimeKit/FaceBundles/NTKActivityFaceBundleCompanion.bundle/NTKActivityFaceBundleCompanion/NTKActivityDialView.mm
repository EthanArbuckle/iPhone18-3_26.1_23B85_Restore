@interface NTKActivityDialView
- (NTKActivityDialView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (double)_segmentAlphaForEditMode:(int64_t)mode;
- (void)applyTransitionFromScheme:(id)scheme toScheme:(id)toScheme fraction:(double)fraction;
- (void)setColorScheme:(id)scheme;
@end

@implementation NTKActivityDialView

- (NTKActivityDialView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v31.receiver = self;
  v31.super_class = NTKActivityDialView;
  height = [(NTKActivityDialView *)&v31 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_122C4(v12->_device, &v28);
    [(NTKActivityDialView *)v12 bounds];
    v14 = v13;
    v15 = v29;
    v16 = [NSMutableArray arrayWithCapacity:v29];
    layer = [(NTKActivityDialView *)v12 layer];
    if (v15 >= 1)
    {
      v18 = 0;
      v19 = v14 * 0.5;
      do
      {
        v20 = [[NTKActivityDialSegment alloc] initWithHourIndex:v18 LayoutConstants:&v28 dialRadius:deviceCopy device:v19];
        tickLayer = [(NTKActivityDialSegment *)v20 tickLayer];
        [layer addSublayer:tickLayer];

        arcLayer = [(NTKActivityDialSegment *)v20 arcLayer];
        [layer addSublayer:arcLayer];

        [v16 addObject:v20];
        ++v18;
      }

      while (v29 > v18);
    }

    v23 = [v16 objectAtIndexedSubscript:0];
    tickLayer2 = [v23 tickLayer];

    [tickLayer2 removeFromSuperlayer];
    [layer addSublayer:tickLayer2];
    v25 = [v16 copy];
    segments = v12->_segments;
    v12->_segments = v25;
  }

  return v12;
}

- (void)applyTransitionFromScheme:(id)scheme toScheme:(id)toScheme fraction:(double)fraction
{
  schemeCopy = scheme;
  toSchemeCopy = toScheme;
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
  v16 = schemeCopy;
  v17 = toSchemeCopy;
  v13 = toSchemeCopy;
  v14 = schemeCopy;
  [(NSArray *)segments enumerateObjectsUsingBlock:v15];
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    objc_storeStrong(&self->_colorScheme, scheme);
    segments = self->_segments;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_119D8;
    v7[3] = &unk_20D38;
    v8 = schemeCopy;
    [(NSArray *)segments enumerateObjectsUsingBlock:v7];
  }
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  result = 0.0;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (double)_segmentAlphaForEditMode:(int64_t)mode
{
  v3 = mode == 10 || mode == 0;
  result = NTKEditModeDimmedAlpha;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

@end