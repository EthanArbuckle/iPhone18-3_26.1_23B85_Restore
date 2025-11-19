@interface QLPreviewControllerView
- (_TtC9QuickLook23QLPreviewControllerView)initWithCoder:(id)a3;
- (_TtC9QuickLook23QLPreviewControllerView)initWithFrame:(CGRect)a3;
- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4;
@end

@implementation QLPreviewControllerView

- (_TtC9QuickLook23QLPreviewControllerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for QLPreviewControllerView();
  return [(QLPreviewControllerView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC9QuickLook23QLPreviewControllerView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for QLPreviewControllerView();
  v5 = a3;
  v6 = [(QLPreviewControllerView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (void)_intelligenceCollectContentIn:(CGRect)a3 collector:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = self;
  sub_23A7C9828(v9, x, y, width, height);
}

@end