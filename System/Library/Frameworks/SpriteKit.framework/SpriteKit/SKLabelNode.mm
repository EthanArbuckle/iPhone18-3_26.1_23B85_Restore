@interface SKLabelNode
+ (SKLabelNode)labelNodeWithAttributedText:(NSAttributedString *)attributedText;
+ (SKLabelNode)labelNodeWithFontNamed:(NSString *)fontName;
+ (SKLabelNode)labelNodeWithText:(NSString *)text;
+ (id)_labelNodeWithFontNamed:(id)named;
+ (id)_labelNodeWithFontTexture:(id)texture fontDataString:(id)string;
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)Mutable;
- (BOOL)isEqualToNode:(id)node;
- (CGRect)frame;
- (SKLabelNode)init;
- (SKLabelNode)initWithCoder:(id)coder;
- (SKLabelNode)initWithFontNamed:(NSString *)fontName;
- (UIColor)color;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_didMakeBackingNode;
- (void)encodeWithCoder:(id)coder;
- (void)setColor:(UIColor *)color;
- (void)setColorBlendFactor:(CGFloat)colorBlendFactor;
- (void)setFontColor:(UIColor *)fontColor;
- (void)setFontSize:(CGFloat)fontSize;
- (void)setHorizontalAlignmentMode:(SKLabelHorizontalAlignmentMode)horizontalAlignmentMode;
- (void)setUIFont:(id)font;
- (void)setVerticalAlignmentMode:(SKLabelVerticalAlignmentMode)verticalAlignmentMode;
@end

@implementation SKLabelNode

- (void)setUIFont:(id)font
{
  fontCopy = font;
  fontName = [fontCopy fontName];
  [fontCopy pointSize];
  v6 = CTFontCreateWithName(fontName, v5, 0);

  SKCLabelNode::setFont(self->_skcLabelNode, v6);
  CFRelease(v6);
}

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKLabelNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcLabelNode = [(SKNode *)self _backingNode];
}

- (SKLabelNode)init
{
  v5.receiver = self;
  v5.super_class = SKLabelNode;
  v2 = [(SKNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKLabelNode *)v2 _initialize];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SKLabelNode;
  [(SKNode *)&v22 encodeWithCoder:coderCopy];
  fontName = [(SKLabelNode *)self fontName];
  [coderCopy encodeObject:fontName forKey:@"_fontName"];

  text = [(SKLabelNode *)self text];
  [coderCopy encodeObject:text forKey:@"_text"];

  attributedText = [(SKLabelNode *)self attributedText];
  [coderCopy encodeObject:attributedText forKey:@"_attributedText"];

  [coderCopy encodeObject:MEMORY[0x277CBEBF8] forKey:@"_textSprites"];
  [coderCopy encodeObject:0 forKey:@"_textSprite"];
  fontColor = [(SKLabelNode *)self fontColor];
  [fontColor red];
  [coderCopy encodeDouble:@"_fontColorR" forKey:?];

  fontColor2 = [(SKLabelNode *)self fontColor];
  [fontColor2 green];
  [coderCopy encodeDouble:@"_fontColorG" forKey:?];

  fontColor3 = [(SKLabelNode *)self fontColor];
  [fontColor3 blue];
  [coderCopy encodeDouble:@"_fontColorB" forKey:?];

  fontColor4 = [(SKLabelNode *)self fontColor];
  [fontColor4 alpha];
  [coderCopy encodeDouble:@"_fontColorA" forKey:?];

  color = [(SKLabelNode *)self color];
  [color red];
  [coderCopy encodeDouble:@"_colorR" forKey:?];

  color2 = [(SKLabelNode *)self color];
  [color2 green];
  [coderCopy encodeDouble:@"_colorG" forKey:?];

  color3 = [(SKLabelNode *)self color];
  [color3 blue];
  [coderCopy encodeDouble:@"_colorB" forKey:?];

  color4 = [(SKLabelNode *)self color];
  [color4 alpha];
  [coderCopy encodeDouble:@"_colorA" forKey:?];

  [(SKLabelNode *)self fontSize];
  [coderCopy encodeDouble:@"_fontSize" forKey:?];
  [(SKLabelNode *)self colorBlendFactor];
  [coderCopy encodeDouble:@"_labelColorBlend" forKey:?];
  [coderCopy encodeInteger:-[SKLabelNode blendMode](self forKey:{"blendMode"), @"_labelBlendMode"}];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:{-[SKLabelNode horizontalAlignmentMode](self, "horizontalAlignmentMode")}];
  [coderCopy encodeObject:v16 forKey:@"_horizontalAlignmentMode"];

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:{-[SKLabelNode verticalAlignmentMode](self, "verticalAlignmentMode")}];
  [coderCopy encodeObject:v17 forKey:@"_verticalAlignmentMode"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKLabelNode numberOfLines](self, "numberOfLines")}];
  [coderCopy encodeObject:v18 forKey:@"_numberOfLines"];

  v19 = MEMORY[0x277CCABB0];
  [(SKLabelNode *)self preferredMaxLayoutWidth];
  *&v20 = v20;
  v21 = [v19 numberWithFloat:v20];
  [coderCopy encodeObject:v21 forKey:@"_preferredMaxLayoutWidth"];
}

- (SKLabelNode)initWithCoder:(id)coder
{
  v42[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = SKLabelNode;
  v5 = [(SKNode *)&v41 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v42[2] = objc_opt_class();
    v42[3] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_textSprites"];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_textSprite"];
    if ([v9 count])
    {
      [(SKNode *)v5 removeChildrenInArray:v9];
    }

    if (v10 && (!v9 || ([v9 containsObject:v10] & 1) == 0))
    {
      [(SKNode *)v5 removeChild:v10];
    }

    [coderCopy decodeDoubleForKey:@"_fontSize"];
    [(SKLabelNode *)v5 setFontSize:?];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fontName"];
    [(SKLabelNode *)v5 setFontName:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    [(SKLabelNode *)v5 setText:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_attributedText"];
    [(SKLabelNode *)v5 setAttributedText:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_horizontalAlignmentMode"];
    -[SKLabelNode setHorizontalAlignmentMode:](v5, "setHorizontalAlignmentMode:", [v14 intValue]);

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_verticalAlignmentMode"];
    -[SKLabelNode setVerticalAlignmentMode:](v5, "setVerticalAlignmentMode:", [v15 intValue]);

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfLines"];
    LOBYTE(v15) = v16 == 0;

    if ((v15 & 1) == 0)
    {
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfLines"];
      -[SKLabelNode setNumberOfLines:](v5, "setNumberOfLines:", [v17 intValue]);
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredMaxLayoutWidth"];
    v19 = v18 == 0;

    if (!v19)
    {
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preferredMaxLayoutWidth"];
      [v20 floatValue];
      [(SKLabelNode *)v5 setPreferredMaxLayoutWidth:v21];
    }

    -[SKLabelNode setBlendMode:](v5, "setBlendMode:", [coderCopy decodeIntegerForKey:@"_labelBlendMode"]);
    [coderCopy decodeDoubleForKey:@"_labelColorBlend"];
    [(SKLabelNode *)v5 setColorBlendFactor:?];
    v22 = MEMORY[0x277D75348];
    [coderCopy decodeDoubleForKey:@"_fontColorR"];
    v24 = v23;
    [coderCopy decodeDoubleForKey:@"_fontColorG"];
    v26 = v25;
    [coderCopy decodeDoubleForKey:@"_fontColorB"];
    v28 = v27;
    [coderCopy decodeDoubleForKey:@"_fontColorA"];
    v30 = [v22 colorWithRed:v24 green:v26 blue:v28 alpha:v29];
    [(SKLabelNode *)v5 setFontColor:v30];

    v31 = MEMORY[0x277D75348];
    [coderCopy decodeDoubleForKey:@"_colorR"];
    v33 = v32;
    [coderCopy decodeDoubleForKey:@"_colorG"];
    v35 = v34;
    [coderCopy decodeDoubleForKey:@"_colorB"];
    v37 = v36;
    [coderCopy decodeDoubleForKey:@"_colorA"];
    v39 = [v31 colorWithRed:v33 green:v35 blue:v37 alpha:v38];
    [(SKLabelNode *)v5 setColor:v39];
  }

  return v5;
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = nodeCopy;
      v34.receiver = self;
      v34.super_class = SKLabelNode;
      if ([(SKNode *)&v34 isEqualToNode:v5])
      {
        text = [(SKLabelNode *)self text];
        text2 = [(SKLabelNode *)v5 text];
        if ([text isEqualToString:text2])
        {
          fontColor = [(SKLabelNode *)self fontColor];
          cGColor = [fontColor CGColor];
          fontColor2 = [(SKLabelNode *)v5 fontColor];
          if (CGColorEqualToColor(cGColor, [fontColor2 CGColor]))
          {
            fontName = [(SKLabelNode *)self fontName];
            fontName2 = [(SKLabelNode *)v5 fontName];
            if ([fontName isEqualToString:fontName2] && (-[SKLabelNode fontSize](self, "fontSize"), v14 = v13, -[SKLabelNode fontSize](v5, "fontSize"), v15 = v14, *&v16 = v16, (COERCE_UNSIGNED_INT(v15 - *&v16) & 0x60000000) == 0) && (v17 = -[SKLabelNode verticalAlignmentMode](self, "verticalAlignmentMode"), v17 == -[SKLabelNode verticalAlignmentMode](v5, "verticalAlignmentMode")) && (v18 = -[SKLabelNode horizontalAlignmentMode](self, "horizontalAlignmentMode"), v18 == -[SKLabelNode horizontalAlignmentMode](v5, "horizontalAlignmentMode")))
            {
              color = [(SKLabelNode *)self color];
              cGColor2 = [color CGColor];
              color2 = [(SKLabelNode *)v5 color];
              if (CGColorEqualToColor(cGColor2, [color2 CGColor]) && (-[SKLabelNode colorBlendFactor](self, "colorBlendFactor"), v21 = v20, -[SKLabelNode colorBlendFactor](v5, "colorBlendFactor"), v22 = v21, *&v23 = v23, (COERCE_UNSIGNED_INT(v22 - *&v23) & 0x60000000) == 0) && (v24 = -[SKLabelNode blendMode](self, "blendMode"), v24 == -[SKLabelNode blendMode](v5, "blendMode")) && (v25 = -[SKLabelNode numberOfLines](self, "numberOfLines"), v25 == -[SKLabelNode numberOfLines](v5, "numberOfLines")))
              {
                [(SKLabelNode *)self preferredMaxLayoutWidth];
                v27 = v26;
                [(SKLabelNode *)v5 preferredMaxLayoutWidth];
                v28 = v27;
                *&v29 = v29;
                v30 = (COERCE_UNSIGNED_INT(v28 - *&v29) & 0x60000000) == 0;
              }

              else
              {
                v30 = 0;
              }
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (SKLabelNode)initWithFontNamed:(NSString *)fontName
{
  v4 = fontName;
  v5 = [(SKLabelNode *)self init];
  v6 = v5;
  if (v5)
  {
    [(SKLabelNode *)v5 setFontName:v4];
  }

  return v6;
}

+ (SKLabelNode)labelNodeWithText:(NSString *)text
{
  v3 = text;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setText:v3];

  return v4;
}

+ (SKLabelNode)labelNodeWithAttributedText:(NSAttributedString *)attributedText
{
  v3 = attributedText;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAttributedText:v3];

  return v4;
}

+ (SKLabelNode)labelNodeWithFontNamed:(NSString *)fontName
{
  v3 = fontName;
  v4 = [objc_alloc(objc_opt_class()) initWithFontNamed:v3];

  return v4;
}

- (void)setVerticalAlignmentMode:(SKLabelVerticalAlignmentMode)verticalAlignmentMode
{
  skcLabelNode = self->_skcLabelNode;
  skcLabelNode[82] = verticalAlignmentMode;
  *(skcLabelNode + 712) = 1;
  SKCNode::setDirty(skcLabelNode);
}

- (void)setHorizontalAlignmentMode:(SKLabelHorizontalAlignmentMode)horizontalAlignmentMode
{
  skcLabelNode = self->_skcLabelNode;
  skcLabelNode[81] = horizontalAlignmentMode;
  *(skcLabelNode + 712) = 1;
  SKCNode::setDirty(skcLabelNode);
}

- (void)setFontSize:(CGFloat)fontSize
{
  skcLabelNode = self->_skcLabelNode;
  v4 = fontSize;
  skcLabelNode[148] = v4;
  *(skcLabelNode + 713) = 1;
  SKCNode::setDirty(skcLabelNode);
}

- (void)setFontColor:(UIColor *)fontColor
{
  v14 = fontColor;
  [(UIColor *)v14 red];
  v13 = v4;
  [(UIColor *)v14 green];
  v12 = v5;
  [(UIColor *)v14 blue];
  v11 = v6;
  [(UIColor *)v14 alpha];
  v7.f64[0] = v11;
  v7.f64[1] = v8;
  v9.f64[0] = v13;
  v9.f64[1] = v12;
  skcLabelNode = self->_skcLabelNode;
  skcLabelNode[38] = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v7);
  skcLabelNode[44].i8[8] = 1;
  SKCNode::setDirty(skcLabelNode);
}

- (void)setColor:(UIColor *)color
{
  v4 = color;
  [(UIColor *)v4 componentRGBA];
  skcLabelNode = self->_skcLabelNode;
  DWORD1(v7) = v6;
  *(&v7 + 1) = __PAIR64__(v9, v8);
  v10 = v7;
  (*(*skcLabelNode + 184))(skcLabelNode, &v10);
}

- (UIColor)color
{
  LODWORD(v2) = HIDWORD(*(self->_skcLabelNode + 38));
  LODWORD(v3) = *(self->_skcLabelNode + 39);
  LODWORD(v4) = HIDWORD(*(self->_skcLabelNode + 19));
  return [MEMORY[0x277D75348] colorWithComponentRGBA:{*(self->_skcLabelNode + 38), v2, v3, v4}];
}

- (void)setColorBlendFactor:(CGFloat)colorBlendFactor
{
  skcLabelNode = self->_skcLabelNode;
  v4 = colorBlendFactor;
  v5 = v4;
  (*(*skcLabelNode + 192))(skcLabelNode, &v5);
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKLabelNode *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = SKLabelNode;
  v4 = [(SKNode *)&v11 copyWithZone:zone];
  text = [(SKLabelNode *)self text];
  [v4 setText:text];

  attributedText = [(SKLabelNode *)self attributedText];
  [v4 setAttributedText:attributedText];

  fontName = [(SKLabelNode *)self fontName];
  [v4 setFontName:fontName];

  fontColor = [(SKLabelNode *)self fontColor];
  [v4 setFontColor:fontColor];

  [(SKLabelNode *)self fontSize];
  [v4 setFontSize:?];
  [v4 setHorizontalAlignmentMode:{-[SKLabelNode horizontalAlignmentMode](self, "horizontalAlignmentMode")}];
  [v4 setVerticalAlignmentMode:{-[SKLabelNode verticalAlignmentMode](self, "verticalAlignmentMode")}];
  color = [(SKLabelNode *)self color];
  [v4 setColor:color];

  [(SKLabelNode *)self colorBlendFactor];
  [v4 setColorBlendFactor:?];
  [v4 setBlendMode:{-[SKLabelNode blendMode](self, "blendMode")}];
  [v4 setNumberOfLines:{-[SKLabelNode numberOfLines](self, "numberOfLines")}];
  [(SKLabelNode *)self preferredMaxLayoutWidth];
  [v4 setPreferredMaxLayoutWidth:?];
  return v4;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SKLabelNode;
  [(SKNode *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(SKNode *)self name];
  text = [(SKLabelNode *)self text];
  fontName = [(SKLabelNode *)self fontName];
  [(SKNode *)self position];
  v7 = NSStringFromCGPoint(v11);
  v8 = [v3 stringWithFormat:@"<SKLabelNode> name:'%@' text:'%@' fontName:'%@' position:%@", name, text, fontName, v7];

  return v8;
}

+ (id)debugHierarchyPropertyDescriptions
{
  v32[15] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"attributedText");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"NSAttributedString");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeAttributedString");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"attrStr");
  v30 = Mutable;
  v32[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"color");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v5, @"propertyFormat", @"color");
  v29 = v5;
  v32[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"colorBlendFactor");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v6, @"propertyFormat", @"CGf");
  v28 = v6;
  v32[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"fontColor");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v7, @"propertyFormat", @"color");
  v27 = v7;
  v32[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"fontName");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  v9 = *MEMORY[0x277CC2130];
  if (*MEMORY[0x277CC2130])
  {
    CFDictionaryAddValue(v8, @"propertyFormat", *MEMORY[0x277CC2130]);
  }

  v26 = v8;
  v32[4] = v8;
  v10 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v10, @"propertyName", @"fontSize");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v10, @"propertyFormat", @"CGf");
  v25 = v10;
  v32[5] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v11, @"propertyName", @"numberOfLines");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"NSInteger");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v11, @"propertyFormat", @"integer");
  v32[6] = v11;
  v12 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v12, @"propertyName", @"preferredMaxLayoutWidth");
  CFDictionaryAddValue(v12, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v12, @"propertyFormat", @"CGf");
  v32[7] = v12;
  v13 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v13, @"propertyName", @"text");
  CFDictionaryAddValue(v13, @"propertyRuntimeType", @"NSString");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeString");
  if (v9)
  {
    CFDictionaryAddValue(v13, @"propertyFormat", v9);
  }

  v32[8] = v13;
  v14 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v14, @"propertyName", @"blendMode");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"SKBlendMode");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v14, @"propertyFormat", @"integer");
  v32[9] = v14;
  v15 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v15, @"propertyName", @"horizontalAlignmentMode");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"SKLabelHorizontalAlignmentMode");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v15, @"propertyFormat", @"integer");
  v32[10] = v15;
  v16 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v16, @"propertyName", @"lineBreakMode");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"NSLineBreakMode");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v16, @"propertyFormat", @"uinteger");
  v32[11] = v16;
  v17 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v17, @"propertyName", @"verticalAlignmentMode");
  CFDictionaryAddValue(v17, @"propertyRuntimeType", @"SKLabelVerticalAlignmentMode");
  CFDictionaryAddValue(v17, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v17, @"propertyFormat", @"integer");
  v32[12] = v17;
  v18 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v18, @"propertyName", @"visualRepresentation");
  CFDictionaryAddValue(v18, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v18, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v18, @"propertyFormat", @"public.data");
  valuePtr = 8;
  v19 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v18, @"visibility", v19);
  CFRelease(v19);
  valuePtr = 1;
  v20 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v18, @"propertyOptions", v20);
  CFRelease(v20);
  v32[13] = v18;
  v21 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v21, @"propertyName", @"visualRepresentationOffset");
  CFDictionaryAddValue(v21, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(v21, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(v21, @"propertyFormat", @"CGf, CGf");
  valuePtr = 8;
  v22 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v21, @"visibility", v22);
  CFRelease(v22);
  v32[14] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:15];

  return v23;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object outOptions:(id *)options outError:(id *)Mutable
{
  v84 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  objectCopy = object;
  if ([nameCopy isEqualToString:@"visualRepresentation"])
  {
    Mutable = [objectCopy createDebugHierarchyVisualRepresentation];
    v78 = @"propertyFormat";
    identifier = [*MEMORY[0x277CE1E10] identifier];
    v79 = identifier;
    *options = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];

    goto LABEL_101;
  }

  if ([nameCopy isEqualToString:@"visualRepresentationOffset"])
  {
    [objectCopy _untransformedBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [objectCopy _anchorPoint];
    v81 = v12 + floor(v16 * v19);
    v82 = v14 + floor(v18 * v20);
    v21 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = v23;
      v25 = CFNumberCreate(0, kCFNumberCGFloatType, &v81 + v22);
      v23 = 0;
      v21[v22] = v25;
      v22 = 1;
    }

    while ((v24 & 1) != 0);
    Mutable = CFArrayCreate(0, v21, 2, MEMORY[0x277CBF128]);
    CFRelease(*v21);
    CFRelease(v21[1]);
    free(v21);
    goto LABEL_101;
  }

  if ([nameCopy isEqualToString:@"color"])
  {
    color = [objectCopy color];
    cGColor = [color CGColor];
    if (cGColor)
    {
      Mutable = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      space = CGColorGetColorSpace(cGColor);
      v27 = CGColorSpaceCopyName(space);
      NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
      v29 = NumberOfComponents << 32;
      v30 = NumberOfComponents;
      if (NumberOfComponents << 32)
      {
        v31 = CFStringCreateMutable(0, 0);
        v32 = v30 - 1;
        if (v30 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v30;
        }

        do
        {
          CFStringAppend(v31, @"CGf");
          if (v32)
          {
            CFStringAppend(v31, @", ");
          }

          --v32;
          --v33;
        }

        while (v33);
      }

      else
      {
        v31 = &stru_282E190D8;
      }

      Components = CGColorGetComponents(cGColor);
      v45 = malloc_type_malloc(v29 >> 29, 0x6004044C4A2DFuLL);
      v46 = v45;
      if (v29)
      {
        if (v30 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v30;
        }

        v48 = v45;
        do
        {
          *v48++ = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
          --v47;
        }

        while (v47);
      }

      v49 = CFArrayCreate(0, v46, v30, MEMORY[0x277CBF128]);
      if (v29)
      {
        if (v30 <= 1)
        {
          v50 = 1;
        }

        else
        {
          v50 = v30;
        }

        v51 = v46;
        do
        {
          CFRelease(*v51++);
          --v50;
        }

        while (v50);
      }

      free(v46);
      CGColorSpaceGetModel(space);
      if (v49)
      {
        CFDictionaryAddValue(Mutable, @"componentValues", v49);
      }

      if (v31)
      {
        CFDictionaryAddValue(Mutable, @"componentValuesFormat", v31);
      }

      if (v27)
      {
        CFDictionaryAddValue(Mutable, @"colorSpaceName", v27);
      }

      if (v49)
      {
        CFRelease(v49);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      if (!v31)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    goto LABEL_27;
  }

  if ([nameCopy isEqualToString:@"fontColor"])
  {
    color = [objectCopy fontColor];
    cGColor2 = [color CGColor];
    if (cGColor2)
    {
      Mutable = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      spacea = CGColorGetColorSpace(cGColor2);
      v35 = CGColorSpaceCopyName(spacea);
      v36 = CGColorGetNumberOfComponents(cGColor2);
      v37 = v36 << 32;
      v38 = v36;
      if (v36 << 32)
      {
        v31 = CFStringCreateMutable(0, 0);
        v39 = v38 - 1;
        if (v38 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v38;
        }

        do
        {
          CFStringAppend(v31, @"CGf");
          if (v39)
          {
            CFStringAppend(v31, @", ");
          }

          --v39;
          --v40;
        }

        while (v40);
      }

      else
      {
        v31 = &stru_282E190D8;
      }

      v56 = CGColorGetComponents(cGColor2);
      v57 = malloc_type_malloc(v37 >> 29, 0x6004044C4A2DFuLL);
      v58 = v57;
      if (v37)
      {
        if (v38 <= 1)
        {
          v59 = 1;
        }

        else
        {
          v59 = v38;
        }

        v60 = v57;
        do
        {
          *v60++ = CFNumberCreate(0, kCFNumberCGFloatType, v56++);
          --v59;
        }

        while (v59);
      }

      v61 = CFArrayCreate(0, v58, v38, MEMORY[0x277CBF128]);
      if (v37)
      {
        if (v38 <= 1)
        {
          v62 = 1;
        }

        else
        {
          v62 = v38;
        }

        v63 = v58;
        do
        {
          CFRelease(*v63++);
          --v62;
        }

        while (v62);
      }

      free(v58);
      CGColorSpaceGetModel(spacea);
      if (v61)
      {
        CFDictionaryAddValue(Mutable, @"componentValues", v61);
      }

      if (v31)
      {
        CFDictionaryAddValue(Mutable, @"componentValuesFormat", v31);
      }

      if (v35)
      {
        CFDictionaryAddValue(Mutable, @"colorSpaceName", v35);
      }

      if (v61)
      {
        CFRelease(v61);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (!v31)
      {
        goto LABEL_83;
      }

LABEL_82:
      CFRelease(v31);
      goto LABEL_83;
    }

LABEL_27:
    Mutable = 0;
LABEL_83:

    goto LABEL_101;
  }

  v41 = objectCopy;
  v42 = nameCopy;
  if (![v42 length])
  {
    goto LABEL_91;
  }

  NSSelectorFromString(v42);
  if (objc_opt_respondsToSelector())
  {
    v43 = v42;
  }

  else
  {
    if ([v42 length] < 2)
    {
      uppercaseString = [v42 uppercaseString];
    }

    else
    {
      v52 = [v42 substringToIndex:1];
      uppercaseString2 = [v52 uppercaseString];
      v54 = [v42 substringFromIndex:1];
      uppercaseString = [uppercaseString2 stringByAppendingString:v54];
    }

    v64 = [@"is" stringByAppendingString:uppercaseString];
    NSSelectorFromString(v64);
    v43 = (objc_opt_respondsToSelector() & 1) != 0 ? v64 : 0;
  }

  if (v43)
  {
    Mutable = [v41 valueForKey:v43];
  }

  else
  {
LABEL_91:
    if (Mutable)
    {
      v65 = v41;
      v66 = v42;
      if (v65)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v65];
        *&v67 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      }

      else
      {
        *&v67 = COERCE_DOUBLE(&stru_282E190D8);
      }

      if (v66)
      {
        v68 = v66;
      }

      else
      {
        v68 = &stru_282E190D8;
      }

      *&v69 = COERCE_DOUBLE(v68);
      v80[0] = @"propertyName";
      v80[1] = @"objectDescription";
      v81 = *&v69;
      v82 = *&v67;
      v80[2] = @"errorDescription";
      v83 = &stru_282E190D8;
      v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:v80 count:3];
      v71 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v70];

      v72 = v71;
      *Mutable = v71;

      v43 = 0;
      Mutable = 0;
    }

    else
    {
      v43 = 0;
    }
  }

LABEL_101:

  return Mutable;
}

+ (id)_labelNodeWithFontNamed:(id)named
{
  v3 = objc_alloc_init(objc_opt_class());

  return v3;
}

+ (id)_labelNodeWithFontTexture:(id)texture fontDataString:(id)string
{
  v4 = objc_alloc_init(objc_opt_class());

  return v4;
}

@end