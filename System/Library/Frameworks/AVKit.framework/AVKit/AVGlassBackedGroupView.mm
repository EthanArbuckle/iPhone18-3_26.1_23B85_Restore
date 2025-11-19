@interface AVGlassBackedGroupView
- (AVGlassBackedGroupView)initWithCoder:(id)a3;
- (AVGlassBackedGroupView)initWithFrame:(CGRect)a3;
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

- (AVGlassBackedGroupView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVGlassBackedGroupView();
  return [(AVView *)&v8 initWithFrame:x, y, width, height];
}

- (AVGlassBackedGroupView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AVGlassBackedGroupView();
  v4 = a3;
  v5 = [(AVView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end