@interface MTRBasicClusterMfgSpecificPingParams
- (MTRBasicClusterMfgSpecificPingParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRBasicClusterMfgSpecificPingParams

- (MTRBasicClusterMfgSpecificPingParams)init
{
  v7.receiver = self;
  v7.super_class = MTRBasicClusterMfgSpecificPingParams;
  v2 = [(MTRBasicClusterMfgSpecificPingParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRBasicClusterMfgSpecificPingParams);
  timedInvokeTimeoutMs = [(MTRBasicClusterMfgSpecificPingParams *)self timedInvokeTimeoutMs];
  [(MTRBasicClusterMfgSpecificPingParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRBasicClusterMfgSpecificPingParams *)self serverSideProcessingTimeout];
  [(MTRBasicClusterMfgSpecificPingParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: >", v4];

  return v5;
}

- (id)_encodeAsDataValue:(id *)value
{
  if (value)
  {
    *value = sub_23921C1E4(MTRError, 0xC1A900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
  }

  return 0;
}

@end