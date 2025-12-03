@interface CNPRUISPosterSnapshotResult
- (CNPRUISPosterSnapshotResult)initWithWrappedResult:(id)result;
- (id)snapshotBundle;
@end

@implementation CNPRUISPosterSnapshotResult

- (id)snapshotBundle
{
  snapshotBundle = [(PRUISPosterSnapshotResult *)self->_wrappedResult snapshotBundle];
  if (snapshotBundle)
  {
    v3 = [[CNPRPosterSnapshotBundle alloc] initWithWrappedBundle:snapshotBundle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNPRUISPosterSnapshotResult)initWithWrappedResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = CNPRUISPosterSnapshotResult;
  v6 = [(CNPRUISPosterSnapshotResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedResult, result);
  }

  return v7;
}

@end