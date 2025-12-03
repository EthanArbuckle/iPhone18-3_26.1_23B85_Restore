@interface AVCaptionPosition
- (AVCaptionPosition)init;
- (AVCaptionPosition)initWithCellPositionX:(int64_t)x andY:(int64_t)y;
- (AVCaptionPosition)initWithCoder:(id)coder;
- (AVCaptionPosition)initWithRelativeToEnclosingRegionX:(float)x andY:(float)y;
- (BOOL)isEqual:(id)equal;
- (float)relativeToEnclosingRegionX;
- (float)relativeToEnclosingRegionY;
- (id)description;
- (int64_t)cellX;
- (int64_t)cellY;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCaptionPosition

- (AVCaptionPosition)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithCellPositionX_andY_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVCaptionPosition)initWithCellPositionX:(int64_t)x andY:(int64_t)y
{
  v9.receiver = self;
  v9.super_class = AVCaptionPosition;
  v6 = [(AVCaptionPosition *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVCaptionPositionInternal);
    v6->_internal = v7;
    if (v7)
    {
      v7->x.cell = x;
      v6->_internal->y.cell = y;
      v6->_internal->unitType = 0;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (AVCaptionPosition)initWithRelativeToEnclosingRegionX:(float)x andY:(float)y
{
  v9.receiver = self;
  v9.super_class = AVCaptionPosition;
  v6 = [(AVCaptionPosition *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVCaptionPositionInternal);
    v6->_internal = v7;
    if (v7)
    {
      v7->x.relativeToEnclosingRegion = x;
      v6->_internal->y.relativeToEnclosingRegion = y;
      v6->_internal->unitType = 1;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (AVCaptionPosition)initWithCoder:(id)coder
{
  if ([coder containsValueForKey:@"AVCaptionPositionArchiveKeyCellX"] && objc_msgSend(coder, "containsValueForKey:", @"AVCaptionPositionArchiveKeyCellY"))
  {
    v5 = [coder decodeIntegerForKey:@"AVCaptionPositionArchiveKeyCellX"];
    v6 = [coder decodeIntegerForKey:@"AVCaptionPositionArchiveKeyCellY"];

    return [(AVCaptionPosition *)self initWithCellPositionX:v5 andY:v6];
  }

  else if ([coder containsValueForKey:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionX"] && objc_msgSend(coder, "containsValueForKey:", @"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionY"))
  {
    [coder decodeFloatForKey:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionX"];
    v9 = v8;
    [coder decodeFloatForKey:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionY"];
    LODWORD(v10) = LODWORD(v11);
    LODWORD(v11) = v9;

    return [(AVCaptionPosition *)self initWithRelativeToEnclosingRegionX:v11 andY:v10];
  }

  else
  {

    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:2 forKey:@"AVCaptionPositionArchiveKeyVersion"];
  unitType = self->_internal->unitType;
  if (unitType == 1)
  {
    [(AVCaptionPosition *)self relativeToEnclosingRegionX];
    [coder encodeFloat:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionX" forKey:?];
    [(AVCaptionPosition *)self relativeToEnclosingRegionY];

    [coder encodeFloat:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionY" forKey:?];
  }

  else if (!unitType)
  {
    [coder encodeInteger:-[AVCaptionPosition cellX](self forKey:{"cellX"), @"AVCaptionPositionArchiveKeyCellX"}];
    cellY = [(AVCaptionPosition *)self cellY];

    [coder encodeInteger:cellY forKey:@"AVCaptionPositionArchiveKeyCellY"];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptionPosition;
  [(AVCaptionPosition *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  unitType = self->_internal->unitType;
  if (unitType == 1)
  {
    [(AVCaptionPosition *)self relativeToEnclosingRegionX];
    v10 = (v9 * 1000.0);
    [equal relativeToEnclosingRegionX];
    v12 = (v11 * 1000.0);
    [(AVCaptionPosition *)self relativeToEnclosingRegionY];
    v14 = v13;
    [equal relativeToEnclosingRegionY];
    return v10 == v12 && (v14 * 1000.0) == (v15 * 1000.0);
  }

  if (unitType)
  {
    return 1;
  }

  cellX = [(AVCaptionPosition *)self cellX];
  if (cellX == [equal cellX])
  {
    cellY = [(AVCaptionPosition *)self cellY];
    if (cellY == [equal cellY])
    {
      return 1;
    }
  }

  return 0;
}

- (int64_t)cellX
{
  if ([(AVCaptionPosition *)self unitType])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v4, v5, v6, v7, v8, "[self unitType] == AVCaptionUnitTypeCell"), 0}];
    objc_exception_throw(v10);
  }

  return self->_internal->x.cell;
}

- (int64_t)cellY
{
  if ([(AVCaptionPosition *)self unitType])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v4, v5, v6, v7, v8, "[self unitType] == AVCaptionUnitTypeCell"), 0}];
    objc_exception_throw(v10);
  }

  return self->_internal->y.cell;
}

- (float)relativeToEnclosingRegionX
{
  if ([(AVCaptionPosition *)self unitType]!= 1)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v4, v5, v6, v7, v8, "[self unitType] == AVCaptionUnitTypeRelativeToEnclosingRegion"), 0}];
    objc_exception_throw(v10);
  }

  return self->_internal->x.relativeToEnclosingRegion;
}

- (float)relativeToEnclosingRegionY
{
  if ([(AVCaptionPosition *)self unitType]!= 1)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v4, v5, v6, v7, v8, "[self unitType] == AVCaptionUnitTypeRelativeToEnclosingRegion"), 0}];
    objc_exception_throw(v10);
  }

  return self->_internal->y.relativeToEnclosingRegion;
}

- (id)description
{
  unitType = self->_internal->unitType;
  v4 = MEMORY[0x1E696AEC0];
  if (unitType == 1)
  {
    [(AVCaptionPosition *)self relativeToEnclosingRegionX];
    v7 = v6;
    [(AVCaptionPosition *)self relativeToEnclosingRegionY];
    v5 = [v4 stringWithFormat:@"relativeToEnclosingRegion=(%4.2f, %4.2f)", *&v7, v8];
  }

  else if (unitType)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported unit", v13, v14];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cell=(%ld, %ld)", -[AVCaptionPosition cellX](self, "cellX"), -[AVCaptionPosition cellY](self, "cellY")];
  }

  v9 = v5;
  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  return [v10 stringWithFormat:@"<%@: %p, %@>", NSStringFromClass(v11), self, v9];
}

@end