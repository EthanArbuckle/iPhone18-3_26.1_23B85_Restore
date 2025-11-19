@interface MTRBaseClusterBasic
+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeCapabilityMinimaWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeDataModelRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeHardwareVersionStringWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeHardwareVersionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLocalConfigDisabledWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeLocationWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeManufacturingDateWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeNodeLabelWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributePartNumberWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeProductIDWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeProductLabelWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeProductNameWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeProductURLWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeReachableWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSerialNumberWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSoftwareVersionStringWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeSoftwareVersionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeUniqueIDWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeVendorIDWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
+ (void)readAttributeVendorNameWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler;
- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeCapabilityMinimaWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeDataModelRevisionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeHardwareVersionStringWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeHardwareVersionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLocalConfigDisabledWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeLocationWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeManufacturingDateWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeNodeLabelWithCompletionHandler:(void *)completionHandler;
- (void)readAttributePartNumberWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeProductIDWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeProductLabelWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeProductNameWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeProductURLWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeReachableWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSerialNumberWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSoftwareVersionStringWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeSoftwareVersionWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeUniqueIDWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeVendorIDWithCompletionHandler:(void *)completionHandler;
- (void)readAttributeVendorNameWithCompletionHandler:(void *)completionHandler;
- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeCapabilityMinimaWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeDataModelRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeHardwareVersionStringWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeHardwareVersionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLocalConfigDisabledWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeLocationWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeManufacturingDateWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeNodeLabelWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributePartNumberWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeProductIDWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeProductLabelWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeProductNameWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeProductURLWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeReachableWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSerialNumberWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSoftwareVersionStringWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeSoftwareVersionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeUniqueIDWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeVendorIDWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
- (void)subscribeAttributeVendorNameWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler;
@end

@implementation MTRBaseClusterBasic

- (void)readAttributeDataModelRevisionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F715AC;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeDataModelRevisionWithCompletion:v6];
}

- (void)subscribeAttributeDataModelRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F7172C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeDataModelRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeDataModelRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F71854;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeDataModelRevisionWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeVendorNameWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F71910;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeVendorNameWithCompletion:v6];
}

- (void)subscribeAttributeVendorNameWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F71A90;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeVendorNameWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeVendorNameWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F71BB8;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeVendorNameWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeVendorIDWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F71C74;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeVendorIDWithCompletion:v6];
}

- (void)subscribeAttributeVendorIDWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F71DF4;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeVendorIDWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeVendorIDWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F71F1C;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeVendorIDWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeProductNameWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F71FD8;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeProductNameWithCompletion:v6];
}

- (void)subscribeAttributeProductNameWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F72158;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeProductNameWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeProductNameWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F72280;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeProductNameWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeProductIDWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F7233C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeProductIDWithCompletion:v6];
}

- (void)subscribeAttributeProductIDWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F724BC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeProductIDWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeProductIDWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F725E4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeProductIDWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeNodeLabelWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F726A0;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeNodeLabelWithCompletion:v6];
}

- (void)subscribeAttributeNodeLabelWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F72830;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeNodeLabelWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeNodeLabelWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F72958;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeNodeLabelWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLocationWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F72A14;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeLocationWithCompletion:v6];
}

- (void)subscribeAttributeLocationWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F72BA4;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeLocationWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLocationWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F72CCC;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeLocationWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeHardwareVersionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F72D88;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeHardwareVersionWithCompletion:v6];
}

- (void)subscribeAttributeHardwareVersionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F72F08;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeHardwareVersionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeHardwareVersionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F73030;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeHardwareVersionWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeHardwareVersionStringWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F730EC;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeHardwareVersionStringWithCompletion:v6];
}

- (void)subscribeAttributeHardwareVersionStringWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F7326C;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeHardwareVersionStringWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeHardwareVersionStringWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F73394;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeHardwareVersionStringWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSoftwareVersionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F73450;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeSoftwareVersionWithCompletion:v6];
}

- (void)subscribeAttributeSoftwareVersionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F735D0;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeSoftwareVersionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSoftwareVersionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F736F8;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeSoftwareVersionWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSoftwareVersionStringWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F737B4;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeSoftwareVersionStringWithCompletion:v6];
}

- (void)subscribeAttributeSoftwareVersionStringWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F73934;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeSoftwareVersionStringWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSoftwareVersionStringWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F73A5C;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeSoftwareVersionStringWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeManufacturingDateWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F73B18;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeManufacturingDateWithCompletion:v6];
}

- (void)subscribeAttributeManufacturingDateWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F73C98;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeManufacturingDateWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeManufacturingDateWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F73DC0;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeManufacturingDateWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributePartNumberWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F73E7C;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributePartNumberWithCompletion:v6];
}

- (void)subscribeAttributePartNumberWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F73FFC;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributePartNumberWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributePartNumberWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F74124;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributePartNumberWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeProductURLWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F741E0;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeProductURLWithCompletion:v6];
}

- (void)subscribeAttributeProductURLWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F74360;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeProductURLWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeProductURLWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F74488;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeProductURLWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeProductLabelWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F74544;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeProductLabelWithCompletion:v6];
}

- (void)subscribeAttributeProductLabelWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F746C4;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeProductLabelWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeProductLabelWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F747EC;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeProductLabelWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeSerialNumberWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F748A8;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeSerialNumberWithCompletion:v6];
}

- (void)subscribeAttributeSerialNumberWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F74A28;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeSerialNumberWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeSerialNumberWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F74B50;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeSerialNumberWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeLocalConfigDisabledWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F74C0C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeLocalConfigDisabledWithCompletion:v6];
}

- (void)subscribeAttributeLocalConfigDisabledWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F74D9C;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeLocalConfigDisabledWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeLocalConfigDisabledWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F74EC4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeLocalConfigDisabledWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeReachableWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F74F80;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeReachableWithCompletion:v6];
}

- (void)subscribeAttributeReachableWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F75100;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeReachableWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeReachableWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F75228;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeReachableWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeUniqueIDWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F752E4;
  v6[3] = &unk_278A73258;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeUniqueIDWithCompletion:v6];
}

- (void)subscribeAttributeUniqueIDWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F75464;
  v19[3] = &unk_278A73258;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeUniqueIDWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeUniqueIDWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F7558C;
  v15[3] = &unk_278A73258;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeUniqueIDWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeCapabilityMinimaWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F75648;
  v6[3] = &unk_278A73280;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeCapabilityMinimaWithCompletion:v6];
}

- (void)subscribeAttributeCapabilityMinimaWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F757C8;
  v19[3] = &unk_278A73280;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeCapabilityMinimaWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeCapabilityMinimaWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F758F0;
  v15[3] = &unk_278A73280;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeCapabilityMinimaWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeGeneratedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F759AC;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeGeneratedCommandListWithCompletion:v6];
}

- (void)subscribeAttributeGeneratedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F75B2C;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeGeneratedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeGeneratedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F75C54;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeGeneratedCommandListWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAcceptedCommandListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F75D10;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeAcceptedCommandListWithCompletion:v6];
}

- (void)subscribeAttributeAcceptedCommandListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F75E90;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeAcceptedCommandListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAcceptedCommandListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F75FB8;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeAcceptedCommandListWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeAttributeListWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F76074;
  v6[3] = &unk_278A73190;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeAttributeListWithCompletion:v6];
}

- (void)subscribeAttributeAttributeListWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F761F4;
  v19[3] = &unk_278A73190;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeAttributeListWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeAttributeListWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F7631C;
  v15[3] = &unk_278A73190;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeAttributeListWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeFeatureMapWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F763D8;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeFeatureMapWithCompletion:v6];
}

- (void)subscribeAttributeFeatureMapWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F76558;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeFeatureMapWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeFeatureMapWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F76680;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeFeatureMapWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

- (void)readAttributeClusterRevisionWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238F7673C;
  v6[3] = &unk_278A73168;
  v7 = v4;
  v5 = v4;
  [(MTRBaseClusterBasicInformation *)self readAttributeClusterRevisionWithCompletion:v6];
}

- (void)subscribeAttributeClusterRevisionWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablishedHandler reportHandler:(void *)reportHandler
{
  v12 = minInterval;
  v13 = maxInterval;
  v14 = subscriptionEstablishedHandler;
  v15 = reportHandler;
  v16 = [(MTRSubscribeParams *)params copy];
  v17 = v16;
  if (v16)
  {
    [(MTRSubscribeParams *)v16 setMinInterval:v12];
    [(MTRSubscribeParams *)v17 setMaxInterval:v13];
  }

  else
  {
    v17 = [[MTRSubscribeParams alloc] initWithMinInterval:v12 maxInterval:v13];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_238F768BC;
  v19[3] = &unk_278A73168;
  v18 = v15;
  v20 = v18;
  [(MTRBaseClusterBasicInformation *)self subscribeAttributeClusterRevisionWithParams:v17 subscriptionEstablished:v14 reportHandler:v19];
}

+ (void)readAttributeClusterRevisionWithAttributeCache:(MTRAttributeCacheContainer *)attributeCacheContainer endpoint:(NSNumber *)endpoint queue:(dispatch_queue_t)queue completionHandler:(void *)completionHandler
{
  v10 = endpoint;
  v11 = queue;
  v12 = completionHandler;
  v13 = [(MTRAttributeCacheContainer *)attributeCacheContainer realContainer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_238F769E4;
  v15[3] = &unk_278A73168;
  v14 = v12;
  v16 = v14;
  [a1 readAttributeClusterRevisionWithClusterStateCache:v13 endpoint:v10 queue:v11 completion:v15];
}

@end