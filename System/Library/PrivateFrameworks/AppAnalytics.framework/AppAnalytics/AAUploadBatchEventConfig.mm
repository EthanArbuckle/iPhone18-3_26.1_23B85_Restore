@interface AAUploadBatchEventConfig
+ (AAUploadBatchEventConfig)default;
- (AAUploadBatchEventConfig)init;
- (NSURL)directory;
- (id)withDebuggingEnabled:(BOOL)enabled;
- (id)withDirectory:(id)directory;
- (id)withMaxByteSizePerSessionBatch:(int64_t)batch;
- (id)withMaxEventsPerSessionBatch:(int64_t)batch;
- (id)withMaxUploadTries:(int64_t)tries;
- (id)withTransparencyLoggingEnabled:(BOOL)enabled;
@end

@implementation AAUploadBatchEventConfig

+ (AAUploadBatchEventConfig)default
{
  if (qword_1EDBCB790 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBCB798;

  return v3;
}

- (NSURL)directory
{
  v3 = sub_1B6AB8BB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___AAUploadBatchEventConfig_directory, v3);
  v8 = sub_1B6AB8B20();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (id)withMaxEventsPerSessionBatch:(int64_t)batch
{
  selfCopy = self;
  v5 = UploadBatchEventConfig.with(maxEventsPerSessionBatch:)(batch);

  return v5;
}

- (id)withMaxByteSizePerSessionBatch:(int64_t)batch
{
  selfCopy = self;
  v5 = UploadBatchEventConfig.with(maxByteSizePerSessionBatch:)(batch);

  return v5;
}

- (id)withTransparencyLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v5 = UploadBatchEventConfig.with(transparencyLoggingEnabled:)(enabledCopy);

  return v5;
}

- (id)withDebuggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v5 = UploadBatchEventConfig.with(debuggingEnabled:)(enabledCopy);

  return v5;
}

- (id)withMaxUploadTries:(int64_t)tries
{
  selfCopy = self;
  v5 = UploadBatchEventConfig.with(maxUploadTries:)(tries);

  return v5;
}

- (id)withDirectory:(id)directory
{
  v4 = sub_1B6AB8BB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8B60();
  selfCopy = self;
  v10 = UploadBatchEventConfig.with(directory:)(v8);

  (*(v5 + 8))(v8, v4);

  return v10;
}

- (AAUploadBatchEventConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end