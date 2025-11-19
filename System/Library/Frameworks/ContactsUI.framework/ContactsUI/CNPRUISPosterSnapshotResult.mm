@interface CNPRUISPosterSnapshotResult
- (CNPRUISPosterSnapshotResult)initWithWrappedResult:(id)a3;
- (id)snapshotBundle;
@end

@implementation CNPRUISPosterSnapshotResult

- (id)snapshotBundle
{
  v2 = [(PRUISPosterSnapshotResult *)self->_wrappedResult snapshotBundle];
  if (v2)
  {
    v3 = [[CNPRPosterSnapshotBundle alloc] initWithWrappedBundle:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNPRUISPosterSnapshotResult)initWithWrappedResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNPRUISPosterSnapshotResult;
  v6 = [(CNPRUISPosterSnapshotResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedResult, a3);
  }

  return v7;
}

@end