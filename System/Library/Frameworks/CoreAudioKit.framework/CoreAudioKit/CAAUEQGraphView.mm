@interface CAAUEQGraphView
- (NSArray)accessibilityElements;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)removeFromSuperview;
- (void)tintColorDidChange;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation CAAUEQGraphView

- (void)removeFromSuperview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAAUEQGraphView();
  v2 = v4.receiver;
  [(CAAUEQGraphView *)&v4 removeFromSuperview];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver_];
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_23716B88C();
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_23716BEA8();

  if (v3)
  {
    v4 = sub_23719661C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  sub_2371966DC();
  eventCopy = event;
  selfCopy = self;
  v8 = sub_2371966CC();
  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for CAAUEQGraphView();
  [(CAAUEQGraphView *)&v10 touchesCancelled:v8 withEvent:eventCopy];

  v9 = sub_2371966CC();

  [(CAAUEQGraphView *)selfCopy touchesEnded:v9 withEvent:eventCopy];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_23716D938(layerCopy);
}

@end