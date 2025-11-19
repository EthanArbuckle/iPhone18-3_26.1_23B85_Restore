@interface GCGearShifterElement
+ (unsigned)updateContextSize;
- (BOOL)canWrap;
- (BOOL)isAnalog;
- (BOOL)isEqualToElement:(id)a3;
- (BOOL)isSequential;
- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (GCGearShifterElement)initWithParameters:(id)a3;
- (GCGearShifterElement)initWithTemplate:(id)a3 context:(id)a4;
- (NSSet)sources;
- (NSString)description;
- (_NSRange)positionRange;
- (__n64)_delta;
- (double)_lastDeltaTimestamp;
- (double)_lastPositionTimestamp;
- (double)lastDeltaLatency;
- (double)lastDeltaTimestamp;
- (double)lastPositionLatency;
- (double)lastPositionTimestamp;
- (float)delta;
- (id)deltaDidChangeHandler;
- (id)patternInput;
- (id)positionDidChangeHandler;
- (id)sequentialInput;
- (int64_t)position;
- (uint64_t)_deltaDidChangeHandler;
- (uint64_t)_position;
- (uint64_t)_positionDidChangeHandler;
- (uint64_t)_positionField;
- (uint64_t)_positionMax;
- (uint64_t)_positionMin;
- (uint64_t)_setDelta:(uint64_t)result;
- (uint64_t)_setDeltaDidChangeHandler:(uint64_t)result;
- (uint64_t)_setLastDeltaTimestamp:(uint64_t)result;
- (uint64_t)_setLastPositionTimestamp:(uint64_t)result;
- (uint64_t)_setPosition:(uint64_t)result;
- (uint64_t)_setPositionDidChangeHandler:(uint64_t)result;
- (uint64_t)_setPositionField:(uint64_t)result;
- (uint64_t)_setPositionMax:(uint64_t)result;
- (uint64_t)_setPositionMin:(uint64_t)result;
- (uint64_t)_setSources:(uint64_t)result;
- (uint64_t)_sources;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
- (void)setDeltaDidChangeHandler:(id)a3;
- (void)setPositionDidChangeHandler:(id)a3;
@end

@implementation GCGearShifterElement

- (GCGearShifterElement)initWithTemplate:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = GCGearShifterElement;
  v8 = [(_GCDevicePhysicalInputElement *)&v12 initWithTemplate:v6 context:v7];
  v9 = *(v6 + 56);
  v8->_isPatternShifter = v9;
  v8->_impl.pattern.sourcesSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[8]];
  if (v9 == 1)
  {
    v8->_impl.pattern.positionMinSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[9]];
    v8->_impl.pattern.positionMaxSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[10]];
    v8->_impl.pattern.positionFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[11]];
  }

  if (v8->_isPatternShifter)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  *(&v8->_impl.pattern.sourcesSlot + v10 * 8) = [v7 view:v8 allocateObjectSlot:2 withCopyOfValueFromView:v6 slot:v6[v10 + 8]];
  if (v8->_isPatternShifter)
  {
    v8->_impl.pattern.positionSlot = [v7 view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[13]];
    v8->_impl.pattern.timestampSlot = [v7 view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[14]];
  }

  else
  {
    v8->_impl.pattern.positionMaxSlot = [v7 view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[10]];
    v8->_impl.pattern.positionMaxSlot = [v7 view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[10]];
  }

  return v8;
}

+ (unsigned)updateContextSize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___GCGearShifterElement;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 2;
}

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v6 = a4;
  v45.receiver = self;
  v45.super_class = GCGearShifterElement;
  v10 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  if (self->_isPatternShifter != *(a5 + 56))
  {
    [GCGearShifterElement update:a2 forUsages:self with:?];
  }

  v11 = MyUpdateContext_Offset;
  if (MyUpdateContext_Offset == -1)
  {
    v11 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset = v11;
  }

  if (!self->_isPatternShifter)
  {
    if ((v6 & 2) != 0)
    {
      v40 = [(GCGearShifterElement *)a5 _sources];
      v41 = [(GCGearShifterElement *)self _setSources:v40];
      *(a3 + v11) = *(a3 + v11) & 0xFE | v41;
      v10 |= v41;

      if ((v6 & 4) == 0)
      {
LABEL_15:
        if ((v6 & 8) == 0)
        {
          return v10;
        }

        goto LABEL_16;
      }
    }

    else if ((v6 & 4) == 0)
    {
      goto LABEL_15;
    }

    v42 = [(GCGearShifterElement *)a5 _deltaDidChangeHandler];
    v43 = [(GCGearShifterElement *)self _setDeltaDidChangeHandler:v42];
    if (v43)
    {
      v44 = 2;
    }

    else
    {
      v44 = 0;
    }

    *(a3 + v11) = *(a3 + v11) & 0xFD | v44;
    v10 |= v43;

    if ((v6 & 8) == 0)
    {
      return v10;
    }

LABEL_16:
    v17 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?]);
    v18 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_impl.pattern.positionMaxSlot forSlot:?];
    if (v18)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    *(a3 + v11) = *(a3 + v11) & 0xFB | v19;
    v15 = v10 | v18;
    v16 = 24;
    goto LABEL_20;
  }

  if ((v6 & 2) != 0)
  {
    v24 = [(GCGearShifterElement *)a5 _sources];
    v25 = [(GCGearShifterElement *)self _setSources:v24];
    *(a3 + v11) = *(a3 + v11) & 0xFFFE | v25;
    v26 = v10 | v25;

    v27 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
    v28 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v27 forSlot:&self->_impl.pattern.positionMinSlot];
    if (v28)
    {
      v29 = 8;
    }

    else
    {
      v29 = 0;
    }

    *(a3 + v11) = *(a3 + v11) & 0xFFF7 | v29;
    v30 = v26 | v28;
    v31 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
    v32 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v31 forSlot:&self->_impl.pattern.positionMaxSlot];
    if (v32)
    {
      v33 = 16;
    }

    else
    {
      v33 = 0;
    }

    *(a3 + v11) = *(a3 + v11) & 0xFFEF | v33;
    v34 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
    v35 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v34 forSlot:&self->_impl.pattern.positionFieldSlot];
    if (v35)
    {
      v36 = 32;
    }

    else
    {
      v36 = 0;
    }

    *(a3 + v11) = *(a3 + v11) & 0xFFDF | v36;
    v10 = v30 | v32 | v35;
    if ((v6 & 4) == 0)
    {
LABEL_8:
      if ((v6 & 8) == 0)
      {
        return v10;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_8;
  }

  v37 = [(GCGearShifterElement *)a5 _positionDidChangeHandler];
  v38 = [(GCGearShifterElement *)self _setPositionDidChangeHandler:v37];
  if (v38)
  {
    v39 = 64;
  }

  else
  {
    v39 = 0;
  }

  *(a3 + v11) = *(a3 + v11) & 0xFFBF | v39;
  v10 |= v38;

  if ((v6 & 8) != 0)
  {
LABEL_9:
    v12 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
    v13 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v12 forSlot:&self->_impl.pattern.positionSlot];
    if (v13)
    {
      v14 = 128;
    }

    else
    {
      v14 = 0;
    }

    *(a3 + v11) = *(a3 + v11) & 0xFF7F | v14;
    v15 = v10 | v13;
    v16 = 48;
LABEL_20:
    v20 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
    v21 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v20 forSlot:&self->_impl + v16];
    if (v21)
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    *(a3 + v11) = *(a3 + v11) & 0xFEFF | v22;
    return v15 | v21;
  }

  return v10;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v11.receiver = self;
  v11.super_class = GCGearShifterElement;
  [(_GCDevicePhysicalInputElement *)&v11 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset;
  if (MyUpdateContext_Offset == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset = v6;
  }

  if (self->_isPatternShifter)
  {
    v7 = *(a3 + v6);
    if (v7)
    {
      [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
      v7 = *(a3 + v6);
    }

    if ((v7 & 0x18) != 0)
    {
      [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
      v7 = *(a3 + v6);
      if ((v7 & 0x40) == 0)
      {
LABEL_8:
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((v7 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(a3 + v6);
    if ((v7 & 0x80) == 0)
    {
LABEL_9:
      if ((v7 & 0x100) == 0)
      {
        return;
      }

      goto LABEL_19;
    }

LABEL_18:
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    if ((*(a3 + v6) & 0x100) == 0)
    {
      return;
    }

LABEL_19:
    v9 = @"lastPositionLatency";
    v10 = @"lastPositionTimestamp";
LABEL_24:
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:v10];
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:v9];
    return;
  }

  v8 = *(a3 + v6);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v8 = *(a3 + v6);
    if ((v8 & 2) == 0)
    {
LABEL_13:
      if ((v8 & 4) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
      if ((*(a3 + v6) & 8) == 0)
      {
        return;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a3 + v6) & 2) == 0)
  {
    goto LABEL_13;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *(a3 + v6);
  if ((v8 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v8 & 8) != 0)
  {
LABEL_23:
    v9 = @"lastDeltaLatency";
    v10 = @"lastDeltaTimestamp";
    goto LABEL_24;
  }
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v9.receiver = self;
  v9.super_class = GCGearShifterElement;
  [(_GCDevicePhysicalInputElement *)&v9 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset;
  if (MyUpdateContext_Offset == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset = v6;
  }

  if (self->_isPatternShifter)
  {
    v7 = *(a3 + v6);
    if (v7)
    {
      [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
      v7 = *(a3 + v6);
    }

    if ((v7 & 0x18) != 0)
    {
      [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
      v7 = *(a3 + v6);
      if ((v7 & 0x40) == 0)
      {
LABEL_8:
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else if ((v7 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v7 = *(a3 + v6);
    if ((v7 & 0x80) == 0)
    {
LABEL_9:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v7 = *(a3 + v6);
    if ((v7 & 0x100) == 0)
    {
LABEL_10:
      if ((v7 & 0x80) == 0)
      {
        return;
      }

LABEL_21:
      [GCGearShifterElement postCommit:? sender:?];
      return;
    }

LABEL_20:
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    if ((*(a3 + v6) & 0x80) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v8 = *(a3 + v6);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *(a3 + v6);
    if ((v8 & 2) == 0)
    {
LABEL_14:
      if ((v8 & 4) == 0)
      {
        goto LABEL_15;
      }

LABEL_24:
      [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
      if ((*(a3 + v6) & 8) == 0)
      {
        return;
      }

      goto LABEL_25;
    }
  }

  else if ((*(a3 + v6) & 2) == 0)
  {
    goto LABEL_14;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v6);
  if ((v8 & 4) != 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((v8 & 8) != 0)
  {
LABEL_25:
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  }
}

- (BOOL)isEqualToElement:(id)a3
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = GCGearShifterElement;
  if ([(_GCDevicePhysicalInputElement *)&v21 isEqualToElement:v8])
  {
    isPatternShifter = self->_isPatternShifter;
    if (isPatternShifter == v8[56])
    {
      if (self->_isPatternShifter)
      {
        v3 = [(GCGearShifterElement *)self _sources];
        v4 = [(GCGearShifterElement *)v8 _sources];
        v12 = v3 != v4;
        if (v3 == v4 || (v5 = -[GCGearShifterElement _sources](self), v6 = -[GCGearShifterElement _sources](v8), [v5 isEqual:?]))
        {
          v13 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
          if (v13 == [(_GCDevicePhysicalInputView *)v8 _primitiveValueForSlot:?])
          {
            v14 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
            if (v14 == [(_GCDevicePhysicalInputView *)v8 _primitiveValueForSlot:?])
            {
              v15 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
              if (v15 == [(_GCDevicePhysicalInputView *)v8 _primitiveValueForSlot:?])
              {
                if (v3 != v4)
                {
                }

                v10 = 1;
                goto LABEL_21;
              }
            }
          }
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = [(GCGearShifterElement *)self _sources];
      v17 = [(GCGearShifterElement *)v8 _sources];
      v18 = v17;
      if (v16 == v17)
      {

        v10 = 1;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = [(GCGearShifterElement *)self _sources];
        v19 = [(GCGearShifterElement *)v8 _sources];
        v10 = [v20 isEqual:v19];

        if (v12)
        {
LABEL_17:

          if ((isPatternShifter & 1) == 0)
          {
            goto LABEL_4;
          }

LABEL_21:

          goto LABEL_4;
        }
      }

      if (!isPatternShifter)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  v10 = 0;
LABEL_4:

  return v10;
}

- (id)patternInput
{
  if (!self->_isPatternShifter)
  {
    self = 0;
  }

  return self;
}

- (id)sequentialInput
{
  if (self->_isPatternShifter)
  {
    self = 0;
  }

  return self;
}

- (NSString)description
{
  isPatternShifter = self->_isPatternShifter;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(_GCDevicePhysicalInputElement *)self identifier];
  if (isPatternShifter)
  {
    [v4 stringWithFormat:@"<Pattern Shifter '%@'; position = %zd>", v5, -[GCGearShifterElement position](self, "position")];
  }

  else
  {
    [(GCGearShifterElement *)self delta];
    [v4 stringWithFormat:@"<Sequential Shifter '%@'; delta = %f>", v5, v6];
  }
  v7 = ;

  return v7;
}

- (id)positionDidChangeHandler
{
  if (self->_isPatternShifter)
  {
    v2 = [(GCGearShifterElement *)self _positionDidChangeHandler];
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
    v2 = 0;
  }

  return v2;
}

- (void)setPositionDidChangeHandler:(id)a3
{
  if (self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self _setPositionDidChangeHandler:a3];
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  }
}

- (int64_t)position
{
  if (self->_isPatternShifter)
  {

    return [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2, v2, v3];
    return 0;
  }
}

- (_NSRange)positionRange
{
  if (self->_isPatternShifter)
  {
    v3 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
    v4 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]- v3;
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
    v3 = 0;
    v4 = 0;
  }

  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (BOOL)isSequential
{
  if (!self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2, v2, v3];
  }

  return 0;
}

- (BOOL)canWrap
{
  if (!self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2, v2, v3];
  }

  return 1;
}

- (double)lastPositionTimestamp
{
  if (self->_isPatternShifter)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  return 0.0;
}

- (double)lastPositionLatency
{
  if (self->_isPatternShifter)
  {
    if (!dword_1EC735E94)
    {
      mach_timebase_info(&lastPositionLatency_sTimebaseInfo);
    }

    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    return (mach_absolute_time() * lastPositionLatency_sTimebaseInfo / dword_1EC735E94) / 1000000000.0 - v3;
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
    return 0.0;
  }
}

- (id)deltaDidChangeHandler
{
  if (self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
    v2 = 0;
  }

  else
  {
    v2 = [(GCGearShifterElement *)self _deltaDidChangeHandler];
  }

  return v2;
}

- (void)setDeltaDidChangeHandler:(id)a3
{
  if (self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  }

  else
  {
    [(GCGearShifterElement *)self _setDeltaDidChangeHandler:a3];
  }
}

- (float)delta
{
  if (!self->_isPatternShifter)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  return 0.0;
}

- (BOOL)isAnalog
{
  if (self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2, v2, v3];
  }

  return 0;
}

- (double)lastDeltaTimestamp
{
  if (!self->_isPatternShifter)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  return 0.0;
}

- (double)lastDeltaLatency
{
  if (!dword_1EC735E9C)
  {
    mach_timebase_info(&lastDeltaLatency_sTimebaseInfo);
  }

  v4 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?]);
  result = (mach_absolute_time() * lastDeltaLatency_sTimebaseInfo / dword_1EC735E9C) / 1000000000.0 - v4;
  *a2 = result;
  return result;
}

- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5
{
  v17.receiver = self;
  v17.super_class = GCGearShifterElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v10 = MyUpdateContext_Offset;
  if (MyUpdateContext_Offset == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset = v10;
  }

  if (self->_isPatternShifter)
  {
    v11 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
    if (v11 != -1)
    {
      v12 = v11;
      v13 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
      [a4 floatValueForElement:v12];
      v15 = rintf(v14);
      if (v13 != v15)
      {
        [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v15 forSlot:&self->_impl.pattern.positionSlot];
        [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_impl.pattern.timestampSlot forSlot:?];
        *(a3 + v10) |= 0x180u;
        return 1;
      }
    }
  }

  return v9;
}

- (GCGearShifterElement)initWithParameters:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = GCGearShifterElement;
  v5 = [(_GCDevicePhysicalInputElement *)&v18 initWithParameters:v4];
  v6 = v5;
  if (v4)
  {
    v7 = v4[40];
  }

  else
  {
    v7 = 0;
  }

  v5->_isPatternShifter = v7 & 1;
  v8 = [(_GCGearShifterElementParameters *)v4 sources];
  [(GCGearShifterElement *)v6 _setSources:v8];

  if (v6->_isPatternShifter)
  {
    if (v4)
    {
      v9 = *(v4 + 8);
      OUTLINED_FUNCTION_2_0();
      [(_GCDevicePhysicalInputView *)v6 _testAndSetPrimitiveValue:v11 forSlot:v10 + 8];
      [(_GCDevicePhysicalInputView *)v6 _testAndSetPrimitiveValue:&v6->_impl.pattern.positionMaxSlot forSlot:?];
      v12 = *(v4 + 7);
    }

    else
    {
      OUTLINED_FUNCTION_2_0();
      [(_GCDevicePhysicalInputView *)v6 _testAndSetPrimitiveValue:v16 + 8 forSlot:?];
      OUTLINED_FUNCTION_2_0();
      [(_GCDevicePhysicalInputView *)v6 _testAndSetPrimitiveValue:v17 + 16 forSlot:?];
    }

    OUTLINED_FUNCTION_2_0();
    [(_GCDevicePhysicalInputView *)v6 _testAndSetPrimitiveValue:v14 forSlot:v13 + 24];
  }

  return v6;
}

- (uint64_t)_setSources:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel__setSources_ object:v3 file:@"GCGearShifterElement.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
    }

    return [(_GCDevicePhysicalInputView *)v3 _testAndSetObjectValue:a2 forSlot:v3 + 64 policy:771];
  }

  return result;
}

- (uint64_t)_setPositionMin:(uint64_t)result
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:a2 forSlot:result + 72];
  }

  return result;
}

- (uint64_t)_setPositionMax:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_2(result, a2, 64);
  }

  return result;
}

- (uint64_t)_setPositionField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_1(result, a2, 64);
  }

  return result;
}

- (uint64_t)_sources
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_positionMin
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (uint64_t)_positionMax
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (uint64_t)_positionField
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (uint64_t)_positionDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_setPositionDidChangeHandler:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = _Block_copy(aBlock);
    v4 = [(_GCDevicePhysicalInputView *)v2 _testAndSetObjectValue:v3 forSlot:v2 + 96 policy:771];

    return v4;
  }

  return result;
}

- (uint64_t)_position
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (uint64_t)_setPosition:(uint64_t)result
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:a2 forSlot:result + 104];
  }

  return result;
}

- (double)_lastPositionTimestamp
{
  if (a1)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)_setLastPositionTimestamp:(uint64_t)result
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:result + 112 forSlot:?];
  }

  return result;
}

- (uint64_t)_deltaDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_setDeltaDidChangeHandler:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = _Block_copy(aBlock);
    v4 = [(_GCDevicePhysicalInputView *)v2 _testAndSetObjectValue:v3 forSlot:v2 + 72 policy:771];

    return v4;
  }

  return result;
}

- (__n64)_delta
{
  if (a1)
  {
    v1 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?]);
    result.n64_u32[1] = HIDWORD(v1);
    result.n64_f32[0] = v1;
  }

  else
  {
    return 0;
  }

  return result;
}

- (uint64_t)_setDelta:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_2(result, COERCE__INT64(a2), 64);
  }

  return result;
}

- (double)_lastDeltaTimestamp
{
  if (a1)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)_setLastDeltaTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_1(result, *&a2, 64);
  }

  return result;
}

- (NSSet)sources
{
  v2 = [(GCGearShifterElement *)self _sources];

  return v2;
}

- (void)update:(uint64_t)a1 forUsages:(uint64_t)a2 with:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGearShifterElement.m" lineNumber:150 description:@"Assertion failed: _isPatternShifter == other->_isPatternShifter"];
}

- (void)postCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  v2 = [(GCGearShifterElement *)a1 _positionDidChangeHandler];
  if (v2)
  {
    v3 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
    v2[2](v2, a1, a1, v3);
  }
}

@end