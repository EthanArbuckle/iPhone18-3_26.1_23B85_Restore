@interface MapsRPTParameters
- (CGPoint)center;
- (MapsRPTParameters)initWithTestName:(id)name view:(id)view completionHandler:(id)handler testActions:(id)actions actionDuration:(double)duration;
- (id)composerBlock;
- (void)prepareWithComposer:(id)composer;
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

- (void)prepareWithComposer:(id)composer
{
  window = [(MapsRPTParameters *)self window];
  v4 = objc_opt_class();
  v5 = sub_10088A4A4(window, v4);
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

- (MapsRPTParameters)initWithTestName:(id)name view:(id)view completionHandler:(id)handler testActions:(id)actions actionDuration:(double)duration
{
  nameCopy = name;
  viewCopy = view;
  handlerCopy = handler;
  actionsCopy = actions;
  v26.receiver = self;
  v26.super_class = MapsRPTParameters;
  v17 = [(MapsRPTParameters *)&v26 init];
  if (v17)
  {
    v18 = [handlerCopy copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    objc_storeStrong(&v17->_testName, name);
    objc_storeStrong(&v17->_testActions, actions);
    objc_storeStrong(&v17->_view, view);
    [viewCopy bounds];
    v21 = v20 * 0.5;
    v17->_dragDist = v21;
    v17->_center.x = v21 + v24;
    v17->_center.y = v22 + v23 * 0.5;
    v17->_actionDuration = duration;
  }

  return v17;
}

@end