@interface AEMarginNote
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AEMarginNote

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSide:{-[AEMarginNote side](self, "side")}];
  [(AEMarginNote *)self yStart];
  [v4 setYStart:?];
  [(AEMarginNote *)self xOffset];
  [v4 setXOffset:?];
  v5 = [(AEMarginNote *)self annotation];
  [v4 setAnnotation:v5];

  v6 = [(AEMarginNote *)self theme];
  [v4 setTheme:v6];

  return v4;
}

@end