@interface AUVerticalSegmentControl
- (NSArray)accessibilityElements;
- (_TtC12CoreAudioKit24AUVerticalSegmentControl)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation AUVerticalSegmentControl

- (_TtC12CoreAudioKit24AUVerticalSegmentControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  selfCopy = self;
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
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for AUVerticalSegmentControl();
  [(AUVerticalSegmentControl *)&v6 removeFromSuperview];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v6 = sub_2371966DC();
  eventCopy = event;
  selfCopy = self;
  sub_237113F24(v6, event);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v6 = sub_2371966DC();
  selfCopy = self;
  eventCopy = event;
  v9 = sub_237181180(v6);
  if (v9)
  {
    v10 = v9;
    [v9 locationInView_];
    sub_237113164(v11, v12);
  }

  v13 = sub_2371966CC();

  v14.receiver = selfCopy;
  v14.super_class = type metadata accessor for AUVerticalSegmentControl();
  [(AUVerticalSegmentControl *)&v14 touchesMoved:v13 withEvent:eventCopy];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_237114690();
}

@end