@interface AVFigObjectInspector
- ($2FE3C3292E52C4A5B67D27538456EAD9)_timeRangeForProperty:(SEL)property;
- ($2FE3C3292E52C4A5B67D27538456EAD9)_timeRangeForProperty:(SEL)property propertyString:(__CFString *)string;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)property;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)property defaultValue:(__CFString *)value;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)property defaultValue:(__CFString *)value propertyString:(id *)string;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)property propertyString:(__CFString *)string;
- (CGAffineTransform)_affineTransformForProperty:(SEL)property;
- (CGAffineTransform)_affineTransformForProperty:(SEL)property propertyString:(__CFString *)string;
- (CGSize)_sizeForProperty:(__CFString *)property;
- (CGSize)_sizeForProperty:(__CFString *)property defaultValue:(CGSize)value;
- (CGSize)_sizeForProperty:(__CFString *)property defaultValue:(CGSize)value propertyString:(id)string;
- (CGSize)_sizeForProperty:(__CFString *)property propertyString:(id)string;
- (float)_floatForProperty:(__CFString *)property defaultValue:(float)value;
- (float)_floatForProperty:(__CFString *)property defaultValue:(float)value propertyString:(id)string;
- (id)_nonNilArrayForProperty:(__CFString *)property;
- (id)_nonNilArrayForProperty:(__CFString *)property propertyString:(id)string;
- (id)_nonNilDictionaryForProperty:(__CFString *)property;
- (id)_tollFreeBridgedObjectForProperty:(__CFString *)property;
- (id)_tollFreeBridgedObjectForProperty:(__CFString *)property propertyString:(id)string;
- (int)_SInt32ForProperty:(__CFString *)property defaultValue:(int)value;
- (int)_SInt32ForProperty:(__CFString *)property defaultValue:(int)value propertyString:(id)string;
- (int64_t)_longLongForProperty:(__CFString *)property;
- (int64_t)_longLongForProperty:(__CFString *)property propertyString:(id)string;
- (signed)_SInt16ForProperty:(__CFString *)property;
- (unsigned)_BOOLeanForProperty:(__CFString *)property;
- (unsigned)_BOOLeanForProperty:(__CFString *)property propertyString:(id)string;
- (void)_valueAsCFTypeForProperty:(__CFString *)property;
- (void)_valueAsCFTypeForProperty:(__CFString *)property propertyString:(id)string;
@end

@implementation AVFigObjectInspector

- (void)_valueAsCFTypeForProperty:(__CFString *)property propertyString:(id)string
{
  v6 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v6);
  return 0;
}

- (void)_valueAsCFTypeForProperty:(__CFString *)property
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)property defaultValue:(__CFString *)value propertyString:(id *)string
{
  *retstr = *string;
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:value propertyString:a6];
  if (result)
  {
    v8 = result;
    CMTimeMakeFromDictionary(retstr, result);

    CFRelease(v8);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)property defaultValue:(__CFString *)value
{
  *retstr = *a5;
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:value];
  if (result)
  {
    v7 = result;
    CMTimeMakeFromDictionary(retstr, result);

    CFRelease(v7);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)property propertyString:(__CFString *)string
{
  if (self)
  {
    v5 = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _timeForProperty:string defaultValue:&v5 propertyString:a5];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeForProperty:(SEL)property
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

- ($2FE3C3292E52C4A5B67D27538456EAD9)_timeRangeForProperty:(SEL)property propertyString:(__CFString *)string
{
  v6 = MEMORY[0x1E6960C98];
  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = *(v6 + 32);
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:string propertyString:a5];
  if (result)
  {
    v9 = result;
    CMTimeRangeMakeFromDictionary(retstr, result);

    CFRelease(v9);
  }

  return result;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)_timeRangeForProperty:(SEL)property
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

- (float)_floatForProperty:(__CFString *)property defaultValue:(float)value propertyString:(id)string
{
  valueCopy = value;
  valuePtr = value;
  v6 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property propertyString:string];
  if (v6)
  {
    v7 = v6;
    CFNumberGetValue(v6, kCFNumberFloat32Type, &valuePtr);
    CFRelease(v7);
    return valuePtr;
  }

  return valueCopy;
}

- (float)_floatForProperty:(__CFString *)property defaultValue:(float)value
{
  valueCopy = value;
  valuePtr = value;
  v5 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property];
  if (v5)
  {
    v6 = v5;
    CFNumberGetValue(v5, kCFNumberFloat32Type, &valuePtr);
    CFRelease(v6);
    return valuePtr;
  }

  return valueCopy;
}

- (signed)_SInt16ForProperty:(__CFString *)property
{
  valuePtr = 0;
  v3 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFNumberGetValue(v3, kCFNumberSInt16Type, &valuePtr);
  CFRelease(v4);
  return valuePtr;
}

- (int)_SInt32ForProperty:(__CFString *)property defaultValue:(int)value propertyString:(id)string
{
  valueCopy = value;
  valuePtr = value;
  v6 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property propertyString:string];
  if (v6)
  {
    v7 = v6;
    CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v7);
    return valuePtr;
  }

  return valueCopy;
}

- (int)_SInt32ForProperty:(__CFString *)property defaultValue:(int)value
{
  valueCopy = value;
  valuePtr = value;
  v5 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property];
  if (v5)
  {
    v6 = v5;
    CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v6);
    return valuePtr;
  }

  return valueCopy;
}

- (int64_t)_longLongForProperty:(__CFString *)property propertyString:(id)string
{
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property propertyString:string];
  if (result)
  {
    v5 = result;
    longLongValue = [result longLongValue];
    CFRelease(v5);
    return longLongValue;
  }

  return result;
}

- (int64_t)_longLongForProperty:(__CFString *)property
{
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property];
  if (result)
  {
    v4 = result;
    longLongValue = [result longLongValue];
    CFRelease(v4);
    return longLongValue;
  }

  return result;
}

- (unsigned)_BOOLeanForProperty:(__CFString *)property propertyString:(id)string
{
  v4 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property propertyString:string];
  if (v4)
  {
    v5 = v4;
    Value = CFBooleanGetValue(v4);
    CFRelease(v5);
    LOBYTE(v4) = Value;
  }

  return v4;
}

- (unsigned)_BOOLeanForProperty:(__CFString *)property
{
  v3 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property];
  if (v3)
  {
    v4 = v3;
    Value = CFBooleanGetValue(v3);
    CFRelease(v4);
    LOBYTE(v3) = Value;
  }

  return v3;
}

- (CGSize)_sizeForProperty:(__CFString *)property defaultValue:(CGSize)value propertyString:(id)string
{
  height = value.height;
  width = value.width;
  valueCopy = value;
  v7 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property propertyString:string];
  if (v7)
  {
    v8 = v7;
    CGSizeMakeWithDictionaryRepresentation(v7, &valueCopy);
    CFRelease(v8);
    width = valueCopy.width;
    height = valueCopy.height;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_sizeForProperty:(__CFString *)property defaultValue:(CGSize)value
{
  height = value.height;
  width = value.width;
  valueCopy = value;
  v6 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property];
  if (v6)
  {
    v7 = v6;
    CGSizeMakeWithDictionaryRepresentation(v6, &valueCopy);
    CFRelease(v7);
    width = valueCopy.width;
    height = valueCopy.height;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_sizeForProperty:(__CFString *)property propertyString:(id)string
{
  [(AVFigObjectInspector *)self _sizeForProperty:property defaultValue:string propertyString:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_sizeForProperty:(__CFString *)property
{
  [(AVFigObjectInspector *)self _sizeForProperty:property defaultValue:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGAffineTransform)_affineTransformForProperty:(SEL)property propertyString:(__CFString *)string
{
  v6 = MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
  result = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:string propertyString:a5];
  if (result)
  {
    v9 = result;
    FigGetCGAffineTransformFrom3x3MatrixArray();

    CFRelease(v9);
  }

  return result;
}

- (CGAffineTransform)_affineTransformForProperty:(SEL)property
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

- (id)_tollFreeBridgedObjectForProperty:(__CFString *)property propertyString:(id)string
{
  v4 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property propertyString:string];

  return v4;
}

- (id)_tollFreeBridgedObjectForProperty:(__CFString *)property
{
  v3 = [(AVFigObjectInspector *)self _valueAsCFTypeForProperty:property];

  return v3;
}

- (id)_nonNilArrayForProperty:(__CFString *)property propertyString:(id)string
{
  result = [(AVFigObjectInspector *)self _arrayForProperty:property propertyString:string];
  if (!result)
  {
    v5 = MEMORY[0x1E695DEC8];

    return [v5 array];
  }

  return result;
}

- (id)_nonNilArrayForProperty:(__CFString *)property
{
  result = [(AVFigObjectInspector *)self _arrayForProperty:property];
  if (!result)
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }

  return result;
}

- (id)_nonNilDictionaryForProperty:(__CFString *)property
{
  result = [(AVFigObjectInspector *)self _dictionaryForProperty:property];
  if (!result)
  {
    v4 = MEMORY[0x1E695DF20];

    return [v4 dictionary];
  }

  return result;
}

@end