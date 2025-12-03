@interface CRLWPWritingToolsHandler
- (_TtC8Freeform24CRLWPWritingToolsHandler)init;
- (_TtC8Freeform24CRLWPWritingToolsHandler)initWithInteractiveCanvasController:(id)controller;
- (void)stopWritingTools;
- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator requestsContextsForScope:(int64_t)scope completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator selectRanges:(id)ranges inContext:(id)context completion:(id)completion;
- (void)writingToolsCoordinator:(id)coordinator willChangeToState:(int64_t)state completion:(id)completion;
@end

@implementation CRLWPWritingToolsHandler

- (_TtC8Freeform24CRLWPWritingToolsHandler)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_101008904();

  return v4;
}

- (void)writingToolsCoordinator:(id)coordinator requestsContextsForScope:(int64_t)scope completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_101008D2C(scope, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)writingToolsCoordinator:(id)coordinator replaceRange:(_NSRange)range inContext:(id)context proposedText:(id)text reason:(int64_t)reason animationParameters:(id)parameters completion:(id)completion
{
  length = range.length;
  location = range.location;
  v16 = _Block_copy(completion);
  _Block_copy(v16);
  coordinatorCopy = coordinator;
  contextCopy = context;
  textCopy = text;
  parametersCopy = parameters;
  selfCopy = self;
  sub_101009374(location, length, contextCopy, textCopy, reason, parameters, selfCopy, v16);
  _Block_release(v16);
  _Block_release(v16);
}

- (void)writingToolsCoordinator:(id)coordinator selectRanges:(id)ranges inContext:(id)context completion:(id)completion
{
  v9 = _Block_copy(completion);
  sub_100006370(0, &qword_101A04270);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v9);
  coordinatorCopy = coordinator;
  contextCopy = context;
  selfCopy = self;
  sub_101009D68(v10, contextCopy, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)writingToolsCoordinator:(id)coordinator willChangeToState:(int64_t)state completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_10100DC64(coordinatorCopy, state, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)stopWritingTools
{
  selfCopy = self;
  sub_1010040D0();
}

- (_TtC8Freeform24CRLWPWritingToolsHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end