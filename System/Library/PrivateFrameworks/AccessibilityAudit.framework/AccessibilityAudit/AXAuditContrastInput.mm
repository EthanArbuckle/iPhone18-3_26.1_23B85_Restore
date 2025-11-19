@interface AXAuditContrastInput
- (AXAuditContrastInput)init;
- (CGRect)imageFrame;
- (id)description;
@end

@implementation AXAuditContrastInput

- (AXAuditContrastInput)init
{
  v3.receiver = self;
  v3.super_class = AXAuditContrastInput;
  result = [(AXAuditContrastInput *)&v3 init];
  if (result)
  {
    result->_displayScaleFactor = 1.0;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(AXAuditContrastInput *)self identifier];
  v5 = [(__CFString *)v4 length];
  v6 = &stru_284FBB130;
  if (v5)
  {
    v6 = v4;
  }

  v7 = v6;

  v17.receiver = self;
  v17.super_class = AXAuditContrastInput;
  v8 = [(AXAuditContrastInput *)&v17 description];
  [(AXAuditContrastInput *)self imageFrame];
  v9 = NSStringFromRect(v19);
  [v3 appendFormat:@"%@, %@, %@", v8, v7, v9];

  if ([(AXAuditContrastInput *)self enhanced])
  {
    [v3 appendString:@" Enhanced "];
  }

  v10 = [(AXAuditContrastInput *)self foregroundHexColorValue];

  if (v10)
  {
    v11 = [(AXAuditContrastInput *)self foregroundHexColorValue];
    [v3 appendFormat:@"ForegroundColor: %@", v11];
  }

  v12 = [(AXAuditContrastInput *)self backgroundHexColorValue];

  if (v12)
  {
    v13 = [(AXAuditContrastInput *)self backgroundHexColorValue];
    [v3 appendFormat:@"BackgroundColor: %@", v13];
  }

  [(AXAuditContrastInput *)self fontSize];
  if (v14 > 0.0)
  {
    [(AXAuditContrastInput *)self fontSize];
    [v3 appendFormat:@"FontSize: %.1f", v15];
  }

  return v3;
}

- (CGRect)imageFrame
{
  x = self->_imageFrame.origin.x;
  y = self->_imageFrame.origin.y;
  width = self->_imageFrame.size.width;
  height = self->_imageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end