@interface TOCLegacyView.Coordinator
- (_TtCV5Books13TOCLegacyView11Coordinator)init;
- (id)directoryContent:(id)content locationForPageNumber:(int64_t)number;
- (id)tocViewController:(id)controller pageTitleForAnnotation:(id)annotation;
- (id)tocViewControllerCurrentLocation:(id)location;
- (id)tocViewControllerTocIdCssRules:(id)rules;
- (int64_t)directoryContent:(id)content pageNumberForLocation:(id)location;
- (int64_t)tocViewController:(id)controller pageNumberForAnnotation:(id)annotation;
- (int64_t)tocViewController:(id)controller pageNumberForChapter:(id)chapter;
- (void)tocViewController:(id)controller didSelectChapter:(id)chapter;
- (void)tocViewController:(id)controller shareAnnotations:(id)annotations sourceView:(id)view;
- (void)tocViewController:(id)controller willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)tocViewControllerContentDidChange:(id)change;
- (void)tocViewControllerDidChangeEditing:(BOOL)editing;
@end

@implementation TOCLegacyView.Coordinator

- (int64_t)directoryContent:(id)content pageNumberForLocation:(id)location
{
  contentCopy = content;
  locationCopy = location;
  selfCopy = self;
  sub_100674480(locationCopy);
  v10 = v9;

  return v10;
}

- (id)directoryContent:(id)content locationForPageNumber:(int64_t)number
{
  v6 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v7 = *(&self->super.isa + v6);
  sub_1007A0664();
  if (swift_dynamicCastClass())
  {
    selfCopy = self;
    v9 = v7;
    swift_unknownObjectRetain();
    v10 = sub_1004A73A8(number);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)tocViewController:(id)controller didSelectChapter:(id)chapter
{
  swift_unknownObjectRetain();
  chapterCopy = chapter;
  selfCopy = self;
  sub_100674AA4(chapter);
  swift_unknownObjectRelease();
}

- (id)tocViewController:(id)controller pageTitleForAnnotation:(id)annotation
{
  if (annotation)
  {
    v6 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
    swift_beginAccess();
    v8 = *(&self->super.isa + v6);
    selfCopy = self;
    v10 = v8;
    annotationCopy = annotation;
    sub_1006A22DC(annotationCopy);
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

- (int64_t)tocViewController:(id)controller pageNumberForAnnotation:(id)annotation
{
  if (!annotation)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v7 = *(&self->super.isa + v5);
  selfCopy = self;
  v9 = v7;
  annotationCopy = annotation;
  v11 = sub_1006A24A0(annotationCopy);
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

- (int64_t)tocViewController:(id)controller pageNumberForChapter:(id)chapter
{
  controllerCopy = controller;
  chapterCopy = chapter;
  selfCopy = self;
  v9 = sub_100674D60(chapter);

  return v9;
}

- (void)tocViewController:(id)controller shareAnnotations:(id)annotations sourceView:(id)view
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
  viewCopy = view;
  selfCopy = self;

  sub_10079FED4();
  v13(v11, v10);

  (*(v8 + 8))(v10, v7);
}

- (id)tocViewControllerTocIdCssRules:(id)rules
{
  v4 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  swift_getObjectType();
  selfCopy = self;
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

- (id)tocViewControllerCurrentLocation:(id)location
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

- (void)tocViewController:(id)controller willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006750FC(controller, coordinator);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)tocViewControllerContentDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10067524C();
}

- (void)tocViewControllerDidChangeEditing:(BOOL)editing
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
  v13[15] = editing;

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