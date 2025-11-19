@interface AXOSMigrationCaptionStyle
- (AXOSMigrationCaptionStyle)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXOSMigrationCaptionStyle

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXOSMigrationCaptionStyle *)self captionStyleName];
  [v4 encodeObject:v5 forKey:@"captionStyleName"];

  v6 = [(AXOSMigrationCaptionStyle *)self fontName];
  [v4 encodeObject:v6 forKey:@"fontName"];

  v7 = [(AXOSMigrationCaptionStyle *)self size];
  [v4 encodeObject:v7 forKey:@"size"];

  v8 = [(AXOSMigrationCaptionStyle *)self color];
  [v4 encodeObject:v8 forKey:@"color"];

  v9 = [(AXOSMigrationCaptionStyle *)self colorVideoOverride];
  [v4 encodeObject:v9 forKey:@"colorVideoOverride"];

  v10 = [(AXOSMigrationCaptionStyle *)self backgroundColor];
  [v4 encodeObject:v10 forKey:@"backgroundColor"];

  v11 = [(AXOSMigrationCaptionStyle *)self backgroundColorVideoOverride];
  [v4 encodeObject:v11 forKey:@"backgroundColorVideoOverride"];

  v12 = [(AXOSMigrationCaptionStyle *)self backgroundOpacity];
  [v4 encodeObject:v12 forKey:@"backgroundOpacity"];

  v13 = [(AXOSMigrationCaptionStyle *)self backgroundOpacityVideoOverride];
  [v4 encodeObject:v13 forKey:@"backgroundOpacityVideoOverride"];

  v14 = [(AXOSMigrationCaptionStyle *)self textOpacity];
  [v4 encodeObject:v14 forKey:@"textOpacity"];

  v15 = [(AXOSMigrationCaptionStyle *)self textOpacityVideoOverride];
  [v4 encodeObject:v15 forKey:@"textOpacityVideoOverride"];

  v16 = [(AXOSMigrationCaptionStyle *)self textEdgeStyle];
  [v4 encodeObject:v16 forKey:@"textEdgeStyle"];

  v17 = [(AXOSMigrationCaptionStyle *)self textEdgeStyleVideoOverride];
  [v4 encodeObject:v17 forKey:@"textEdgeStyleVideoOverride"];

  v18 = [(AXOSMigrationCaptionStyle *)self textHighlightColor];
  [v4 encodeObject:v18 forKey:@"textHighlightColor"];

  v19 = [(AXOSMigrationCaptionStyle *)self textHighlightOpacity];
  [v4 encodeObject:v19 forKey:@"textHighlightOpacity"];

  v20 = [(AXOSMigrationCaptionStyle *)self textHighlightOpacityVideoOverride];
  [v4 encodeObject:v20 forKey:@"textHighlightOpacityVideoOverride"];
}

- (AXOSMigrationCaptionStyle)initWithCoder:(id)a3
{
  v22.receiver = self;
  v22.super_class = AXOSMigrationCaptionStyle;
  v3 = a3;
  v4 = [(AXOSMigrationCaptionStyle *)&v22 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"captionStyleName", v22.receiver, v22.super_class}];
  [(AXOSMigrationCaptionStyle *)v4 setCaptionStyleName:v5];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"fontName"];
  [(AXOSMigrationCaptionStyle *)v4 setFontName:v6];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
  [(AXOSMigrationCaptionStyle *)v4 setSize:v7];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  [(AXOSMigrationCaptionStyle *)v4 setColor:v8];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"colorVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setColorVideoOverride:v9];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
  [(AXOSMigrationCaptionStyle *)v4 setBackgroundColor:v10];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColorVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setBackgroundColorVideoOverride:v11];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundOpacity"];
  [(AXOSMigrationCaptionStyle *)v4 setBackgroundOpacity:v12];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundOpacityVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setBackgroundOpacityVideoOverride:v13];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textOpacity"];
  [(AXOSMigrationCaptionStyle *)v4 setTextOpacity:v14];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textOpacityVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setTextOpacityVideoOverride:v15];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textEdgeStyle"];
  [(AXOSMigrationCaptionStyle *)v4 setTextEdgeStyle:v16];

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textEdgeStyleVideoOverride"];
  [(AXOSMigrationCaptionStyle *)v4 setTextEdgeStyleVideoOverride:v17];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textHighlightColor"];
  [(AXOSMigrationCaptionStyle *)v4 setTextHighlightColor:v18];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textHighlightOpacity"];
  [(AXOSMigrationCaptionStyle *)v4 setTextHighlightOpacity:v19];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textHighlightOpacityVideoOverride"];

  [(AXOSMigrationCaptionStyle *)v4 setTextHighlightOpacityVideoOverride:v20];
  return v4;
}

@end