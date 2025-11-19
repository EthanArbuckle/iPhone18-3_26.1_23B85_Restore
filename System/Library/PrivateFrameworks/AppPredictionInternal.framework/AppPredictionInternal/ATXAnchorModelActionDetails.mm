@interface ATXAnchorModelActionDetails
- (ATXAnchorModelActionDetails)initWithBundleId:(id)a3 actionType:(id)a4 paramHash:(int64_t)a5;
@end

@implementation ATXAnchorModelActionDetails

- (ATXAnchorModelActionDetails)initWithBundleId:(id)a3 actionType:(id)a4 paramHash:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ATXAnchorModelActionDetails;
  v10 = [(ATXAnchorModelActionDetails *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    bundleId = v10->_bundleId;
    v10->_bundleId = v11;

    v13 = [v9 copy];
    actionType = v10->_actionType;
    v10->_actionType = v13;

    v10->_paramHash = a5;
  }

  return v10;
}

@end