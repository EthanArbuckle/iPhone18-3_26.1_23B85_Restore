@interface AssetRequestProperties
- (AssetRequestProperties)init;
- (AssetRequestProperties)initWithRequestUUID:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation AssetRequestProperties

- (AssetRequestProperties)init
{
  v3 = +[NSUUID UUID];
  v4 = [(AssetRequestProperties *)self initWithRequestUUID:v3];

  return v4;
}

- (AssetRequestProperties)initWithRequestUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AssetRequestProperties;
  v6 = [(AssetRequestProperties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestUUID, a3);
    *&v7->_allowsCellularAccess = 16843009;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [+[AssetRequestProperties allocWithZone:](AssetRequestProperties init];
  v5->_allowsAuthentication = self->_allowsAuthentication;
  v5->_allowsCellularAccess = self->_allowsCellularAccess;
  v5->_allowsConstrainedNetworkAccess = self->_allowsConstrainedNetworkAccess;
  v5->_allowsExpensiveNetworkAccess = self->_allowsExpensiveNetworkAccess;
  v5->_allowsWatchCellularAccess = self->_allowsWatchCellularAccess;
  v5->_assetSource = self->_assetSource;
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v8 = [(NSNumber *)self->_bytesPerSecondLimit copyWithZone:a3];
  bytesPerSecondLimit = v5->_bytesPerSecondLimit;
  v5->_bytesPerSecondLimit = v8;

  v5->_chunkSize = self->_chunkSize;
  v5->_chunkCount = self->_chunkCount;
  objc_storeStrong(&v5->_clientIdentifier, self->_clientIdentifier);
  v5->_connectionPool = self->_connectionPool;
  objc_storeStrong(&v5->_dataConsumer, self->_dataConsumer);
  v5->_discretionaryType = self->_discretionaryType;
  objc_storeStrong(&v5->_drive, self->_drive);
  v10 = [(NSString *)self->_duetBudgetingIdentifier copyWithZone:a3];
  duetBudgetingIdentifier = v5->_duetBudgetingIdentifier;
  v5->_duetBudgetingIdentifier = v10;

  v5->_enforceATS = self->_enforceATS;
  objc_storeStrong(&v5->_externalID, self->_externalID);
  v5->_expectedContentLength = self->_expectedContentLength;
  v5->_expectedDiskUsage = self->_expectedDiskUsage;
  v5->_hashAlgorithm = self->_hashAlgorithm;
  v12 = [(NSNumber *)self->_loadingPriority copyWithZone:a3];
  loadingPriority = v5->_loadingPriority;
  v5->_loadingPriority = v12;

  v14 = [(NSDictionary *)self->_loadURLMetricsOverlay copyWithZone:a3];
  loadURLMetricsOverlay = v5->_loadURLMetricsOverlay;
  v5->_loadURLMetricsOverlay = v14;

  v5->_locateAssetCache = self->_locateAssetCache;
  objc_storeStrong(&v5->_logKey, self->_logKey);
  v16 = [(NSNumber *)self->_maximumWatchCellularTransferSize copyWithZone:a3];
  maximumWatchCellularTransferSize = v5->_maximumWatchCellularTransferSize;
  v5->_maximumWatchCellularTransferSize = v16;

  v18 = [(NSString *)self->_networkBudgetingIdentifier copyWithZone:a3];
  networkBudgetingIdentifier = v5->_networkBudgetingIdentifier;
  v5->_networkBudgetingIdentifier = v18;

  v20 = [(NSArray *)self->_protocolClasses copyWithZone:a3];
  protocolClasses = v5->_protocolClasses;
  v5->_protocolClasses = v20;

  v5->_qosClass = self->_qosClass;
  v5->_requiresPowerPluggedIn = self->_requiresPowerPluggedIn;
  requestReason = self->_requestReason;
  v5->_rangeOffset = self->_rangeOffset;
  v5->_requestReason = requestReason;
  objc_storeStrong(&v5->_requestUUID, self->_requestUUID);
  v23 = [(NSNumber *)self->_taskPriority copyWithZone:a3];
  taskPriority = v5->_taskPriority;
  v5->_taskPriority = v23;

  v5->_packagingType = self->_packagingType;
  v25 = [(NSString *)self->_variantID copyWithZone:a3];
  variantID = v5->_variantID;
  v5->_variantID = v25;

  return v5;
}

@end