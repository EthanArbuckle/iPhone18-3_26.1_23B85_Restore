@interface TrustedPeersHelperHealthCheckResult
- (TrustedPeersHelperHealthCheckResult)initWithCoder:(id)a3;
- (TrustedPeersHelperHealthCheckResult)initWithPostRepairCFU:(BOOL)a3 postEscrowCFU:(BOOL)a4 resetOctagon:(BOOL)a5 leaveTrust:(BOOL)a6 reroll:(BOOL)a7 totalEscrowRecords:(unint64_t)a8 collectableEscrowRecords:(unint64_t)a9 collectedEscrowRecords:(unint64_t)a10 escrowRecordGarbageCollectionEnabled:(BOOL)a11 totalTlkShares:(unint64_t)a12 collectableTlkShares:(unint64_t)a13 collectedTlkShares:(unint64_t)a14 tlkShareGarbageCollectionEnabled:(BOOL)a15 totalPeers:(unint64_t)a16 trustedPeers:(unint64_t)a17 superfluousPeers:(unint64_t)a18 peersCleanedup:(unint64_t)a19 superfluousPeersCleanupEnabled:(BOOL)a20;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TrustedPeersHelperHealthCheckResult

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self postRepairCFU]];
  [v3 setObject:v4 forKeyedSubscript:@"postRepairCFU"];

  v5 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self postEscrowCFU]];
  [v3 setObject:v5 forKeyedSubscript:@"postEscrowCFU"];

  v6 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self resetOctagon]];
  [v3 setObject:v6 forKeyedSubscript:@"resetOctagon"];

  v7 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self leaveTrust]];
  [v3 setObject:v7 forKeyedSubscript:@"leaveTrust"];

  v8 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self reroll]];
  [v3 setObject:v8 forKeyedSubscript:@"reroll"];

  v9 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self totalEscrowRecords]];
  [v3 setObject:v9 forKeyedSubscript:@"totalEscrowRecords"];

  v10 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self collectableEscrowRecords]];
  [v3 setObject:v10 forKeyedSubscript:@"collectableEscrowRecords"];

  v11 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self collectedEscrowRecords]];
  [v3 setObject:v11 forKeyedSubscript:@"collectedEscrowRecords"];

  v12 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self escrowRecordGarbageCollectionEnabled]];
  [v3 setObject:v12 forKeyedSubscript:@"escrowRecordGarbageCollectionEnabled"];

  v13 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self totalTlkShares]];
  [v3 setObject:v13 forKeyedSubscript:@"totalTlkShares"];

  v14 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self collectableTlkShares]];
  [v3 setObject:v14 forKeyedSubscript:@"collectableTlkShares"];

  v15 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self collectedTlkShares]];
  [v3 setObject:v15 forKeyedSubscript:@"collectedTlkShares"];

  v16 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self tlkShareGarbageCollectionEnabled]];
  [v3 setObject:v16 forKeyedSubscript:@"tlkShareGarbageCollectionEnabled"];

  v17 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self totalPeers]];
  [v3 setObject:v17 forKeyedSubscript:@"totalPeers"];

  v18 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self trustedPeers]];
  [v3 setObject:v18 forKeyedSubscript:@"trustedPeers"];

  v19 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self superfluousPeers]];
  [v3 setObject:v19 forKeyedSubscript:@"superfluousPeers"];

  v20 = [NSNumber numberWithUnsignedLongLong:[(TrustedPeersHelperHealthCheckResult *)self peersCleanedup]];
  [v3 setObject:v20 forKeyedSubscript:@"peersCleanedup"];

  v21 = [NSNumber numberWithBool:[(TrustedPeersHelperHealthCheckResult *)self superfluousPeersCleanupEnabled]];
  [v3 setObject:v21 forKeyedSubscript:@"superfluousPeersCleanupEnabled"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[TrustedPeersHelperHealthCheckResult postRepairCFU](self forKey:{"postRepairCFU"), @"postRepairCFU"}];
  [v4 encodeBool:-[TrustedPeersHelperHealthCheckResult postEscrowCFU](self forKey:{"postEscrowCFU"), @"postEscrowCFU"}];
  [v4 encodeBool:-[TrustedPeersHelperHealthCheckResult resetOctagon](self forKey:{"resetOctagon"), @"resetOctagon"}];
  [v4 encodeBool:-[TrustedPeersHelperHealthCheckResult leaveTrust](self forKey:{"leaveTrust"), @"leaveTrust"}];
  [v4 encodeBool:-[TrustedPeersHelperHealthCheckResult reroll](self forKey:{"reroll"), @"reroll"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult totalEscrowRecords](self forKey:{"totalEscrowRecords"), @"totalEscrowRecords"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult collectableEscrowRecords](self forKey:{"collectableEscrowRecords"), @"collectableEscrowRecords"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult collectedEscrowRecords](self forKey:{"collectedEscrowRecords"), @"collectedEscrowRecords"}];
  [v4 encodeBool:-[TrustedPeersHelperHealthCheckResult escrowRecordGarbageCollectionEnabled](self forKey:{"escrowRecordGarbageCollectionEnabled"), @"escrowRecordGarbageCollectionEnabled"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult totalTlkShares](self forKey:{"totalTlkShares"), @"totalTlkShares"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult collectableTlkShares](self forKey:{"collectableTlkShares"), @"collectableTlkShares"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult collectedTlkShares](self forKey:{"collectedTlkShares"), @"collectedTlkShares"}];
  [v4 encodeBool:-[TrustedPeersHelperHealthCheckResult tlkShareGarbageCollectionEnabled](self forKey:{"tlkShareGarbageCollectionEnabled"), @"tlkShareGarbageCollectionEnabled"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult totalPeers](self forKey:{"totalPeers"), @"totalPeers"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult trustedPeers](self forKey:{"trustedPeers"), @"trustedPeers"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult superfluousPeers](self forKey:{"superfluousPeers"), @"superfluousPeers"}];
  [v4 encodeInt64:-[TrustedPeersHelperHealthCheckResult peersCleanedup](self forKey:{"peersCleanedup"), @"peersCleanedup"}];
  [v4 encodeBool:-[TrustedPeersHelperHealthCheckResult superfluousPeersCleanupEnabled](self forKey:{"superfluousPeersCleanupEnabled"), @"superfluousPeersCleanupEnabled"}];
}

- (TrustedPeersHelperHealthCheckResult)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TrustedPeersHelperHealthCheckResult;
  v5 = [(TrustedPeersHelperHealthCheckResult *)&v7 init];
  if (v5)
  {
    v5->_postRepairCFU = [v4 decodeBoolForKey:@"postRepairCFU"];
    v5->_postEscrowCFU = [v4 decodeBoolForKey:@"postEscrowCFU"];
    v5->_resetOctagon = [v4 decodeBoolForKey:@"resetOctagon"];
    v5->_leaveTrust = [v4 decodeBoolForKey:@"leaveTrust"];
    v5->_reroll = [v4 decodeBoolForKey:@"reroll"];
    v5->_totalEscrowRecords = [v4 decodeInt64ForKey:@"totalEscrowRecords"];
    v5->_collectableEscrowRecords = [v4 decodeInt64ForKey:@"collectableEscrowRecords"];
    v5->_collectedEscrowRecords = [v4 decodeInt64ForKey:@"collectedEscrowRecords"];
    v5->_escrowRecordGarbageCollectionEnabled = [v4 decodeBoolForKey:@"escrowRecordGarbageCollectionEnabled"];
    v5->_totalTlkShares = [v4 decodeInt64ForKey:@"totalTlkShares"];
    v5->_collectableTlkShares = [v4 decodeInt64ForKey:@"collectableTlkShares"];
    v5->_collectedTlkShares = [v4 decodeInt64ForKey:@"collectedTlkShares"];
    v5->_tlkShareGarbageCollectionEnabled = [v4 decodeBoolForKey:@"tlkShareGarbageCollectionEnabled"];
    v5->_totalPeers = [v4 decodeInt64ForKey:@"totalPeers"];
    v5->_trustedPeers = [v4 decodeInt64ForKey:@"trustedPeers"];
    v5->_superfluousPeers = [v4 decodeInt64ForKey:@"superfluousPeers"];
    v5->_peersCleanedup = [v4 decodeInt64ForKey:@"peersCleanedup"];
    v5->_superfluousPeersCleanupEnabled = [v4 decodeBoolForKey:@"superfluousPeersCleanupEnabled"];
  }

  return v5;
}

- (id)description
{
  if ([(TrustedPeersHelperHealthCheckResult *)self postRepairCFU])
  {
    v3 = @"true";
  }

  else
  {
    v3 = @"false";
  }

  v27 = v3;
  if ([(TrustedPeersHelperHealthCheckResult *)self postEscrowCFU])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v26 = v4;
  if ([(TrustedPeersHelperHealthCheckResult *)self resetOctagon])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v25 = v5;
  if ([(TrustedPeersHelperHealthCheckResult *)self leaveTrust])
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v24 = v6;
  if ([(TrustedPeersHelperHealthCheckResult *)self reroll])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v23 = v7;
  v22 = [(TrustedPeersHelperHealthCheckResult *)self totalEscrowRecords];
  v21 = [(TrustedPeersHelperHealthCheckResult *)self collectableEscrowRecords];
  v20 = [(TrustedPeersHelperHealthCheckResult *)self collectedEscrowRecords];
  if ([(TrustedPeersHelperHealthCheckResult *)self escrowRecordGarbageCollectionEnabled])
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v19 = v8;
  v18 = [(TrustedPeersHelperHealthCheckResult *)self totalTlkShares];
  v9 = [(TrustedPeersHelperHealthCheckResult *)self collectableTlkShares];
  v10 = [(TrustedPeersHelperHealthCheckResult *)self collectedTlkShares];
  if ([(TrustedPeersHelperHealthCheckResult *)self tlkShareGarbageCollectionEnabled])
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  v12 = [(TrustedPeersHelperHealthCheckResult *)self totalPeers];
  v13 = [(TrustedPeersHelperHealthCheckResult *)self trustedPeers];
  v14 = [(TrustedPeersHelperHealthCheckResult *)self superfluousPeers];
  v15 = [(TrustedPeersHelperHealthCheckResult *)self peersCleanedup];
  if ([(TrustedPeersHelperHealthCheckResult *)self superfluousPeersCleanupEnabled])
  {
    v16 = @"true";
  }

  else
  {
    v16 = @"false";
  }

  return [NSString stringWithFormat:@"<HealthCheckResult: postRepairCFU: %@, postEscrowCFU: %@, resetOctagon: %@, leaveTrust: %@, reroll: %@, totalEscrowRecords: %llu, collectableEscrowRecords: %llu, collectedEscrowRecords: %llu, escrowRecordGarbageCollectionEnabled: %@, totalTlkShares: %llu, collectableTlkShares: %llu, collectedTlkShares: %llu, tlkShareGarbageCollectionEnabled: %@, totalPeers: %llu, trustedPeers: %llu, superfluousPeers: %llu, peersCleanedup: %llu, superfluousPeersCleanupEnabled: %@>", v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v9, v10, v11, v12, v13, v14, v15, v16];
}

- (TrustedPeersHelperHealthCheckResult)initWithPostRepairCFU:(BOOL)a3 postEscrowCFU:(BOOL)a4 resetOctagon:(BOOL)a5 leaveTrust:(BOOL)a6 reroll:(BOOL)a7 totalEscrowRecords:(unint64_t)a8 collectableEscrowRecords:(unint64_t)a9 collectedEscrowRecords:(unint64_t)a10 escrowRecordGarbageCollectionEnabled:(BOOL)a11 totalTlkShares:(unint64_t)a12 collectableTlkShares:(unint64_t)a13 collectedTlkShares:(unint64_t)a14 tlkShareGarbageCollectionEnabled:(BOOL)a15 totalPeers:(unint64_t)a16 trustedPeers:(unint64_t)a17 superfluousPeers:(unint64_t)a18 peersCleanedup:(unint64_t)a19 superfluousPeersCleanupEnabled:(BOOL)a20
{
  v27.receiver = self;
  v27.super_class = TrustedPeersHelperHealthCheckResult;
  result = [(TrustedPeersHelperHealthCheckResult *)&v27 init];
  if (result)
  {
    result->_postRepairCFU = a3;
    result->_postEscrowCFU = a4;
    result->_resetOctagon = a5;
    result->_leaveTrust = a6;
    result->_reroll = a7;
    result->_totalEscrowRecords = a8;
    result->_collectableEscrowRecords = a9;
    result->_escrowRecordGarbageCollectionEnabled = a11;
    result->_collectedEscrowRecords = a10;
    result->_totalTlkShares = a12;
    result->_collectableTlkShares = a13;
    result->_collectedTlkShares = a14;
    result->_tlkShareGarbageCollectionEnabled = a15;
    result->_totalPeers = a16;
    result->_trustedPeers = a17;
    result->_superfluousPeers = a18;
    result->_peersCleanedup = a19;
    result->_superfluousPeersCleanupEnabled = a20;
  }

  return result;
}

@end