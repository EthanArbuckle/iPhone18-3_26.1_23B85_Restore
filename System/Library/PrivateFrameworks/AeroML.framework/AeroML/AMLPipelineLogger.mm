@interface AMLPipelineLogger
- (AMLFeaturesConfiguration)featuresConfiguration;
- (id)copyWithZone:(void *)zone;
- (id)logPipeline:(id)pipeline features:(id)features metadata:(id)metadata async:(BOOL)async;
- (id)logPipelineAsync:(id)async features:(id)features metadata:(id)metadata async:(BOOL)a6;
- (void)encodeWithCoder:(id)coder;
- (void)setFeaturesConfiguration:(id)configuration;
@end

@implementation AMLPipelineLogger

- (AMLFeaturesConfiguration)featuresConfiguration
{
  v2 = sub_21AEADB60();

  return v2;
}

- (void)setFeaturesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_21AEADBCC(configurationCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  AMLPipelineLogger.copy(with:)(v6);

  sub_21AEAF9B0(v6, v6[3]);
  v4 = sub_21AF09E3C();
  sub_21AEA79F0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AMLPipelineLogger.encode(with:)(coderCopy);
}

- (id)logPipeline:(id)pipeline features:(id)features metadata:(id)metadata async:(BOOL)async
{
  v8 = sub_21AF097CC();
  v10 = v9;
  sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  v11 = sub_21AF0972C();
  metadataCopy = metadata;
  selfCopy = self;
  sub_21AEAE07C(v8, v10, v11, metadataCopy);

  v14 = sub_21AF097BC();

  return v14;
}

- (id)logPipelineAsync:(id)async features:(id)features metadata:(id)metadata async:(BOOL)a6
{
  v6 = a6;
  v9 = sub_21AF097CC();
  v11 = v10;
  sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  v12 = sub_21AF0972C();
  metadataCopy = metadata;
  selfCopy = self;
  sub_21AEAE810(v9, v11, v12, metadataCopy, v6);

  v15 = sub_21AF097BC();

  return v15;
}

@end