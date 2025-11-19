@interface AMSDXPCActivityCriteriaBuilder
- (AMSDXPCActivityCriteriaBuilder)initWithCanRunOnBattery:(BOOL)a3 delay:(id)a4 gracePeriod:(double)a5 inexpensiveNetworkConnection:(BOOL)a6 priority:(int64_t)a7 repeating:(BOOL)a8 requiresNetwork:(BOOL)a9;
- (id)buildXPCObject;
@end

@implementation AMSDXPCActivityCriteriaBuilder

- (AMSDXPCActivityCriteriaBuilder)initWithCanRunOnBattery:(BOOL)a3 delay:(id)a4 gracePeriod:(double)a5 inexpensiveNetworkConnection:(BOOL)a6 priority:(int64_t)a7 repeating:(BOOL)a8 requiresNetwork:(BOOL)a9
{
  v17 = a4;
  v21.receiver = self;
  v21.super_class = AMSDXPCActivityCriteriaBuilder;
  v18 = [(AMSDXPCActivityCriteriaBuilder *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_canRunOnBattery = a3;
    objc_storeStrong(&v18->_delay, a4);
    v19->_gracePeriod = a5;
    v19->_inexpensiveNetworkConnection = a6;
    v19->_priority = a7;
    v19->_repeating = a8;
    v19->_requiresNetwork = a9;
  }

  return v19;
}

- (id)buildXPCObject
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, [(AMSDXPCActivityCriteriaBuilder *)self repeating]);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, [(AMSDXPCActivityCriteriaBuilder *)self canRunOnBattery]);
  [(AMSDXPCActivityCriteriaBuilder *)self gracePeriod];
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, v4);
  v5 = [(AMSDXPCActivityCriteriaBuilder *)self priority];
  v6 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  if (!v5)
  {
    v6 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, *v6);
  v7 = [(AMSDXPCActivityCriteriaBuilder *)self delay];

  if (v7)
  {
    v8 = [(AMSDXPCActivityCriteriaBuilder *)self delay];
    [v8 doubleValue];
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, v9);
  }

  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, [(AMSDXPCActivityCriteriaBuilder *)self requiresNetwork]);
  if ([(AMSDXPCActivityCriteriaBuilder *)self requiresNetwork])
  {
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, [(AMSDXPCActivityCriteriaBuilder *)self inexpensiveNetworkConnection]);
  }

  return v3;
}

@end