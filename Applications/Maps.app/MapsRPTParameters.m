@interface MapsRPTParameters
- (CGPoint)center;
- (MapsRPTParameters)initWithTestName:(id)a3 view:(id)a4 completionHandler:(id)a5 testActions:(id)a6 actionDuration:(double)a7;
- (id)composerBlock;
- (void)prepareWithComposer:(id)a3;
@end

@implementation MapsRPTParameters

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)prepareWithComposer:(id)a3
{
  v3 = [(MapsRPTParameters *)self window];
  v4 = objc_opt_class();
  v5 = sub_10088A4A4(v3, v4);
}

- (id)composerBlock
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10088A6E0;
  v4[3] = &unk_10162CA78;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (MapsRPTParameters)initWithTestName:(id)a3 view:(id)a4 completionHandler:(id)a5 testActions:(id)a6 actionDuration:(double)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v26.receiver = self;
  v26.super_class = MapsRPTParameters;
  v17 = [(MapsRPTParameters *)&v26 init];
  if (v17)
  {
    v18 = [v15 copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    objc_storeStrong(&v17->_testName, a3);
    objc_storeStrong(&v17->_testActions, a6);
    objc_storeStrong(&v17->_view, a4);
    [v14 bounds];
    v21 = v20 * 0.5;
    v17->_dragDist = v21;
    v17->_center.x = v21 + v24;
    v17->_center.y = v22 + v23 * 0.5;
    v17->_actionDuration = a7;
  }

  return v17;
}

@end