@interface AMLPipelineLogger
- (AMLFeaturesConfiguration)featuresConfiguration;
- (id)copyWithZone:(void *)a3;
- (id)logPipeline:(id)a3 features:(id)a4 metadata:(id)a5 async:(BOOL)a6;
- (id)logPipelineAsync:(id)a3 features:(id)a4 metadata:(id)a5 async:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
- (void)setFeaturesConfiguration:(id)a3;
@end

@implementation AMLPipelineLogger

- (AMLFeaturesConfiguration)featuresConfiguration
{
  v2 = sub_21AEADB60();

  return v2;
}

- (void)setFeaturesConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AEADBCC(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  AMLPipelineLogger.copy(with:)(v6);

  sub_21AEAF9B0(v6, v6[3]);
  v4 = sub_21AF09E3C();
  sub_21AEA79F0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AMLPipelineLogger.encode(with:)(v4);
}

- (id)logPipeline:(id)a3 features:(id)a4 metadata:(id)a5 async:(BOOL)a6
{
  v8 = sub_21AF097CC();
  v10 = v9;
  sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  v11 = sub_21AF0972C();
  v12 = a5;
  v13 = self;
  sub_21AEAE07C(v8, v10, v11, v12);

  v14 = sub_21AF097BC();

  return v14;
}

- (id)logPipelineAsync:(id)a3 features:(id)a4 metadata:(id)a5 async:(BOOL)a6
{
  v6 = a6;
  v9 = sub_21AF097CC();
  v11 = v10;
  sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
  v12 = sub_21AF0972C();
  v13 = a5;
  v14 = self;
  sub_21AEAE810(v9, v11, v12, v13, v6);

  v15 = sub_21AF097BC();

  return v15;
}

@end