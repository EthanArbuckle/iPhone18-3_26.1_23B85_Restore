@interface AXBrailleMap
+ (id)connectedBrailleMap;
- (AXBrailleMap)initWithCoder:(id)coder;
- (CGSize)dimensions;
- (float)heightAtPoint:(CGPoint)point;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)presentImage:(CGImageRef)image;
@end

@implementation AXBrailleMap

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AXBrailleMap allocWithZone:?]];
  v5 = [(NSMutableDictionary *)self->_values copy];
  values = v4->_values;
  v4->_values = v5;

  v7 = [(CIImage *)self->_presentedImage copy];
  presentedImage = v4->_presentedImage;
  v4->_presentedImage = v7;

  return v4;
}

+ (id)connectedBrailleMap
{
  lastObject = [_AXSVoiceOverTouchActive2DBrailleDisplays() lastObject];
  if (lastObject)
  {
    v3 = objc_opt_new();
    v4 = NSSizeFromString(lastObject);
    [v3 setDimensions:{v4.width, v4.height}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)presentImage:(CGImageRef)image
{
  if (image)
  {
    v4 = [objc_alloc(getCIImageClass()) initWithCGImage:image];
    presentedImage = self->_presentedImage;
    self->_presentedImage = v4;

    MEMORY[0x1EEE66BB8]();
  }

  else
  {
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXBrailleMap presentImage:v6];
    }
  }
}

- (float)heightAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  values = self->_values;
  v6 = MEMORY[0x1E696AD98];
  [(AXBrailleMap *)self dimensions];
  v8 = [v6 numberWithDouble:x + y * v7];
  v9 = [(NSMutableDictionary *)values objectForKey:v8];
  [v9 floatValue];
  LODWORD(y) = v10;

  return *&y;
}

- (void)encodeWithCoder:(id)coder
{
  values = self->_values;
  coderCopy = coder;
  [coderCopy encodeObject:values forKey:@"values"];
  [coderCopy encodeObject:self->_presentedImage forKey:@"presentedImage"];
  v6 = [MEMORY[0x1E696B098] valueWithSize:{self->_dimensions.width, self->_dimensions.height}];
  [coderCopy encodeObject:v6 forKey:@"dimensions"];
}

- (AXBrailleMap)initWithCoder:(id)coder
{
  v24[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"dimensions"];
  [v9 sizeValue];
  [(AXBrailleMap *)v5 setDimensions:?];

  v10 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"values"];
  values = v5->_values;
  v5->_values = v13;

  v15 = MEMORY[0x1E695DFD8];
  CIImageClass = getCIImageClass();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&CIImageClass count:1];
  v17 = [v15 setWithArray:v16];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"presentedImage"];

  presentedImage = v5->_presentedImage;
  v5->_presentedImage = v18;

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(AXBrailleMap *)self dimensions];
  v5 = NSStringFromSize(v9);
  v6 = [v3 stringWithFormat:@"%@[%p]: Dimensions: %@", v4, self, v5];

  return v6;
}

- (CGSize)dimensions
{
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end