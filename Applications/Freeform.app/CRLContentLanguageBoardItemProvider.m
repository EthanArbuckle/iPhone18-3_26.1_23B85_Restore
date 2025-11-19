@interface CRLContentLanguageBoardItemProvider
- (CRLIngestibleItemImportableBoardItemProviderDelegate)delegate;
- (NSError)error;
- (_TtC8Freeform35CRLContentLanguageBoardItemProvider)init;
- (void)provideBoardItemWithFactory:(_TtC8Freeform19CRLBoardItemFactory *)a3 completionHandler:(id)a4;
- (void)setBoardItem:(id)a3;
- (void)setError:(id)a3;
- (void)setProgress:(id)a3;
@end

@implementation CRLContentLanguageBoardItemProvider

- (CRLIngestibleItemImportableBoardItemProviderDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setProgress:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_progress);
  *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_progress) = a3;
  v3 = a3;
}

- (void)setBoardItem:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItem);
  *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItem) = a3;
  v3 = a3;
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

- (void)setError:(id)a3
{
  *(self + OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_error) = a3;
  v5 = self;
  v4 = a3;
}

- (void)provideBoardItemWithFactory:(_TtC8Freeform19CRLBoardItemFactory *)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_10119D67C(0, 0, v9, &unk_101470870, v14);
}

- (_TtC8Freeform35CRLContentLanguageBoardItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end