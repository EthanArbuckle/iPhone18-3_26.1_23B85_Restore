@interface AVGlassBackedGroupView
- (AVGlassBackedGroupView)initWithCoder:(id)coder;
- (AVGlassBackedGroupView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation AVGlassBackedGroupView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AVGlassBackedGroupView();
  v2 = v4.receiver;
  [(AVGlassBackedGroupView *)&v4 didMoveToWindow];
  v3[3] = sub_18B6C438C();
  v3[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_18B6C437C();
  sub_18B6C5A1C();
}

- (AVGlassBackedGroupView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVGlassBackedGroupView();
  return [(AVView *)&v8 initWithFrame:x, y, width, height];
}

- (AVGlassBackedGroupView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AVGlassBackedGroupView();
  coderCopy = coder;
  v5 = [(AVView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end