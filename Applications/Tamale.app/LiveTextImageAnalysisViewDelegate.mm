@interface LiveTextImageAnalysisViewDelegate
- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction;
- (_TtC6Tamale33LiveTextImageAnalysisViewDelegate)init;
@end

@implementation LiveTextImageAnalysisViewDelegate

- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction
{
  sub_100005650(self + OBJC_IVAR____TtC6Tamale33LiveTextImageAnalysisViewDelegate_frame, v15);
  memset(v18, 0, sizeof(v18));
  v19 = 1;
  interactionCopy = interaction;
  selfCopy = self;
  sub_10005C9A0(interactionCopy, v15, v18, v16);
  v7 = *v16;
  v8 = *&v16[1];
  v9 = *&v16[2];
  v10 = *&v16[3];

  sub_1000056C0(v15);
  v11 = 1.0;
  v12 = 0.0;
  if (v17)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7;
  }

  if (v17)
  {
    v14 = 1.0;
  }

  else
  {
    v12 = v8;
    v14 = v9;
  }

  if ((v17 & 1) == 0)
  {
    v11 = v10;
  }

  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (_TtC6Tamale33LiveTextImageAnalysisViewDelegate)init
{
  v3 = self + OBJC_IVAR____TtC6Tamale33LiveTextImageAnalysisViewDelegate_frame;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC6Tamale33LiveTextImageAnalysisViewDelegate_contentImage) = 0;
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for LiveTextImageAnalysisViewDelegate();
  return [(LiveTextImageAnalysisViewDelegate *)&v5 init];
}

@end