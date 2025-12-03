@interface RouteCellularCoverageDebugOverlayRenderer
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
@end

@implementation RouteCellularCoverageDebugOverlayRenderer

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v9 = rect.var0.var1;
  v10 = rect.var0.var0;
  overlay = [(RouteCellularCoverageDebugOverlayRenderer *)self overlay];
  [overlay route];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100EC7090;
  v14[3] = &unk_1016585E0;
  v15 = v14[4] = self;
  v16 = v10;
  v17 = v9;
  v18 = var0;
  v19 = var1;
  scaleCopy = scale;
  contextCopy = context;
  v13 = v15;
  [v13 enumerateCellularCoverageRangesWithBlock:v14];
}

@end