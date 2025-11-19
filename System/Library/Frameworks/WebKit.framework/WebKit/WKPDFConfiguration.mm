@interface WKPDFConfiguration
- (CGRect)rect;
- (WKPDFConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WKPDFConfiguration

- (WKPDFConfiguration)init
{
  v5.receiver = self;
  v5.super_class = WKPDFConfiguration;
  v2 = [(WKPDFConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WKPDFConfiguration *)v2 setRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [(WKPDFConfiguration *)v3 setAllowTransparentBackground:0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(WKPDFConfiguration *)self rect];
  [v4 setRect:?];
  [v4 setAllowTransparentBackground:{-[WKPDFConfiguration allowTransparentBackground](self, "allowTransparentBackground")}];
  return v4;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end