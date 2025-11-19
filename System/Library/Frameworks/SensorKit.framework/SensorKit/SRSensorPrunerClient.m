@interface SRSensorPrunerClient
+ (id)prunerClientWithPruner:(id)a3;
- (SRSensorPrunerClient)initWithPruner:(id)a3;
- (void)resetDatastoreFiles:(id)a3;
@end

@implementation SRSensorPrunerClient

+ (id)prunerClientWithPruner:(id)a3
{
  v3 = [[a1 alloc] initWithPruner:a3];

  return v3;
}

- (SRSensorPrunerClient)initWithPruner:(id)a3
{
  v7.receiver = self;
  v7.super_class = SRSensorPrunerClient;
  v4 = [(SRSensorPrunerClient *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SRSensorPrunerClient *)v4 setPruner:a3];
  }

  return v5;
}

- (void)resetDatastoreFiles:(id)a3
{
  v4 = [(SRSensorPrunerClient *)self pruner];

  [(SRSensorPruner *)v4 resetDatastoreFiles:a3];
}

@end