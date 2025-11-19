@interface AUVerticalSegmentControl
- (NSArray)accessibilityElements;
- (_TtC12CoreAudioKit24AUVerticalSegmentControl)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation AUVerticalSegmentControl

- (_TtC12CoreAudioKit24AUVerticalSegmentControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_items) = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_accessibleElements) = v7;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_columnCount) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_selectedSegmentIndex) = -1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit24AUVerticalSegmentControl_segmentHeight) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AUVerticalSegmentControl();
  return [(AUVerticalSegmentControl *)&v9 initWithFrame:x, y, width, height];
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_2371129F4();

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

- (void)removeFromSuperview
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for AUVerticalSegmentControl();
  [(AUVerticalSegmentControl *)&v6 removeFromSuperview];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v6 = sub_2371966DC();
  v7 = a4;
  v8 = self;
  sub_237113F24(v6, a4);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v6 = sub_2371966DC();
  v7 = self;
  v8 = a4;
  v9 = sub_237181180(v6);
  if (v9)
  {
    v10 = v9;
    [v9 locationInView_];
    sub_237113164(v11, v12);
  }

  v13 = sub_2371966CC();

  v14.receiver = v7;
  v14.super_class = type metadata accessor for AUVerticalSegmentControl();
  [(AUVerticalSegmentControl *)&v14 touchesMoved:v13 withEvent:v8];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_237114690();
}

@end