@interface AMSMetricsLoadURLEvent
+ (BOOL)isPerHostLoadURLSamplingEnabled:(id)enabled perHostSamplingSuppressed:(BOOL *)suppressed featureFlagEnabled:(BOOL *)flagEnabled;
+ (BOOL)shouldCollectMetricsForContext:(id)context;
+ (double)_samplingPercentageForURLSessionTask:(id)task performanceDictionary:(id)dictionary;
+ (double)_timingDataMetricToServerTimeInterval:(id)interval;
+ (id)_DNSServerIPAddresses;
+ (id)_buildVariant;
+ (id)_edgeRelayWasUsedFor:(id)for domains:(id)domains;
+ (id)_fetchNetworkQualityReportsPromise;
+ (id)_hostnameFrom:(id)from;
+ (id)_isAnEdgeRelayServer:(id)server domains:(id)domains;
+ (id)_propertyValueClassesForKnownProperties;
+ (id)_radioTypeStringValueFromRadioType:(int)type;
+ (id)_resolvedIPAddressFromTask:(id)task;
+ (id)loadURLEventPromiseWithContext:(id)context;
+ (id)loadURLEventWithTopic:(id)topic context:(id)context;
+ (id)loadURLTopicFromContext:(id)context;
+ (id)shouldCollectMetricsPromiseForContext:(id)context;
- (AMSMetricsLoadURLEvent)initWithContext:(id)context;
- (BOOL)TFOEnabled;
- (BOOL)TLSSessionTickets;
- (BOOL)apsRelayAttempted;
- (BOOL)apsRelayDidFallback;
- (BOOL)apsRelaySucceeded;
- (BOOL)cachedResponse;
- (BOOL)connectionReused;
- (BOOL)isDNUSubmissionAllowed;
- (BOOL)xpSamplingForced;
- (double)connectionEndTime;
- (double)connectionStartTime;
- (double)domainLookupEndTime;
- (double)domainLookupStartTime;
- (double)fetchStartTime;
- (double)redirectEndTime;
- (double)redirectStartTime;
- (double)requestStartTime;
- (double)responseEndTime;
- (double)responseStartTime;
- (double)secureConnectionStartTime;
- (double)urlCacheMaxCacheableEntrySizeRatio;
- (double)xpSamplingPercentageCachedResponses;
- (double)xpSamplingPercentageUsers;
- (double)xpSessionDuration;
- (id)_prepareEventPromiseWithContext:(id)context;
- (int64_t)statusCode;
- (unint64_t)connectionStartNStatRXBytes;
- (unint64_t)connectionStartNStatTXBytes;
- (unint64_t)connectionStopNStatRXBytes;
- (unint64_t)connectionStopNStatTXBytes;
- (unint64_t)redirectCount;
- (unint64_t)requestMessageSize;
- (unint64_t)responseMessageSize;
- (unint64_t)responseMessageSizeUncompressed;
- (unint64_t)urlCacheDiskCapacity;
- (unint64_t)urlCacheMemoryCapacity;
- (void)_addSharedURLCacheProperties;
- (void)_forceLoadURLMetricsAlways;
- (void)_forceLoadURLMetricsDisabled;
- (void)setApsRelayAttempted:(BOOL)attempted;
- (void)setApsRelayDidFallback:(BOOL)fallback;
- (void)setApsRelaySucceeded:(BOOL)succeeded;
- (void)setCachedResponse:(BOOL)response;
- (void)setConnectionEndTime:(double)time;
- (void)setConnectionReused:(BOOL)reused;
- (void)setConnectionStartNStatRXBytes:(unint64_t)bytes;
- (void)setConnectionStartNStatTXBytes:(unint64_t)bytes;
- (void)setConnectionStartTime:(double)time;
- (void)setConnectionStopNStatRXBytes:(unint64_t)bytes;
- (void)setConnectionStopNStatTXBytes:(unint64_t)bytes;
- (void)setDNUSubmissionAllowed:(BOOL)allowed;
- (void)setDomainLookupEndTime:(double)time;
- (void)setDomainLookupStartTime:(double)time;
- (void)setFetchStartTime:(double)time;
- (void)setMetricsOverlay:(id)overlay;
- (void)setRedirectCount:(unint64_t)count;
- (void)setRedirectEndTime:(double)time;
- (void)setRedirectStartTime:(double)time;
- (void)setRequestMessageSize:(unint64_t)size;
- (void)setRequestStartTime:(double)time;
- (void)setResponseEndTime:(double)time;
- (void)setResponseMessageSize:(unint64_t)size;
- (void)setResponseMessageSizeUncompressed:(unint64_t)uncompressed;
- (void)setResponseStartTime:(double)time;
- (void)setSecureConnectionStartTime:(double)time;
- (void)setStatusCode:(int64_t)code;
- (void)setTFOEnabled:(BOOL)enabled;
- (void)setTLSSessionTickets:(BOOL)tickets;
- (void)setUrlCacheDiskCapacity:(unint64_t)capacity;
- (void)setUrlCacheMaxCacheableEntrySizeRatio:(double)ratio;
- (void)setUrlCacheMemoryCapacity:(unint64_t)capacity;
- (void)setXpSamplingForced:(BOOL)forced;
- (void)setXpSamplingPercentageCachedResponses:(double)responses;
- (void)setXpSamplingPercentageUsers:(double)users;
- (void)setXpSessionDuration:(double)duration;
@end

@implementation AMSMetricsLoadURLEvent

+ (id)_propertyValueClassesForKnownProperties
{
  v9[54] = *MEMORY[0x1E69E9840];
  v8[0] = @"appleTimingApp";
  v9[0] = objc_opt_class();
  v8[1] = @"apsRelayAttempted";
  v9[1] = objc_opt_class();
  v8[2] = @"apsRelayDidFallback";
  v9[2] = objc_opt_class();
  v8[3] = @"apsRelaySucceeded";
  v9[3] = objc_opt_class();
  v8[4] = @"cachedResponse";
  v9[4] = objc_opt_class();
  v8[5] = @"cellularDataBearerTechnology";
  v9[5] = objc_opt_class();
  v8[6] = @"clientCorrelationKey";
  v9[6] = objc_opt_class();
  v8[7] = @"clientError";
  v9[7] = objc_opt_class();
  v8[8] = @"connectionEndTime";
  v9[8] = objc_opt_class();
  v8[9] = @"connectionInterface";
  v9[9] = objc_opt_class();
  v8[10] = @"connectionReused";
  v9[10] = objc_opt_class();
  v8[11] = @"connectionStartNStatRXBytes";
  v9[11] = objc_opt_class();
  v8[12] = @"connectionStartNStatTXBytes";
  v9[12] = objc_opt_class();
  v8[13] = @"connectionStartTime";
  v9[13] = objc_opt_class();
  v8[14] = @"connectionStopNStatRXBytes";
  v9[14] = objc_opt_class();
  v8[15] = @"connectionStopNStatTXBytes";
  v9[15] = objc_opt_class();
  v8[16] = @"connectionType";
  v9[16] = objc_opt_class();
  v8[17] = @"dnsServersIPAddresses";
  v9[17] = objc_opt_class();
  v8[18] = @"domainLookupEndTime";
  v9[18] = objc_opt_class();
  v8[19] = @"domainLookupStartTime";
  v9[19] = objc_opt_class();
  v8[20] = @"edgeNodeCacheStatus";
  v9[20] = objc_opt_class();
  v8[21] = @"edgeRelayWasUsed";
  v9[21] = objc_opt_class();
  v8[22] = @"environmentDataCenter";
  v9[22] = objc_opt_class();
  v8[23] = @"fetchStartTime";
  v9[23] = objc_opt_class();
  v8[24] = @"networkQualityReports";
  v9[24] = objc_opt_class();
  v8[25] = @"app";
  v9[25] = objc_opt_class();
  v8[26] = @"radioTechnology";
  v9[26] = objc_opt_class();
  v8[27] = @"radioType";
  v9[27] = objc_opt_class();
  v8[28] = @"redirectCount";
  v9[28] = objc_opt_class();
  v8[29] = @"redirectEndTime";
  v9[29] = objc_opt_class();
  v8[30] = @"redirectStartTime";
  v9[30] = objc_opt_class();
  v8[31] = @"requestMessageSize";
  v9[31] = objc_opt_class();
  v8[32] = @"requestStartTime";
  v9[32] = objc_opt_class();
  v8[33] = @"requestUrl";
  v9[33] = objc_opt_class();
  v8[34] = @"resolvedIPAddress";
  v9[34] = objc_opt_class();
  v8[35] = @"responseDate";
  v9[35] = objc_opt_class();
  v8[36] = @"responseEndTime";
  v9[36] = objc_opt_class();
  v8[37] = @"responseMessageSize";
  v9[37] = objc_opt_class();
  v8[38] = @"responseMessageSizeUncompressed";
  v9[38] = objc_opt_class();
  v8[39] = @"responseStartTime";
  v9[39] = objc_opt_class();
  v8[40] = @"secureConnectionStartTime";
  v9[40] = objc_opt_class();
  v8[41] = @"xpSendMethod";
  v9[41] = objc_opt_class();
  v8[42] = @"statusCode";
  v9[42] = objc_opt_class();
  v8[43] = @"TFOEnabled";
  v9[43] = objc_opt_class();
  v8[44] = @"tidState";
  v9[44] = objc_opt_class();
  v8[45] = @"TLSSessionTickets";
  v9[45] = objc_opt_class();
  v8[46] = @"wt";
  v9[46] = objc_opt_class();
  v8[47] = @"xpSessionDuration";
  v9[47] = objc_opt_class();
  v8[48] = @"xpSamplingForced";
  v9[48] = objc_opt_class();
  v8[49] = @"xpSamplingPercentageUsers";
  v9[49] = objc_opt_class();
  v8[50] = @"xpSamplingPercentageCachedResponses";
  v9[50] = objc_opt_class();
  v8[51] = @"XXDC";
  v9[51] = objc_opt_class();
  v8[52] = @"osBuildNumber";
  v9[52] = objc_opt_class();
  v8[53] = @"hardwareModel";
  v9[53] = objc_opt_class();
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:54];
  v4 = [v3 mutableCopy];

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AMSMetricsLoadURLEvent;
  v5 = objc_msgSendSuper2(&v7, sel__propertyValueClassesForKnownProperties);
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

- (void)_addSharedURLCacheProperties
{
  mEMORY[0x1E695AC38] = [MEMORY[0x1E695AC38] sharedURLCache];
  -[AMSMetricsLoadURLEvent setUrlCacheDiskCapacity:](self, "setUrlCacheDiskCapacity:", [mEMORY[0x1E695AC38] diskCapacity]);
  -[AMSMetricsLoadURLEvent setUrlCacheMemoryCapacity:](self, "setUrlCacheMemoryCapacity:", [mEMORY[0x1E695AC38] memoryCapacity]);
  [mEMORY[0x1E695AC38] _maxCacheableEntrySizeRatio];
  [(AMSMetricsLoadURLEvent *)self setUrlCacheMaxCacheableEntrySizeRatio:?];
}

+ (id)_fetchNetworkQualityReportsPromise
{
  v3 = +[AMSNetworkQualityInquiry sharedInstance];
  v4 = v3;
  if (v3)
  {
    investigateNetworks = [v3 investigateNetworks];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__AMSMetricsLoadURLEvent__fetchNetworkQualityReportsPromise__block_invoke;
    v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v9[4] = self;
    [investigateNetworks addErrorBlock:v9];
    v6 = [investigateNetworks promiseWithTimeout:10.0];
  }

  else
  {
    investigateNetworks = AMSError(12, @"Failed to get network quality inquiry singleton", @"Network quality inquiry is not available", 0);
    v6 = [AMSPromise promiseWithError:investigateNetworks];
  }

  v7 = v6;

  return v7;
}

+ (id)_DNSServerIPAddresses
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = malloc_type_calloc(1uLL, 0x228uLL, 0x10B2040E67E7BACuLL);
  if (!res_9_ninit(v3))
  {
    v4 = malloc_type_malloc(v3->nscount << 7, 0x1000040AE2C30F4uLL);
    res_9_getservers(v3, v4, v3->nscount);
    if (v3->nscount)
    {
      v5 = 0;
      v6 = &v4->__space[4];
      while (1)
      {
        v7 = *(v6 - 3);
        if (v7 == 30)
        {
          break;
        }

        if (v7 == 2)
        {
          v8 = 2;
          v9 = v6;
          v10 = 16;
          goto LABEL_8;
        }

LABEL_10:
        ++v5;
        v6 += 128;
        if (v5 >= v3->nscount)
        {
          goto LABEL_11;
        }
      }

      v9 = v6 + 4;
      v8 = 30;
      v10 = 46;
LABEL_8:
      inet_ntop(v8, v9, v15, v10);
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      if (v11)
      {
        [v2 addObject:v11];
      }

      goto LABEL_10;
    }

LABEL_11:
    free(v4);
  }

  res_9_ndestroy(v3);
  free(v3);
  if ([v2 count])
  {
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

+ (id)_buildVariant
{
  v2 = +[AMSDevice buildVariant];
  if (v2 - 1 > 2)
  {
    return @"customer";
  }

  else
  {
    return off_1E73BA0C0[v2 - 1];
  }
}

- (AMSMetricsLoadURLEvent)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AMSMetricsLoadURLEvent;
  v5 = [(AMSMetricsEvent *)&v9 initWithTopic:@"xp_amp_clientperf"];
  v6 = v5;
  if (v5)
  {
    v7 = [(AMSMetricsLoadURLEvent *)v5 _prepareEventPromiseWithContext:contextCopy];
    [v7 waitUntilFinished];
  }

  return v6;
}

+ (id)loadURLEventPromiseWithContext:(id)context
{
  contextCopy = context;
  v5 = [self loadURLTopicFromContext:contextCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__AMSMetricsLoadURLEvent_loadURLEventPromiseWithContext___block_invoke;
  v9[3] = &unk_1E73B4E20;
  v10 = contextCopy;
  v6 = contextCopy;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

+ (id)loadURLTopicFromContext:(id)context
{
  metricsDictionaryPromise = [context metricsDictionaryPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AMSMetricsLoadURLEvent_loadURLTopicFromContext___block_invoke;
  v7[3] = &__block_descriptor_40_e46___AMSPromise_24__0__NSDictionary_8__NSError_16l;
  v7[4] = self;
  v5 = [metricsDictionaryPromise continueWithBlock:v7];

  return v5;
}

id __50__AMSMetricsLoadURLEvent_loadURLTopicFromContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v20 = 138543874;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] error getting load url metrics bag [%{public}@]", &v20, 0x20u);
    }

    v9 = [AMSPromise promiseWithResult:@"xp_amp_clientperf"];
  }

  else
  {
    v10 = [a2 objectForKeyedSubscript:@"performance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 objectForKeyedSubscript:@"loadUrlTopic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if ([(__CFString *)v13 length])
    {
      v14 = v13;
    }

    else
    {
      v15 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        v20 = 138543618;
        v21 = v17;
        v22 = 2114;
        v23 = v18;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] No loadUrlTopic in metrics bag", &v20, 0x16u);
      }

      v14 = @"xp_amp_clientperf";
    }

    v9 = [AMSPromise promiseWithResult:v14];
  }

  return v9;
}

+ (id)loadURLEventWithTopic:(id)topic context:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  contextCopy = context;
  v8 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    *buf = 138543874;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = topicCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] creating load url event for [%{public}@]", buf, 0x20u);
  }

  v12 = [[self alloc] initWithTopic:topicCopy];
  v13 = [v12 _prepareEventPromiseWithContext:contextCopy];

  promiseAdapter = [v13 promiseAdapter];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__AMSMetricsLoadURLEvent_loadURLEventWithTopic_context___block_invoke;
  v18[3] = &unk_1E73B3F70;
  v19 = v12;
  v15 = v12;
  v16 = [promiseAdapter thenWithBlock:v18];

  return v16;
}

+ (BOOL)isPerHostLoadURLSamplingEnabled:(id)enabled perHostSamplingSuppressed:(BOOL *)suppressed featureFlagEnabled:(BOOL *)flagEnabled
{
  v7 = [enabled ams_objectForKey:@"suppressPerHostSampling" defaultValue:MEMORY[0x1E695E110]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  bOOLValue = [v8 BOOLValue];
  if (suppressed)
  {
    *suppressed = bOOLValue;
  }

  if (flagEnabled)
  {
    *flagEnabled = 1;
  }

  return bOOLValue ^ 1;
}

+ (id)_hostnameFrom:(id)from
{
  fromCopy = from;
  _establishmentReport = [fromCopy _establishmentReport];

  if (_establishmentReport)
  {
    _establishmentReport2 = [fromCopy _establishmentReport];
    v6 = nw_establishment_report_copy_proxy_endpoint(_establishmentReport2);

    if (v6 && nw_endpoint_get_type(v6) == nw_endpoint_type_host)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithCString:nw_endpoint_get_hostname(v6) encoding:4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_isAnEdgeRelayServer:(id)server domains:(id)domains
{
  v19 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  domainsCopy = domains;
  if ([domainsCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = domainsCopy;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      v11 = MEMORY[0x1E695E118];
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v14 + 1) + 8 * v12) isEqualToString:{serverCopy, v14}])
        {
          break;
        }

        if (v9 == ++v12)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = 0;
    }
  }

  else if ([@"tether.edge.apple" isEqualToString:serverCopy])
  {
    v11 = MEMORY[0x1E695E118];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_edgeRelayWasUsedFor:(id)for domains:(id)domains
{
  forCopy = for;
  domainsCopy = domains;
  if ([forCopy isProxyConnection])
  {
    v8 = [self _hostnameFrom:forCopy];
    v9 = [self _isAnEdgeRelayServer:v8 domains:domainsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_prepareEventPromiseWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_new();
  metricsDictionaryPromise = [contextCopy metricsDictionaryPromise];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AMSMetricsLoadURLEvent__prepareEventPromiseWithContext___block_invoke;
  v12[3] = &unk_1E73BA0A0;
  v13 = contextCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = contextCopy;
  [metricsDictionaryPromise addFinishBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

void __58__AMSMetricsLoadURLEvent__prepareEventPromiseWithContext___block_invoke(id *a1, void *a2, void *a3)
{
  v147 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v121 = a3;
  v6 = [v5 objectForKeyedSubscript:@"performance"];
  v7 = [v6 objectForKeyedSubscript:@"edgerelay_domains"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v127 = v7;
  }

  else
  {
    v127 = 0;
  }

  v8 = [a1[4] task];
  v9 = [v8 response];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1[4] task];
  v123 = [v11 originalRequest];

  v12 = [a1[4] task];
  v125 = [v12 _timingData];

  v13 = [a1[4] taskMetrics];
  v14 = [v13 transactionMetrics];

  v15 = [v10 ams_valueForHTTPHeaderField:@"apple-timing-app"];
  [a1[5] setAppleTimingApp:v15];

  v16 = [v14 lastObject];
  [a1[5] setApsRelayAttempted:{objc_msgSend(v16, "_apsRelayAttempted")}];

  v17 = [v10 ams_valueForHTTPHeaderField:@"x-apple-aps-delivery-type"];
  v120 = v17;
  v18 = (objc_opt_respondsToSelector() & 1) != 0 && [v17 integerValue] == 1001;
  v122 = v5;
  [a1[5] setApsRelayDidFallback:v18];
  v19 = [v14 lastObject];
  [a1[5] setApsRelaySucceeded:{objc_msgSend(v19, "_apsRelaySucceeded")}];

  v20 = +[AMSMetricsLoadURLEvent _buildVariant];
  [a1[5] setBuildVariant:v20];

  v21 = +[AMSDevice buildVersion];
  [a1[5] setOsBuildNumber:v21];

  v22 = +[AMSDevice productType];
  v130 = a1;
  [a1[5] setHardwareModel:v22];

  v124 = v10;
  v129 = [v10 statusCode];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = v14;
  v23 = [obj countByEnumeratingWithState:&v136 objects:v146 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v131 = 0;
    v26 = 0;
    v27 = *v137;
    while (1)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v137 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v136 + 1) + 8 * i);
        if ([v29 resourceFetchType] == 3)
        {
          v30 = v25;
          v31 = +[AMSLogConfig sharedURLLoadingConfig];
          if (!v31)
          {
            v31 = +[AMSLogConfig sharedConfig];
          }

          v32 = [v31 OSLogObject];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = objc_opt_class();
            v34 = AMSLogKey();
            *buf = 138543618;
            v141 = v33;
            v142 = 2114;
            v143 = v34;
            _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Received cached response", buf, 0x16u);
          }

          v35 = [v29 response];
          v36 = [v35 URL];
          v25 = [v36 absoluteString];

          v26 = 1;
        }

        if (v131)
        {
          if (!v25)
          {
            continue;
          }
        }

        else
        {
          v131 = [objc_opt_class() _edgeRelayWasUsedFor:v29 domains:v127];
          if (!v25)
          {
            continue;
          }
        }

        v37 = [v29 response];
        v38 = [v37 URL];
        v39 = [v38 absoluteString];
        v40 = v25;
        v41 = [v25 isEqualToString:v39];

        if (v41)
        {
          v42 = [v29 response];
          v43 = [v42 ams_statusCode];

          v44 = v129;
          if (v43 == 304)
          {
            v44 = 304;
          }

          v129 = v44;
        }

        v25 = v40;
      }

      v24 = [obj countByEnumeratingWithState:&v136 objects:v146 count:16];
      if (!v24)
      {
        goto LABEL_34;
      }
    }
  }

  v25 = 0;
  v131 = 0;
  v26 = 0;
LABEL_34:

  [v130[5] setCachedResponse:v26 & 1];
  [v130[5] setEdgeRelayWasUsed:v131];
  v45 = [obj lastObject];
  v46 = [v45 _dataTransferReport];

  if (v46 && nw_data_transfer_report_get_path_count(v46))
  {
    v47 = [AMSMetricsLoadURLEvent _radioTypeStringValueFromRadioType:nw_data_transfer_report_get_path_radio_type(v46, *MEMORY[0x1E6977EA8])];
    [v130[5] setCellularDataBearerTechnology:v47];
  }

  v126 = v46;
  v48 = v124;
  v49 = [v124 ams_valueForHTTPHeaderField:@"X-Apple-Jingle-Correlation-Key"];
  v50 = v123;
  if (v49)
  {
    [v130[5] setClientCorrelationKey:v49];
  }

  else
  {
    v51 = [MEMORY[0x1E696AFB0] UUID];
    v52 = [v51 UUIDString];
    [v130[5] setClientCorrelationKey:v52];
  }

  v53 = [v130[4] error];
  v54 = [v53 localizedDescription];
  [v130[5] setClientError:v54];

  v55 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataConnectEnd"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v55];
  [v130[5] setConnectionEndTime:?];

  v118 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataConnectionInterfaceIdentifier"];
  [v130[5] setConnectionInterface:?];
  v56 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataConnectionReused"];
  [v130[5] setConnectionReused:{objc_msgSend(v56, "BOOLValue")}];

  v57 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataConnectionStartTimeCounts"];
  v58 = v57;
  if (v57)
  {
    v59 = [v57 objectForKeyedSubscript:@"_kCFNTimingDataNStatRXBytes"];
    [v130[5] setConnectionStartNStatRXBytes:{objc_msgSend(v59, "unsignedIntegerValue")}];

    v60 = [v58 objectForKeyedSubscript:@"_kCFNTimingDataNStatTXBytes"];
    [v130[5] setConnectionStartNStatTXBytes:{objc_msgSend(v60, "unsignedIntegerValue")}];
  }

  v61 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataConnectStart"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v61];
  [v130[5] setConnectionStartTime:?];

  v62 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataConnectionStopTimeCounts"];
  v63 = v62;
  if (v62)
  {
    v64 = [v62 objectForKeyedSubscript:@"_kCFNTimingDataNStatRXBytes"];
    [v130[5] setConnectionStopNStatRXBytes:{objc_msgSend(v64, "unsignedIntegerValue")}];

    v65 = [v63 objectForKeyedSubscript:@"_kCFNTimingDataNStatTXBytes"];
    [v130[5] setConnectionStopNStatTXBytes:{objc_msgSend(v65, "unsignedIntegerValue")}];
  }

  v66 = [v123 valueForHTTPHeaderField:@"X-Apple-Connection-Type"];
  [v130[5] setConnectionType:v66];

  [v130[5] setDNUSubmissionAllowed:{+[AMSMetrics diagnosticsSubmissionAllowed](AMSMetrics, "diagnosticsSubmissionAllowed")}];
  v67 = +[AMSMetricsLoadURLEvent _DNSServerIPAddresses];
  v68 = [v67 componentsJoinedByString:{@", "}];
  [v130[5] setDNSServers:v68];

  v69 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataDomainLookupEnd"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v69];
  [v130[5] setDomainLookupEndTime:?];

  v70 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataDomainLookupStart"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v70];
  [v130[5] setDomainLookupStartTime:?];

  v71 = [v124 ams_valueForHTTPHeaderField:@"X-CACHE"];
  [v130[5] setEdgeNodeCacheStatus:v71];

  v72 = [v124 ams_valueForHTTPHeaderField:@"X-Apple-Application-Site"];
  [v130[5] setEnvironmentDataCenter:v72];

  [v130[5] setEventType:@"loadUrl"];
  v73 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataFetchStart"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v73];
  [v130[5] setFetchStartTime:?];

  v74 = [obj lastObject];
  v75 = [v74 networkProtocolName];
  [v130[5] setNetworkProtocolName:v75];

  v76 = [v130[4] processInfo];
  v77 = [v76 bundleIdentifier];
  v119 = v58;
  if (v77)
  {
    [v130[5] setOriginalApp:v77];
  }

  else
  {
    v78 = [MEMORY[0x1E696AAE8] mainBundle];
    v79 = [v78 bundleIdentifier];
    [v130[5] setOriginalApp:v79];

    v50 = v123;
    v48 = v124;
  }

  v80 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataRedirectCount"];
  [v130[5] setRedirectCount:{objc_msgSend(v80, "unsignedIntegerValue")}];

  v81 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataRedirectEnd"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v81];
  [v130[5] setRedirectEndTime:?];

  v82 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataRedirectStart"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v82];
  [v130[5] setRedirectStartTime:?];

  v83 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataTotalBytesSent"];
  [v130[5] setRequestMessageSize:{objc_msgSend(v83, "unsignedIntegerValue")}];

  v84 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataRequestStart"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v84];
  [v130[5] setRequestStartTime:?];

  v85 = [v50 URL];
  v86 = [v85 absoluteString];
  [v130[5] setRequestURL:v86];

  v87 = [v130[4] task];
  v88 = [AMSMetricsLoadURLEvent _resolvedIPAddressFromTask:v87];
  [v130[5] setResolvedIPAddress:v88];

  v89 = [v48 ams_valueForHTTPHeaderField:@"Date"];
  [v130[5] setResponseDate:v89];

  v90 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataResponseEnd"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v90];
  [v130[5] setResponseEndTime:?];

  v91 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataTotalBytesReceived"];
  [v130[5] setResponseMessageSize:{objc_msgSend(v91, "unsignedIntegerValue")}];

  v92 = [obj lastObject];
  v93 = [v92 countOfResponseBodyBytesAfterDecoding];

  if (v93 < 0)
  {
    v94 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v94)
    {
      v94 = +[AMSLogConfig sharedConfig];
    }

    v95 = [v94 OSLogObject];
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      v96 = objc_opt_class();
      v97 = v96;
      AMSLogKey();
      v99 = v98 = v25;
      *buf = 138543874;
      v141 = v96;
      v142 = 2114;
      v143 = v99;
      v144 = 2048;
      v145 = v93;
      _os_log_impl(&dword_192869000, v95, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] countOfResponseBodyBytesAfterDecoding in metrics doesn't fit in NSUInteger bounds. It will be ignored. The provided metrics are probably malformed. size = %lld", buf, 0x20u);

      v25 = v98;
    }

    v50 = v123;
    v48 = v124;
  }

  else
  {
    [v130[5] setResponseMessageSizeUncompressed:v93];
  }

  v100 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataResponseStart"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v100];
  [v130[5] setResponseStartTime:?];

  v101 = [v125 objectForKeyedSubscript:@"_kCFNTimingDataSecureConnectionStart"];
  [AMSMetricsLoadURLEvent _timingDataMetricToServerTimeInterval:v101];
  [v130[5] setSecureConnectionStartTime:?];

  [v130[5] setProperty:@"amsmetrics" forBodyKey:@"xpSendMethod"];
  [v130[5] setStatusCode:v129];
  v102 = [v130[4] session];
  v103 = [v102 configuration];
  [v130[5] setTFOEnabled:{objc_msgSend(v103, "_allowsTCPFastOpen")}];

  v104 = [v50 valueForHTTPHeaderField:@"X-Apple-TID-State"];
  [v130[5] setTIDState:v104];

  v105 = [v130[4] session];
  v106 = [v105 configuration];
  [v130[5] setTLSSessionTickets:{objc_msgSend(v106, "_allowsTLSSessionTickets")}];

  [v130[5] _addSharedURLCacheProperties];
  if (v122)
  {
    v107 = [v122 objectForKeyedSubscript:@"performance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    v109 = [v108 objectForKeyedSubscript:@"sessionDuration"];
    [v109 doubleValue];
    [v130[5] setXpSessionDuration:?];

    v110 = +[AMSDefaults forceLoadUrlMetrics];
    if (v110 != 2)
    {
      if (v110 == 1)
      {
        goto LABEL_62;
      }

      if (v110)
      {
LABEL_65:

        goto LABEL_66;
      }

      if (+[AMSEphemeralDefaults forceLoadUrlMetrics]== 1)
      {
LABEL_62:
        [v130[5] _forceLoadURLMetricsAlways];
        goto LABEL_65;
      }

      if (+[AMSEphemeralDefaults forceLoadUrlMetrics]!= 2)
      {
        if ([AMSMetricsLoadURLEvent isPerHostLoadURLSamplingEnabled:v122])
        {
          v116 = [v130[4] task];
          [AMSMetricsLoadURLEvent _samplingPercentageForURLSessionTask:v116 performanceDictionary:v108];
        }

        else
        {
          v116 = [v108 objectForKeyedSubscript:@"samplingPercentageUsers"];
          [v116 doubleValue];
        }

        [v130[5] setXpSamplingPercentageUsers:?];

        v117 = [v108 objectForKeyedSubscript:@"samplingPercentageCachedResponses"];
        [v117 doubleValue];
        [v130[5] setXpSamplingPercentageCachedResponses:?];

        goto LABEL_65;
      }
    }

    [v130[5] _forceLoadURLMetricsDisabled];
    goto LABEL_65;
  }

LABEL_66:
  v111 = [v48 ams_valueForHTTPHeaderField:@"wt"];
  [v130[5] setWt:v111];

  v112 = [v48 ams_valueForHTTPHeaderField:@"X-XDC"];
  [v130[5] setXxdc:v112];

  v113 = +[AMSMetricsLoadURLEvent _fetchNetworkQualityReportsPromise];
  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = __58__AMSMetricsLoadURLEvent__prepareEventPromiseWithContext___block_invoke_391;
  v132[3] = &unk_1E73BA078;
  v114 = v130[4];
  v132[4] = v130[5];
  v133 = v118;
  v134 = v114;
  v135 = v130[6];
  v115 = v118;
  [v113 addFinishBlock:v132];
}

void __58__AMSMetricsLoadURLEvent__prepareEventPromiseWithContext___block_invoke_391(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    [*(a1 + 32) setNetworkQualityReports:v11];
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [AMSNetworkQualityInquiry reportForConnectionInterface:v6 fromReports:v11];
      v8 = [v7 objectForKeyedSubscript:@"interface"];
      [*(a1 + 32) setRadioType:v8];

      v9 = [v7 objectForKeyedSubscript:@"radioTechnology"];
      [*(a1 + 32) setRadioTechnology:v9];
    }
  }

  v10 = [*(a1 + 48) metricsOverlay];
  [*(a1 + 32) setMetricsOverlay:v10];

  [*(a1 + 56) finishWithSuccess];
}

- (void)_forceLoadURLMetricsAlways
{
  [(AMSMetricsLoadURLEvent *)self setXpSamplingForced:1];
  [(AMSMetricsLoadURLEvent *)self setXpSamplingPercentageUsers:1.0];

  [(AMSMetricsLoadURLEvent *)self setXpSamplingPercentageCachedResponses:1.0];
}

- (void)_forceLoadURLMetricsDisabled
{
  [(AMSMetricsLoadURLEvent *)self setXpSamplingPercentageUsers:0.0];

  [(AMSMetricsLoadURLEvent *)self setXpSamplingPercentageCachedResponses:0.0];
}

+ (BOOL)shouldCollectMetricsForContext:(id)context
{
  v3 = [self shouldCollectMetricsPromiseForContext:context];
  v4 = [v3 resultWithError:0];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)shouldCollectMetricsPromiseForContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[AMSDefaults forceLoadUrlMetrics];
  if (!v5)
  {
    v12 = +[AMSEphemeralDefaults forceLoadUrlMetrics];
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        v6 = +[AMSLogConfig sharedURLLoadingConfig];
        if (!v6)
        {
          v6 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v6 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_19;
        }

        *buf = 138543362;
        v21 = objc_opt_class();
        v8 = "%{public}@: AMSEphemeralDefaults forcing loadUrl to always for this process";
        goto LABEL_18;
      }

LABEL_20:
      metricsDictionaryPromise = [contextCopy metricsDictionaryPromise];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __64__AMSMetricsLoadURLEvent_shouldCollectMetricsPromiseForContext___block_invoke;
      v17[3] = &unk_1E73B9120;
      selfCopy = self;
      v18 = contextCopy;
      v15 = [metricsDictionaryPromise thenWithBlock:v17];

      goto LABEL_28;
    }

    v9 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
LABEL_26:

      v13 = MEMORY[0x1E695E110];
      goto LABEL_27;
    }

    *buf = 138543362;
    v21 = objc_opt_class();
    v11 = "%{public}@: AMSEphemeralDefaults forcing loadUrl to disabled for this process";
LABEL_25:
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, v11, buf, 0xCu);
    goto LABEL_26;
  }

  if (v5 == 2)
  {
    v9 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = 138543362;
    v21 = objc_opt_class();
    v11 = "%{public}@: AMSDefaults forcing loadUrl to disabled globally";
    goto LABEL_25;
  }

  if (v5 != 1)
  {
    goto LABEL_20;
  }

  v6 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_19;
  }

  *buf = 138543362;
  v21 = objc_opt_class();
  v8 = "%{public}@: AMSDefaults forcing loadUrl to always globally";
LABEL_18:
  _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, v8, buf, 0xCu);
LABEL_19:

  v13 = MEMORY[0x1E695E118];
LABEL_27:
  v15 = [AMSPromise promiseWithResult:v13];
LABEL_28:

  return v15;
}

id __64__AMSMetricsLoadURLEvent_shouldCollectMetricsPromiseForContext___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"performance"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = objc_opt_class();
      v18 = v45;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch performance metrics from bag", buf, 0xCu);
    }

    v15 = MEMORY[0x1E695E110];
    goto LABEL_14;
  }

  v43 = 0;
  v5 = [*(a1 + 40) isPerHostLoadURLSamplingEnabled:v3 perHostSamplingSuppressed:&v43 + 1 featureFlagEnabled:&v43];
  v6 = +[AMSLogConfig sharedURLLoadingConfig];
  v7 = v6;
  if (!v5)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v7 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = @"false";
      if (HIBYTE(v43))
      {
        v23 = @"true";
      }

      else
      {
        v23 = @"false";
      }

      *buf = 138543874;
      v45 = v21;
      if (v43)
      {
        v22 = @"true";
      }

      v46 = 2112;
      v47 = v23;
      v48 = 2112;
      v49 = v22;
      v24 = v21;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_INFO, "%{public}@: Using host-agnostic LoadURL sampling logic, perHostSamplingSuppressed = %@, featureFlagEnabled = %@", buf, 0x20u);
    }

    v25 = [v4 objectForKeyedSubscript:@"samplingPercentageUsers"];
    [v25 doubleValue];
    v27 = v26;

    v28 = [v4 objectForKeyedSubscript:@"sessionDuration"];
    [v28 doubleValue];
    v30 = v29;

    v31 = [MEMORY[0x1E695DF00] date];
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
    [AMSMetrics timeIntervalFromServerTime:v32];
    v34 = v33;

    v35 = +[AMSDefaults metricsTimingWindowStartTime];
    v36 = [v35 dateByAddingTimeInterval:v34];

    if ([v31 compare:v36] == -1)
    {
      v38 = MEMORY[0x1E695E118];
    }

    else
    {
      +[AMSRandomNumberGenerator normalizedRandomDouble];
      if (v37 != 0.0)
      {
        v40 = v37;
        if (v37 <= v27)
        {
          [AMSDefaults setMetricsTimingWindowStartTime:v31];
        }

        v41 = [MEMORY[0x1E696AD98] numberWithBool:v40 <= v27];
        v19 = [AMSPromise promiseWithResult:v41];

        goto LABEL_33;
      }

      v38 = MEMORY[0x1E695E110];
    }

    v19 = [AMSPromise promiseWithResult:v38];
LABEL_33:

    goto LABEL_34;
  }

  if (!v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    *buf = 138543362;
    v45 = v9;
    v10 = v9;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "%{public}@: Using per-host LoadURL sampling logic", buf, 0xCu);
  }

  v11 = [*(a1 + 32) task];
  [AMSMetricsLoadURLEvent _samplingPercentageForURLSessionTask:v11 performanceDictionary:v4];
  v13 = v12;

  +[AMSRandomNumberGenerator normalizedRandomDouble];
  if (v14 == 0.0)
  {
    v15 = MEMORY[0x1E695E110];
LABEL_14:
    v19 = [AMSPromise promiseWithResult:v15];
    goto LABEL_34;
  }

  v39 = [MEMORY[0x1E696AD98] numberWithInt:v14 <= v13];
  v19 = [AMSPromise promiseWithResult:v39];

LABEL_34:

  return v19;
}

- (BOOL)apsRelayAttempted
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"apsRelayAttempted"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)apsRelayDidFallback
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"apsRelayDidFallback"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)apsRelaySucceeded
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"apsRelaySucceeded"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)cachedResponse
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"cachedResponse"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)connectionEndTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"connectionEndTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (BOOL)connectionReused
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"connectionReused"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)connectionStartNStatRXBytes
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"connectionStartNStatRXBytes"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)connectionStartNStatTXBytes
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"connectionStartNStatTXBytes"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)connectionStopNStatRXBytes
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"connectionStopNStatRXBytes"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)connectionStopNStatTXBytes
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"connectionStopNStatTXBytes"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)connectionStartTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"connectionStartTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (BOOL)isDNUSubmissionAllowed
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"DNUSubmissionAllowed"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)domainLookupEndTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"domainLookupEndTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (double)domainLookupStartTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"domainLookupStartTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (double)fetchStartTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"fetchStartTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (unint64_t)redirectCount
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"redirectCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)redirectEndTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"redirectEndTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (double)redirectStartTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"redirectStartTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (unint64_t)requestMessageSize
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"requestMessageSize"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)requestStartTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"requestStartTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (double)responseEndTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"responseEndTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (unint64_t)responseMessageSize
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"responseMessageSize"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)responseMessageSizeUncompressed
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"responseMessageSizeUncompressed"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)responseStartTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"responseStartTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (double)secureConnectionStartTime
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"secureConnectionStartTime"];
  [AMSMetrics timeIntervalFromServerTime:v2];
  v4 = v3;

  return v4;
}

- (int64_t)statusCode
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"statusCode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)TFOEnabled
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"TFOEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)TLSSessionTickets
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"TLSSessionTickets"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)urlCacheDiskCapacity
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"urlCacheDiskCapacity"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)urlCacheMemoryCapacity
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"urlCacheMemoryCapacity"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)urlCacheMaxCacheableEntrySizeRatio
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"urlCacheMaxCacheableEntrySizeRatio"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)xpSessionDuration
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"xpSessionDuration"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (BOOL)xpSamplingForced
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"xpSamplingForced"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)xpSamplingPercentageUsers
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"xpSamplingPercentageUsers"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)xpSamplingPercentageCachedResponses
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"xpSamplingPercentageCachedResponses"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setApsRelayAttempted:(BOOL)attempted
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:attempted];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"apsRelayAttempted"];
}

- (void)setApsRelayDidFallback:(BOOL)fallback
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:fallback];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"apsRelayDidFallback"];
}

- (void)setApsRelaySucceeded:(BOOL)succeeded
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:succeeded];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"apsRelaySucceeded"];
}

- (void)setCachedResponse:(BOOL)response
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:response];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"cachedResponse"];
}

- (void)setConnectionEndTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"connectionEndTime"];
}

- (void)setConnectionReused:(BOOL)reused
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:reused];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"connectionReused"];
}

- (void)setConnectionStartNStatRXBytes:(unint64_t)bytes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bytes];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"connectionStartNStatRXBytes"];
}

- (void)setConnectionStartNStatTXBytes:(unint64_t)bytes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bytes];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"connectionStartNStatTXBytes"];
}

- (void)setConnectionStopNStatRXBytes:(unint64_t)bytes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bytes];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"connectionStopNStatRXBytes"];
}

- (void)setConnectionStopNStatTXBytes:(unint64_t)bytes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bytes];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"connectionStopNStatTXBytes"];
}

- (void)setConnectionStartTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"connectionStartTime"];
}

- (void)setDNUSubmissionAllowed:(BOOL)allowed
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:allowed];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"DNUSubmissionAllowed"];
}

- (void)setDomainLookupEndTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"domainLookupEndTime"];
}

- (void)setDomainLookupStartTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"domainLookupStartTime"];
}

- (void)setFetchStartTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"fetchStartTime"];
}

- (void)setRedirectCount:(unint64_t)count
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"redirectCount"];
}

- (void)setRedirectEndTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"redirectEndTime"];
}

- (void)setRedirectStartTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"redirectStartTime"];
}

- (void)setRequestStartTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"requestStartTime"];
}

- (void)setRequestMessageSize:(unint64_t)size
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"requestMessageSize"];
}

- (void)setResponseEndTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"responseEndTime"];
}

- (void)setResponseMessageSize:(unint64_t)size
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"responseMessageSize"];
}

- (void)setResponseMessageSizeUncompressed:(unint64_t)uncompressed
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:uncompressed];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"responseMessageSizeUncompressed"];
}

- (void)setResponseStartTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"responseStartTime"];
}

- (void)setSecureConnectionStartTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [AMSMetrics serverTimeFromTimeInterval:?];
  }

  v5 = v4;
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"secureConnectionStartTime"];
}

- (void)setStatusCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"statusCode"];
}

- (void)setTFOEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"TFOEnabled"];
}

- (void)setTLSSessionTickets:(BOOL)tickets
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:tickets];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"TLSSessionTickets"];
}

- (void)setUrlCacheDiskCapacity:(unint64_t)capacity
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capacity];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"urlCacheDiskCapacity"];
}

- (void)setUrlCacheMemoryCapacity:(unint64_t)capacity
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capacity];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"urlCacheMemoryCapacity"];
}

- (void)setUrlCacheMaxCacheableEntrySizeRatio:(double)ratio
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:ratio];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"urlCacheMaxCacheableEntrySizeRatio"];
}

- (void)setXpSessionDuration:(double)duration
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"xpSessionDuration"];
}

- (void)setXpSamplingForced:(BOOL)forced
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:forced];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"xpSamplingForced"];
}

- (void)setXpSamplingPercentageUsers:(double)users
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:users];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"xpSamplingPercentageUsers"];
}

- (void)setXpSamplingPercentageCachedResponses:(double)responses
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:responses];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"xpSamplingPercentageCachedResponses"];
}

- (void)setMetricsOverlay:(id)overlay
{
  v29 = *MEMORY[0x1E69E9840];
  overlayCopy = overlay;
  v6 = overlayCopy;
  if (!overlayCopy || ([overlayCopy allKeys], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, !v8))
  {
    metricsOverlay = self->_metricsOverlay;
    self->_metricsOverlay = 0;

    goto LABEL_22;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v6];
  v10 = [v9 objectForKey:@"topic"];
  if (v10)
  {

LABEL_7:
    [v9 removeObjectForKey:@"topic"];
    [v9 removeObjectForKey:0x1F071EDF8];
    v13 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        v3 = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, v3];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      *buf = 138543362;
      selfCopy = v19;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Removing topic from overlay", buf, 0xCu);
      if (v15)
      {

        v19 = v3;
      }
    }

    goto LABEL_17;
  }

  v12 = [v9 objectForKey:0x1F071EDF8];

  if (v12)
  {
    goto LABEL_7;
  }

LABEL_17:
  v20 = [v9 copy];
  v21 = self->_metricsOverlay;
  self->_metricsOverlay = v20;

  v22 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v22)
  {
    v22 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v22 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v24 = AMSHashIfNeeded(self->_metricsOverlay);
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = v24;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: Adding metrics overlay %{public}@", buf, 0x16u);
  }

  [(AMSMetricsEvent *)self addPropertiesWithDictionary:self->_metricsOverlay];
LABEL_22:
}

void __60__AMSMetricsLoadURLEvent__fetchNetworkQualityReportsPromise__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogableError(v2);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Metrics network inquiry error occurred. Error: %@", &v8, 0x16u);
  }
}

+ (id)_radioTypeStringValueFromRadioType:(int)type
{
  if (type > 128)
  {
    if (type <= 132)
    {
      if (type > 130)
      {
        if (type == 131)
        {
          v4 = @"cell_nr_sa_sub6";
        }

        else
        {
          v4 = @"cell_nr_sa_mmw";
        }
      }

      else if (type == 129)
      {
        v4 = @"cell_endc_sub6";
      }

      else
      {
        v4 = @"cell_endc_mmw";
      }

      return v4;
    }

    if (type <= 134)
    {
      if (type == 133)
      {
        v4 = @"cell_wcdma";
      }

      else
      {
        v4 = @"cell_gsm";
      }

      return v4;
    }

    if (type == 135)
    {
      v4 = @"cell_cdma";

      return v4;
    }

    if (type == 136)
    {
      v4 = @"cell_evdo";

      return v4;
    }

LABEL_67:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *&type];

    return v4;
  }

  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        v4 = @"wifi_n";
      }

      else
      {
        v4 = @"wifi_ac";
      }

      return v4;
    }

    if (type == 6)
    {
      v4 = @"wifi_ax";

      return v4;
    }

    if (type == 128)
    {
      v4 = @"cell_lte";

      return v4;
    }

    goto LABEL_67;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      v4 = @"wifi_a";
    }

    else
    {
      v4 = @"wifi_g";
    }
  }

  else
  {
    if (type)
    {
      if (type == 1)
      {
        v4 = @"wifi_b";

        return v4;
      }

      goto LABEL_67;
    }

    v4 = @"unknown";
  }

  return v4;
}

+ (id)_resolvedIPAddressFromTask:(id)task
{
  v12[1] = *MEMORY[0x1E69E9840];
  response = [task response];
  _CFURLResponse = [response _CFURLResponse];

  if (_CFURLResponse && (v5 = CFURLResponseCopyPeerAddress()) != 0)
  {
    v6 = v5;
    BytePtr = CFDataGetBytePtr(v5);
    v8 = *BytePtr;
    v9 = v12 - ((v8 + 15) & 0x1F0);
    inet_ntop(BytePtr[1], BytePtr + 4, v9, v8);
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:1];
    CFRelease(v6);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (double)_timingDataMetricToServerTimeInterval:(id)interval
{
  [interval doubleValue];
  v4 = v3;
  result = 0.0;
  if (v4 != 0.0)
  {
    if (qword_1ED6E2F88 != -1)
    {
      dispatch_once(&qword_1ED6E2F88, &__block_literal_global_99);
    }

    return v4 + *&_MergedGlobals_135;
  }

  return result;
}

void __64__AMSMetricsLoadURLEvent__timingDataMetricToServerTimeInterval___block_invoke()
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  [v2 timeIntervalSinceDate:v0];
  _MergedGlobals_135 = v1;
}

+ (double)_samplingPercentageForURLSessionTask:(id)task performanceDictionary:(id)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  taskCopy = task;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"samplingPercentageUsers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    v11 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
      v14 = AMSHashIfNeeded(v13);
      *buf = 138543618;
      selfCopy6 = self;
      v45 = 2114;
      v46 = v14;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch fallback sampling percentage value from performance metrics dictionary, will use %{public}@", buf, 0x16u);
    }

    v10 = 0.0;
  }

  originalRequest = [taskCopy originalRequest];

  v16 = [originalRequest URL];
  host = [v16 host];

  if (host)
  {
    v18 = [dictionaryCopy objectForKeyedSubscript:@"samplingPercentagePerHost"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      oSLogObject4 = +[AMSLogConfig sharedURLLoadingConfig];
      if (!oSLogObject4)
      {
        oSLogObject4 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject4 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v30 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
        v31 = AMSHashIfNeeded(v30);
        *buf = 138543618;
        selfCopy6 = self;
        v45 = 2114;
        v46 = v31;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch per-host sampling percentage values from performance metrics dictionary, falling back to global sampling percentage value of %{public}@", buf, 0x16u);
      }

      goto LABEL_35;
    }

    v19 = [v18 objectForKeyedSubscript:host];
    if (v19)
    {
      oSLogObject4 = v19;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v22 = +[AMSLogConfig sharedURLLoadingConfig];
      oSLogObject2 = v22;
      if (isKindOfClass)
      {
        if (!v22)
        {
          oSLogObject2 = +[AMSLogConfig sharedConfig];
        }

        v23OSLogObject = [oSLogObject2 OSLogObject];
        if (os_log_type_enabled(v23OSLogObject, OS_LOG_TYPE_INFO))
        {
          v41 = AMSHashIfNeeded(host);
          v25 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
          v26 = AMSHashIfNeeded(v25);
          *buf = 138543874;
          selfCopy6 = self;
          v45 = 2114;
          v46 = v41;
          v47 = 2114;
          v48 = v26;
          _os_log_impl(&dword_192869000, v23OSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Found per-host sampling percentage value in per-host dictionary for %{public}@: %{public}@. Using that", buf, 0x20u);
        }

        [oSLogObject4 doubleValue];
        v10 = v27;
        goto LABEL_36;
      }

      if (!v22)
      {
        oSLogObject2 = +[AMSLogConfig sharedConfig];
      }

      v23OSLogObject2 = [oSLogObject2 OSLogObject];
      if (os_log_type_enabled(v23OSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v42 = AMSHashIfNeeded(host);
        v38 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
        v39 = AMSHashIfNeeded(v38);
        *buf = 138543874;
        selfCopy6 = self;
        v45 = 2114;
        v46 = v42;
        v47 = 2114;
        v48 = v39;
        _os_log_impl(&dword_192869000, v23OSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Unexpected type for per-host sampling percentage value in per-host dictionary for %{public}@, falling back to global sampling percentage value of %{public}@", buf, 0x20u);
      }

LABEL_35:
      goto LABEL_36;
    }

    v32 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v34 = AMSHashIfNeeded(host);
      v35 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v36 = AMSHashIfNeeded(v35);
      *buf = 138543874;
      selfCopy6 = self;
      v45 = 2114;
      v46 = v34;
      v47 = 2114;
      v48 = v36;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_INFO, "%{public}@: No per-host sampling percentage value in per-host dictionary for %{public}@, falling back to global sampling percentage value of %{public}@", buf, 0x20u);
    }

    oSLogObject4 = 0;
  }

  else
  {
    v18 = +[AMSLogConfig sharedURLLoadingConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v29 = AMSHashIfNeeded(v28);
      *buf = 138543618;
      selfCopy6 = self;
      v45 = 2114;
      v46 = v29;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve original request's hostname from url session task, falling back to global sampling percentage value of %{public}@", buf, 0x16u);
    }
  }

LABEL_36:

  return v10;
}

@end