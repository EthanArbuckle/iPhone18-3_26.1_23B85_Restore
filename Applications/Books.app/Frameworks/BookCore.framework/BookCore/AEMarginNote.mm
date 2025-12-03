@interface AEMarginNote
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AEMarginNote

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSide:{-[AEMarginNote side](self, "side")}];
  [(AEMarginNote *)self yStart];
  [v4 setYStart:?];
  [(AEMarginNote *)self xOffset];
  [v4 setXOffset:?];
  annotation = [(AEMarginNote *)self annotation];
  [v4 setAnnotation:annotation];

  theme = [(AEMarginNote *)self theme];
  [v4 setTheme:theme];

  return v4;
}

@end