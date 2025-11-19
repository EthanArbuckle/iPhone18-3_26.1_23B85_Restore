@interface AXMBrailleCanvasDescription
- (AXMBrailleCanvasDescription)initWithCoder:(id)a3;
- (AXMBrailleCanvasDescription)initWithHeight:(unint64_t)a3 width:(unint64_t)a4 numberOfDiscretePinHeights:(unint64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXMBrailleCanvasDescription

- (AXMBrailleCanvasDescription)initWithHeight:(unint64_t)a3 width:(unint64_t)a4 numberOfDiscretePinHeights:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = AXMBrailleCanvasDescription;
  result = [(AXMBrailleCanvasDescription *)&v9 init];
  if (result)
  {
    result->_width = a4;
    result->_height = a3;
    result->_numberOfDiscretePinHeights = a5;
    *&result->_hasConsistentHorizontalPinSpacing = 257;
  }

  return result;
}

- (AXMBrailleCanvasDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AXMBrailleCanvasDescription;
  v5 = [(AXMBrailleCanvasDescription *)&v12 init];
  if (v5 && ((v5->_height = [v4 decodeIntegerForKey:@"height"], v5->_width = objc_msgSend(v4, "decodeIntegerForKey:", @"width"), v5->_numberOfDiscretePinHeights = objc_msgSend(v4, "decodeIntegerForKey:", @"numberOfDiscretePinHeights"), v5->_hasConsistentHorizontalPinSpacing = objc_msgSend(v4, "decodeBoolForKey:", @"hasConsistentHorizontalPinSpacing"), v5->_hasConsistentVerticalPinSpacing = objc_msgSend(v4, "decodeBoolForKey:", @"hasConsistentVerticalPinSpacing"), objc_msgSend(v4, "decodeDoubleForKey:", @"verticalPinSpacing"), v5->_verticalPinSpacing = v6, objc_msgSend(v4, "decodeDoubleForKey:", @"horizontalPinSpacing"), v5->_horizontalPinSpacing = v7, objc_msgSend(v4, "decodeDoubleForKey:", @"interCellHorizontalSpacing"), v5->_interCellHorizontalSpacing = v8, objc_msgSend(v4, "decodeDoubleForKey:", @"interCellVerticalSpacing"), v5->_interCellVerticalSpacing = v9, !v5->_hasConsistentHorizontalPinSpacing) || !v5->_hasConsistentVerticalPinSpacing) && (v5->_verticalPinSpacing == 0.0 || v5->_horizontalPinSpacing == 0.0))
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

- (void)encodeWithCoder:(id)a3
{
  height = self->_height;
  v5 = a3;
  [v5 encodeInteger:height forKey:@"height"];
  [v5 encodeInteger:self->_width forKey:@"width"];
  [v5 encodeInteger:-[AXMBrailleCanvasDescription numberOfDiscretePinHeights](self forKey:{"numberOfDiscretePinHeights"), @"numberOfDiscretePinHeights"}];
  [v5 encodeBool:self->_hasConsistentHorizontalPinSpacing forKey:@"hasConsistentHorizontalPinSpacing"];
  [v5 encodeBool:self->_hasConsistentVerticalPinSpacing forKey:@"hasConsistentVerticalPinSpacing"];
  [v5 encodeDouble:@"verticalPinSpacing" forKey:self->_verticalPinSpacing];
  [v5 encodeDouble:@"horizontalPinSpacing" forKey:self->_horizontalPinSpacing];
  [v5 encodeDouble:@"interCellHorizontalSpacing" forKey:self->_interCellHorizontalSpacing];
  [v5 encodeDouble:@"interCellVerticalSpacing" forKey:self->_interCellVerticalSpacing];

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