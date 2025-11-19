@interface SRSensorWriterClient
+ (id)sensorWriterClientWithWriter:(id)a3;
- (SRSensorWriterClient)initWithWriter:(id)a3;
- (void)resetDatastoreFiles:(id)a3;
@end

@implementation SRSensorWriterClient

+ (id)sensorWriterClientWithWriter:(id)a3
{
  v3 = [[a1 alloc] initWithWriter:a3];

  return v3;
}

- (SRSensorWriterClient)initWithWriter:(id)a3
{
  v7.receiver = self;
  v7.super_class = SRSensorWriterClient;
  v4 = [(SRSensorWriterClient *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SRSensorWriterClient *)v4 setWriter:a3];
  }

  return v5;
}

- (void)resetDatastoreFiles:(id)a3
{
  v4 = [(SRSensorWriterClient *)self writer];

  [(SRSensorWriter *)v4 daemonForcedResetDatastoreFiles:a3];
}

@end