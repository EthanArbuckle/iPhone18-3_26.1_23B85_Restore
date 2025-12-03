@interface AXMDisplay
- (CGPoint)convertPointToDisplay:(CGPoint)display;
- (CGRect)convertRectToDisplay:(CGRect)display;
- (CGRect)referenceBounds;
- (CGSize)size;
- (id)_initWithBackingType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation AXMDisplay

- (CGRect)referenceBounds
{
  x = self->_referenceBounds.origin.x;
  y = self->_referenceBounds.origin.y;
  width = self->_referenceBounds.size.width;
  height = self->_referenceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_initWithBackingType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = AXMDisplay;
  v4 = [(AXMDisplay *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_backingType = type;
    name = v4->_name;
    v4->_name = @"Default";

    v5->_size = *MEMORY[0x1E695F060];
    *&v5->_scale = xmmword_1AE451DB0;
    v7 = MEMORY[0x1E695F058];
    v5->_physicalOrientation = 1;
    v8 = v7[1];
    v5->_referenceBounds.origin = *v7;
    v5->_referenceBounds.size = v8;
    v5->_supportsDeepColor = 0;
  }

  return v5;
}

- (id)description
{
  backingType = self->_backingType;
  if (backingType > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_1E7A1E0A0 + backingType);
  }

  v5 = MEMORY[0x1E696AEC0];
  name = [(AXMDisplay *)self name];
  v7 = MEMORY[0x1E696AD98];
  [(AXMDisplay *)self scale];
  v8 = [v7 numberWithDouble:?];
  [(AXMDisplay *)self size];
  v10 = v9;
  [(AXMDisplay *)self size];
  v12 = v11;
  v13 = MEMORY[0x1E696AD98];
  [(AXMDisplay *)self orientation];
  v14 = [v13 numberWithDouble:?];
  physicalOrientation = self->_physicalOrientation;
  if (physicalOrientation > 4)
  {
    v16 = "unknown";
  }

  else
  {
    v16 = off_1E7A1E0B8[physicalOrientation];
  }

  [(AXMDisplay *)self referenceBounds];
  v18 = v17;
  [(AXMDisplay *)self referenceBounds];
  v20 = v19;
  [(AXMDisplay *)self referenceBounds];
  v22 = v21;
  [(AXMDisplay *)self referenceBounds];
  v24 = [v5 stringWithFormat:@"AXMDisplay<%p>: Backing:%@ Name:%@ scale:%@ size:[%.2f %.2f] orientation:%@ (%s) refBounds:[%.2f %.2f %.2f %.2f] deepColor:%d", self, v4, name, v8, v10, v12, v14, v16, v18, v20, v22, v23, -[AXMDisplay supportsDeepColor](self, "supportsDeepColor")];

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AXMDisplay alloc] _initWithBackingType:self->_backingType];
  objc_storeStrong(v4 + 2, self->_name);
  *(v4 + 3) = *&self->_scale;
  *(v4 + 56) = self->_size;
  *(v4 + 4) = *&self->_orientation;
  *(v4 + 5) = self->_physicalOrientation;
  origin = self->_referenceBounds.origin;
  *(v4 + 88) = self->_referenceBounds.size;
  *(v4 + 72) = origin;
  v4[8] = self->_supportsDeepColor;
  return v4;
}

- (CGPoint)convertPointToDisplay:(CGPoint)display
{
  scale = self->_scale;
  if (scale == 1.0)
  {
    x = display.x;
  }

  else
  {
    x = display.x * scale;
  }

  if (scale == 1.0)
  {
    y = display.y;
  }

  else
  {
    y = display.y * scale;
  }

  [(AXMDisplay *)self referenceBounds];
  v8 = v7;
  v10 = v9;
  v11 = self->_scale;
  if (AXMFloatApproxEqual(self->_orientation, 1.57079633))
  {
    x = v11 * v8 + -1.0 - x;
    v12 = y;
  }

  else if (AXMFloatApproxEqual(self->_orientation, 4.71238898))
  {
    v12 = v11 * v10 + -1.0 - y;
  }

  else
  {
    v12 = x;
    x = y;
  }

  v13 = x;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)convertRectToDisplay:(CGRect)display
{
  height = display.size.height;
  width = display.size.width;
  y = display.origin.y;
  x = display.origin.x;
  [(AXMDisplay *)self referenceBounds];
  if (AXMFloatApproxEqual(self->_orientation, 1.57079633))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MinX = CGRectGetMaxX(v17) + -1.0 / self->_scale;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    y = CGRectGetMinY(v18);
LABEL_5:
    v9 = height;
    goto LABEL_7;
  }

  if (AXMFloatApproxEqual(self->_orientation, 4.71238898))
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MinX = CGRectGetMinX(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    y = CGRectGetMaxY(v20) + -1.0 / self->_scale;
    goto LABEL_5;
  }

  MinX = x;
  v9 = width;
  width = height;
LABEL_7:
  [(AXMDisplay *)self convertPointToDisplay:MinX, y];
  scale = self->_scale;
  v13 = width * scale;
  v14 = scale == 1.0;
  if (scale == 1.0)
  {
    v15 = v9;
  }

  else
  {
    v15 = v9 * scale;
  }

  if (v14)
  {
    v16 = width;
  }

  else
  {
    v16 = v13;
  }

  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end