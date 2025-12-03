@interface SRSensorPrunerClient
+ (id)prunerClientWithPruner:(id)pruner;
- (SRSensorPrunerClient)initWithPruner:(id)pruner;
- (void)resetDatastoreFiles:(id)files;
@end

@implementation SRSensorPrunerClient

+ (id)prunerClientWithPruner:(id)pruner
{
  v3 = [[self alloc] initWithPruner:pruner];

  return v3;
}

- (SRSensorPrunerClient)initWithPruner:(id)pruner
{
  v7.receiver = self;
  v7.super_class = SRSensorPrunerClient;
  v4 = [(SRSensorPrunerClient *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SRSensorPrunerClient *)v4 setPruner:pruner];
  }

  return v5;
}

- (void)resetDatastoreFiles:(id)files
{
  pruner = [(SRSensorPrunerClient *)self pruner];

  [(SRSensorPruner *)pruner resetDatastoreFiles:files];
}

@end