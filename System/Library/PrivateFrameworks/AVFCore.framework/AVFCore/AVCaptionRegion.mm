@interface AVCaptionRegion
+ (id)appleiTTBottom;
+ (id)appleiTTLeft;
+ (id)appleiTTRight;
+ (id)appleiTTTop;
+ (id)subRipTextBottom;
- (AVCaptionLength)height;
- (AVCaptionPoint)origin;
- (AVCaptionPosition)_endPosition;
- (AVCaptionPosition)endPosition;
- (AVCaptionPosition)position;
- (AVCaptionRegion)init;
- (AVCaptionRegion)initWithCoder:(id)a3;
- (AVCaptionRegion)initWithFigCaptionRegion:(OpaqueFigCaptionRegion *)a3;
- (AVCaptionRegion)initWithIdentifier:(id)a3;
- (AVCaptionRegionDisplayAlignment)displayAlignment;
- (AVCaptionRegionScroll)scroll;
- (AVCaptionRegionWritingMode)writingMode;
- (AVCaptionSize)size;
- (BOOL)_predefinedRegionPositionShouldBeNil;
- (BOOL)isEqual:(id)object;
- (NSString)identifier;
- (OpaqueFigCaptionRegion)_figCaptionRegion;
- (id)_endPosition;
- (id)_position;
- (id)mutableCopyWithZone:(NSZone *)zone;
- (int)_updateExtentPropertiesOfFigCaptionRegionWithPosition:(id)a3 endPosition:(id)a4;
- (int)_updateFigCaptionRegion;
- (int)_updatePositionPropertyOfFigCaptionRegionWithPosition:(id)a3;
- (uint64_t)_endPosition;
- (void)_setDisplayAlignment:(int64_t)a3;
- (void)_setHeight:(id)a3;
- (void)_setOrigin:(AVCaptionPoint *)a3;
- (void)_setScroll:(int64_t)a3;
- (void)_setSize:(AVCaptionSize *)a3;
- (void)_setWritingMode:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(NSCoder *)encoder;
@end

@implementation AVCaptionRegion

- (AVCaptionRegion)init
{
  if (!FigCaptionRegionCreateMutable())
  {
    return [(AVCaptionRegion *)self initWithFigCaptionRegion:0];
  }

  return 0;
}

- (AVCaptionRegion)initWithFigCaptionRegion:(OpaqueFigCaptionRegion *)a3
{
  if (!a3)
  {
    v9 = self;
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "figCaptionRegion != NULL"), 0}];
    objc_exception_throw(v15);
  }

  v16.receiver = self;
  v16.super_class = AVCaptionRegion;
  v5 = [(AVCaptionRegion *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(AVCaptionRegionInternal);
    v5->_internal = v6;
    if (v6)
    {
      v5->_internal->figCaptionRegion = CFRetain(a3);
      v5->_internal->position = 0;
      v5->_internal->endPosition = 0;
      v5->_internal->_overridePositionShouldBeNil = 0;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (AVCaptionRegion)initWithIdentifier:(id)a3
{
  v3 = self;
  if (!a3)
  {
    v28 = self;
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v3 userInfo:{a2, @"invalid parameter not satisfying: %s", v29, v30, v31, v32, v33, "identifier != NULL"), 0}];
    objc_exception_throw(v34);
  }

  if (FigCaptionRegionCreateMutable())
  {

    v3 = 0;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6 || v6(CMBaseObject, *MEMORY[0x1E6961338], a3))
  {

    v3 = 0;
  }

  v7 = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v8 || v8(v7, *MEMORY[0x1E6961318], *MEMORY[0x1E695E4D0]))
  {

    v3 = 0;
  }

  v9 = [(objc_class *)v3 initWithFigCaptionRegion:0];
  if ([a3 isEqual:*MEMORY[0x1E6961358]])
  {
    [(AVCaptionRegion *)v9 _setPosition:[[AVCaptionPosition alloc] initWithRelativeToEnclosingRegionX:0.0 andY:0.0]];
    v10 = [AVCaptionPosition alloc];
    LODWORD(v11) = 1041865114;
    LODWORD(v12) = 1.0;
    v13 = [(AVCaptionPosition *)v10 initWithRelativeToEnclosingRegionX:v12 andY:v11];
    v14 = 0;
    v15 = 0;
LABEL_19:
    [(AVCaptionRegion *)v9 _setEndPosition:v13];
    [(AVCaptionRegion *)v9 _setDisplayAlignment:v14];
    [(AVCaptionRegion *)v9 _setWritingMode:v15];
    [(AVCaptionRegion *)v9 _setScroll:1];
    return v9;
  }

  if ([a3 isEqual:*MEMORY[0x1E6961340]])
  {
    v16 = [AVCaptionPosition alloc];
    LODWORD(v17) = 1062836634;
    [(AVCaptionRegion *)v9 _setPosition:[(AVCaptionPosition *)v16 initWithRelativeToEnclosingRegionX:0.0 andY:v17]];
    v18 = [AVCaptionPosition alloc];
    LODWORD(v19) = 1.0;
    LODWORD(v20) = 1.0;
    v13 = [(AVCaptionPosition *)v18 initWithRelativeToEnclosingRegionX:v19 andY:v20];
    v15 = 0;
    v14 = 2;
    goto LABEL_19;
  }

  if ([a3 isEqual:*MEMORY[0x1E6961348]])
  {
    [(AVCaptionRegion *)v9 _setPosition:[[AVCaptionPosition alloc] initWithRelativeToEnclosingRegionX:0.0 andY:0.0]];
    v21 = [AVCaptionPosition alloc];
    LODWORD(v23) = 1041865114;
LABEL_18:
    LODWORD(v22) = 1.0;
    v13 = [(AVCaptionPosition *)v21 initWithRelativeToEnclosingRegionX:v23 andY:v22];
    v14 = 0;
    v15 = 2;
    goto LABEL_19;
  }

  if ([a3 isEqual:*MEMORY[0x1E6961350]])
  {
    v24 = [AVCaptionPosition alloc];
    LODWORD(v25) = 1062836634;
    [(AVCaptionRegion *)v9 _setPosition:[(AVCaptionPosition *)v24 initWithRelativeToEnclosingRegionX:v25 andY:0.0]];
    v21 = [AVCaptionPosition alloc];
    LODWORD(v23) = 1.0;
    goto LABEL_18;
  }

  return v9;
}

- (AVCaptionRegion)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVCaptionRegionArchiveKeyIdentifier"];
  if (v5)
  {
    return [(AVCaptionRegion *)self initWithIdentifier:v5];
  }

  if (FigCaptionRegionCreateMutable())
  {

    return 0;
  }

  else
  {
    v6 = [(AVCaptionRegion *)self initWithFigCaptionRegion:0];
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVCaptionRegionArchiveKeyPosition"];
    if (v7)
    {
      [(AVCaptionRegion *)v6 _setPosition:v7];
    }

    v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVCaptionRegionArchiveKeyEndPosition"];
    if (v8)
    {
      [(AVCaptionRegion *)v6 _setEndPosition:v8];
    }

    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVCaptionRegionArchiveKeyHeight"];
    if (v9)
    {
      [(AVCaptionRegion *)v6 _setHeight:v9];
    }

    -[AVCaptionRegion _setScroll:](v6, "_setScroll:", [a3 decodeIntegerForKey:@"AVCaptionRegionArchiveKeyScroll"]);
    -[AVCaptionRegion _setDisplayAlignment:](v6, "_setDisplayAlignment:", [a3 decodeIntegerForKey:@"AVCaptionRegionArchiveKeyDisplayAlignment"]);
    -[AVCaptionRegion _setWritingMode:](v6, "_setWritingMode:", [a3 decodeIntegerForKey:@"AVCaptionRegionArchiveKeyWritingMode"]);
  }

  return v6;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
  cf = 0;
  [(AVCaptionRegion *)self _figCaptionRegion];
  [(NSCoder *)encoder encodeInteger:2 forKey:@"AVCaptionRegionArchiveKeyVersion"];
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && (v6(CMBaseObject, *MEMORY[0x1E6961338], *MEMORY[0x1E695E480], &cf), cf))
  {
    [(NSCoder *)encoder encodeObject:cf forKey:@"AVCaptionRegionArchiveKeyIdentifier"];
  }

  else
  {
    v7 = [(AVCaptionRegion *)self _position];
    if (v7)
    {
      [(NSCoder *)encoder encodeObject:v7 forKey:@"AVCaptionRegionArchiveKeyPosition"];
    }

    v8 = [(AVCaptionRegion *)self height];
    if (v8)
    {
      [(NSCoder *)encoder encodeObject:v8 forKey:@"AVCaptionRegionArchiveKeyHeight"];
    }

    [(NSCoder *)encoder encodeInteger:[(AVCaptionRegion *)self scroll] forKey:@"AVCaptionRegionArchiveKeyScroll"];
    [(NSCoder *)encoder encodeInteger:[(AVCaptionRegion *)self displayAlignment] forKey:@"AVCaptionRegionArchiveKeyDisplayAlignment"];
    [(NSCoder *)encoder encodeInteger:[(AVCaptionRegion *)self writingMode] forKey:@"AVCaptionRegionArchiveKeyWritingMode"];
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    figCaptionRegion = internal->figCaptionRegion;
    if (figCaptionRegion)
    {
      CFRelease(figCaptionRegion);
      internal = self->_internal;
    }

    internal = self->_internal;
  }

  v5.receiver = self;
  v5.super_class = AVCaptionRegion;
  [(AVCaptionRegion *)&v5 dealloc];
}

- (BOOL)isEqual:(id)object
{
  if (self == object)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(AVCaptionRegion *)self _figCaptionRegion];
  [object _figCaptionRegion];
  return FigCFEqual() != 0;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
  v17 = 0;
  v18 = 0;
  p_internal = &self->_internal;
  v6 = *MEMORY[0x1E695E480];
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(CMBaseObject, *MEMORY[0x1E6961338], v6, &v17);
    if (v17)
    {
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Regions with identifier don't support mutable copy operation", v9, v10, v11, v12, v13, v16), 0}];
      objc_exception_throw(v15);
    }
  }

  [(AVCaptionRegion *)p_internal mutableCopyWithZone:v6, &v18, &v17, &v19];
  return v19;
}

- (NSString)identifier
{
  v6 = 0;
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6961338], *MEMORY[0x1E695E480], &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_predefinedRegionPositionShouldBeNil
{
  if (!self->_internal->_overridePositionShouldBeNil)
  {
    return 0;
  }

  v2 = [(AVCaptionRegion *)self identifier];
  if (([(NSString *)v2 isEqual:*MEMORY[0x1E6961358]]& 1) != 0 || ([(NSString *)v2 isEqual:*MEMORY[0x1E6961340]]& 1) != 0 || ([(NSString *)v2 isEqual:*MEMORY[0x1E6961348]]& 1) != 0 || ([(NSString *)v2 isEqual:*MEMORY[0x1E6961350]]& 1) != 0)
  {
    return 1;
  }

  v4 = *MEMORY[0x1E6961360];

  return [(NSString *)v2 isEqual:v4];
}

- (AVCaptionPosition)position
{
  if ([(AVCaptionRegion *)self _predefinedRegionPositionShouldBeNil])
  {
    return 0;
  }

  return [(AVCaptionRegion *)self _position];
}

- (id)_endPosition
{
  cf = 0;
  v30[0] = 0;
  endPosition = self->_internal->endPosition;
  if (endPosition)
  {
    v3 = endPosition;
    goto LABEL_18;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7 || ((v8 = *MEMORY[0x1E695E480], !v7(CMBaseObject, *MEMORY[0x1E69613B0], *MEMORY[0x1E695E480], v30)) ? (v9 = v30[0] == 0) : (v9 = 1), v9 || (v10 = FigCaptionRegionGetCMBaseObject(), (v11 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0)))
  {
    v3 = 0;
    goto LABEL_18;
  }

  v12 = v11(v10, *MEMORY[0x1E6961328], v8, &cf);
  v13 = cf;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = cf == 0;
  }

  if (!v14)
  {
    FigCaptionDynamicStyleGetInitialValue();
    FigGeometryDimensionMakeFromDictionary();
    v16 = v15;
    FigCaptionDynamicStyleGetInitialValue();
    FigGeometryDimensionMakeFromDictionary();
    if (v16 == v22)
    {
      [(AVCaptionRegion *)self _position];
      if (v16 == 622862368)
      {
        [AVCaptionRegion _endPosition];
        goto LABEL_24;
      }

      if (v16 == 1667591276)
      {
        [AVCaptionRegion _endPosition];
LABEL_24:
        v3 = v30[1];
LABEL_18:
        v13 = cf;
        if (!cf)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v24 = MEMORY[0x1E695DF30];
      v25 = *MEMORY[0x1E695D930];
      v26 = @"endPosition uses an unrecognizable unit.";
    }

    else
    {
      v24 = MEMORY[0x1E695DF30];
      v25 = *MEMORY[0x1E695D930];
      v26 = @"endPosition uses different units for width and height.";
    }

    v27 = [v24 exceptionWithName:v25 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v26, v17, v18, v19, v20, v21, v28), 0}];
    objc_exception_throw(v27);
  }

  v3 = 0;
  if (cf)
  {
LABEL_19:
    CFRelease(v13);
  }

LABEL_20:
  if (v30[0])
  {
    CFRelease(v30[0]);
  }

  return v3;
}

- (AVCaptionPosition)endPosition
{
  if ([(AVCaptionRegion *)self _predefinedRegionPositionShouldBeNil])
  {
    return 0;
  }

  return [(AVCaptionRegion *)self _endPosition];
}

- (AVCaptionPoint)origin
{
  retstr->x = 0u;
  retstr->y = 0u;
  result = [(AVCaptionRegion *)self _predefinedRegionPositionShouldBeNil];
  if ((result & 1) == 0)
  {
    v6 = [(AVCaptionRegion *)self _position];
    result = [v6 unitType];
    if (result == 1)
    {
      [v6 relativeToEnclosingRegionX];
      retstr->x.value = v9 * 100.0;
      v7 = AVCaptionUnitsTypePercent;
      retstr->x.units = AVCaptionUnitsTypePercent;
      result = [v6 relativeToEnclosingRegionY];
      v8 = v10 * 100.0;
    }

    else
    {
      if (result)
      {
        return result;
      }

      retstr->x.value = [v6 cellX];
      v7 = AVCaptionUnitsTypeCells;
      retstr->x.units = AVCaptionUnitsTypeCells;
      result = [v6 cellY];
      v8 = result;
    }

    retstr->y.value = v8;
    retstr->y.units = v7;
  }

  return result;
}

- (AVCaptionSize)size
{
  retstr->width = 0u;
  retstr->height = 0u;
  result = [(AVCaptionRegion *)self _predefinedRegionPositionShouldBeNil];
  if ((result & 1) == 0)
  {
    v6 = [(AVCaptionRegion *)self position];
    v7 = [(AVCaptionRegion *)self endPosition];
    result = [(AVCaptionPosition *)v6 unitType];
    if (result == 1)
    {
      [(AVCaptionPosition *)v7 relativeToEnclosingRegionX];
      v13 = v12;
      [(AVCaptionPosition *)v6 relativeToEnclosingRegionX];
      retstr->width.value = (v13 - v14) * 100.0;
      v11 = AVCaptionUnitsTypePercent;
      retstr->width.units = AVCaptionUnitsTypePercent;
      [(AVCaptionPosition *)v7 relativeToEnclosingRegionY];
      v16 = v15;
      result = [(AVCaptionPosition *)v6 relativeToEnclosingRegionY];
      v10 = (v16 - v17) * 100.0;
    }

    else
    {
      if (result)
      {
        return result;
      }

      v8 = [(AVCaptionPosition *)v7 cellX];
      retstr->width.value = (v8 - [(AVCaptionPosition *)v6 cellX]);
      retstr->width.units = AVCaptionUnitsTypeUnspecified;
      v9 = [(AVCaptionPosition *)v7 cellY];
      result = [(AVCaptionPosition *)v6 cellY];
      v10 = (v9 - result);
      v11 = AVCaptionUnitsTypeCells;
    }

    retstr->height.value = v10;
    retstr->height.units = v11;
  }

  return result;
}

- (AVCaptionRegionDisplayAlignment)displayAlignment
{
  cf = 0;
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, *MEMORY[0x1E6961308], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_5;
  }

  if (!cf)
  {
    return 0;
  }

  InitialValue = FigCaptionDynamicStyleGetInitialValue();
  if (CFEqual(InitialValue, *MEMORY[0x1E6961298]))
  {
LABEL_5:
    v7 = AVCaptionRegionDisplayAlignmentBefore;
  }

  else if (CFEqual(InitialValue, *MEMORY[0x1E69612A0]))
  {
    v7 = AVCaptionRegionDisplayAlignmentCenter;
  }

  else
  {
    if (!CFEqual(InitialValue, *MEMORY[0x1E6961290]))
    {
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"displayAlignment uses an unrecognizable value.", v9, v10, v11, v12, v13, v15), 0}];
      objc_exception_throw(v14);
    }

    v7 = AVCaptionRegionDisplayAlignmentAfter;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (AVCaptionRegionWritingMode)writingMode
{
  cf = 0;
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(CMBaseObject, *MEMORY[0x1E69613B8], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_5;
  }

  if (!cf)
  {
    return 0;
  }

  InitialValue = FigCaptionDynamicStyleGetInitialValue();
  if (CFEqual(InitialValue, *MEMORY[0x1E69613D8]))
  {
LABEL_5:
    v7 = AVCaptionRegionWritingModeLeftToRightAndTopToBottom;
  }

  else
  {
    if (!CFEqual(InitialValue, *MEMORY[0x1E69613F0]))
    {
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"writingMode uses an unrecognizable value.", v9, v10, v11, v12, v13, v15), 0}];
      objc_exception_throw(v14);
    }

    v7 = AVCaptionRegionWritingModeTopToBottomAndRightToLeft;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (int)_updatePositionPropertyOfFigCaptionRegionWithPosition:(id)a3
{
  if ([a3 unitType] == 1)
  {
    [a3 relativeToEnclosingRegionX];
    FigGeometryDimensionMake();
    [a3 relativeToEnclosingRegionY];
  }

  else
  {
    if ([a3 unitType])
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"position uses an unrecognizable unit.", v6, v7, v8, v9, v10, v17), 0}];
      objc_exception_throw(v16);
    }

    [a3 cellX];
    FigGeometryDimensionMake();
    [a3 cellY];
  }

  FigGeometryDimensionMake();
  FigGeometryPointMake();
  v11 = FigGeometryPointCopyAsDictionary();
  FigCaptionDynamicStyleCreate();
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v14 = v13(CMBaseObject, *MEMORY[0x1E6961390], 0);
    if (!v11)
    {
      return v14;
    }

    goto LABEL_9;
  }

  v14 = -12782;
  if (v11)
  {
LABEL_9:
    CFRelease(v11);
  }

  return v14;
}

- (int)_updateExtentPropertiesOfFigCaptionRegionWithPosition:(id)a3 endPosition:(id)a4
{
  if ([a3 unitType] == 1)
  {
    [AVCaptionRegion _updateExtentPropertiesOfFigCaptionRegionWithPosition:endPosition:];
  }

  else
  {
    if ([a3 unitType])
    {
      v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"endPosition uses an unrecognizable unit.", v7, v8, v9, v10, v11, v22), 0}];
      objc_exception_throw(v21);
    }

    [AVCaptionRegion _updateExtentPropertiesOfFigCaptionRegionWithPosition:endPosition:];
  }

  v12 = FigGeometryDimensionCopyAsDictionary();
  v13 = FigGeometryDimensionCopyAsDictionary();
  v14 = FigCaptionDynamicStyleCreate();
  if (v14)
  {
    goto LABEL_11;
  }

  v14 = FigCaptionDynamicStyleCreate();
  if (v14)
  {
    goto LABEL_11;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16)
  {
    v14 = v16(CMBaseObject, *MEMORY[0x1E69613B0], 0);
    if (v14)
    {
LABEL_11:
      v19 = v14;
      goto LABEL_13;
    }

    v17 = FigCaptionRegionGetCMBaseObject();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18)
    {
      v14 = v18(v17, *MEMORY[0x1E6961328], 0);
      goto LABEL_11;
    }
  }

  v19 = -12782;
LABEL_13:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v19;
}

- (int)_updateFigCaptionRegion
{
  internal = self->_internal;
  if (!internal->position)
  {
    if (!internal->endPosition)
    {
      return 0;
    }

    self->_internal->position = [(AVCaptionRegion *)self _position];
    internal = self->_internal;
  }

  if (!internal->endPosition)
  {
    self->_internal->endPosition = [(AVCaptionRegion *)self _endPosition];
    internal = self->_internal;
    if (!internal->endPosition)
    {
      if (internal->position)
      {
        goto LABEL_7;
      }

      return 0;
    }
  }

  if (!internal->position)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"position is not specified even though endPosition is specified", v2, v3, v4, v5, v6, v12), 0}];
    objc_exception_throw(v11);
  }

LABEL_7:
  result = [(AVCaptionRegion *)self _updatePositionPropertyOfFigCaptionRegionWithPosition:?];
  if (result)
  {
    return result;
  }

  self->_internal->position = 0;
  if (!self->_internal->endPosition)
  {
    return 0;
  }

  result = [(AVCaptionRegion *)self _updateExtentPropertiesOfFigCaptionRegionWithPosition:[(AVCaptionRegion *)self _position] endPosition:self->_internal->endPosition];
  if (!result)
  {

    result = 0;
    self->_internal->endPosition = 0;
  }

  return result;
}

- (void)_setHeight:(id)a3
{
  if (a3)
  {
    [a3 numberOfCells];
    v3 = FigCaptionGeometryCopyCellBasedDimensionAsDictionary();
    FigCaptionDynamicStyleCreate();
  }

  else
  {
    v3 = 0;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E6961328], 0);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)_setOrigin:(AVCaptionPoint *)a3
{
  self->_internal->position = 0;
  self->_internal->endPosition = 0;
  _convertFigGeometryDimensionToAVCaptionDimension(*&a3->x.value, a3->x.units);
  _convertFigGeometryDimensionToAVCaptionDimension(*&a3->y.value, a3->y.units);
  FigGeometryPointMake();
  v5 = FigGeometryPointCopyAsDictionary();
  FigCaptionDynamicStyleCreate();
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E6961390], 0);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)_setScroll:(int64_t)a3
{
  if (a3 == 1)
  {
    v8 = MEMORY[0x1E6961288];
  }

  else
  {
    if (a3)
    {
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"scroll must be one of the values defined in AVCaptionRegionScroll.", v3, v4, v5, v6, v7, v13), 0}];
      objc_exception_throw(v12);
    }

    v8 = MEMORY[0x1E6961280];
  }

  v9 = *v8;
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E69612E0], v9);
  }

  if (v9)
  {

    CFRelease(v9);
  }
}

- (void)_setDisplayAlignment:(int64_t)a3
{
  v10 = 0;
  if (a3 >= 3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"displayAlignment is invalid.", v3, v4, v5, v6, v7, v9), 0}];
    objc_exception_throw(v8);
  }

  [(AVCaptionRegion *)a3 _setDisplayAlignment:?];
}

- (void)_setWritingMode:(int64_t)a3
{
  v11 = 0;
  if (a3)
  {
    if (a3 != 2)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"writingMode is invalid.", v3, v4, v5, v6, v7, v10), 0}];
      objc_exception_throw(v9);
    }

    v8 = MEMORY[0x1E69613F0];
  }

  else
  {
    v8 = MEMORY[0x1E69613D8];
  }

  [(AVCaptionRegion *)&v11 _setWritingMode:v8];
}

+ (id)appleiTTTop
{
  if (appleiTTTop_createOnceToken != -1)
  {
    +[AVCaptionRegion appleiTTTop];
  }

  return appleiTTTop_region;
}

uint64_t __30__AVCaptionRegion_appleiTTTop__block_invoke()
{
  v0 = [AVCaptionRegion alloc];
  result = [(AVCaptionRegion *)v0 initWithIdentifier:*MEMORY[0x1E6961358]];
  appleiTTTop_region = result;
  return result;
}

+ (id)appleiTTBottom
{
  if (appleiTTBottom_createOnceToken != -1)
  {
    +[AVCaptionRegion appleiTTBottom];
  }

  return appleiTTBottom_region;
}

uint64_t __33__AVCaptionRegion_appleiTTBottom__block_invoke()
{
  v0 = [AVCaptionRegion alloc];
  result = [(AVCaptionRegion *)v0 initWithIdentifier:*MEMORY[0x1E6961340]];
  appleiTTBottom_region = result;
  return result;
}

+ (id)appleiTTLeft
{
  if (appleiTTLeft_createOnceToken != -1)
  {
    +[AVCaptionRegion appleiTTLeft];
  }

  return appleiTTLeft_region;
}

uint64_t __31__AVCaptionRegion_appleiTTLeft__block_invoke()
{
  v0 = [AVCaptionRegion alloc];
  result = [(AVCaptionRegion *)v0 initWithIdentifier:*MEMORY[0x1E6961348]];
  appleiTTLeft_region = result;
  return result;
}

+ (id)appleiTTRight
{
  if (appleiTTRight_createOnceToken != -1)
  {
    +[AVCaptionRegion appleiTTRight];
  }

  return appleiTTRight_region;
}

uint64_t __32__AVCaptionRegion_appleiTTRight__block_invoke()
{
  v0 = [AVCaptionRegion alloc];
  result = [(AVCaptionRegion *)v0 initWithIdentifier:*MEMORY[0x1E6961350]];
  appleiTTRight_region = result;
  return result;
}

+ (id)subRipTextBottom
{
  if (subRipTextBottom_createOnceToken != -1)
  {
    +[AVCaptionRegion subRipTextBottom];
  }

  return subRipTextBottom_region;
}

uint64_t __35__AVCaptionRegion_subRipTextBottom__block_invoke()
{
  v0 = [AVCaptionRegion alloc];
  result = [(AVCaptionRegion *)v0 initWithIdentifier:*MEMORY[0x1E6961360]];
  subRipTextBottom_region = result;
  return result;
}

- (id)_position
{
  cf = 0;
  position = self->_internal->position;
  if (position)
  {
    v3 = position;
LABEL_8:
    v7 = cf;
    goto LABEL_9;
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v6 = v5(CMBaseObject, *MEMORY[0x1E6961390], *MEMORY[0x1E695E480], &cf);
  v3 = 0;
  v7 = cf;
  if (!v6 && cf)
  {
    FigCaptionDynamicStyleGetInitialValue();
    FigGeometryPointMakeFromDictionary();
    goto LABEL_7;
  }

LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

- (AVCaptionLength)height
{
  cf = 0;
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(CMBaseObject, *MEMORY[0x1E6961328], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_6;
  }

  if (!cf)
  {
    v4 = 0;
    return v4;
  }

  FigCaptionDynamicStyleGetInitialValue();
  if (FigCaptionGeometryGetCellBasedDimensionFromDictionary())
  {
LABEL_6:
    v4 = 0;
  }

  else
  {
    v4 = [[AVCaptionLength alloc] initWithCellCount:0.0];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

- (AVCaptionRegionScroll)scroll
{
  cf1 = 0;
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(CMBaseObject, *MEMORY[0x1E69612E0], *MEMORY[0x1E695E480], &cf1);
  v5 = cf1;
  if (v4)
  {
    v7 = AVCaptionRegionScrollNone;
    if (!cf1)
    {
      return v7;
    }

    goto LABEL_9;
  }

  if (!cf1)
  {
    return 0;
  }

  v6 = CFEqual(cf1, *MEMORY[0x1E6961288]);
  v5 = cf1;
  if (v6)
  {
    v7 = AVCaptionRegionScrollRollUp;
    if (!cf1)
    {
      return v7;
    }

    goto LABEL_9;
  }

  CFEqual(cf1, *MEMORY[0x1E6961280]);
  v7 = AVCaptionRegionScrollNone;
  v5 = cf1;
  if (cf1)
  {
LABEL_9:
    CFRelease(v5);
  }

  return v7;
}

- (OpaqueFigCaptionRegion)_figCaptionRegion
{
  if ([(AVCaptionRegion *)self _updateFigCaptionRegion])
  {
    return 0;
  }

  else
  {
    return self->_internal->figCaptionRegion;
  }
}

- (void)_setSize:(AVCaptionSize *)a3
{
  self->_internal->position = 0;
  self->_internal->endPosition = 0;
  units = a3->width.units;
  if (units)
  {
    _convertFigGeometryDimensionToAVCaptionDimension(*&a3->width.value, units);
    v6 = FigGeometryDimensionCopyAsDictionary();
    FigCaptionDynamicStyleCreate();
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = a3->height.units;
  if (v7)
  {
    _convertFigGeometryDimensionToAVCaptionDimension(*&a3->height.value, v7);
    v8 = FigGeometryDimensionCopyAsDictionary();
    FigCaptionDynamicStyleCreate();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v10 && !v10(CMBaseObject, *MEMORY[0x1E69613B0], 0))
  {
    v11 = FigCaptionRegionGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(v11, *MEMORY[0x1E6961328], 0);
    }
  }
}

- (void)mutableCopyWithZone:(CFTypeRef *)a3 .cold.1(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4, AVMutableCaptionRegion **a5)
{
  if (FigCaptionRegionCreateMutableCopy())
  {
    v8 = 0;
  }

  else
  {
    v8 = [[AVMutableCaptionRegion alloc] initWithFigMutableCaptionRegion:*a3];
  }

  *a5 = v8;
  if (*a4)
  {
    CFRelease(*a4);
  }

  if (*a3)
  {
    CFRelease(*a3);
  }
}

- (uint64_t)_endPosition
{
  OUTLINED_FUNCTION_12();
  v4 = [AVCaptionPosition alloc];
  [v1 relativeToEnclosingRegionX];
  v6 = v3 / 100.0 + v5;
  [v1 relativeToEnclosingRegionY];
  v8 = v2 / 100.0;
  v9 = v2 / 100.0 + v7;
  *&v8 = v9;
  *&v9 = v6;
  result = [(AVCaptionPosition *)v4 initWithRelativeToEnclosingRegionX:v9 andY:v8];
  *v0 = result;
  return result;
}

- (AVCaptionPosition)_endPosition
{
  OUTLINED_FUNCTION_12();
  result = -[AVCaptionPosition initWithCellPositionX:andY:]([AVCaptionPosition alloc], "initWithCellPositionX:andY:", [v1 cellX] + v3, objc_msgSend(v1, "cellY") + v2);
  *v0 = result;
  return result;
}

- (uint64_t)_updateExtentPropertiesOfFigCaptionRegionWithPosition:endPosition:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  [v4 cellX];
  [v3 cellX];
  [v5 cellY];
  [v3 cellY];
  *v1 = FigGeometryDimensionMake();
  v1[1] = v6;
  result = FigGeometryDimensionMake();
  *v0 = result;
  v0[1] = v8;
  return result;
}

- (uint64_t)_updateExtentPropertiesOfFigCaptionRegionWithPosition:endPosition:.cold.2()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  [v4 relativeToEnclosingRegionX];
  [v3 relativeToEnclosingRegionX];
  [v5 relativeToEnclosingRegionY];
  [v3 relativeToEnclosingRegionY];
  *v1 = OUTLINED_FUNCTION_10();
  v1[1] = v6;
  result = OUTLINED_FUNCTION_10();
  *v0 = result;
  v0[1] = v8;
  return result;
}

- (void)_setDisplayAlignment:(uint64_t)a1 .cold.1(uint64_t a1, CFTypeRef *a2)
{
  v3 = **(&unk_1E74622D0 + a1);
  if (!FigCaptionDynamicStyleCreate())
  {
    FigCaptionRegionGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v4 = OUTLINED_FUNCTION_2_1();
      v5(v4);
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)_setWritingMode:(const void *)a3 .cold.1(CFTypeRef *a1, uint64_t a2, const void **a3)
{
  v4 = *a3;
  if (!FigCaptionDynamicStyleCreate())
  {
    FigCaptionRegionGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v5 = OUTLINED_FUNCTION_2_1();
      v6(v5);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

@end