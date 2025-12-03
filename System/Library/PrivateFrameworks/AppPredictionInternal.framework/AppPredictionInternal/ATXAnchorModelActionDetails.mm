@interface ATXAnchorModelActionDetails
- (ATXAnchorModelActionDetails)initWithBundleId:(id)id actionType:(id)type paramHash:(int64_t)hash;
@end

@implementation ATXAnchorModelActionDetails

- (ATXAnchorModelActionDetails)initWithBundleId:(id)id actionType:(id)type paramHash:(int64_t)hash
{
  idCopy = id;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = ATXAnchorModelActionDetails;
  v10 = [(ATXAnchorModelActionDetails *)&v16 init];
  if (v10)
  {
    v11 = [idCopy copy];
    bundleId = v10->_bundleId;
    v10->_bundleId = v11;

    v13 = [typeCopy copy];
    actionType = v10->_actionType;
    v10->_actionType = v13;

    v10->_paramHash = hash;
  }

  return v10;
}

@end