@interface AnnotationProviderService
- (_TtC5Books25AnnotationProviderService)init;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
@end

@implementation AnnotationProviderService

- (_TtC5Books25AnnotationProviderService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  v12 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v12 - 8);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v27[-v16];
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  pathCopy = path;
  indexPathCopy = indexPath;
  sub_1007A3504();
  swift_unknownObjectRelease();
  if (pathCopy)
  {
    sub_100796E14();

    v22 = sub_100796E74();
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  }

  else
  {
    v23 = sub_100796E74();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  }

  if (indexPathCopy)
  {
    sub_100796E14();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_100796E74();
  (*(*(v25 - 8) + 56))(v14, v24, 1, v25);
  AnnotationProviderService.controller(_:didChange:at:for:newIndexPath:)(controllerCopy, v27, v26, type);

  sub_100007840(v14, &qword_100AECD00);
  sub_100007840(v17, &qword_100AECD00);
  sub_1000074E0(v27);
}

@end