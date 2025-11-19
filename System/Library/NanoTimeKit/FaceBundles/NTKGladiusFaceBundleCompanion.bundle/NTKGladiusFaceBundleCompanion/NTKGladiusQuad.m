@interface NTKGladiusQuad
- (BOOL)prepareForTime:(double)a3;
- (_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad)init;
- (_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad)initWithDevice:(id)a3 stretchySecondHandData:(id)a4;
- (void)purge;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)setColor:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setShadowDensity:(double)a3;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKGladiusQuad

- (_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad)initWithDevice:(id)a3 stretchySecondHandData:(id)a4
{
  *&self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer] = 0;
  v7 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_dateOverride;
  v8 = type metadata accessor for GladiusUtilities.DateOverride();
  (*(*(v8 - 8) + 56))(&self->CLKUIQuad_opaque[v7], 1, 1, v8);
  v9 = a3;
  v10 = a4;
  [v9 screenBounds];
  v11 = &self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_screenSize];
  *v11 = v12;
  *(v11 + 1) = v13;
  swift_unknownObjectUnownedInit();
  v16.receiver = self;
  v16.super_class = type metadata accessor for NTKGladiusQuad();
  v14 = [(NTKGladiusQuad *)&v16 init];

  return v14;
}

- (void)setupForQuadView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_B654();
}

- (void)purge
{
  v2 = *&self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer];
  *&self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer] = 0;
}

- (void)setColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_AFC4(v4);
}

- (void)setShadowDensity:(double)a3
{
  v3 = *&self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer];
  if (v3)
  {
    v4 = a3;
    *(v3 + 128) = v4;
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = sub_AABC(&unk_29F50, &qword_16DC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v25[-v12];
  v14 = sub_AABC(&qword_29D88, qword_16D70);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v25[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v25[-v19];
  if (a3)
  {
    sub_12910();
    v21 = sub_12920();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v22 = sub_12920();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  v23 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_dateOverride;
  swift_beginAccess();
  sub_BB0C(&self->CLKUIQuad_opaque[v23], v11, &unk_29F50, &qword_16DC0);
  sub_BB0C(v20, v18, &qword_29D88, qword_16D70);
  v24 = self;
  sub_BE14(v11, v18, v13, a4);
  sub_BB74(v20, &qword_29D88, qword_16D70);
  swift_beginAccess();
  sub_BA9C(v13, &self->CLKUIQuad_opaque[v23]);
  swift_endAccess();
}

- (BOOL)prepareForTime:(double)a3
{
  v3 = self;
  v4 = sub_B898();

  return v4 & 1;
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  if (*&self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer])
  {
    swift_unknownObjectRetain();
    v5 = self;

    sub_12548(a3);

    swift_unknownObjectRelease();
  }
}

- (_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end