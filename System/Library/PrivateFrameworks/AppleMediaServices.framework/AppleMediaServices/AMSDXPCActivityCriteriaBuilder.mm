@interface AMSDXPCActivityCriteriaBuilder
- (AMSDXPCActivityCriteriaBuilder)initWithCanRunOnBattery:(BOOL)battery delay:(id)delay gracePeriod:(double)period inexpensiveNetworkConnection:(BOOL)connection priority:(int64_t)priority repeating:(BOOL)repeating requiresNetwork:(BOOL)network;
- (id)buildXPCObject;
@end

@implementation AMSDXPCActivityCriteriaBuilder

- (AMSDXPCActivityCriteriaBuilder)initWithCanRunOnBattery:(BOOL)battery delay:(id)delay gracePeriod:(double)period inexpensiveNetworkConnection:(BOOL)connection priority:(int64_t)priority repeating:(BOOL)repeating requiresNetwork:(BOOL)network
{
  delayCopy = delay;
  v21.receiver = self;
  v21.super_class = AMSDXPCActivityCriteriaBuilder;
  v18 = [(AMSDXPCActivityCriteriaBuilder *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_canRunOnBattery = battery;
    objc_storeStrong(&v18->_delay, delay);
    v19->_gracePeriod = period;
    v19->_inexpensiveNetworkConnection = connection;
    v19->_priority = priority;
    v19->_repeating = repeating;
    v19->_requiresNetwork = network;
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
  priority = [(AMSDXPCActivityCriteriaBuilder *)self priority];
  v6 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  if (!priority)
  {
    v6 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, *v6);
  delay = [(AMSDXPCActivityCriteriaBuilder *)self delay];

  if (delay)
  {
    delay2 = [(AMSDXPCActivityCriteriaBuilder *)self delay];
    [delay2 doubleValue];
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