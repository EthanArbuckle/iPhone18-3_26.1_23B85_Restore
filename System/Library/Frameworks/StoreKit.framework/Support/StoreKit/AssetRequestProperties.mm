@interface AssetRequestProperties
- (AssetRequestProperties)init;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation AssetRequestProperties

- (AssetRequestProperties)init
{
  v6.receiver = self;
  v6.super_class = AssetRequestProperties;
  v2 = [(AssetRequestProperties *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = *(v2 + 19);
    *(v2 + 19) = v3;

    *(v2 + 9) = 16843009;
  }

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[AssetRequestProperties allocWithZone:](AssetRequestProperties init];
  v5->_allowsAuthentication = self->_allowsAuthentication;
  v5->_allowsCellularAccess = self->_allowsCellularAccess;
  v5->_allowsConstrainedNetworkAccess = self->_allowsConstrainedNetworkAccess;
  v5->_allowsExpensiveNetworkAccess = self->_allowsExpensiveNetworkAccess;
  v5->_allowsWatchCellularAccess = self->_allowsWatchCellularAccess;
  v6 = [(NSNumber *)self->_bytesPerSecondLimit copyWithZone:zone];
  bytesPerSecondLimit = v5->_bytesPerSecondLimit;
  v5->_bytesPerSecondLimit = v6;

  objc_storeStrong(&v5->_clientIdentifier, self->_clientIdentifier);
  v5->_connectionPool = self->_connectionPool;
  objc_storeStrong(&v5->_dataConsumer, self->_dataConsumer);
  v5->_discretionaryType = self->_discretionaryType;
  v8 = [(NSString *)self->_duetBudgetingIdentifier copyWithZone:zone];
  duetBudgetingIdentifier = v5->_duetBudgetingIdentifier;
  v5->_duetBudgetingIdentifier = v8;

  v5->_enforceATS = self->_enforceATS;
  objc_storeStrong(&v5->_externalID, self->_externalID);
  v5->_expectedContentLength = self->_expectedContentLength;
  v5->_expectedDiskUsage = self->_expectedDiskUsage;
  v10 = [(NSNumber *)self->_loadingPriority copyWithZone:zone];
  loadingPriority = v5->_loadingPriority;
  v5->_loadingPriority = v10;

  v5->_locateAssetCache = self->_locateAssetCache;
  v12 = [(NSString *)self->_logKey copyWithZone:zone];
  logKey = v5->_logKey;
  v5->_logKey = v12;

  v14 = [(NSNumber *)self->_maximumWatchCellularTransferSize copyWithZone:zone];
  maximumWatchCellularTransferSize = v5->_maximumWatchCellularTransferSize;
  v5->_maximumWatchCellularTransferSize = v14;

  v16 = [(NSString *)self->_networkBudgetingIdentifier copyWithZone:zone];
  networkBudgetingIdentifier = v5->_networkBudgetingIdentifier;
  v5->_networkBudgetingIdentifier = v16;

  v18 = [(NSArray *)self->_protocolClasses copyWithZone:zone];
  protocolClasses = v5->_protocolClasses;
  v5->_protocolClasses = v18;

  v5->_qosClass = self->_qosClass;
  v5->_requiresPowerPluggedIn = self->_requiresPowerPluggedIn;
  requestReason = self->_requestReason;
  v5->_rangeOffset = self->_rangeOffset;
  v5->_requestReason = requestReason;
  objc_storeStrong(&v5->_requestUUID, self->_requestUUID);
  v21 = [(NSNumber *)self->_taskPriority copyWithZone:zone];
  taskPriority = v5->_taskPriority;
  v5->_taskPriority = v21;

  return v5;
}

@end