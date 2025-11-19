@interface SKLightNode
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
- (BOOL)isEqualToNode:(id)a3;
- (SKLightNode)init;
- (SKLightNode)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAmbientColor:(UIColor *)ambientColor;
- (void)setLightColor:(UIColor *)lightColor;
- (void)setShadowColor:(UIColor *)shadowColor;
@end

@implementation SKLightNode

- (SKLightNode)init
{
  v8.receiver = self;
  v8.super_class = SKLightNode;
  v2 = [(SKNode *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(SKLightNode *)v2 commonInit];
    [(SKLightNode *)v3 setEnabled:1];
    v4 = [MEMORY[0x277D75348] whiteColor];
    [(SKLightNode *)v3 setLightColor:v4];

    v5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
    [(SKLightNode *)v3 setShadowColor:v5];

    v6 = [MEMORY[0x277D75348] blackColor];
    [(SKLightNode *)v3 setAmbientColor:v6];

    [(SKLightNode *)v3 setFalloff:1.0];
    [(SKLightNode *)v3 setLightCategoryBitMask:1];
  }

  return v3;
}

- (SKLightNode)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = SKLightNode;
  v5 = [(SKNode *)&v35 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(SKLightNode *)v5 commonInit];
    -[SKLightNode setEnabled:](v6, "setEnabled:", [v4 decodeBoolForKey:@"enabled"]);
    [v4 decodeDoubleForKey:@"lightDecay"];
    [(SKLightNode *)v6 setLightDecay:?];
    v7 = MEMORY[0x277D75348];
    [v4 decodeDoubleForKey:@"lightColor.redComponent"];
    v9 = v8;
    [v4 decodeDoubleForKey:@"lightColor.greenComponent"];
    v11 = v10;
    [v4 decodeDoubleForKey:@"lightColor.blueComponent"];
    v13 = v12;
    [v4 decodeDoubleForKey:@"lightColor.alphaComponent"];
    v15 = [v7 colorWithRed:v9 green:v11 blue:v13 alpha:v14];
    [(SKLightNode *)v6 setLightColor:v15];

    v16 = MEMORY[0x277D75348];
    [v4 decodeDoubleForKey:@"ambientColor.redComponent"];
    v18 = v17;
    [v4 decodeDoubleForKey:@"ambientColor.greenComponent"];
    v20 = v19;
    [v4 decodeDoubleForKey:@"ambientColor.blueComponent"];
    v22 = v21;
    [v4 decodeDoubleForKey:@"ambientColor.alphaComponent"];
    v24 = [v16 colorWithRed:v18 green:v20 blue:v22 alpha:v23];
    [(SKLightNode *)v6 setAmbientColor:v24];

    v25 = MEMORY[0x277D75348];
    [v4 decodeDoubleForKey:@"shadowColor.redComponent"];
    v27 = v26;
    [v4 decodeDoubleForKey:@"shadowColor.greenComponent"];
    v29 = v28;
    [v4 decodeDoubleForKey:@"shadowColor.blueComponent"];
    v31 = v30;
    [v4 decodeDoubleForKey:@"shadowColor.alphaComponent"];
    v33 = [v25 colorWithRed:v27 green:v29 blue:v31 alpha:v32];
    [(SKLightNode *)v6 setShadowColor:v33];

    -[SKLightNode setLightCategoryBitMask:](v6, "setLightCategoryBitMask:", [v4 decodeInt32ForKey:@"lightCategoryBitMask"]);
  }

  return v6;
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v23.receiver = self;
      v23.super_class = SKLightNode;
      if ([(SKNode *)&v23 isEqualToNode:v5]&& (v6 = [(SKLightNode *)self isEnabled], v6 == [(SKLightNode *)v5 isEnabled]) && (v7 = [(SKLightNode *)self categoryBitMask], v7 == [(SKLightNode *)v5 categoryBitMask]))
      {
        v8 = [(SKLightNode *)self ambientColor];
        v9 = [v8 CGColor];
        v10 = [(SKLightNode *)v5 ambientColor];
        if (CGColorEqualToColor(v9, [v10 CGColor]))
        {
          v11 = [(SKLightNode *)self lightColor];
          v12 = [v11 CGColor];
          v13 = [(SKLightNode *)v5 lightColor];
          if (CGColorEqualToColor(v12, [v13 CGColor]))
          {
            v14 = [(SKLightNode *)self shadowColor];
            v15 = [v14 CGColor];
            v16 = [(SKLightNode *)v5 shadowColor];
            if (CGColorEqualToColor(v15, [v16 CGColor]))
            {
              [(SKLightNode *)self falloff];
              v18 = v17;
              [(SKLightNode *)v5 falloff];
              v19 = v18;
              *&v20 = v20;
              v21 = (COERCE_UNSIGNED_INT(v19 - *&v20) & 0x60000000) == 0;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SKLightNode;
  [(SKNode *)&v32 encodeWithCoder:v4];
  [v4 encodeBool:-[SKLightNode isEnabled](self forKey:{"isEnabled"), @"enabled"}];
  [(SKLightNode *)self lightDecay];
  [v4 encodeDouble:@"lightDecay" forKey:?];
  v5 = [(SKLightNode *)self lightColor];
  [v5 componentRGBA];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 encodeDouble:@"lightColor.redComponent" forKey:v7];
  [v4 encodeDouble:@"lightColor.greenComponent" forKey:v9];
  [v4 encodeDouble:@"lightColor.blueComponent" forKey:v11];
  [v4 encodeDouble:@"lightColor.alphaComponent" forKey:v13];
  v14 = [(SKLightNode *)self ambientColor];
  [v14 componentRGBA];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v4 encodeDouble:@"ambientColor.redComponent" forKey:v16];
  [v4 encodeDouble:@"ambientColor.greenComponent" forKey:v18];
  [v4 encodeDouble:@"ambientColor.blueComponent" forKey:v20];
  [v4 encodeDouble:@"ambientColor.alphaComponent" forKey:v22];
  v23 = [(SKLightNode *)self shadowColor];
  [v23 componentRGBA];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v4 encodeDouble:@"shadowColor.redComponent" forKey:v25];
  [v4 encodeDouble:@"shadowColor.greenComponent" forKey:v27];
  [v4 encodeDouble:@"shadowColor.blueComponent" forKey:v29];
  [v4 encodeDouble:@"shadowColor.alphaComponent" forKey:v31];
  [v4 encodeInt32:-[SKLightNode lightCategoryBitMask](self forKey:{"lightCategoryBitMask"), @"lightCategoryBitMask"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SKLightNode;
  v4 = [(SKNode *)&v9 copyWithZone:a3];
  [v4 setLightCategoryBitMask:{-[SKLightNode lightCategoryBitMask](self, "lightCategoryBitMask")}];
  v5 = [(SKLightNode *)self lightColor];
  [v4 setLightColor:v5];

  v6 = [(SKLightNode *)self ambientColor];
  [v4 setAmbientColor:v6];

  v7 = [(SKLightNode *)self shadowColor];
  [v4 setShadowColor:v7];

  [v4 setEnabled:{-[SKLightNode isEnabled](self, "isEnabled")}];
  [(SKLightNode *)self lightDecay];
  [v4 setLightDecay:?];
  return v4;
}

- (void)setLightColor:(UIColor *)lightColor
{
  v4 = lightColor;
  skcLightNode = self->_skcLightNode;
  v7 = v4;
  [(UIColor *)v4 vectorRGBA];
  skcLightNode[37] = v6;
}

- (void)setAmbientColor:(UIColor *)ambientColor
{
  v4 = ambientColor;
  skcLightNode = self->_skcLightNode;
  v7 = v4;
  [(UIColor *)v4 vectorRGBA];
  skcLightNode[38] = v6;
}

- (void)setShadowColor:(UIColor *)shadowColor
{
  v4 = shadowColor;
  skcLightNode = self->_skcLightNode;
  v7 = v4;
  [(UIColor *)v4 vectorRGBA];
  skcLightNode[39] = v6;
}

+ (id)debugHierarchyPropertyDescriptions
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"ambientColor");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"color");
  v12[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"categoryBitMask");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"unsigned long");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v5, @"propertyFormat", @"ul");
  v12[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"enabled");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v6, @"propertyFormat", @"b");
  v12[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"falloff");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v7, @"propertyFormat", @"CGf");
  v12[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"lightColor");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v8, @"propertyFormat", @"color");
  v12[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"shadowColor");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v9, @"propertyFormat", @"color");
  v12[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  return v10;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v85[3] = *MEMORY[0x277D85DE8];
  v81 = a3;
  v82 = a4;
  if ([v81 isEqualToString:@"ambientColor"])
  {
    v8 = [v82 ambientColor];
    v9 = [v8 CGColor];
    if (v9)
    {
      theDict = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      ColorSpace = CGColorGetColorSpace(v9);
      v11 = CGColorSpaceCopyName(ColorSpace);
      NumberOfComponents = CGColorGetNumberOfComponents(v9);
      v13 = NumberOfComponents << 32;
      v14 = NumberOfComponents;
      if (NumberOfComponents << 32)
      {
        Mutable = CFStringCreateMutable(0, 0);
        v79 = v8;
        v16 = v11;
        v17 = ColorSpace;
        v18 = v14 - 1;
        if (v14 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v14;
        }

        do
        {
          CFStringAppend(Mutable, @"CGf");
          if (v18)
          {
            CFStringAppend(Mutable, @", ");
          }

          --v18;
          --v19;
        }

        while (v19);
        ColorSpace = v17;
        v11 = v16;
        v8 = v79;
      }

      else
      {
        Mutable = &stru_282E190D8;
      }

      Components = CGColorGetComponents(v9);
      v42 = malloc_type_malloc(v13 >> 29, 0x6004044C4A2DFuLL);
      v43 = v42;
      if (v13)
      {
        if (v14 <= 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = v14;
        }

        v45 = v42;
        do
        {
          *v45++ = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
          --v44;
        }

        while (v44);
      }

      v46 = CFArrayCreate(0, v43, v14, MEMORY[0x277CBF128]);
      if (v13)
      {
        if (v14 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v14;
        }

        v48 = v43;
        do
        {
          CFRelease(*v48++);
          --v47;
        }

        while (v47);
      }

      free(v43);
      CGColorSpaceGetModel(ColorSpace);
      if (v46)
      {
        CFDictionaryAddValue(theDict, @"componentValues", v46);
      }

      if (Mutable)
      {
        CFDictionaryAddValue(theDict, @"componentValuesFormat", Mutable);
      }

      if (v11)
      {
        CFDictionaryAddValue(theDict, @"colorSpaceName", v11);
      }

      if (v46)
      {
        CFRelease(v46);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (!Mutable)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

LABEL_31:
    theDict = 0;
LABEL_113:

    goto LABEL_114;
  }

  if ([v81 isEqualToString:@"lightColor"])
  {
    v8 = [v82 lightColor];
    v20 = [v8 CGColor];
    if (!v20)
    {
      goto LABEL_31;
    }

    theDict = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    v21 = CGColorGetColorSpace(v20);
    v22 = CGColorSpaceCopyName(v21);
    v23 = CGColorGetNumberOfComponents(v20);
    v24 = v23 << 32;
    v25 = v23;
    if (v23 << 32)
    {
      Mutable = CFStringCreateMutable(0, 0);
      v80 = v8;
      v26 = v22;
      v27 = v21;
      v28 = v25 - 1;
      if (v25 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v25;
      }

      do
      {
        CFStringAppend(Mutable, @"CGf");
        if (v28)
        {
          CFStringAppend(Mutable, @", ");
        }

        --v28;
        --v29;
      }

      while (v29);
      v21 = v27;
      v22 = v26;
      v8 = v80;
    }

    else
    {
      Mutable = &stru_282E190D8;
    }

    v49 = CGColorGetComponents(v20);
    v50 = malloc_type_malloc(v24 >> 29, 0x6004044C4A2DFuLL);
    v51 = v50;
    if (v24)
    {
      if (v25 <= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = v25;
      }

      v53 = v50;
      do
      {
        *v53++ = CFNumberCreate(0, kCFNumberCGFloatType, v49++);
        --v52;
      }

      while (v52);
    }

    v54 = CFArrayCreate(0, v51, v25, MEMORY[0x277CBF128]);
    if (v24)
    {
      if (v25 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v25;
      }

      v56 = v51;
      do
      {
        CFRelease(*v56++);
        --v55;
      }

      while (v55);
    }

    free(v51);
    CGColorSpaceGetModel(v21);
    if (v54)
    {
      CFDictionaryAddValue(theDict, @"componentValues", v54);
    }

    if (Mutable)
    {
      CFDictionaryAddValue(theDict, @"componentValuesFormat", Mutable);
    }

    if (v22)
    {
      CFDictionaryAddValue(theDict, @"colorSpaceName", v22);
    }

    if (v54)
    {
      CFRelease(v54);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (!Mutable)
    {
      goto LABEL_113;
    }

LABEL_112:
    CFRelease(Mutable);
    goto LABEL_113;
  }

  if ([v81 isEqualToString:@"shadowColor"])
  {
    v8 = [v82 shadowColor];
    v30 = [v8 CGColor];
    if (!v30)
    {
      goto LABEL_31;
    }

    theDict = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    v31 = CGColorGetColorSpace(v30);
    v32 = CGColorSpaceCopyName(v31);
    v33 = CGColorGetNumberOfComponents(v30);
    v34 = v33 << 32;
    v35 = v33;
    if (v33 << 32)
    {
      Mutable = CFStringCreateMutable(0, 0);
      v36 = v35 - 1;
      if (v35 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v35;
      }

      do
      {
        CFStringAppend(Mutable, @"CGf");
        if (v36)
        {
          CFStringAppend(Mutable, @", ");
        }

        --v36;
        --v37;
      }

      while (v37);
    }

    else
    {
      Mutable = &stru_282E190D8;
    }

    v61 = CGColorGetComponents(v30);
    v62 = malloc_type_malloc(v34 >> 29, 0x6004044C4A2DFuLL);
    v63 = v62;
    if (v34)
    {
      if (v35 <= 1)
      {
        v64 = 1;
      }

      else
      {
        v64 = v35;
      }

      v65 = v62;
      do
      {
        *v65++ = CFNumberCreate(0, kCFNumberCGFloatType, v61++);
        --v64;
      }

      while (v64);
    }

    v66 = CFArrayCreate(0, v63, v35, MEMORY[0x277CBF128]);
    if (v34)
    {
      if (v35 <= 1)
      {
        v67 = 1;
      }

      else
      {
        v67 = v35;
      }

      v68 = v63;
      do
      {
        CFRelease(*v68++);
        --v67;
      }

      while (v67);
    }

    free(v63);
    CGColorSpaceGetModel(v31);
    if (v66)
    {
      CFDictionaryAddValue(theDict, @"componentValues", v66);
    }

    if (Mutable)
    {
      CFDictionaryAddValue(theDict, @"componentValuesFormat", Mutable);
    }

    if (v32)
    {
      CFDictionaryAddValue(theDict, @"colorSpaceName", v32);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (!Mutable)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  v38 = v82;
  v39 = v81;
  if (![v39 length])
  {
    goto LABEL_122;
  }

  NSSelectorFromString(v39);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v39 length] < 2)
    {
      v60 = [v39 uppercaseString];
    }

    else
    {
      v57 = [v39 substringToIndex:1];
      v58 = [v57 uppercaseString];
      v59 = [v39 substringFromIndex:1];
      v60 = [v58 stringByAppendingString:v59];
    }

    v70 = [@"is" stringByAppendingString:v60];
    NSSelectorFromString(v70);
    if (objc_opt_respondsToSelector())
    {
      v40 = v70;
    }

    else
    {
      v40 = 0;
    }

    if (v40)
    {
      goto LABEL_35;
    }

LABEL_122:
    if (a6)
    {
      v71 = v38;
      v72 = v39;
      if (v71)
      {
        v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v71];
      }

      else
      {
        v73 = &stru_282E190D8;
      }

      if (v72)
      {
        v74 = v72;
      }

      else
      {
        v74 = &stru_282E190D8;
      }

      v75 = v74;
      v84[0] = @"propertyName";
      v84[1] = @"objectDescription";
      v85[0] = v75;
      v85[1] = v73;
      v84[2] = @"errorDescription";
      v85[2] = &stru_282E190D8;
      v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
      v77 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v76];

      v78 = v77;
      *a6 = v77;
    }

    v40 = 0;
    theDict = 0;
    goto LABEL_131;
  }

  v40 = v39;
  if (!v40)
  {
    goto LABEL_122;
  }

LABEL_35:
  theDict = [v38 valueForKey:v40];
LABEL_131:

LABEL_114:

  return theDict;
}

@end