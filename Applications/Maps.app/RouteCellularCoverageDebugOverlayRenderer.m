@interface RouteCellularCoverageDebugOverlayRenderer
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
@end

@implementation RouteCellularCoverageDebugOverlayRenderer

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v9 = a3.var0.var1;
  v10 = a3.var0.var0;
  v12 = [(RouteCellularCoverageDebugOverlayRenderer *)self overlay];
  [v12 route];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100EC7090;
  v14[3] = &unk_1016585E0;
  v15 = v14[4] = self;
  v16 = v10;
  v17 = v9;
  v18 = var0;
  v19 = var1;
  v20 = a4;
  v21 = a5;
  v13 = v15;
  [v13 enumerateCellularCoverageRangesWithBlock:v14];
}

@end