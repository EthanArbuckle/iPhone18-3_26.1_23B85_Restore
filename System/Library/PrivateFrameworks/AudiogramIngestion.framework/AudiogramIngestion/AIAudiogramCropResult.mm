@interface AIAudiogramCropResult
- (CGRect)graphRect;
- (CGRect)symbolsRect;
- (id)description;
@end

@implementation AIAudiogramCropResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = AIAudiogramCropResult;
  v4 = [(AIAudiogramCropResult *)&v9 description];
  [(AIAudiogramCropResult *)self graphRect];
  v5 = NSStringFromCGRect(v11);
  [(AIAudiogramCropResult *)self symbolsRect];
  v6 = NSStringFromCGRect(v12);
  v7 = [v3 stringWithFormat:@"%@\nGraph: %@\nSymbols: %@", v4, v5, v6];

  return v7;
}

- (CGRect)graphRect
{
  x = self->_graphRect.origin.x;
  y = self->_graphRect.origin.y;
  width = self->_graphRect.size.width;
  height = self->_graphRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)symbolsRect
{
  x = self->_symbolsRect.origin.x;
  y = self->_symbolsRect.origin.y;
  width = self->_symbolsRect.size.width;
  height = self->_symbolsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end