@interface BEDownloadMonitor
+ (id)createAccessToken;
- (BEDownloadMonitor)init;
- (BEDownloadMonitor)initWithSourceURL:(id)l destinationURL:(id)rL observedProgress:(id)progress liveActivityAccessToken:(id)token;
- (void)beginMonitoring:(id)monitoring;
- (void)dealloc;
- (void)resumeMonitoring:(NSURL *)monitoring completionHandler:(id)handler;
- (void)useDownloadsFolderWithPlaceholderType:(id)type finalFileCreatedHandler:(id)handler;
@end

@implementation BEDownloadMonitor

- (BEDownloadMonitor)initWithSourceURL:(id)l destinationURL:(id)rL observedProgress:(id)progress liveActivityAccessToken:(id)token
{
  v8 = sub_19D51DF6C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  sub_19D51DF3C();
  sub_19D51DF3C();
  progressCopy = progress;
  tokenCopy = token;
  v17 = sub_19D51DFAC();
  v19 = v18;

  return BEDownloadMonitor.init(sourceURL:destinationURL:observedProgress:liveActivityAccessToken:)(v14, v12, progressCopy, v17, v19);
}

- (void)useDownloadsFolderWithPlaceholderType:(id)type finalFileCreatedHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015980, &qword_19D520970);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  if (type)
  {
    selfCopy = self;
    typeCopy = type;
    sub_19D51E16C();

    v14 = sub_19D51E18C();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  else
  {
    v15 = sub_19D51E18C();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    selfCopy2 = self;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  sub_19D50DF74(v10, sub_19D516330, v17);

  sub_19D50116C(v10, &qword_1EB015980, &qword_19D520970);
}

- (void)beginMonitoring:(id)monitoring
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(monitoring);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_19D51E37C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_19D520B28;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19D520B30;
  v13[5] = v12;
  selfCopy = self;
  sub_19D5143E8(0, 0, v8, &unk_19D520B38, v13);
}

- (void)resumeMonitoring:(NSURL *)monitoring completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = monitoring;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_19D51E37C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19D520AE0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19D520AF0;
  v15[5] = v14;
  monitoringCopy = monitoring;
  selfCopy = self;
  sub_19D5143E8(0, 0, v10, &unk_19D520B00, v15);
}

+ (id)createAccessToken
{
  v2 = _s16BrowserEngineKit17BEDownloadMonitorC17createAccessToken10Foundation4DataVSgyFZ_0();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = sub_19D51DF9C();
    sub_19D5155C4(v5, v6);
    v4 = v7;
  }

  return v4;
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___BEDownloadMonitor_liveActivitySandboxExtensionHandle);
  selfCopy = self;
  sandbox_extension_release();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for BEDownloadMonitor(0);
  [(BEDownloadMonitor *)&v4 dealloc];
}

- (BEDownloadMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end