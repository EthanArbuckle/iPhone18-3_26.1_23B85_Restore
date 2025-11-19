@interface AAUploadBatchEventConfig
+ (AAUploadBatchEventConfig)default;
- (AAUploadBatchEventConfig)init;
- (NSURL)directory;
- (id)withDebuggingEnabled:(BOOL)a3;
- (id)withDirectory:(id)a3;
- (id)withMaxByteSizePerSessionBatch:(int64_t)a3;
- (id)withMaxEventsPerSessionBatch:(int64_t)a3;
- (id)withMaxUploadTries:(int64_t)a3;
- (id)withTransparencyLoggingEnabled:(BOOL)a3;
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

- (id)withMaxEventsPerSessionBatch:(int64_t)a3
{
  v4 = self;
  v5 = UploadBatchEventConfig.with(maxEventsPerSessionBatch:)(a3);

  return v5;
}

- (id)withMaxByteSizePerSessionBatch:(int64_t)a3
{
  v4 = self;
  v5 = UploadBatchEventConfig.with(maxByteSizePerSessionBatch:)(a3);

  return v5;
}

- (id)withTransparencyLoggingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = UploadBatchEventConfig.with(transparencyLoggingEnabled:)(v3);

  return v5;
}

- (id)withDebuggingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = UploadBatchEventConfig.with(debuggingEnabled:)(v3);

  return v5;
}

- (id)withMaxUploadTries:(int64_t)a3
{
  v4 = self;
  v5 = UploadBatchEventConfig.with(maxUploadTries:)(a3);

  return v5;
}

- (id)withDirectory:(id)a3
{
  v4 = sub_1B6AB8BB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8B60();
  v9 = self;
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