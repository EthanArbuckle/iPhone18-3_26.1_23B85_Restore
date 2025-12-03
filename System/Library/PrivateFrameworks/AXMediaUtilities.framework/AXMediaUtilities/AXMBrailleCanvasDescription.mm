@interface AXMBrailleCanvasDescription
- (AXMBrailleCanvasDescription)initWithCoder:(id)coder;
- (AXMBrailleCanvasDescription)initWithHeight:(unint64_t)height width:(unint64_t)width numberOfDiscretePinHeights:(unint64_t)heights;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXMBrailleCanvasDescription

- (AXMBrailleCanvasDescription)initWithHeight:(unint64_t)height width:(unint64_t)width numberOfDiscretePinHeights:(unint64_t)heights
{
  v9.receiver = self;
  v9.super_class = AXMBrailleCanvasDescription;
  result = [(AXMBrailleCanvasDescription *)&v9 init];
  if (result)
  {
    result->_width = width;
    result->_height = height;
    result->_numberOfDiscretePinHeights = heights;
    *&result->_hasConsistentHorizontalPinSpacing = 257;
  }

  return result;
}

- (AXMBrailleCanvasDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AXMBrailleCanvasDescription;
  v5 = [(AXMBrailleCanvasDescription *)&v12 init];
  if (v5 && ((v5->_height = [coderCopy decodeIntegerForKey:@"height"], v5->_width = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"width"), v5->_numberOfDiscretePinHeights = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"numberOfDiscretePinHeights"), v5->_hasConsistentHorizontalPinSpacing = objc_msgSend(coderCopy, "decodeBoolForKey:", @"hasConsistentHorizontalPinSpacing"), v5->_hasConsistentVerticalPinSpacing = objc_msgSend(coderCopy, "decodeBoolForKey:", @"hasConsistentVerticalPinSpacing"), objc_msgSend(coderCopy, "decodeDoubleForKey:", @"verticalPinSpacing"), v5->_verticalPinSpacing = v6, objc_msgSend(coderCopy, "decodeDoubleForKey:", @"horizontalPinSpacing"), v5->_horizontalPinSpacing = v7, objc_msgSend(coderCopy, "decodeDoubleForKey:", @"interCellHorizontalSpacing"), v5->_interCellHorizontalSpacing = v8, objc_msgSend(coderCopy, "decodeDoubleForKey:", @"interCellVerticalSpacing"), v5->_interCellVerticalSpacing = v9, !v5->_hasConsistentHorizontalPinSpacing) || !v5->_hasConsistentVerticalPinSpacing) && (v5->_verticalPinSpacing == 0.0 || v5->_horizontalPinSpacing == 0.0))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"verticalPinSpacing and horizontalPinSpacing are required if cell spacing is not uniform."];
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  height = self->_height;
  coderCopy = coder;
  [coderCopy encodeInteger:height forKey:@"height"];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeInteger:-[AXMBrailleCanvasDescription numberOfDiscretePinHeights](self forKey:{"numberOfDiscretePinHeights"), @"numberOfDiscretePinHeights"}];
  [coderCopy encodeBool:self->_hasConsistentHorizontalPinSpacing forKey:@"hasConsistentHorizontalPinSpacing"];
  [coderCopy encodeBool:self->_hasConsistentVerticalPinSpacing forKey:@"hasConsistentVerticalPinSpacing"];
  [coderCopy encodeDouble:@"verticalPinSpacing" forKey:self->_verticalPinSpacing];
  [coderCopy encodeDouble:@"horizontalPinSpacing" forKey:self->_horizontalPinSpacing];
  [coderCopy encodeDouble:@"interCellHorizontalSpacing" forKey:self->_interCellHorizontalSpacing];
  [coderCopy encodeDouble:@"interCellVerticalSpacing" forKey:self->_interCellVerticalSpacing];

  if ((!self->_hasConsistentHorizontalPinSpacing || !self->_hasConsistentVerticalPinSpacing) && (self->_verticalPinSpacing == 0.0 || self->_horizontalPinSpacing == 0.0))
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];

    [v6 raise:v7 format:@"verticalPinSpacing and horizontalPinSpacing are required if cell spacing is not uniform."];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"AXMBrailleCanvasDescription<%p>\n", self];
  [v3 appendFormat:@"  Options: \n"];
  [v3 appendFormat:@"    Size(%ld, %ld)\n", self->_width, self->_height];
  [v3 appendFormat:@"    numberOfDiscretePinHeights: %ld\n", self->_numberOfDiscretePinHeights];
  if (!self->_hasConsistentVerticalPinSpacing || !self->_hasConsistentHorizontalPinSpacing)
  {
    verticalPinSpacing = self->_verticalPinSpacing;
    [v3 appendFormat:@"        verticalPinSpacing: %.2f\n", verticalPinSpacing];
    horizontalPinSpacing = self->_horizontalPinSpacing;
    [v3 appendFormat:@"        horizontalPinSpacing: %.2f\n", horizontalPinSpacing];
    interCellHorizontalSpacing = self->_interCellHorizontalSpacing;
    [v3 appendFormat:@"        interCellHorizontalSpacing: %.2f\n", interCellHorizontalSpacing];
    interCellVerticalSpacing = self->_interCellVerticalSpacing;
    [v3 appendFormat:@"        interCellVerticalSpacing: %.2f\n", interCellVerticalSpacing];
  }

  return v3;
}

@end