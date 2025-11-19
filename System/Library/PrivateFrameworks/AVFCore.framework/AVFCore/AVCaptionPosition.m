@interface AVCaptionPosition
- (AVCaptionPosition)init;
- (AVCaptionPosition)initWithCellPositionX:(int64_t)a3 andY:(int64_t)a4;
- (AVCaptionPosition)initWithCoder:(id)a3;
- (AVCaptionPosition)initWithRelativeToEnclosingRegionX:(float)a3 andY:(float)a4;
- (BOOL)isEqual:(id)a3;
- (float)relativeToEnclosingRegionX;
- (float)relativeToEnclosingRegionY;
- (id)description;
- (int64_t)cellX;
- (int64_t)cellY;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (AVCaptionPosition)initWithCellPositionX:(int64_t)a3 andY:(int64_t)a4
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
      v7->x.cell = a3;
      v6->_internal->y.cell = a4;
      v6->_internal->unitType = 0;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (AVCaptionPosition)initWithRelativeToEnclosingRegionX:(float)a3 andY:(float)a4
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
      v7->x.relativeToEnclosingRegion = a3;
      v6->_internal->y.relativeToEnclosingRegion = a4;
      v6->_internal->unitType = 1;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (AVCaptionPosition)initWithCoder:(id)a3
{
  if ([a3 containsValueForKey:@"AVCaptionPositionArchiveKeyCellX"] && objc_msgSend(a3, "containsValueForKey:", @"AVCaptionPositionArchiveKeyCellY"))
  {
    v5 = [a3 decodeIntegerForKey:@"AVCaptionPositionArchiveKeyCellX"];
    v6 = [a3 decodeIntegerForKey:@"AVCaptionPositionArchiveKeyCellY"];

    return [(AVCaptionPosition *)self initWithCellPositionX:v5 andY:v6];
  }

  else if ([a3 containsValueForKey:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionX"] && objc_msgSend(a3, "containsValueForKey:", @"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionY"))
  {
    [a3 decodeFloatForKey:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionX"];
    v9 = v8;
    [a3 decodeFloatForKey:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionY"];
    LODWORD(v10) = LODWORD(v11);
    LODWORD(v11) = v9;

    return [(AVCaptionPosition *)self initWithRelativeToEnclosingRegionX:v11 andY:v10];
  }

  else
  {

    return 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:2 forKey:@"AVCaptionPositionArchiveKeyVersion"];
  unitType = self->_internal->unitType;
  if (unitType == 1)
  {
    [(AVCaptionPosition *)self relativeToEnclosingRegionX];
    [a3 encodeFloat:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionX" forKey:?];
    [(AVCaptionPosition *)self relativeToEnclosingRegionY];

    [a3 encodeFloat:@"AVCaptionPositionArchiveKeyRelativeToEnclosingRegionY" forKey:?];
  }

  else if (!unitType)
  {
    [a3 encodeInteger:-[AVCaptionPosition cellX](self forKey:{"cellX"), @"AVCaptionPositionArchiveKeyCellX"}];
    v6 = [(AVCaptionPosition *)self cellY];

    [a3 encodeInteger:v6 forKey:@"AVCaptionPositionArchiveKeyCellY"];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptionPosition;
  [(AVCaptionPosition *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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
    [a3 relativeToEnclosingRegionX];
    v12 = (v11 * 1000.0);
    [(AVCaptionPosition *)self relativeToEnclosingRegionY];
    v14 = v13;
    [a3 relativeToEnclosingRegionY];
    return v10 == v12 && (v14 * 1000.0) == (v15 * 1000.0);
  }

  if (unitType)
  {
    return 1;
  }

  v6 = [(AVCaptionPosition *)self cellX];
  if (v6 == [a3 cellX])
  {
    v7 = [(AVCaptionPosition *)self cellY];
    if (v7 == [a3 cellY])
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