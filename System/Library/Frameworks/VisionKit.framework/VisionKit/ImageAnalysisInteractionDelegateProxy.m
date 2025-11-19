@interface ImageAnalysisInteractionDelegateProxy
- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5;
- (CGRect)contentsRectForImageAnalysisInteraction:(id)a3;
- (_TtC9VisionKit37ImageAnalysisInteractionDelegateProxy)init;
- (id)contentViewForImageAnalysisInteraction:(id)a3;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3;
- (void)textSelectionDidChangeForImageAnalysisInteraction:(id)a3;
@end

@implementation ImageAnalysisInteractionDelegateProxy

- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  LOBYTE(a5) = sub_23B2D8998(a5, x, y);

  return a5 & 1;
}

- (CGRect)contentsRectForImageAnalysisInteraction:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = 1.0;
  v6 = 0.0;
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  v8 = Strong + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v19 = 0.0;
    v18 = 1.0;
    goto LABEL_6;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  v12 = self;
  v6 = v11(v7, ObjectType, v9);
  v14 = v13;
  v5 = v15;
  v17 = v16;

  swift_unknownObjectRelease();
  v18 = v17;
  v19 = v14;
LABEL_6:
  v20 = v6;
  v21 = v5;
  result.size.height = v18;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

- (id)contentViewForImageAnalysisInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23B2D8A90();

  return v6;
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23B2D8B4C();

  return v6;
}

- (void)textSelectionDidChangeForImageAnalysisInteraction:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 56);
      v10 = self;
      v9(v5, ObjectType, v7);

      swift_unknownObjectRelease();
      v5 = v10;
    }
  }
}

- (_TtC9VisionKit37ImageAnalysisInteractionDelegateProxy)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ImageAnalysisInteractionDelegateProxy();
  return [(ImageAnalysisInteractionDelegateProxy *)&v4 init];
}

@end