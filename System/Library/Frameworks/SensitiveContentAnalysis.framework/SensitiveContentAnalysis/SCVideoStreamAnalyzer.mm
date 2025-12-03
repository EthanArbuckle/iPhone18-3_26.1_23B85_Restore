@interface SCVideoStreamAnalyzer
- (SCSensitivityAnalysis)analysis;
- (SCVideoStreamAnalyzer)init;
- (SCVideoStreamAnalyzer)initWithAnalysisOfPreviousCall:(id)call participantUUID:(id)d auditToken:(id *)token options:(unint64_t)options error:(id *)error;
- (SCVideoStreamAnalyzer)initWithAnalysisOfPreviousCall:(id)call participantUUID:(id)d options:(unint64_t)options error:(id *)error;
- (SCVideoStreamAnalyzer)initWithCoder:(id)coder;
- (SCVideoStreamAnalyzer)initWithParticipantUUID:(id)d auditToken:(id *)token options:(unint64_t)options error:(id *)error;
- (SCVideoStreamAnalyzer)initWithXPCObject:(id)object error:(id *)error;
- (id)analysisChangedHandler;
- (id)encodeForConnection:(id)connection;
- (uint64_t)beginAnalysisOfVideoProcessingDecompressionSession:(uint64_t)session error:;
- (void)analyzePixelBuffer:(__CVBuffer *)buffer;
- (void)analyzePixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation;
- (void)analyzePixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest;
- (void)analyzePixelBuffer:(__CVBuffer *)buffer presentationTimestamp:(id *)timestamp orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest;
- (void)continueStream;
- (void)encodeWithCoder:(id)coder;
- (void)endAnalysis;
- (void)setAnalysisChangedHandler:(id)handler;
- (void)streamBecameVisible;
@end

@implementation SCVideoStreamAnalyzer

- (SCSensitivityAnalysis)analysis
{
  selfCopy = self;
  v3 = VideoStreamAnalyzer.analysisResult.getter();
  if (v4 == -1)
  {

    v8 = 0;
  }

  else
  {
    v10[1] = v3;
    v11 = v4 & 1;
    v5 = v3;
    v6 = v4;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
    Result.success.getter(v7, v10);

    sub_1AEA63A30(v5, v6);
    v8 = v10[0];
  }

  return v8;
}

- (id)analysisChangedHandler
{
  v2 = (*(&self->super.isa + OBJC_IVAR___SCVideoStreamAnalyzer_analyzer) + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_analysisChangedHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AEAA1074;
    aBlock[3] = &block_descriptor_5;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAnalysisChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1AEAB216C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(&self->super.isa + OBJC_IVAR___SCVideoStreamAnalyzer_analyzer) + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_analysisChangedHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1AEA63D58(v4);
  sub_1AEA438E0(v7);
  sub_1AEA438E0(v4);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1AEA92F28(coderCopy);
}

- (SCVideoStreamAnalyzer)initWithCoder:(id)coder
{
  type metadata accessor for VideoStreamAnalyzer();
  coderCopy = coder;
  v6 = VideoStreamAnalyzer.__allocating_init(coder:)(coderCopy);
  if (v6)
  {
    *(&self->super.isa + OBJC_IVAR___SCVideoStreamAnalyzer_analyzer) = v6;
    v9.receiver = self;
    v9.super_class = SCVideoStreamAnalyzer;
    v7 = [(SCVideoStreamAnalyzer *)&v9 init];
  }

  else
  {

    type metadata accessor for SCVideoStreamAnalyzer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

- (SCVideoStreamAnalyzer)initWithParticipantUUID:(id)d auditToken:(id *)token options:(unint64_t)options error:(id *)error
{
  v8 = *token->var0;
  v9 = *&token->var0[2];
  v10 = *&token->var0[4];
  v11 = *&token->var0[6];
  v12 = sub_1AEAF95BC();
  v14 = v13;
  if (options == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  type metadata accessor for VideoStreamAnalyzer();
  *(&self->super.isa + OBJC_IVAR___SCVideoStreamAnalyzer_analyzer) = VideoStreamAnalyzer.__allocating_init(participantUUID:auditToken:streamDirection:)(v12, v14, v8, v9, v10, v11, v15);
  v17.receiver = self;
  v17.super_class = SCVideoStreamAnalyzer;
  return [(SCVideoStreamAnalyzer *)&v17 init];
}

- (SCVideoStreamAnalyzer)initWithAnalysisOfPreviousCall:(id)call participantUUID:(id)d auditToken:(id *)token options:(unint64_t)options error:(id *)error
{
  v9 = *token->var0;
  v10 = *&token->var0[2];
  v11 = *&token->var0[4];
  v12 = *&token->var0[6];
  v13 = sub_1AEAF95BC();
  v15 = v14;
  if (options == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  type metadata accessor for VideoStreamAnalyzer();
  callCopy = call;
  *(&self->super.isa + OBJC_IVAR___SCVideoStreamAnalyzer_analyzer) = VideoStreamAnalyzer.__allocating_init(analysisOfPreviousCall:participantUUID:auditToken:streamDirection:)(callCopy, v13, v15, v9, v10, v11, v12, v16);
  v21.receiver = self;
  v21.super_class = SCVideoStreamAnalyzer;
  v18 = [(SCVideoStreamAnalyzer *)&v21 init];

  return v18;
}

- (SCVideoStreamAnalyzer)initWithAnalysisOfPreviousCall:(id)call participantUUID:(id)d options:(unint64_t)options error:(id *)error
{
  v9 = sub_1AEAF95BC();
  v11 = v10;
  if (options == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  type metadata accessor for VideoStreamAnalyzer();
  callCopy = call;
  *(&self->super.isa + OBJC_IVAR___SCVideoStreamAnalyzer_analyzer) = VideoStreamAnalyzer.__allocating_init(analysisOfPreviousCall:participantUUID:streamDirection:)(callCopy, v9, v11, v12);
  v16.receiver = self;
  v16.super_class = SCVideoStreamAnalyzer;
  v14 = [(SCVideoStreamAnalyzer *)&v16 init];

  return v14;
}

- (SCVideoStreamAnalyzer)initWithXPCObject:(id)object error:(id *)error
{
  type metadata accessor for VideoStreamAnalyzer();
  swift_unknownObjectRetain_n();
  *(&self->super.isa + OBJC_IVAR___SCVideoStreamAnalyzer_analyzer) = VideoStreamAnalyzer.__allocating_init(xpcObject:)();
  v7.receiver = self;
  v7.super_class = SCVideoStreamAnalyzer;
  v5 = [(SCVideoStreamAnalyzer *)&v7 init];
  swift_unknownObjectRelease();
  return v5;
}

- (void)analyzePixelBuffer:(__CVBuffer *)buffer
{
  bufferCopy = buffer;
  selfCopy = self;
  v5 = sub_1AEA5D60C();
  v6 = sub_1AEA61794();
  memset(v10, 0, sizeof(v10));
  v11 = 1;
  FrameDetails.init(orientation:frameSize:regionOfInterest:)(v5 | ((HIDWORD(v5) & 1) << 32), v10, v9, v6, v7);
  VideoStreamAnalyzer.analyze(_:timestamp:frameDetails:)(bufferCopy, 0, 0, 0, 1, v9);
}

- (SCVideoStreamAnalyzer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)endAnalysis
{
  selfCopy = self;
  VideoStreamAnalyzer.endAnalysis()();
}

- (void)continueStream
{
  selfCopy = self;
  VideoStreamAnalyzer.continueStream()();
}

- (id)encodeForConnection:(id)connection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = VideoStreamAnalyzer.encode(forConnection:)();
  swift_unknownObjectRelease();

  return v5;
}

- (uint64_t)beginAnalysisOfVideoProcessingDecompressionSession:(uint64_t)session error:
{
  selfCopy = self;
  sub_1AEAD6210(session);

  return 1;
}

- (void)analyzePixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation
{
  bufferCopy = buffer;
  selfCopy = self;
  v7 = sub_1AEA61794();
  memset(v11, 0, sizeof(v11));
  v12 = 1;
  LOBYTE(v10[0]) = 0;
  FrameDetails.init(orientation:frameSize:regionOfInterest:)(orientation, v11, v10, v7, v8);
  VideoStreamAnalyzer.analyze(_:timestamp:frameDetails:)(bufferCopy, 0, 0, 0, 1, v10);
}

- (void)analyzePixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  bufferCopy = buffer;
  selfCopy = self;
  v12 = sub_1AEA61794();
  *v16 = x;
  *&v16[1] = y;
  *&v16[2] = width;
  *&v16[3] = height;
  v17 = 0;
  LOBYTE(v15[0]) = 0;
  FrameDetails.init(orientation:frameSize:regionOfInterest:)(orientation, v16, v15, v12, v13);
  VideoStreamAnalyzer.analyze(_:timestamp:frameDetails:)(bufferCopy, 0, 0, 0, 1, v15);
}

- (void)analyzePixelBuffer:(__CVBuffer *)buffer presentationTimestamp:(id *)timestamp orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  var0 = timestamp->var0;
  v13 = *&timestamp->var1;
  var3 = timestamp->var3;
  bufferCopy = buffer;
  selfCopy = self;
  sub_1AEAB19D4(bufferCopy, var0, v13, var3, orientation, x, y, width, height);
}

- (void)streamBecameVisible
{
  selfCopy = self;
  sub_1AEAD6F58();
}

@end