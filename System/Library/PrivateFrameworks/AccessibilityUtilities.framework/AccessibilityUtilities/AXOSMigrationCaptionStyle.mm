@interface AXOSMigrationCaptionStyle
- (AXOSMigrationCaptionStyle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXOSMigrationCaptionStyle

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  captionStyleName = [(AXOSMigrationCaptionStyle *)self captionStyleName];
  [coderCopy encodeObject:captionStyleName forKey:@"captionStyleName"];

  fontName = [(AXOSMigrationCaptionStyle *)self fontName];
  [coderCopy encodeObject:fontName forKey:@"fontName"];

  v7 = [(AXOSMigrationCaptionStyle *)self size];
  [coderCopy encodeObject:v7 forKey:@"size"];

  color = [(AXOSMigrationCaptionStyle *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  colorVideoOverride = [(AXOSMigrationCaptionStyle *)self colorVideoOverride];
  [coderCopy encodeObject:colorVideoOverride forKey:@"colorVideoOverride"];

  backgroundColor = [(AXOSMigrationCaptionStyle *)self backgroundColor];
  [coderCopy encodeObject:backgroundColor forKey:@"backgroundColor"];

  backgroundColorVideoOverride = [(AXOSMigrationCaptionStyle *)self backgroundColorVideoOverride];
  [coderCopy encodeObject:backgroundColorVideoOverride forKey:@"backgroundColorVideoOverride"];

  backgroundOpacity = [(AXOSMigrationCaptionStyle *)self backgroundOpacity];
  [coderCopy encodeObject:backgroundOpacity forKey:@"backgroundOpacity"];

  backgroundOpacityVideoOverride = [(AXOSMigrationCaptionStyle *)self backgroundOpacityVideoOverride];
  [coderCopy encodeObject:backgroundOpacityVideoOverride forKey:@"backgroundOpacityVideoOverride"];

  textOpacity = [(AXOSMigrationCaptionStyle *)self textOpacity];
  [coderCopy encodeObject:textOpacity forKey:@"textOpacity"];

  textOpacityVideoOverride = [(AXOSMigrationCaptionStyle *)self textOpacityVideoOverride];
  [coderCopy encodeObject:textOpacityVideoOverride forKey:@"textOpacityVideoOverride"];

  textEdgeStyle = [(AXOSMigrationCaptionStyle *)self textEdgeStyle];
  [coderCopy encodeObject:textEdgeStyle forKey:@"textEdgeStyle"];

  textEdgeStyleVideoOverride = [(AXOSMigrationCaptionStyle *)self textEdgeStyleVideoOverride];
  [coderCopy encodeObject:textEdgeStyleVideoOverride forKey:@"textEdgeStyleVideoOverride"];

  textHighlightColor = [(AXOSMigrationCaptionStyle *)self textHighlightColor];
  [coderCopy encodeObject:textHighlightColor forKey:@"textHighlightColor"];

  textHighlightOpacity = [(AXOSMigrationCaptionStyle *)self textHighlightOpacity];
  [coderCopy encodeObject:textHighlightOpacity forKey:@"textHighlightOpacity"];

  textHighlightOpacityVideoOverride = [(AXOSMigrationCaptionStyle *)self textHighlightOpacityVideoOverride];
  [coderCopy encodeObject:textHighlightOpacityVideoOverride forKey:@"textHighlightOpacityVideoOverride"];
}

- (AXOSMigrationCaptionStyle)initWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = AXOSMigrationCaptionStyle;
  coderCopy = coder;
  v4 = [(AXOSMigrationCaptionStyle *)&v22 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"captionStyleName", v22.receiver, v22.super_class}];
  [(AXOSMigrationCaptionStyle *)v4 setCaptionStyleName:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fontName"];
  [(AXOSMigrationCaptionStyle *)v4 setFontName:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
  [(AXOSMigrationCaptionStyle *)v4 setSize:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  [(AXOSMigrationCaptionStyle *)v4 setColor:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setColorVideoOverride:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
  [(AXOSMigrationCaptionStyle *)v4 setBackgroundColor:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColorVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setBackgroundColorVideoOverride:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundOpacity"];
  [(AXOSMigrationCaptionStyle *)v4 setBackgroundOpacity:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundOpacityVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setBackgroundOpacityVideoOverride:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textOpacity"];
  [(AXOSMigrationCaptionStyle *)v4 setTextOpacity:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textOpacityVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setTextOpacityVideoOverride:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textEdgeStyle"];
  [(AXOSMigrationCaptionStyle *)v4 setTextEdgeStyle:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textEdgeStyleVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setTextEdgeStyleVideoOverride:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textHighlightColor"];
  [(AXOSMigrationCaptionStyle *)v4 setTextHighlightColor:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textHighlightOpacity"];
  [(AXOSMigrationCaptionStyle *)v4 setTextHighlightOpacity:v19];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textHighlightOpacityVideoOverride"];

  [(AXOSMigrationCaptionStyle *)v4 setTextHighlightOpacityVideoOverride:v20];
  return v4;
}

@end