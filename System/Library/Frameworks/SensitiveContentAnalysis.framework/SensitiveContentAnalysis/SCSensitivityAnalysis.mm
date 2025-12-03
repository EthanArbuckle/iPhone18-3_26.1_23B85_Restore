@interface SCSensitivityAnalysis
+ (id)fetchExclusionPredicateWithCompactAnalysisKeyPath:(id)path;
+ (id)subscribeToSensitiveContentPolicyChangeNotifications:(id)notifications;
+ (void)prefetchSensitiveContentPolicy:(id)policy;
- (BOOL)isContentPreviewable;
- (BOOL)isEqual:(id)equal;
- (BOOL)mayNeedOnDemandAnalysis;
- (BOOL)shouldShowStickerAttributions;
- (NSData)dataRepresentation;
- (SCSensitivityAnalysis)init;
- (SCSensitivityAnalysis)initWithAnalysisResults:(id)results error:(id *)error;
- (SCSensitivityAnalysis)initWithDataRepresentation:(id)representation error:(id *)error;
- (SCSensitivityAnalysis)initWithMediaAnalysisServiceResult:(id)result;
- (SCSensitivityAnalysis)initWithNudityDetectionValue:(BOOL)value;
- (id)initFromCompactAnalysis:(int64_t)analysis error:(id *)error;
- (id)transferringStateFromAnalysis:(id)analysis;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCSensitivityAnalysis

+ (void)prefetchSensitiveContentPolicy:(id)policy
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00]();
  v6 = &v12 - v5;
  v7 = _Block_copy(policy);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_1AEAF982C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1AEB02720;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1AEB02730;
  v11[5] = v10;
  sub_1AEAC1C28(0, 0, v6, &unk_1AEB02740, v11);
}

- (SCSensitivityAnalysis)initWithNudityDetectionValue:(BOOL)value
{
  v3 = (self + OBJC_IVAR___SCSensitivityAnalysis__analysis);
  *v3 = value;
  v3[1] = 0;
  v5.receiver = self;
  v5.super_class = SCSensitivityAnalysis;
  return [(SCSensitivityAnalysis *)&v5 init];
}

- (SCSensitivityAnalysis)initWithMediaAnalysisServiceResult:(id)result
{
  resultCopy = result;
  v4 = sub_1AEADBBBC(resultCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SCSensitivityAnalysis.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AEAF9CCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SCSensitivityAnalysis.isEqual(_:)(v8);

  sub_1AEA41FAC(v8, &unk_1EB5E9680);
  return v6;
}

- (SCSensitivityAnalysis)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)subscribeToSensitiveContentPolicyChangeNotifications:(id)notifications
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = _Block_copy(notifications);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = sub_1AEAF982C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_1AEAF97FC();

  v10 = sub_1AEAF97EC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = sub_1AEA89E34;
  v11[5] = v8;
  v13 = sub_1AEA5E2A0(0, 0, v6, &unk_1AEB02710, v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9690);
  v15 = objc_allocWithZone(v14);
  *&v15[qword_1EB5E9698] = v13;
  v18.receiver = v15;
  v18.super_class = v14;
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

- (NSData)dataRepresentation
{
  v2 = *(&self->super.isa + OBJC_IVAR___SCSensitivityAnalysis__analysis);
  v3 = *(&self->super.isa + OBJC_IVAR___SCSensitivityAnalysis__analysis + 2);
  selfCopy = self;
  v5 = swift_slowAlloc();
  *v5 = (v3 << 16) | (v2 << 32) | 0x100000000000000;
  v6 = sub_1AEADBD18(v5, 8);
  v8 = v7;
  MEMORY[0x1B270E620](v5, -1, -1);

  v9 = sub_1AEAF8CCC();
  sub_1AEA77408(v6, v8);

  return v9;
}

- (SCSensitivityAnalysis)initWithDataRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v5 = sub_1AEAF8CEC();
  v7 = v6;

  return SCSensitivityAnalysis.init(dataRepresentation:)(v5, v7);
}

- (id)transferringStateFromAnalysis:(id)analysis
{
  analysisCopy = analysis;
  selfCopy = self;
  v6 = sub_1AEAD8CC0(analysisCopy);

  return v6;
}

+ (id)fetchExclusionPredicateWithCompactAnalysisKeyPath:(id)path
{
  v3 = sub_1AEAF95BC();
  v5 = v4;
  sub_1AEA49EF8(0, &qword_1EB5E96F8);
  if (qword_1EB5F00A0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9700);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AEAFCC40;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1AEADBFD4();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = v3;
  *(v6 + 80) = v5;
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 112) = v3;
  *(v6 + 120) = v5;
  swift_bridgeObjectRetain_n();
  v9 = sub_1AEAF9A5C();

  return v9;
}

- (BOOL)isContentPreviewable
{
  selfCopy = self;
  v3 = sub_1AEADA704();

  return v3;
}

- (BOOL)mayNeedOnDemandAnalysis
{
  selfCopy = self;
  v3 = sub_1AEADA840();

  return v3;
}

- (id)initFromCompactAnalysis:(int64_t)analysis error:(id *)error
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  SensitivityAnalysis.init(from:)(analysis, &v8);
  LODWORD(analysis) = v8;
  initWithNudityDetectionValue_ = [objc_allocWithZone(ObjCClassFromObject) initWithNudityDetectionValue_];
  *&initWithNudityDetectionValue_[OBJC_IVAR___SCSensitivityAnalysis__analysis] = analysis;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return initWithNudityDetectionValue_;
}

- (BOOL)shouldShowStickerAttributions
{
  selfCopy = self;
  v3 = sub_1AEADAB50();

  return v3;
}

- (SCSensitivityAnalysis)initWithAnalysisResults:(id)results error:(id *)error
{
  sub_1AEA49EF8(0, &unk_1EB5E9718);
  v4 = sub_1AEAF96EC();
  return sub_1AEADAD44(v4);
}

@end