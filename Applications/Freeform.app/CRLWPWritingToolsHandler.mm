@interface CRLWPWritingToolsHandler
- (_TtC8Freeform24CRLWPWritingToolsHandler)init;
- (_TtC8Freeform24CRLWPWritingToolsHandler)initWithInteractiveCanvasController:(id)a3;
- (void)stopWritingTools;
- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9;
- (void)writingToolsCoordinator:(id)a3 requestsContextsForScope:(int64_t)a4 completion:(id)a5;
- (void)writingToolsCoordinator:(id)a3 selectRanges:(id)a4 inContext:(id)a5 completion:(id)a6;
- (void)writingToolsCoordinator:(id)a3 willChangeToState:(int64_t)a4 completion:(id)a5;
@end

@implementation CRLWPWritingToolsHandler

- (_TtC8Freeform24CRLWPWritingToolsHandler)initWithInteractiveCanvasController:(id)a3
{
  v3 = a3;
  v4 = sub_101008904();

  return v4;
}

- (void)writingToolsCoordinator:(id)a3 requestsContextsForScope:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_101008D2C(a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)writingToolsCoordinator:(id)a3 replaceRange:(_NSRange)a4 inContext:(id)a5 proposedText:(id)a6 reason:(int64_t)a7 animationParameters:(id)a8 completion:(id)a9
{
  length = a4.length;
  location = a4.location;
  v16 = _Block_copy(a9);
  _Block_copy(v16);
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = self;
  sub_101009374(location, length, v18, v19, a7, a8, v21, v16);
  _Block_release(v16);
  _Block_release(v16);
}

- (void)writingToolsCoordinator:(id)a3 selectRanges:(id)a4 inContext:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  sub_100006370(0, &qword_101A04270);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v9);
  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_101009D68(v10, v12, v13, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)writingToolsCoordinator:(id)a3 willChangeToState:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_10100DC64(v9, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)stopWritingTools
{
  v2 = self;
  sub_1010040D0();
}

- (_TtC8Freeform24CRLWPWritingToolsHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end