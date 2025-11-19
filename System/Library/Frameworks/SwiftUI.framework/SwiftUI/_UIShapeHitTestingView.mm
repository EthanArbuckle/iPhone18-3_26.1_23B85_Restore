@interface _UIShapeHitTestingView
- (_TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView)initWithCoder:(id)a3;
- (_TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _UIShapeHitTestingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v17.receiver = self;
  v17.super_class = swift_getObjectType();
  v7 = v17.receiver;
  v8 = a4;
  v9 = [(_UIShapeHitTestingView *)&v17 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v7[OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 32];
  v11 = *&v7[OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 16];
  v18[0] = *&v7[OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path];
  v18[1] = v11;
  v19 = v10;
  v13 = *&v7[OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path];
  v12 = *&v7[OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 16];
  v21 = v7[OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 32];
  v20[0] = v13;
  v20[1] = v12;
  outlined init with copy of Path.Storage(v20, v16);
  v14 = Path.contains(_:eoFill:)(__PAIR128__(*&y, *&x), 0);
  outlined destroy of Path(v18);

  if (!v14)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 6;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(_UIGraphicsView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 6;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(_UIGraphicsView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end