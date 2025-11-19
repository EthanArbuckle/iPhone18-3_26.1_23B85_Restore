@interface VOTUIRotorKnob
- (CGPoint)_trackPointForPlacement:(double)a3;
- (VOTUIRotorKnob)initWithFrame:(CGRect)a3;
- (void)_layoutKnob;
- (void)_layoutMarkerAtPosition:(CGPoint)a3 withCircleLocation:(double)a4 withImageView:(id)a5;
- (void)_layoutTrackMarks;
- (void)_layoutTrackMarks:(int64_t)a3 placements:(double)a4;
- (void)_updateSelectedMarker;
- (void)layoutSubviews;
- (void)reset;
- (void)setCount:(int64_t)a3;
- (void)updatePosition:(BOOL)a3;
@end

@implementation VOTUIRotorKnob

- (VOTUIRotorKnob)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = VOTUIRotorKnob;
  v3 = [(VOTUIRotorKnob *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIImage imageNamed:@"empty" inBundle:v4];
  emptyMarkImage = v3->_emptyMarkImage;
  v3->_emptyMarkImage = v5;

  v7 = [UIImage imageNamed:@"filled" inBundle:v4];
  selectedMarkImage = v3->_selectedMarkImage;
  v3->_selectedMarkImage = v7;

  v9 = [UIImage imageNamed:@"rotor" inBundle:v4];
  v10 = [objc_allocWithZone(MarkerImageView) initWithImage:v9];
  knobImageView = v3->_knobImageView;
  v3->_knobImageView = v10;

  v12 = [objc_allocWithZone(NSMutableArray) init];
  markerImageViews = v3->_markerImageViews;
  v3->_markerImageViews = v12;

  v14 = 8;
  do
  {
    v15 = [objc_allocWithZone(MarkerImageView) initWithImage:v3->_emptyMarkImage];
    [(NSMutableArray *)v3->_markerImageViews addObject:v15];

    --v14;
  }

  while (v14);
  v16 = +[UIColor clearColor];
  [(VOTUIRotorKnob *)v3 setBackgroundColor:v16];

  [(VOTUIRotorKnob *)v3 addSubview:v3->_knobImageView];
  return v3;
}

- (void)updatePosition:(BOOL)a3
{
  position = self->_position;
  if (a3)
  {
    v4 = position + 1;
  }

  else
  {
    v4 = position - 1;
  }

  self->_position = v4;
  count = self->_count;
  if (v4 < 0)
  {
    v4 = count - 1;
  }

  else
  {
    if (v4 < count)
    {
      goto LABEL_9;
    }

    v4 = 0;
  }

  self->_position = v4;
LABEL_9:
  self->_lastMovementSkippedEmptySpace = 0;
  v6 = self->_count;
  v7 = a3;
  if (v6 == 3)
  {
LABEL_12:
    self->_lastMovementSkippedEmptySpace = v4 == v7;
    goto LABEL_13;
  }

  if (v6 == 2)
  {
    v7 = !a3;
    goto LABEL_12;
  }

LABEL_13:
  self->_lastMovementWasForward = a3;
  self->_needsLayout = 1;
  [(VOTUIRotorKnob *)self setNeedsLayout];
}

- (void)setCount:(int64_t)a3
{
  if (self->_count != a3)
  {
    v3 = 8;
    if (a3 < 8)
    {
      v3 = a3;
    }

    self->_count = v3;
    position = self->_position;
    if (position >= v3)
    {
      self->_position = position % v3;
    }

    self->_needsLayout = 1;
    [(VOTUIRotorKnob *)self setNeedsLayout];
  }
}

- (void)_updateSelectedMarker
{
  v3 = [(NSMutableArray *)self->_markerImageViews objectAtIndex:self->_position];
  [v3 setImage:self->_selectedMarkImage];
}

- (void)_layoutKnob
{
  if (self->_needsLayout)
  {
    v28 = v7;
    v29 = v6;
    v30 = v5;
    v31 = v4;
    v32 = v2;
    v33 = v3;
    position = self->_position;
    if ((position & 0x8000000000000000) == 0 && position < [(NSMutableArray *)self->_markerImageViews count])
    {
      v10 = [(NSMutableArray *)self->_markerImageViews objectAtIndex:self->_position];
      [v10 rotationRadian];
      v12 = v11;
      [(MarkerImageView *)self->_knobImageView rotationRadian];
      v14 = v13;
      v15 = *&CGAffineTransformIdentity.c;
      *&v27.a = *&CGAffineTransformIdentity.a;
      *&v27.c = v15;
      *&v27.tx = *&CGAffineTransformIdentity.tx;
      memset(&v26, 0, sizeof(v26));
      CGAffineTransformMakeRotation(&v26, v12);
      lastMovementSkippedEmptySpace = self->_lastMovementSkippedEmptySpace;
      if (lastMovementSkippedEmptySpace)
      {
        v27 = v26;
        count = self->_count;
        v18 = 0.100000001;
        if (count == 3)
        {
          v19 = (v12 + v14) * 0.5;
          goto LABEL_10;
        }

        if (count == 2)
        {
          v19 = 1.57079633;
LABEL_10:
          CGAffineTransformMakeRotation(&v25, v19);
          v26 = v25;
        }
      }

      else
      {
        v18 = 0.150000006;
      }

      [(MarkerImageView *)self->_knobImageView setRotationRadian:v12];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v24 = v26;
      v23[2] = sub_2B30;
      v23[3] = &unk_3D100;
      v23[4] = self;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_2B7C;
      v20[3] = &unk_3D150;
      v20[4] = self;
      v22 = lastMovementSkippedEmptySpace;
      *&v20[5] = v18;
      v21 = v27;
      [UIView animateWithDuration:v23 animations:v20 completion:v18];
    }
  }
}

- (void)_layoutMarkerAtPosition:(CGPoint)a3 withCircleLocation:(double)a4 withImageView:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  [v9 setCenter:{x, y}];
  v10 = a4 * 6.28318531;
  [v9 setRotationRadian:v10];
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeRotation(&v12, v10);
  v11 = v12;
  [v9 setTransform:&v11];
  [(VOTUIRotorKnob *)self addSubview:v9];
}

- (void)reset
{
  markerImageViews = self->_markerImageViews;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_2E04;
  v3[3] = &unk_3D178;
  v3[4] = self;
  [(NSMutableArray *)markerImageViews enumerateObjectsUsingBlock:v3];
}

- (CGPoint)_trackPointForPlacement:(double)a3
{
  [(MarkerImageView *)self->_knobImageView center];
  v5 = v4;
  v7 = v6;
  v8 = __sincos_stret(a3 * 6.28318531);
  v9 = v5 + v8.__cosval * 38.0;
  v10 = ceilf(v9);
  v11 = v7 + v8.__sinval * 38.0;
  v12 = ceilf(v11);
  v13 = v10;
  result.y = v12;
  result.x = v13;
  return result;
}

- (void)_layoutTrackMarks:(int64_t)a3 placements:(double)a4
{
  v14 = &v15;
  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      [(VOTUIRotorKnob *)self _trackPointForPlacement:a4];
      v9 = v8;
      v11 = v10;
      v12 = [(NSMutableArray *)self->_markerImageViews objectAtIndex:i];
      [(VOTUIRotorKnob *)self _layoutMarkerAtPosition:v12 withCircleLocation:v9 withImageView:v11, a4];

      v13 = v14++;
      a4 = *v13;
    }
  }
}

- (void)_layoutTrackMarks
{
  count = self->_count;
  if (count >= 2)
  {
    if (count > 4)
    {
      switch(count)
      {
        case 5:
          [(VOTUIRotorKnob *)self _layoutTrackMarks:5 placements:0.150000006, 0x3FD6666660000000, 0x3FE19999A0000000, 0x3FE8000000000000, 0x3FEE666660000000, v6, v7, v8];
          break;
        case 6:
          [(VOTUIRotorKnob *)self _layoutTrackMarks:6 placements:0.075000003, 0x3FD0000000000000, 0x3FDB333340000000, 0x3FE2666660000000, 0x3FE8000000000000, 0x3FED9999A0000000, v7, v8];
          break;
        case 7:
          [(VOTUIRotorKnob *)self _layoutTrackMarks:7 placements:0.0500000007, 0x3FC6666660000000, 0x3FD4CCCCC0000000, 0x3FDCCCCCC0000000, 0x3FE3333340000000, 0x3FE8000000000000, 0x3FECCCCCC0000000, v8];
          break;
        default:
          [(VOTUIRotorKnob *)self _layoutTrackMarks:8 placements:0.0, 0x3FC0000000000000, 0x3FD0000000000000, 0x3FD8000000000000, 0x3FE0000000000000, 0x3FE4000000000000, 0x3FE8000000000000, 0x3FEC000000000000];
          break;
      }
    }

    else if (count == 2)
    {
      [(VOTUIRotorKnob *)self _layoutTrackMarks:2 placements:0.625, 0x3FEC000000000000, v3, v4, v5, v6, v7, v8];
    }

    else if (count == 3)
    {
      [(VOTUIRotorKnob *)self _layoutTrackMarks:3 placements:0.0, 0x3FE0000000000000, 0x3FE8000000000000, v4, v5, v6, v7, v8];
    }

    else
    {
      [(VOTUIRotorKnob *)self _layoutTrackMarks:4 placements:0.0, 0x3FD0000000000000, 0x3FE0000000000000, 0x3FE8000000000000, v5, v6, v7, v8];
    }
  }
}

- (void)layoutSubviews
{
  [(VOTUIRotorKnob *)self reset];
  [(VOTUIRotorKnob *)self bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  [(MarkerImageView *)self->_knobImageView setCenter:MidX, CGRectGetMaxY(v10) + -67.0];
  [(VOTUIRotorKnob *)self _layoutTrackMarks];

  [(VOTUIRotorKnob *)self _layoutKnob];
}

@end