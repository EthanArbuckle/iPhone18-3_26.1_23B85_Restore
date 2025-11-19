@interface NSObject(AXPropertyListCoersion)
- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion;
- (uint64_t)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:()AXPropertyListCoersion;
@end

@implementation NSObject(AXPropertyListCoersion)

- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:()AXPropertyListCoersion
{
  v34 = *MEMORY[0x1E69E9840];
  if (smugglingDictionaryForCoreFoundationObject_onceToken != -1)
  {
    [NSObject(AXPropertyListCoersion) _axRecursivelyPropertyListCoercedRepresentationWithError:];
  }

  v5 = CFGetTypeID(cf);
  if (v5 == smugglingDictionaryForCoreFoundationObject_CFBooleanTypeID)
  {
    *&valuePtr = AXSerializeSmuggledTypeCFBoolean;
    v31 = @"SmugType";
    v32 = @"Value";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:CFBooleanGetValue(cf)];
    *(&valuePtr + 1) = v6;
LABEL_5:
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&valuePtr forKeys:&v31 count:2];
    goto LABEL_6;
  }

  if (v5 == smugglingDictionaryForCoreFoundationObject_CFUUIDTypeID)
  {
    v8 = smugglingDictionaryForCFUUID(cf);
    goto LABEL_10;
  }

  if (v5 == smugglingDictionaryForCoreFoundationObject_AXUIElementTypeID)
  {
    v9 = *(cf + 20);
    v10 = *(cf + 28);
    LODWORD(v26) = bswap32(*(cf + 4));
    v27 = bswap64(v10);
    v28 = bswap64(v9);
    v6 = [MEMORY[0x1E695DF88] data];
    [v6 appendBytes:&v26 length:4];
    [v6 appendBytes:&v28 length:8];
    [v6 appendBytes:&v27 length:8];
    v31 = @"SmugType";
    v32 = @"Value";
    *&valuePtr = AXSerializeSmuggledTypeAXUIElement;
    *(&valuePtr + 1) = v6;
    goto LABEL_5;
  }

  if (v5 == smugglingDictionaryForCoreFoundationObject_AXValueTypeID)
  {
    Type = AXValueGetType(cf);
    v6 = [MEMORY[0x1E695DF88] data];
    if (Type <= 2)
    {
      if (Type == 1)
      {
        valuePtr = 0uLL;
        v23 = cf;
        v24 = kAXValueTypeCGPoint;
      }

      else
      {
        if (Type != 2)
        {
          goto LABEL_46;
        }

        valuePtr = 0uLL;
        v23 = cf;
        v24 = kAXValueTypeCGSize;
      }
    }

    else
    {
      if (Type == 3)
      {
        valuePtr = 0u;
        v30 = 0u;
        AXValueGetValue(cf, kAXValueTypeCGRect, &valuePtr);
        v31 = bswap64(valuePtr);
        v27 = bswap64(v30);
        v28 = bswap64(*(&valuePtr + 1));
        v26 = bswap64(*(&v30 + 1));
        [v6 appendBytes:&v31 length:8];
        [v6 appendBytes:&v28 length:8];
        [v6 appendBytes:&v27 length:8];
        v13 = &v26;
LABEL_44:
        v14 = v6;
        v15 = 8;
        goto LABEL_45;
      }

      if (Type != 4)
      {
        if (Type == 5)
        {
          LODWORD(valuePtr) = 0;
          AXValueGetValue(cf, kAXValueTypeAXError, &valuePtr);
          LODWORD(v31) = bswap32(valuePtr);
          v13 = &v31;
          v14 = v6;
          v15 = 4;
LABEL_45:
          [v14 appendBytes:v13 length:v15];
        }

LABEL_46:
        v22 = AXSerializeSmuggledTypeAXValue;
LABEL_47:
        *&valuePtr = v22;
        v31 = @"SmugType";
        v32 = @"ValueType";
        v25 = [MEMORY[0x1E696AD98] numberWithInt:Type];
        v33 = @"Value";
        *(&valuePtr + 1) = v25;
        *&v30 = v6;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&valuePtr forKeys:&v31 count:3];

LABEL_6:
        if (v7)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      valuePtr = 0uLL;
      v23 = cf;
      v24 = kAXValueTypeCFRange;
    }

    AXValueGetValue(v23, v24, &valuePtr);
    v31 = bswap64(valuePtr);
    v28 = bswap64(*(&valuePtr + 1));
    [v6 appendBytes:&v31 length:8];
    v13 = &v28;
    goto LABEL_44;
  }

  if (v5 != smugglingDictionaryForCoreFoundationObject_CGColorTypeID)
  {
    if (v5 == smugglingDictionaryForCoreFoundationObject_CGPathTypeID)
    {
      v8 = smugglingDictionaryForCGPath(cf);
    }

    else if (v5 == smugglingDictionaryForCoreFoundationObject_CTFontTypeID)
    {
      v8 = smugglingDictionaryForCTFont(cf, a3);
    }

    else if (v5 == smugglingDictionaryForCoreFoundationObject_CFNullTypeID)
    {
      v8 = smugglingDictionaryForCFNull();
    }

    else
    {
      if (v5 != smugglingDictionaryForCoreFoundationObject_CFURLTypeID)
      {
        goto LABEL_11;
      }

      v8 = smugglingDictionaryForCFURL(cf);
    }

LABEL_10:
    v7 = v8;
    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  ColorSpace = CGColorGetColorSpace(cf);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model < 3)
  {
    Type = Model;
    NumberOfComponents = CGColorGetNumberOfComponents(cf);
    v6 = [MEMORY[0x1E695DF88] data];
    Components = CGColorGetComponents(cf);
    if (NumberOfComponents)
    {
      v20 = Components;
      do
      {
        v21 = *v20++;
        *&valuePtr = bswap64(v21);
        [v6 appendBytes:&valuePtr length:8];
        --NumberOfComponents;
      }

      while (NumberOfComponents);
    }

    v22 = AXSerializeSmuggledTypeCGColor;
    goto LABEL_47;
  }

  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:3 userInfo:0];
  }

LABEL_11:
  if (*a3)
  {
    v7 = 0;
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
    *a3 = v7 = 0;
  }

LABEL_16:

  return v7;
}

- (uint64_t)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:()AXPropertyListCoersion
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
  }

  return 0;
}

@end