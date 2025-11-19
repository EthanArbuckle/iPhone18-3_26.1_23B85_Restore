@interface AVFigObjectInspector
- ($2FE3C3292E52C4A5B67D27538456EAD9)_timeRangeForProperty:(SEL)a3;
- ($2FE3C3292E52C4A5B67D27538456EAD9)_timeRangeForProperty:(SEL)a3 propertyString:(__CFString *)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)a3 defaultValue:(__CFString *)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)a3 defaultValue:(__CFString *)a4 propertyString:(id *)a5;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)a3 propertyString:(__CFString *)a4;
- (CGAffineTransform)_affineTransformForProperty:(SEL)a3;
- (CGAffineTransform)_affineTransformForProperty:(SEL)a3 propertyString:(__CFString *)a4;
- (CGSize)_sizeForProperty:(__CFString *)a3;
- (CGSize)_sizeForProperty:(__CFString *)a3 defaultValue:(CGSize)a4;
- (CGSize)_sizeForProperty:(__CFString *)a3 defaultValue:(CGSize)a4 propertyString:(id)a5;
- (CGSize)_sizeForProperty:(__CFString *)a3 propertyString:(id)a4;
- (float)_floatForProperty:(__CFString *)a3 defaultValue:(float)a4;
- (float)_floatForProperty:(__CFString *)a3 defaultValue:(float)a4 propertyString:(id)a5;
- (id)_nonNilArrayForProperty:(__CFString *)a3;
- (id)_nonNilArrayForProperty:(__CFString *)a3 propertyString:(id)a4;
- (id)_nonNilDictionaryForProperty:(__CFString *)a3;
- (id)_tollFreeBridgedObjectForProperty:(__CFString *)a3;
- (id)_tollFreeBridgedObjectForProperty:(__CFString *)a3 propertyString:(id)a4;
- (int)_SInt32ForProperty:(__CFString *)a3 defaultValue:(int)a4;
- (int)_SInt32ForProperty:(__CFString *)a3 defaultValue:(int)a4 propertyString:(id)a5;
- (int64_t)_longLongForProperty:(__CFString *)a3;
- (int64_t)_longLongForProperty:(__CFString *)a3 propertyString:(id)a4;
- (signed)_SInt16ForProperty:(__CFString *)a3;
- (unsigned)_BOOLeanForProperty:(__CFString *)a3;
- (unsigned)_BOOLeanForProperty:(__CFString *)a3 propertyString:(id)a4;
- (void)_valueAsCFTypeForProperty:(__CFString *)a3;
- (void)_valueAsCFTypeForProperty:(__CFString *)a3 propertyString:(id)a4;
@end

@implementation AVFigObjectInspector

- (void)_valueAsCFTypeForProperty:(__CFString *)a3 propertyString:(id)a4
{
  v6 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v6);
  return 0;
}

- (void)_valueAsCFTypeForProperty:(__CFString *)a3
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)a3 defaultValue:(__CFString *)a4 propertyString:(id *)a5
{
  *retstr = *a5;
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a4 propertyString:a6];
  if (result)
  {
    v8 = result;
    CMTimeMakeFromDictionary(retstr, result);

    CFRelease(v8);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)a3 defaultValue:(__CFString *)a4
{
  *retstr = *a5;
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a4];
  if (result)
  {
    v7 = result;
    CMTimeMakeFromDictionary(retstr, result);

    CFRelease(v7);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)a3 propertyString:(__CFString *)a4
{
  if (self)
  {
    v5 = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _timeForProperty:a4 defaultValue:&v5 propertyString:a5];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)a3
{
  if (self)
  {
    v4 = *MEMORY[0x1E6960CC0];
    v5 = *(MEMORY[0x1E6960CC0] + 16);
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _timeForProperty:a4 defaultValue:&v4];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return self;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)_timeRangeForProperty:(SEL)a3 propertyString:(__CFString *)a4
{
  v6 = MEMORY[0x1E6960C98];
  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = *(v6 + 32);
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a4 propertyString:a5];
  if (result)
  {
    v9 = result;
    CMTimeRangeMakeFromDictionary(retstr, result);

    CFRelease(v9);
  }

  return result;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)_timeRangeForProperty:(SEL)a3
{
  v5 = MEMORY[0x1E6960C98];
  v6 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v6;
  *&retstr->var1.var1 = *(v5 + 32);
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a4];
  if (result)
  {
    v8 = result;
    CMTimeRangeMakeFromDictionary(retstr, result);

    CFRelease(v8);
  }

  return result;
}

- (float)_floatForProperty:(__CFString *)a3 defaultValue:(float)a4 propertyString:(id)a5
{
  v5 = a4;
  valuePtr = a4;
  v6 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3 propertyString:a5];
  if (v6)
  {
    v7 = v6;
    CFNumberGetValue(v6, kCFNumberFloat32Type, &valuePtr);
    CFRelease(v7);
    return valuePtr;
  }

  return v5;
}

- (float)_floatForProperty:(__CFString *)a3 defaultValue:(float)a4
{
  v4 = a4;
  valuePtr = a4;
  v5 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3];
  if (v5)
  {
    v6 = v5;
    CFNumberGetValue(v5, kCFNumberFloat32Type, &valuePtr);
    CFRelease(v6);
    return valuePtr;
  }

  return v4;
}

- (signed)_SInt16ForProperty:(__CFString *)a3
{
  valuePtr = 0;
  v3 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFNumberGetValue(v3, kCFNumberSInt16Type, &valuePtr);
  CFRelease(v4);
  return valuePtr;
}

- (int)_SInt32ForProperty:(__CFString *)a3 defaultValue:(int)a4 propertyString:(id)a5
{
  v5 = a4;
  valuePtr = a4;
  v6 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3 propertyString:a5];
  if (v6)
  {
    v7 = v6;
    CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v7);
    return valuePtr;
  }

  return v5;
}

- (int)_SInt32ForProperty:(__CFString *)a3 defaultValue:(int)a4
{
  v4 = a4;
  valuePtr = a4;
  v5 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3];
  if (v5)
  {
    v6 = v5;
    CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v6);
    return valuePtr;
  }

  return v4;
}

- (int64_t)_longLongForProperty:(__CFString *)a3 propertyString:(id)a4
{
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3 propertyString:a4];
  if (result)
  {
    v5 = result;
    v6 = [result longLongValue];
    CFRelease(v5);
    return v6;
  }

  return result;
}

- (int64_t)_longLongForProperty:(__CFString *)a3
{
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3];
  if (result)
  {
    v4 = result;
    v5 = [result longLongValue];
    CFRelease(v4);
    return v5;
  }

  return result;
}

- (unsigned)_BOOLeanForProperty:(__CFString *)a3 propertyString:(id)a4
{
  v4 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3 propertyString:a4];
  if (v4)
  {
    v5 = v4;
    Value = CFBooleanGetValue(v4);
    CFRelease(v5);
    LOBYTE(v4) = Value;
  }

  return v4;
}

- (unsigned)_BOOLeanForProperty:(__CFString *)a3
{
  v3 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3];
  if (v3)
  {
    v4 = v3;
    Value = CFBooleanGetValue(v3);
    CFRelease(v4);
    LOBYTE(v3) = Value;
  }

  return v3;
}

- (CGSize)_sizeForProperty:(__CFString *)a3 defaultValue:(CGSize)a4 propertyString:(id)a5
{
  height = a4.height;
  width = a4.width;
  v11 = a4;
  v7 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3 propertyString:a5];
  if (v7)
  {
    v8 = v7;
    CGSizeMakeWithDictionaryRepresentation(v7, &v11);
    CFRelease(v8);
    width = v11.width;
    height = v11.height;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_sizeForProperty:(__CFString *)a3 defaultValue:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v10 = a4;
  v6 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3];
  if (v6)
  {
    v7 = v6;
    CGSizeMakeWithDictionaryRepresentation(v6, &v10);
    CFRelease(v7);
    width = v10.width;
    height = v10.height;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_sizeForProperty:(__CFString *)a3 propertyString:(id)a4
{
  [(AVFigObjectInspector *)self _sizeForProperty:a3 defaultValue:a4 propertyString:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_sizeForProperty:(__CFString *)a3
{
  [(AVFigObjectInspector *)self _sizeForProperty:a3 defaultValue:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGAffineTransform)_affineTransformForProperty:(SEL)a3 propertyString:(__CFString *)a4
{
  v6 = MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a4 propertyString:a5];
  if (result)
  {
    v9 = result;
    FigGetCGAffineTransformFrom3x3MatrixArray();

    CFRelease(v9);
  }

  return result;
}

- (CGAffineTransform)_affineTransformForProperty:(SEL)a3
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a4];
  if (result)
  {
    v8 = result;
    FigGetCGAffineTransformFrom3x3MatrixArray();

    CFRelease(v8);
  }

  return result;
}

- (id)_tollFreeBridgedObjectForProperty:(__CFString *)a3 propertyString:(id)a4
{
  v4 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3 propertyString:a4];

  return v4;
}

- (id)_tollFreeBridgedObjectForProperty:(__CFString *)a3
{
  v3 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:a3];

  return v3;
}

- (id)_nonNilArrayForProperty:(__CFString *)a3 propertyString:(id)a4
{
  result = [(AVFigObjectInspector *)self _arrayForProperty:a3 propertyString:a4];
  if (!result)
  {
    v5 = MEMORY[0x1E695DEC8];

    return [v5 array];
  }

  return result;
}

- (id)_nonNilArrayForProperty:(__CFString *)a3
{
  result = [(AVFigObjectInspector *)self _arrayForProperty:a3];
  if (!result)
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }

  return result;
}

- (id)_nonNilDictionaryForProperty:(__CFString *)a3
{
  result = [(AVFigObjectInspector *)self _dictionaryForProperty:a3];
  if (!result)
  {
    v4 = MEMORY[0x1E695DF20];

    return [v4 dictionary];
  }

  return result;
}

@end