@interface SKEffectNode
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
- (BOOL)isEqualToNode:(id)a3;
- (NSString)description;
- (SKAttributeValue)valueForAttributeNamed:(NSString *)key;
- (SKEffectNode)init;
- (SKEffectNode)initWithCoder:(id)a3;
- (void)_didMakeBackingNode;
- (void)_flippedChangedFrom:(BOOL)a3 to:(BOOL)a4;
- (void)_scaleFactorChangedFrom:(float)a3 to:(float)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setFilter:(CIFilter *)filter;
- (void)setShader:(SKShader *)shader;
- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key;
@end

@implementation SKEffectNode

- (SKEffectNode)init
{
  v5.receiver = self;
  v5.super_class = SKEffectNode;
  v2 = [(SKNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKEffectNode *)v2 setShouldEnableEffects:1];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SKEffectNode;
  [(SKNode *)&v11 encodeWithCoder:v4];
  v5 = [(SKEffectNode *)self filter];
  [v4 encodeObject:v5 forKey:@"_filter"];

  v6 = [(SKEffectNode *)self shader];
  [v4 encodeObject:v6 forKey:@"_shader"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKEffectNode shouldRasterize](self, "shouldRasterize")}];
  [v4 encodeObject:v7 forKey:@"_shouldRasterize"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKEffectNode shouldEnableEffects](self, "shouldEnableEffects")}];
  [v4 encodeObject:v8 forKey:@"_shouldEnableEffects"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKEffectNode shouldCenterFilter](self, "shouldCenterFilter")}];
  [v4 encodeObject:v9 forKey:@"_shouldCenterFilter"];

  v10 = [MEMORY[0x277CCABB0] numberWithLong:{-[SKEffectNode blendMode](self, "blendMode")}];
  [v4 encodeObject:v10 forKey:@"_blendMode"];
}

- (SKEffectNode)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SKEffectNode;
  v5 = [(SKNode *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_blendMode"];
    -[SKEffectNode setBlendMode:](v5, "setBlendMode:", [v6 intValue]);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_filter"];
    [(SKEffectNode *)v5 setFilter:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shouldCenterFilter"];
    -[SKEffectNode setShouldCenterFilter:](v5, "setShouldCenterFilter:", [v8 BOOLValue]);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shouldEnableEffects"];
    -[SKEffectNode setShouldEnableEffects:](v5, "setShouldEnableEffects:", [v9 BOOLValue]);

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shouldRasterize"];
    -[SKEffectNode setShouldRasterize:](v5, "setShouldRasterize:", [v10 BOOLValue]);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shader"];
    [(SKEffectNode *)v5 setShader:v11];
  }

  return v5;
}

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKEffectNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcEffectNode = [(SKNode *)self _backingNode];
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(SKNode *)self name];
  if ([(SKEffectNode *)self shouldEnableEffects])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(SKEffectNode *)self filter];
  if (v7)
  {
    v2 = [(SKEffectNode *)self filter];
    v8 = [v2 name];
  }

  else
  {
    v8 = @"nil";
  }

  [(SKNode *)self position];
  v9 = NSStringFromCGPoint(v14);
  [(SKNode *)self calculateAccumulatedFrame];
  v10 = NSStringFromCGRect(v15);
  v11 = [v4 stringWithFormat:@"<SKEffectNode> name:'%@' shouldEnableEffects:'%@' filter:'%@' position:%@ accumulatedFrame:%@", v5, v6, v8, v9, v10];

  if (v7)
  {
  }

  return v11;
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v14.receiver = self;
      v14.super_class = SKEffectNode;
      if ([(SKNode *)&v14 isEqualToNode:v5]&& (v6 = [(SKEffectNode *)self shouldEnableEffects], v6 == [(SKEffectNode *)v5 shouldEnableEffects]))
      {
        v8 = [(SKEffectNode *)self filter];
        v9 = [(SKEffectNode *)v5 filter];
        if (v8 == v9 && (v10 = [(SKEffectNode *)self shouldCenterFilter], v10 == [(SKEffectNode *)v5 shouldCenterFilter]) && (v11 = [(SKEffectNode *)self blendMode], v11 == [(SKEffectNode *)v5 blendMode]))
        {
          v12 = [(SKEffectNode *)self shouldRasterize];
          v7 = v12 ^ [(SKEffectNode *)v5 shouldRasterize]^ 1;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)setFilter:(CIFilter *)filter
{
  objc_storeStrong(self->_skcEffectNode + 70, filter);
  v5 = filter;
  SKCNode::setDirty(self->_skcEffectNode);
}

- (void)_scaleFactorChangedFrom:(float)a3 to:(float)a4
{
  v4.receiver = self;
  v4.super_class = SKEffectNode;
  [SKNode _scaleFactorChangedFrom:sel__scaleFactorChangedFrom_to_ to:?];
}

- (void)_flippedChangedFrom:(BOOL)a3 to:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SKEffectNode;
  [(SKNode *)&v4 _flippedChangedFrom:a3 to:a4];
}

- (void)setShader:(SKShader *)shader
{
  v5 = shader;
  objc_storeStrong(self->_skcEffectNode + 72, shader);
  SKCNode::setDirty(self->_skcEffectNode);
  SKCNode::recomputeFlags(self->_skcEffectNode, 1);
  [(SKShader *)v5 _addTargetNode:self];
}

- (SKAttributeValue)valueForAttributeNamed:(NSString *)key
{
  v5.receiver = self;
  v5.super_class = SKEffectNode;
  v3 = [(SKNode *)&v5 valueForAttributeNamed:key];

  return v3;
}

- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key
{
  v4.receiver = self;
  v4.super_class = SKEffectNode;
  [(SKNode *)&v4 setValue:value forAttributeNamed:key];
}

+ (id)debugHierarchyPropertyDescriptions
{
  v13[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"attributeValues");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"objectInfo");
  v13[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"filter");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v5, @"propertyFormat", @"objectInfo");
  v13[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"shouldCenterFilter");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v6, @"propertyFormat", @"b");
  v13[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"shouldEnableEffects");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v7, @"propertyFormat", @"b");
  v13[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"shouldRasterize");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v8, @"propertyFormat", @"b");
  v13[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"shader");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v9, @"propertyFormat", @"objectInfo");
  v13[5] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v10, @"propertyName", @"blendMode");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"SKBlendMode");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v10, @"propertyFormat", @"uinteger");
  v13[6] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:7];

  return v11;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v27[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (![v10 length])
  {
    goto LABEL_12;
  }

  NSSelectorFromString(v10);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v10 length] < 2)
    {
      v15 = [v10 uppercaseString];
    }

    else
    {
      v12 = [v10 substringToIndex:1];
      v13 = [v12 uppercaseString];
      v14 = [v10 substringFromIndex:1];
      v15 = [v13 stringByAppendingString:v14];
    }

    v16 = [@"is" stringByAppendingString:v15];
    NSSelectorFromString(v16);
    if (objc_opt_respondsToSelector())
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_12:
    if (a6)
    {
      v17 = v9;
      v18 = v10;
      if (v17)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v17];
      }

      else
      {
        v19 = &stru_282E190D8;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = &stru_282E190D8;
      }

      v21 = v20;
      v26[0] = @"propertyName";
      v26[1] = @"objectDescription";
      v27[0] = v21;
      v27[1] = v19;
      v26[2] = @"errorDescription";
      v27[2] = &stru_282E190D8;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v22];

      v24 = v23;
      *a6 = v23;

      v11 = 0;
      a6 = 0;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  v11 = v10;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  a6 = [v9 valueForKey:v11];
LABEL_21:

  return a6;
}

@end