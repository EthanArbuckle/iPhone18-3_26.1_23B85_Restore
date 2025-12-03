@interface CRLContentLanguageBoardItemProvider
- (CRLIngestibleItemImportableBoardItemProviderDelegate)delegate;
- (NSError)error;
- (_TtC8Freeform35CRLContentLanguageBoardItemProvider)init;
- (void)provideBoardItemWithFactory:(_TtC8Freeform19CRLBoardItemFactory *)factory completionHandler:(id)handler;
- (void)setBoardItem:(id)item;
- (void)setError:(id)error;
- (void)setProgress:(id)progress;
@end

@implementation CRLContentLanguageBoardItemProvider

- (CRLIngestibleItemImportableBoardItemProviderDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setProgress:(id)progress
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_progress);
  *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_progress) = progress;
  progressCopy = progress;
}

- (void)setBoardItem:(id)item
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItem);
  *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItem) = item;
  itemCopy = item;
}

- (NSError)error
{
  if (*(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_error))
  {
    swift_errorRetain();
    v2 = _convertErrorToNSError(_:)();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setError:(id)error
{
  *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_error) = error;
  selfCopy = self;
  errorCopy = error;
}

- (void)provideBoardItemWithFactory:(_TtC8Freeform19CRLBoardItemFactory *)factory completionHandler:(id)handler
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = factory;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014AFE68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014938A0;
  v14[5] = v13;
  factoryCopy = factory;
  selfCopy = self;
  sub_10119D67C(0, 0, v9, &unk_101470870, v14);
}

- (_TtC8Freeform35CRLContentLanguageBoardItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end