@interface CAAUEQGraphView
- (NSArray)accessibilityElements;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)removeFromSuperview;
- (void)tintColorDidChange;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation CAAUEQGraphView

- (void)removeFromSuperview
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CAAUEQGraphView();
  v2 = v4.receiver;
  [(CAAUEQGraphView *)&v4 removeFromSuperview];
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_23716B88C();
}

- (NSArray)accessibilityElements
{
  v2 = self;
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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  sub_2371966DC();
  v6 = a4;
  v7 = self;
  v8 = sub_2371966CC();
  v10.receiver = v7;
  v10.super_class = type metadata accessor for CAAUEQGraphView();
  [(CAAUEQGraphView *)&v10 touchesCancelled:v8 withEvent:v6];

  v9 = sub_2371966CC();

  [(CAAUEQGraphView *)v7 touchesEnded:v9 withEvent:v6];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23716D938(v4);
}

@end