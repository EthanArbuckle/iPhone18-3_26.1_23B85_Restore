@interface SubjectLiftViewDelegate
- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction;
- (_TtC6Tamale23SubjectLiftViewDelegate)init;
@end

@implementation SubjectLiftViewDelegate

- (CGRect)contentsRectForImageAnalysisInteraction:(id)interaction
{
  sub_100005650(self + OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_frame, v16);
  v5 = *&self->frame[OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_boundingBoxInImageCoordinates + 8];
  v19[0] = *(&self->super.isa + OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_boundingBoxInImageCoordinates);
  v19[1] = v5;
  v20 = self->frame[OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_boundingBoxInImageCoordinates + 24];
  interactionCopy = interaction;
  selfCopy = self;
  sub_10005C9A0(interactionCopy, v16, v19, v17);
  v8 = *v17;
  v9 = *&v17[1];
  v10 = *&v17[2];
  v11 = *&v17[3];

  sub_1000056C0(v16);
  v12 = 1.0;
  v13 = 0.0;
  if (v18)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v8;
  }

  if (v18)
  {
    v15 = 1.0;
  }

  else
  {
    v13 = v9;
    v15 = v10;
  }

  if ((v18 & 1) == 0)
  {
    v12 = v11;
  }

  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (_TtC6Tamale23SubjectLiftViewDelegate)init
{
  v2 = self + OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_frame;
  *(v2 + 4) = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = self + OBJC_IVAR____TtC6Tamale23SubjectLiftViewDelegate_boundingBoxInImageCoordinates;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SubjectLiftViewDelegate();
  return [(SubjectLiftViewDelegate *)&v5 init];
}

@end