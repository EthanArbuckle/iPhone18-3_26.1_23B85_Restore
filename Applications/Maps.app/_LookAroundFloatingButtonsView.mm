@interface _LookAroundFloatingButtonsView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _LookAroundFloatingButtonsView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100AC14B8;
  v21 = sub_100AC14C8;
  v22 = 0;
  subviews = [(_LookAroundFloatingButtonsView *)self subviews];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100AC14D0;
  v12[3] = &unk_101637270;
  v15 = x;
  v16 = y;
  v12[4] = self;
  v9 = eventCopy;
  v13 = v9;
  v14 = &v17;
  [subviews enumerateObjectsWithOptions:2 usingBlock:v12];

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

@end