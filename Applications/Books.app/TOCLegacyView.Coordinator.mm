@interface TOCLegacyView.Coordinator
- (_TtCV5Books13TOCLegacyView11Coordinator)init;
- (id)directoryContent:(id)a3 locationForPageNumber:(int64_t)a4;
- (id)tocViewController:(id)a3 pageTitleForAnnotation:(id)a4;
- (id)tocViewControllerCurrentLocation:(id)a3;
- (id)tocViewControllerTocIdCssRules:(id)a3;
- (int64_t)directoryContent:(id)a3 pageNumberForLocation:(id)a4;
- (int64_t)tocViewController:(id)a3 pageNumberForAnnotation:(id)a4;
- (int64_t)tocViewController:(id)a3 pageNumberForChapter:(id)a4;
- (void)tocViewController:(id)a3 didSelectChapter:(id)a4;
- (void)tocViewController:(id)a3 shareAnnotations:(id)a4 sourceView:(id)a5;
- (void)tocViewController:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)tocViewControllerContentDidChange:(id)a3;
- (void)tocViewControllerDidChangeEditing:(BOOL)a3;
@end

@implementation TOCLegacyView.Coordinator

- (int64_t)directoryContent:(id)a3 pageNumberForLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100674480(v7);
  v10 = v9;

  return v10;
}

- (id)directoryContent:(id)a3 locationForPageNumber:(int64_t)a4
{
  v6 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v7 = *(&self->super.isa + v6);
  sub_1007A0664();
  if (swift_dynamicCastClass())
  {
    v8 = self;
    v9 = v7;
    swift_unknownObjectRetain();
    v10 = sub_1004A73A8(a4);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)tocViewController:(id)a3 didSelectChapter:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_100674AA4(a4);
  swift_unknownObjectRelease();
}

- (id)tocViewController:(id)a3 pageTitleForAnnotation:(id)a4
{
  if (a4)
  {
    v6 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
    swift_beginAccess();
    v8 = *(&self->super.isa + v6);
    v9 = self;
    v10 = v8;
    v11 = a4;
    sub_1006A22DC(v11);
    v13 = v12;

    if (v13)
    {
      v14 = sub_1007A2214();

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (int64_t)tocViewController:(id)a3 pageNumberForAnnotation:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v7 = *(&self->super.isa + v5);
  v8 = self;
  v9 = v7;
  v10 = a4;
  v11 = sub_1006A24A0(v10);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

- (int64_t)tocViewController:(id)a3 pageNumberForChapter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100674D60(a4);

  return v9;
}

- (void)tocViewController:(id)a3 shareAnnotations:(id)a4 sourceView:(id)a5
{
  v7 = sub_1001F1160(&unk_100AE6A30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  sub_10000A7C4(0, &qword_100AECB40);
  v11 = sub_1007A25E4();
  v12 = self + OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v13 = *(v12 + 9);
  v14 = a5;
  v15 = self;

  sub_10079FED4();
  v13(v11, v10);

  (*(v8 + 8))(v10, v7);
}

- (id)tocViewControllerTocIdCssRules:(id)a3
{
  v4 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  swift_getObjectType();
  v6 = self;
  v7 = v5;
  sub_10079F9D4();
  sub_10079F394();
  v9 = v8;

  if (v9)
  {
    v10 = sub_1007A2214();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tocViewControllerCurrentLocation:(id)a3
{
  v4 = type metadata accessor for TOCLegacyView(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  sub_1006741C0(self + v7, v6);
  v8 = sub_100672130();
  sub_100674224(v6);

  return v8;
}

- (void)tocViewController:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  sub_1006750FC(a3, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)tocViewControllerContentDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10067524C();
}

- (void)tocViewControllerDidChangeEditing:(BOOL)a3
{
  v5 = type metadata accessor for TOCLegacyView(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  sub_1006741C0(self + v9, v8);
  v10 = &v8[*(v6 + 68)];
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v10) = v10[16];
  v14 = v11;
  v15 = v12;
  v16 = v10;
  v13[15] = a3;

  sub_1001F1160(&qword_100AF10C0);
  sub_10079E1D4();
  sub_100674224(v8);
}

- (_TtCV5Books13TOCLegacyView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end