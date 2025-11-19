@interface NWPath
+ (NWPath)pathWithProtocolBufferData:(id)a3;
+ (id)allClientIDs;
+ (id)createStringFromStatus:(int64_t)a3;
+ (id)pathForClientID:(id)a3;
+ (id)pathForClientID:(id)a3 parametersTLV:(id)a4 pathResultTLV:(id)a5;
- (BOOL)fallbackEligible;
- (BOOL)fallbackIsPreferred;
- (BOOL)fallbackIsWeak;
- (BOOL)hasAdvertiseDescriptor;
- (BOOL)hasApplicationLevelFirewall;
- (BOOL)hasBrowseDescriptor;
- (BOOL)hasCustomPFRules;
- (BOOL)hasKernelExtensionFilter;
- (BOOL)hasParentalControls;
- (BOOL)hasProxySettings;
- (BOOL)hasUnsatisfiedFallbackAgent;
- (BOOL)isConstrained;
- (BOOL)isDirect;
- (BOOL)isEligibleForCrazyIvan46;
- (BOOL)isEqualToPath:(NWPath *)path;
- (BOOL)isExpensive;
- (BOOL)isFiltered;
- (BOOL)isFlowDivert;
- (BOOL)isLinkQualityAbort;
- (BOOL)isListener;
- (BOOL)isListenerInterfaceSpecific;
- (BOOL)isLocal;
- (BOOL)isPerAppVPN;
- (BOOL)isRoaming;
- (BOOL)isUltraConstrained;
- (BOOL)isViable;
- (BOOL)shouldProbeConnectivity;
- (BOOL)supportsDNS;
- (BOOL)supportsIPv4;
- (BOOL)supportsIPv6;
- (BOOL)unsatisfiedVoluntaryAgentMatchesAddress:(id)a3 triggerImmediately:(BOOL *)a4;
- (BOOL)usesCompanion;
- (BOOL)usesInterfaceType:(int64_t)a3;
- (BOOL)usesNetworkAgent:(id)a3;
- (BOOL)usesNetworkAgentType:(Class)a3;
- (NSArray)dnsSearchDomains;
- (NSArray)dnsServers;
- (NSArray)dnsServersAsStrings;
- (NSArray)flows;
- (NSArray)gateways;
- (NSArray)groupMembers;
- (NSArray)overrideDNSSearchDomains;
- (NSArray)overrideDNSServers;
- (NSArray)overrideDNSServersAsStrings;
- (NSArray)proxySettings;
- (NSString)privateDescription;
- (NSString)reasonDescription;
- (NSString)statusAsString;
- (NSUUID)clientID;
- (NWAdvertiseDescriptor)advertiseDescriptor;
- (NWBrowseDescriptor)browseDescriptor;
- (NWEndpoint)effectiveLocalEndpoint;
- (NWEndpoint)effectiveRemoteEndpoint;
- (NWEndpoint)endpoint;
- (NWInterface)connectedInterface;
- (NWInterface)fallbackInterface;
- (NWInterface)interface;
- (NWInterface)scopedInterface;
- (NWParameters)derivedParameters;
- (NWParameters)parameters;
- (NWPath)init;
- (NWPath)initWithPath:(id)a3;
- (NWPathStatus)status;
- (id)copyDNSSearchDomains:(BOOL)a3;
- (id)copyDNSServerEndpoints:(BOOL)a3;
- (id)copyDNSServersStrings:(id)a3;
- (id)copyDataFromNetworkAgentWithDomain:(id)a3 type:(id)a4;
- (id)copyFlowDivertToken;
- (id)createProtocolBufferObject;
- (id)delegateInterface;
- (id)description;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
- (id)genericNetworkAgentsWithDomain:(id)a3 type:(id)a4;
- (id)inactiveNetworkAgentUUIDsOnlyVoluntary:(BOOL)a3;
- (id)networkAgentsOfType:(Class)a3;
- (int)dnsServiceID;
- (int64_t)maximumDatagramSize;
- (int64_t)mtu;
- (int64_t)reason;
- (unint64_t)secondsSinceInterfaceChange;
- (unsigned)fallbackInterfaceIndex;
- (unsigned)filterControlUnit;
- (unsigned)flowDivertAggregateUnit;
- (unsigned)flowDivertControlUnit;
- (unsigned)policyID;
@end

@implementation NWPath

- (NWPathStatus)status
{
  v2 = [(NWPath *)self internalPath];
  status = nw_path_get_status(v2);

  return status;
}

- (BOOL)isConstrained
{
  v2 = [(NWPath *)self internalPath];
  is_constrained = _nw_path_is_constrained(v2);

  return is_constrained;
}

- (BOOL)isExpensive
{
  v2 = [(NWPath *)self internalPath];
  is_expensive = _nw_path_is_expensive(v2);

  return is_expensive;
}

- (NWInterface)interface
{
  v3 = [(NWPath *)self internalPath];
  v4 = nw_path_copy_direct_interface(v3);

  if (v4)
  {
    v5 = [[NWInterface alloc] initWithInterface:v4];
LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  v6 = [(NWPath *)self internalPath];
  interface_index = nw_path_get_interface_index(v6);

  if (interface_index)
  {
    v5 = [[NWInterface alloc] initWithInterfaceIndex:interface_index];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (NSString)privateDescription
{
  v2 = [(NWPath *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (NSString)statusAsString
{
  v2 = [(NWPath *)self status];

  return [NWPath createStringFromStatus:v2];
}

- (int64_t)reason
{
  v2 = [(NWPath *)self internalPath];
  reason = nw_path_get_reason(v2);

  return reason;
}

- (BOOL)supportsIPv4
{
  v2 = [(NWPath *)self internalPath];
  has_ipv4 = nw_path_has_ipv4(v2);

  return has_ipv4;
}

- (BOOL)supportsIPv6
{
  v2 = [(NWPath *)self internalPath];
  has_ipv6 = nw_path_has_ipv6(v2);

  return has_ipv6;
}

- (NSString)reasonDescription
{
  v2 = [(NWPath *)self internalPath];
  reason_description = nw_path_get_reason_description(v2);

  if (reason_description)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reason_description];
  }

  else
  {
    v4 = &stru_1EEFDE910;
  }

  return v4;
}

- (BOOL)isViable
{
  v2 = [(NWPath *)self internalPath];
  is_viable = nw_path_is_viable(v2);

  return is_viable;
}

- (BOOL)isUltraConstrained
{
  v2 = [(NWPath *)self internalPath];
  is_ultra_constrained = _nw_path_is_ultra_constrained(v2);

  return is_ultra_constrained;
}

- (BOOL)usesCompanion
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_uses_companion(v2);

  return v3;
}

- (NSUUID)clientID
{
  v8 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v3 = [(NWPath *)self internalPath];
  if (nw_path_get_client_id(v3, uu))
  {
    is_null = uuid_is_null(uu);

    if (is_null)
    {
      v5 = 0;
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (int64_t)mtu
{
  v2 = [(NWPath *)self internalPath];
  mtu = nw_path_get_mtu(v2);

  return mtu;
}

- (unsigned)fallbackInterfaceIndex
{
  v2 = [(NWPath *)self internalPath];
  fallback_interface_index = nw_path_get_fallback_interface_index(v2);

  return fallback_interface_index;
}

- (BOOL)fallbackIsWeak
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_fallback_is_weak(v2);

  return v3;
}

- (BOOL)fallbackEligible
{
  v2 = [(NWPath *)self internalPath];
  should_fallback = nw_path_should_fallback(v2, 0);

  return should_fallback;
}

- (int64_t)maximumDatagramSize
{
  v2 = [(NWPath *)self internalPath];
  maximum_datagram_size = nw_path_get_maximum_datagram_size(v2);

  return maximum_datagram_size;
}

- (unint64_t)secondsSinceInterfaceChange
{
  v2 = [(NWPath *)self internalPath];
  interface_time_delta = nw_path_get_interface_time_delta(v2);

  return interface_time_delta;
}

- (NSArray)groupMembers
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_group_members(v2);

  if (v3 && _nw_array_get_count(v3))
  {
    v4 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __22__NWPath_groupMembers__block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v5 = v4;
    v8 = v5;
    _nw_array_apply(v3, aBlock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)fallbackIsPreferred
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_fallback_is_preferred(v2);

  return v3;
}

- (NSArray)flows
{
  v2 = [(NWPath *)self internalPath];
  v3 = _nw_path_copy_flows(v2);

  if (v3 && _nw_array_get_count(v3))
  {
    v4 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __15__NWPath_flows__block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v5 = v4;
    v8 = v5;
    _nw_array_apply(v3, aBlock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v2 = [(NWPath *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (NSArray)gateways
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_gateways(v2);

  if (v3 && _nw_array_get_count(v3))
  {
    v4 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __18__NWPath_gateways__block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v5 = v4;
    v8 = v5;
    _nw_array_apply(v3, aBlock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDirect
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_is_direct(v2);

  return v3;
}

- (BOOL)isLocal
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_is_local(v2);

  return v3;
}

- (NWEndpoint)effectiveLocalEndpoint
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_effective_local_endpoint(v2);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithInternalEndpoint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NWEndpoint)effectiveRemoteEndpoint
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_effective_remote_endpoint(v2);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithInternalEndpoint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NWInterface)scopedInterface
{
  v2 = [(NWPath *)self internalPath];
  scoped_interface_index = nw_path_get_scoped_interface_index(v2);

  if (scoped_interface_index)
  {
    v4 = [[NWInterface alloc] initWithInterfaceIndex:scoped_interface_index];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)dnsServers
{
  v2 = [(NWPath *)self copyDNSServerEndpoints:0];

  return v2;
}

- (NSArray)dnsSearchDomains
{
  v2 = [(NWPath *)self copyDNSSearchDomains:0];

  return v2;
}

- (NSArray)overrideDNSSearchDomains
{
  v2 = [(NWPath *)self copyDNSSearchDomains:1];

  return v2;
}

uint64_t __18__NWPath_gateways__block_invoke(uint64_t a1)
{
  v2 = [NWEndpoint endpointWithInternalEndpoint:?];
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return 1;
}

- (NSArray)proxySettings
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_legacy_proxy_settings(v2);

  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E50])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFlowDivert
{
  v2 = [(NWPath *)self internalPath];
  v3 = v2;
  if (v2)
  {
    v4 = _nw_path_is_flow_divert(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFiltered
{
  v2 = [(NWPath *)self internalPath];
  v3 = v2;
  if (v2)
  {
    filter_unit = _nw_path_get_filter_unit(v2);
  }

  else
  {
    filter_unit = 0;
  }

  return filter_unit != 0;
}

- (BOOL)isListener
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_is_listener(v2);

  return v3;
}

- (BOOL)isRoaming
{
  v2 = [(NWPath *)self internalPath];
  is_roaming = nw_path_is_roaming(v2);

  return is_roaming;
}

- (BOOL)shouldProbeConnectivity
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_should_probe_connectivity(v2);

  return v3;
}

- (BOOL)isLinkQualityAbort
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_link_quality_abort(v2);

  return v3;
}

- (BOOL)isListenerInterfaceSpecific
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_listener_is_interface_specific(v2);

  return v3;
}

- (BOOL)supportsDNS
{
  v2 = [(NWPath *)self internalPath];
  has_dns = nw_path_has_dns(v2);

  return has_dns;
}

- (BOOL)hasProxySettings
{
  v2 = [(NWPath *)self internalPath];
  has_proxy_settings = nw_path_has_proxy_settings(v2);

  return has_proxy_settings;
}

- (BOOL)isPerAppVPN
{
  v2 = [(NWPath *)self internalPath];
  is_per_app_vpn = nw_path_is_per_app_vpn(v2);

  return is_per_app_vpn;
}

- (BOOL)hasKernelExtensionFilter
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_has_kernel_extension_filter(v2);

  return v3;
}

- (BOOL)hasCustomPFRules
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_has_custom_pf_rules(v2);

  return v3;
}

- (BOOL)hasApplicationLevelFirewall
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_has_application_level_firewall(v2);

  return v3;
}

- (BOOL)hasParentalControls
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_has_parental_controls(v2);

  return v3;
}

- (id)createProtocolBufferObject
{
  v3 = objc_alloc_init(NWPBPath);
  v4 = [(NWPath *)self endpoint];
  v5 = [v4 createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_endpoint, v5);
  }

  v6 = [(NWPath *)self parameters];
  v7 = [v6 createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_parameters, v7);
  }

  v8 = [(NWPath *)self status];
  if (v3)
  {
    *&v3->_has |= 1u;
    v3->_status = v8;
  }

  v9 = [(NWPath *)self clientID];
  v10 = [v9 UUIDString];
  if (v3)
  {
    objc_storeStrong(&v3->_clientUUID, v10);
  }

  v11 = [(NWPath *)self interface];
  v12 = [v11 createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_directInterface, v12);
  }

  v13 = [(NWPath *)self delegateInterface];
  v14 = [v13 createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_delegateInterface, v14);
  }

  v15 = [(NWPath *)self isDirect];
  if (v3)
  {
    *&v3->_has |= 2u;
    v3->_direct = v15;
    v16 = [(NWPath *)self isLocal];
    *&v3->_has |= 0x10u;
    v3->_local = v16;
    v17 = [(NWPath *)self supportsIPv4];
    *&v3->_has |= 4u;
    v3->_ipv4 = v17;
    v18 = [(NWPath *)self supportsIPv6];
    *&v3->_has |= 8u;
    v3->_ipv6 = v18;
  }

  else
  {
    [(NWPath *)self isLocal];
    [(NWPath *)self supportsIPv4];
    [(NWPath *)self supportsIPv6];
  }

  return v3;
}

- (BOOL)isEligibleForCrazyIvan46
{
  v2 = [(NWPath *)self internalPath];
  is_eligible_for_CrazyIvan46 = nw_path_is_eligible_for_CrazyIvan46(v2);

  return is_eligible_for_CrazyIvan46;
}

- (NWParameters)derivedParameters
{
  v3 = [NWParameters alloc];
  v4 = [(NWPath *)self internalPath];
  v5 = nw_path_copy_derived_parameters(v4);
  v6 = [(NWParameters *)v3 initWithParameters:v5];

  return v6;
}

- (NWAdvertiseDescriptor)advertiseDescriptor
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_advertise_descriptor(v2);

  if (v3)
  {
    v4 = [[NWAdvertiseDescriptor alloc] initWithDescriptor:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasAdvertiseDescriptor
{
  v2 = [(NWPath *)self internalPath];
  has_advertise_descriptor = nw_path_has_advertise_descriptor(v2);

  return has_advertise_descriptor;
}

- (NWBrowseDescriptor)browseDescriptor
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_browse_descriptor(v2);

  if (v3)
  {
    v4 = [NWBrowseDescriptor descriptorWithInternalDescriptor:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasBrowseDescriptor
{
  v2 = [(NWPath *)self internalPath];
  has_browse_descriptor = nw_path_has_browse_descriptor(v2);

  return has_browse_descriptor;
}

- (NWInterface)connectedInterface
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_connected_interface(v2);

  if (v3)
  {
    v4 = [[NWInterface alloc] initWithInterface:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NWEndpoint)endpoint
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_endpoint(v2);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithInternalEndpoint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NWParameters)parameters
{
  v3 = [NWParameters alloc];
  v4 = [(NWPath *)self internalPath];
  v5 = nw_path_copy_parameters(v4);
  v6 = [(NWParameters *)v3 initWithParameters:v5];

  return v6;
}

- (unsigned)policyID
{
  v2 = [(NWPath *)self internalPath];
  policy_id = nw_path_get_policy_id(v2);

  return policy_id;
}

- (unsigned)filterControlUnit
{
  v2 = [(NWPath *)self internalPath];
  v3 = v2;
  if (v2)
  {
    filter_unit = _nw_path_get_filter_unit(v2);
  }

  else
  {
    filter_unit = 0;
  }

  return filter_unit;
}

- (int)dnsServiceID
{
  v2 = [(NWPath *)self internalPath];
  dns_service_id = nw_path_get_dns_service_id(v2, 1);

  return dns_service_id;
}

- (BOOL)hasUnsatisfiedFallbackAgent
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(NWPath *)self internalPath];
  v5 = 0;
  memset(v6, 0, sizeof(v6));
  vpn_config_uuid = nw_path_get_vpn_config_uuid(v2, v6, &v5, 1, 1);

  return vpn_config_uuid;
}

- (BOOL)unsatisfiedVoluntaryAgentMatchesAddress:(id)a3 triggerImmediately:(BOOL *)a4
{
  v5 = a3;
  v6 = [(NWPath *)self internalPath];
  v7 = [v5 address];

  v8 = nw_path_voluntary_agent_matches_address(v6, v7);
  return v8;
}

- (id)copyFlowDivertToken
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_flow_divert_token(v2);

  return v3;
}

- (unsigned)flowDivertAggregateUnit
{
  v2 = [(NWPath *)self internalPath];
  v3 = v2;
  if (v2)
  {
    flow_divert_aggregate_unit = _nw_path_get_flow_divert_aggregate_unit(v2);
  }

  else
  {
    flow_divert_aggregate_unit = 0;
  }

  return flow_divert_aggregate_unit;
}

- (unsigned)flowDivertControlUnit
{
  v2 = [(NWPath *)self internalPath];
  v3 = v2;
  if (v2)
  {
    flow_divert_unit = _nw_path_get_flow_divert_unit(v2);
  }

  else
  {
    flow_divert_unit = 0;
  }

  return flow_divert_unit;
}

uint64_t __22__NWPath_groupMembers__block_invoke(uint64_t a1)
{
  v2 = [NWEndpoint endpointWithInternalEndpoint:?];
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return 1;
}

- (id)copyDNSSearchDomains:(BOOL)a3
{
  v3 = a3;
  v4 = [(NWPath *)self internalPath];
  v5 = v4;
  if (v3)
  {
    v6 = nw_path_copy_override_resolver_configs(v4);
  }

  else
  {
    v6 = nw_path_copy_resolver_configs(v4);
  }

  v7 = v6;

  if (v7 && _nw_array_get_count(v7))
  {
    v8 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __31__NWPath_copyDNSSearchDomains___block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v9 = v8;
    v12 = v9;
    _nw_array_apply(v7, aBlock);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __31__NWPath_copyDNSSearchDomains___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__NWPath_copyDNSSearchDomains___block_invoke_2;
  v5[3] = &unk_1E6A3A500;
  v6 = *(a1 + 32);
  nw_resolver_config_enumerate_search_domains(a3, v5);

  return 1;
}

uint64_t __31__NWPath_copyDNSSearchDomains___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

- (NSArray)overrideDNSServersAsStrings
{
  v3 = [(NWPath *)self overrideDNSServers];
  v4 = [(NWPath *)self copyDNSServersStrings:v3];

  return v4;
}

- (NSArray)overrideDNSServers
{
  v2 = [(NWPath *)self copyDNSServerEndpoints:1];

  return v2;
}

- (NSArray)dnsServersAsStrings
{
  v3 = [(NWPath *)self dnsServers];
  v4 = [(NWPath *)self copyDNSServersStrings:v3];

  return v4;
}

- (id)copyDNSServersStrings:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) addressStringNoPort];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyDNSServerEndpoints:(BOOL)a3
{
  v3 = a3;
  v4 = [(NWPath *)self internalPath];
  v5 = v4;
  if (v3)
  {
    v6 = nw_path_copy_override_resolver_configs(v4);
  }

  else
  {
    v6 = nw_path_copy_resolver_configs(v4);
  }

  v7 = v6;

  if (v7 && _nw_array_get_count(v7))
  {
    v8 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __33__NWPath_copyDNSServerEndpoints___block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v9 = v8;
    v12 = v9;
    _nw_array_apply(v7, aBlock);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __33__NWPath_copyDNSServerEndpoints___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__NWPath_copyDNSServerEndpoints___block_invoke_2;
  v5[3] = &unk_1E6A3A500;
  v6 = *(a1 + 32);
  nw_resolver_config_enumerate_name_servers(a3, v5);

  return 1;
}

uint64_t __33__NWPath_copyDNSServerEndpoints___block_invoke_2(uint64_t a1, char *hostname)
{
  host = nw_endpoint_create_host(hostname, "0");
  v4 = [NWEndpoint endpointWithInternalEndpoint:host];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

uint64_t __15__NWPath_flows__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[NWPathFlow alloc] initWithPathFlow:v4];

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

- (NWInterface)fallbackInterface
{
  v2 = [(NWPath *)self internalPath];
  fallback_interface_index = nw_path_get_fallback_interface_index(v2);

  if (fallback_interface_index)
  {
    v4 = [[NWInterface alloc] initWithInterfaceIndex:fallback_interface_index];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)delegateInterface
{
  v2 = [(NWPath *)self internalPath];
  v3 = nw_path_copy_delegate_interface(v2);

  if (v3)
  {
    v4 = [[NWInterface alloc] initWithInterface:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)inactiveNetworkAgentUUIDsOnlyVoluntary:(BOOL)a3
{
  if ([(NWPath *)self status])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = [(NWPath *)self internalPath];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __49__NWPath_inactiveNetworkAgentUUIDsOnlyVoluntary___block_invoke;
    v13 = &unk_1E6A34178;
    v15 = a3;
    v7 = v5;
    v14 = v7;
    _nw_path_enumerate_network_agents(v6, &v10);

    if ([v7 count])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __49__NWPath_inactiveNetworkAgentUUIDsOnlyVoluntary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 208);
  if (v2 & 2) != 0 || (v2 & 0x10) == 0 && (*(a1 + 40))
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2];
  [v4 addObject:v5];

  return 1;
}

- (id)genericNetworkAgentsWithDomain:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NWPath *)self status])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(NWPath *)self internalPath];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__NWPath_genericNetworkAgentsWithDomain_type___block_invoke;
    v13[3] = &unk_1E6A34150;
    v14 = v6;
    v15 = v7;
    v10 = v8;
    v16 = v10;
    _nw_path_enumerate_network_agents(v9, v13);

    if ([v10 count])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __46__NWPath_genericNetworkAgentsWithDomain_type___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v2 = nw_nsstring(a2 + 16);
    if (([v5 isEqualToString:v2] & 1) == 0)
    {
LABEL_12:

      return 1;
    }

    v6 = *(a1 + 40);
    if (!v6)
    {

      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = nw_nsstring(a2 + 48);
  v8 = [v6 isEqualToString:v7];

  if (v5)
  {

    if ((v8 & 1) == 0)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (v8)
  {
LABEL_10:
    v2 = [[NWGenericNetworkAgent alloc] initWithKernelAgent:a2];
    if (v2)
    {
      [*(a1 + 48) addObject:v2];
    }

    goto LABEL_12;
  }

  return 1;
}

- (id)networkAgentsOfType:(Class)a3
{
  if (a3)
  {
    v6 = [(NWPath *)self status];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] array];
      v8 = [(NWPath *)self internalPath];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __30__NWPath_networkAgentsOfType___block_invoke;
      v15 = &unk_1E6A34128;
      v17 = a3;
      v9 = v7;
      v16 = v9;
      _nw_path_enumerate_network_agents(v8, &v12);

      if ([v9 count])
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __30__NWPath_networkAgentsOfType___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) agentDomain];
  v5 = nw_nsstring(a2 + 16);
  if (![v4 isEqualToString:v5])
  {
    goto LABEL_20;
  }

  v6 = [*(a1 + 40) agentType];
  v7 = nw_nsstring(a2 + 48);
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 + 216 length:*(a2 + 212)];
    v5 = [*(a1 + 40) agentFromData:v4];
    if (v5)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2 + 80];
      [v5 setAgentDescription:v9];

      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2];
      [v5 setAgentUUID:v10];

      v11 = *(a2 + 208);
      if ((v11 & 2) != 0)
      {
        [v5 setActive:1];
        v11 = *(a2 + 208);
        if ((v11 & 4) == 0)
        {
LABEL_6:
          if ((v11 & 8) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      else if ((v11 & 4) == 0)
      {
        goto LABEL_6;
      }

      [v5 setKernelActivated:1];
      v11 = *(a2 + 208);
      if ((v11 & 8) == 0)
      {
LABEL_7:
        if ((v11 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      [v5 setUserActivated:1];
      v11 = *(a2 + 208);
      if ((v11 & 0x10) == 0)
      {
LABEL_8:
        if ((v11 & 0x20) == 0)
        {
LABEL_16:
          if (*(a2 + 208) & 0x40) != 0 && (objc_opt_respondsToSelector())
          {
            [v5 setNetworkProvider:1];
          }

          [*(a1 + 32) addObject:v5];
          goto LABEL_20;
        }

LABEL_14:
        if (objc_opt_respondsToSelector())
        {
          [v5 setSpecificUseOnly:1];
        }

        goto LABEL_16;
      }

LABEL_13:
      [v5 setVoluntary:1];
      if ((*(a2 + 208) & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_20:
  }

  return 1;
}

- (id)copyDataFromNetworkAgentWithDomain:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__50000;
  v21 = __Block_byref_object_dispose__50001;
  v22 = 0;
  v8 = [(NWPath *)self internalPath];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__NWPath_copyDataFromNetworkAgentWithDomain_type___block_invoke;
  v13[3] = &unk_1E6A34100;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  _nw_path_enumerate_network_agents(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __50__NWPath_copyDataFromNetworkAgentWithDomain_type___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = nw_nsstring(a2 + 16);
  v6 = [v4 isEqualToString:v5];
  if (v6)
  {
    v7 = a1[5];
    v8 = nw_nsstring(a2 + 48);
    LODWORD(v7) = [v7 isEqualToString:v8];

    if (!v7)
    {
      return 1;
    }

    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 + 216 length:*(a2 + 212)];
    v10 = *(a1[6] + 8);
    v5 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v11 = v6 ^ 1u;

  return v11;
}

- (BOOL)usesNetworkAgent:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16[0] = 0;
  v16[1] = 0;
  if (v4 && [(NWPath *)self status])
  {
    v5 = [v4 agentUUID];
    [v5 getUUIDBytes:v16];

    v6 = [(NWPath *)self internalPath];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __27__NWPath_usesNetworkAgent___block_invoke;
    aBlock[3] = &unk_1E6A340D8;
    v10 = v4;
    v11 = &v12;
    _nw_path_access_network_agent(v6, v16, aBlock);

    v7 = *(v13 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

void __27__NWPath_usesNetworkAgent___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [objc_opt_class() agentDomain];
  v4 = nw_nsstring(a2 + 16);
  if ([v8 isEqualToString:v4])
  {
    v5 = [objc_opt_class() agentType];
    v6 = nw_nsstring(a2 + 48);
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
  }
}

- (BOOL)usesNetworkAgentType:(Class)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a3)
  {
    if ([(NWPath *)self status])
    {
      v5 = [(NWPath *)self internalPath];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __31__NWPath_usesNetworkAgentType___block_invoke;
      v7[3] = &unk_1E6A340B0;
      v7[4] = &v8;
      v7[5] = v3;
      _nw_path_enumerate_network_agents(v5, v7);

      LOBYTE(v3) = *(v9 + 24);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  _Block_object_dispose(&v8, 8);
  return v3 & 1;
}

BOOL __31__NWPath_usesNetworkAgentType___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) agentDomain];
  v5 = nw_nsstring(a2 + 16);
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 40) agentType];
    v7 = nw_nsstring(a2 + 48);
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

- (BOOL)usesInterfaceType:(int64_t)a3
{
  v3 = a3;
  v4 = [(NWPath *)self internalPath];
  LOBYTE(v3) = _nw_path_uses_interface_type(v4, v3);

  return v3;
}

- (BOOL)isEqualToPath:(NWPath *)path
{
  v4 = path;
  v5 = [(NWPath *)self internalPath];
  v6 = [(NWPath *)v4 internalPath];

  LOBYTE(v4) = _nw_path_is_equal_inner(v5, v6, 0);
  return v4;
}

- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = [(NWPath *)self statusAsString];
  [v7 appendPrettyObject:v8 withName:@"status" indent:v5 showFullContent:1];

  [v7 appendPrettyInt:-[NWPath reason](self withName:"reason") indent:{@"reasonCode", v5}];
  v9 = [(NWPath *)self reasonDescription];
  [v7 appendPrettyObject:v9 withName:@"reason" indent:v5 showFullContent:1];

  [v7 appendPrettyBOOL:-[NWPath isViable](self withName:"isViable") indent:{@"isViable", v5}];
  [v7 appendPrettyBOOL:-[NWPath isExpensive](self withName:"isExpensive") indent:{@"isExpensive", v5}];
  [v7 appendPrettyBOOL:-[NWPath isConstrained](self withName:"isConstrained") indent:{@"isConstrained", v5}];
  if ([(NWPath *)self isUltraConstrained])
  {
    [v7 appendPrettyBOOL:-[NWPath isUltraConstrained](self withName:"isUltraConstrained") indent:{@"isUltraConstrained", v5}];
  }

  if ([(NWPath *)self usesCompanion])
  {
    [v7 appendPrettyBOOL:-[NWPath usesCompanion](self withName:"usesCompanion") indent:{@"usesCompanion", v5}];
  }

  v10 = [(NWPath *)self clientID];
  [v7 appendPrettyObject:v10 withName:@"clientID" indent:v5 showFullContent:1];

  if (!v4)
  {
    [v7 appendPrettyInt:-[NWPath mtu](self withName:"mtu") indent:{@"mtu", v5}];
    return v7;
  }

  if ([(NWPath *)self usesInterfaceType:1])
  {
    v11 = @"wifi";
LABEL_15:
    [v7 appendPrettyObject:v11 withName:@"interfaceType" indent:v5 showFullContent:1];
    goto LABEL_16;
  }

  if ([(NWPath *)self usesInterfaceType:2])
  {
    v11 = @"cellular";
    goto LABEL_15;
  }

  if ([(NWPath *)self usesInterfaceType:3])
  {
    v11 = @"wired ethernet";
    goto LABEL_15;
  }

  if ([(NWPath *)self usesInterfaceType:4])
  {
    v11 = @"loopback";
    goto LABEL_15;
  }

LABEL_16:
  if ([(NWPath *)self fallbackInterfaceIndex])
  {
    [v7 appendPrettyInt:-[NWPath fallbackInterfaceIndex](self withName:"fallbackInterfaceIndex") indent:{@"fallbackInterfaceIndex", v5}];
  }

  if ([(NWPath *)self fallbackIsWeak])
  {
    [v7 appendPrettyBOOL:1 withName:@"fallbackIsWeak" indent:v5];
  }

  if ([(NWPath *)self fallbackEligible])
  {
    [v7 appendPrettyBOOL:-[NWPath fallbackEligible](self withName:"fallbackEligible") indent:{@"fallbackEligible", v5}];
  }

  if ([(NWPath *)self fallbackIsPreferred])
  {
    [v7 appendPrettyBOOL:1 withName:@"fallbackIsPreferred" indent:v5];
  }

  [v7 appendPrettyInt:-[NWPath mtu](self withName:"mtu") indent:{@"mtu", v5}];
  [v7 appendPrettyInt:-[NWPath maximumDatagramSize](self withName:"maximumDatagramSize") indent:{@"maximumDatagramSize", v5}];
  [v7 appendPrettyInt:-[NWPath secondsSinceInterfaceChange](self withName:"secondsSinceInterfaceChange") indent:{@"secondsSinceInterfaceChange", v5}];
  v12 = [(NWPath *)self flows];
  [v7 appendPrettyObject:v12 withName:@"flows" indent:v5 showFullContent:1];

  v13 = [(NWPath *)self groupMembers];
  [v7 appendPrettyObject:v13 withName:@"groupMembers" indent:v5 showFullContent:1];

  v14 = [(NWPath *)self internalPath];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __48__NWPath_descriptionWithIndent_showFullContent___block_invoke;
  v36 = &unk_1E6A34088;
  v15 = v7;
  v37 = v15;
  v38 = v5;
  v39 = v4;
  nw_path_enumerate_interface_options(v14, &v33);

  v16 = [(NWPath *)self effectiveLocalEndpoint:v33];
  [v15 appendPrettyObject:v16 withName:@"effectiveLocalEndpoint" indent:v5 showFullContent:1];

  v17 = [(NWPath *)self effectiveRemoteEndpoint];
  [v15 appendPrettyObject:v17 withName:@"effectiveRemoteEndpoint" indent:v5 showFullContent:1];

  v18 = [(NWPath *)self interface];
  [v15 appendPrettyObject:v18 withName:@"interface" indent:v5 showFullContent:1];

  v19 = [(NWPath *)self scopedInterface];
  [v15 appendPrettyObject:v19 withName:@"scopedInterface" indent:v5 showFullContent:1];

  v20 = [(NWPath *)self dnsServers];
  [v15 appendPrettyObject:v20 withName:@"dnsServers" indent:v5 showFullContent:1];

  v21 = [(NWPath *)self internalPath];
  v22 = nw_path_copy_resolver_configs(v21);
  [v15 appendPrettyObject:v22 withName:@"resolvers" indent:v5 showFullContent:1];

  v23 = [(NWPath *)self dnsSearchDomains];
  [v15 appendPrettyObject:v23 withName:@"dnsSearchDomains" indent:v5 showFullContent:1];

  v24 = [(NWPath *)self internalPath];
  v25 = nw_path_copy_override_resolver_configs(v24);
  [v15 appendPrettyObject:v25 withName:@"override-resolvers" indent:v5 showFullContent:1];

  v26 = [(NWPath *)self overrideDNSSearchDomains];
  [v15 appendPrettyObject:v26 withName:@"override-dnsSearchDomains" indent:v5 showFullContent:1];

  v27 = [(NWPath *)self gateways];
  [v15 appendPrettyObject:v27 withName:@"gateways" indent:v5 showFullContent:1];

  v28 = [(NWPath *)self proxySettings];
  [v15 appendPrettyObject:v28 withName:@"proxySettings" indent:v5 showFullContent:1];

  v29 = [(NWPath *)self genericNetworkAgentsWithDomain:0 type:0];
  [v15 appendPrettyObject:v29 withName:@"agents" indent:v5 showFullContent:1];

  if ([(NWPath *)self isFlowDivert])
  {
    [v15 appendPrettyInt:-[NWPath flowDivertControlUnit](self withName:"flowDivertControlUnit") indent:{@"flowDivertControlUnit", v5}];
    [v15 appendPrettyInt:-[NWPath flowDivertAggregateUnit](self withName:"flowDivertAggregateUnit") indent:{@"flowDivertAggregateUnit", v5}];
  }

  if ([(NWPath *)self isFiltered])
  {
    [v15 appendPrettyInt:-[NWPath filterControlUnit](self withName:"filterControlUnit") indent:{@"filterControlunit", v5}];
  }

  if ([(NWPath *)self isListener])
  {
    [v15 appendPrettyBOOL:1 withName:@"isListener" indent:v5];
  }

  if ([(NWPath *)self isDirect])
  {
    [v15 appendPrettyBOOL:1 withName:@"isDirect" indent:v5];
  }

  if ([(NWPath *)self isLocal])
  {
    [v15 appendPrettyBOOL:1 withName:@"isLocal" indent:v5];
  }

  if ([(NWPath *)self isRoaming])
  {
    [v15 appendPrettyBOOL:1 withName:@"isRoaming" indent:v5];
  }

  if ([(NWPath *)self shouldProbeConnectivity])
  {
    [v15 appendPrettyBOOL:1 withName:@"shouldProbeConnectivity" indent:v5];
  }

  if ([(NWPath *)self isLinkQualityAbort])
  {
    [v15 appendPrettyBOOL:1 withName:@"isLinkQualityAbort" indent:v5];
  }

  if ([(NWPath *)self isListenerInterfaceSpecific])
  {
    [v15 appendPrettyBOOL:1 withName:@"isListenerInterfaceSpecific" indent:v5];
  }

  [v15 appendPrettyBOOL:-[NWPath supportsIPv4](self withName:"supportsIPv4") indent:{@"supportsIPv4", v5}];
  [v15 appendPrettyBOOL:-[NWPath supportsIPv6](self withName:"supportsIPv6") indent:{@"supportsIPv6", v5}];
  [v15 appendPrettyBOOL:-[NWPath supportsDNS](self withName:"supportsDNS") indent:{@"supportsDNS", v5}];
  v30 = [(NWPath *)self internalPath];
  v31 = nw_path_has_nat64_prefixes(v30);

  if (v31)
  {
    [v15 appendPrettyBOOL:1 withName:@"hasNAT64Prefixes" indent:v5];
  }

  [v15 appendPrettyBOOL:-[NWPath hasProxySettings](self withName:"hasProxySettings") indent:{@"hasProxySettings", v5}];
  if ([(NWPath *)self isPerAppVPN])
  {
    [v15 appendPrettyBOOL:-[NWPath isPerAppVPN](self withName:"isPerAppVPN") indent:{@"perAppVPN", v5}];
  }

  if ([(NWPath *)self hasKernelExtensionFilter])
  {
    [v15 appendPrettyBOOL:-[NWPath hasKernelExtensionFilter](self withName:"hasKernelExtensionFilter") indent:{@"hasKernelExtensionFilter", v5}];
  }

  if ([(NWPath *)self hasCustomPFRules])
  {
    [v15 appendPrettyBOOL:-[NWPath hasCustomPFRules](self withName:"hasCustomPFRules") indent:{@"hasCustomPFRules", v5}];
  }

  if ([(NWPath *)self hasApplicationLevelFirewall])
  {
    [v15 appendPrettyBOOL:-[NWPath hasApplicationLevelFirewall](self withName:"hasApplicationLevelFirewall") indent:{@"hasApplicationLevelFirewall", v5}];
  }

  if ([(NWPath *)self hasParentalControls])
  {
    [v15 appendPrettyBOOL:-[NWPath hasParentalControls](self withName:"hasParentalControls") indent:{@"hasParentalControls", v5}];
  }

  return v7;
}

void __48__NWPath_descriptionWithIndent_showFullContent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AFB0];
  v6 = a2;
  v8 = [[v5 alloc] initWithUUIDBytes:a3];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ : %@", v6, v8];

  [*(a1 + 32) appendPrettyObject:v7 withName:@"interfaceOption" indent:*(a1 + 40) showFullContent:*(a1 + 44)];
}

- (NWPath)initWithPath:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v23.receiver = self;
    v23.super_class = NWPath;
    v6 = [(NWPath *)&v23 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_internalPath, a3);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "[NWPath initWithPath:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v15, &type, &v24))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "[NWPath initWithPath:]";
        v18 = "%{public}s [super init] failed";
LABEL_36:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v22 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v27 = "[NWPath initWithPath:]";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_38;
      }

      if (v22)
      {
        *buf = 136446210;
        v27 = "[NWPath initWithPath:]";
        v18 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "[NWPath initWithPath:]";
        v18 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_38:
    if (v15)
    {
      free(v15);
    }

    v7 = 0;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v27 = "[NWPath initWithPath:]";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v10, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWPath initWithPath:]";
        v13 = "%{public}s called with null path";
LABEL_29:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v20 = os_log_type_enabled(v11, type);
        if (v19)
        {
          if (v20)
          {
            *buf = 136446466;
            v27 = "[NWPath initWithPath:]";
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_31;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v27 = "[NWPath initWithPath:]";
        v13 = "%{public}s called with null path, no backtrace";
        goto LABEL_29;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWPath initWithPath:]";
        v13 = "%{public}s called with null path, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:
  }

LABEL_31:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (NWPath)init
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NWPath;
  v2 = [(NWPath *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "[NWPath init]";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "[NWPath init]";
        v10 = "%{public}s [super init] failed";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v17 = "[NWPath init]";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "[NWPath init]";
        v10 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "[NWPath init]";
        v10 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

+ (NWPath)pathWithProtocolBufferData:(id)a3
{
  v166 = *MEMORY[0x1E69E9840];
  v145 = a3;
  v3 = [[NWPBPath alloc] initWithData:v145];
  v146 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v159 = "+[NWPath pathWithProtocolBufferData:]";
    v10 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    v157 = 0;
    if (__nwlog_fault(v10, uu, &v157))
    {
      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = uu[0];
        if (os_log_type_enabled(v11, uu[0]))
        {
          *buf = 136446210;
          v159 = "+[NWPath pathWithProtocolBufferData:]";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s [NWPBPath initWithData:] failed", buf, 0xCu);
        }
      }

      else if (v157 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v136 = uu[0];
        v137 = os_log_type_enabled(v11, uu[0]);
        if (backtrace_string)
        {
          if (v137)
          {
            *buf = 136446466;
            v159 = "+[NWPath pathWithProtocolBufferData:]";
            v160 = 2082;
            v161 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v136, "%{public}s [NWPBPath initWithData:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          v13 = 0;
          if (!v10)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        if (v137)
        {
          *buf = 136446210;
          v159 = "+[NWPath pathWithProtocolBufferData:]";
          _os_log_impl(&dword_181A37000, v11, v136, "%{public}s [NWPBPath initWithData:] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v138 = uu[0];
        if (os_log_type_enabled(v11, uu[0]))
        {
          *buf = 136446210;
          v159 = "+[NWPath pathWithProtocolBufferData:]";
          _os_log_impl(&dword_181A37000, v11, v138, "%{public}s [NWPBPath initWithData:] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    v13 = 0;
    if (!v10)
    {
LABEL_13:
      v14 = 0;
      goto LABEL_160;
    }

LABEL_12:
    free(v10);
    goto LABEL_13;
  }

  memset(uu, 0, sizeof(uu));
  clientUUID = v3->_clientUUID;
  if (clientUUID)
  {
    v5 = clientUUID;
    uuid_parse([(NSString *)v5 UTF8String], uu);

    v3 = v146;
  }

  directInterface = v3->_directInterface;
  if (directInterface)
  {
    v7 = directInterface;
    v8 = [(NWPBInterface *)v7 data];
    v144 = [NWInterface interfaceWithProtocolBufferData:v8];

    v3 = v146;
  }

  else
  {
    v144 = 0;
  }

  delegateInterface = v3->_delegateInterface;
  if (delegateInterface)
  {
    v16 = delegateInterface;
    v17 = [(NWPBInterface *)v16 data];
    v143 = [NWInterface interfaceWithProtocolBufferData:v17];

    v3 = v146;
  }

  else
  {
    v143 = 0;
  }

  if ([(NSMutableArray *)v3->_agents count])
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    obj = v146->_agents;
    v150 = [(NSMutableArray *)obj countByEnumeratingWithState:&v153 objects:v164 count:16];
    if (!v150)
    {
      goto LABEL_148;
    }

    v149 = *v154;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v154 != v149)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v153 + 1) + 8 * v18);
        if (v19)
        {
          v20 = *(v19 + 16);
          if (v20)
          {
            v21 = v20;
            v22 = [v21 length];

            v20 = v22;
          }
        }

        else
        {
          v20 = 0;
        }

        v151 = v20;
        v23 = v20 + 8;
        v24 = malloc_type_calloc(1uLL, v20 + 8, 0x17D75B9CuLL);
        if (!v24)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          v159 = "+[NWPath pathWithProtocolBufferData:]";
          v160 = 2048;
          v161 = 1;
          v162 = 2048;
          v163 = v23;
          LODWORD(v140) = 32;
          v139 = buf;
          v26 = _os_log_send_and_compose_impl();

          if (__nwlog_should_abort(v26))
          {
            goto LABEL_175;
          }

          free(v26);
        }

        if (v19)
        {
          v27 = *(v19 + 32);
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;
        uuid_parse([v28 UTF8String], v24);
        v29 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          v30 = *(v19 + 8);
          v31 = v30;
          if (v30)
          {
            v32 = *(v30 + 1);
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v31 = 0;
          v32 = 0;
        }

        v33 = v32;

        if ([v33 UTF8String])
        {
          v34 = [v33 UTF8String];
          if (!v34)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v111 = gLogObj;
            os_log_type_enabled(v111, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            v159 = "_strict_strlcpy";
            LODWORD(v140) = 12;
            v139 = buf;
            v112 = _os_log_send_and_compose_impl();

            if (__nwlog_should_abort(v112))
            {
              goto LABEL_175;
            }

            free(v112);
            v34 = 0;
          }

          v35 = *v34;
          v24[16] = v35;
          if (v35)
          {
            v36 = v34[1];
            v24[17] = v36;
            if (v36)
            {
              v37 = v34[2];
              v24[18] = v37;
              if (v37)
              {
                v38 = v34[3];
                v24[19] = v38;
                if (v38)
                {
                  v39 = v34[4];
                  v24[20] = v39;
                  if (v39)
                  {
                    v40 = v34[5];
                    v24[21] = v40;
                    if (v40)
                    {
                      v41 = v34[6];
                      v24[22] = v41;
                      if (v41)
                      {
                        v42 = v34[7];
                        v24[23] = v42;
                        if (v42)
                        {
                          v43 = v34[8];
                          v24[24] = v43;
                          if (v43)
                          {
                            v44 = v34[9];
                            v24[25] = v44;
                            if (v44)
                            {
                              v45 = v34[10];
                              v24[26] = v45;
                              if (v45)
                              {
                                v46 = v34[11];
                                v24[27] = v46;
                                if (v46)
                                {
                                  v47 = v34[12];
                                  v24[28] = v47;
                                  if (v47)
                                  {
                                    v48 = v34[13];
                                    v24[29] = v48;
                                    if (v48)
                                    {
                                      v49 = v34[14];
                                      v24[30] = v49;
                                      if (v49)
                                      {
                                        v50 = v34[15];
                                        v24[31] = v50;
                                        if (v50)
                                        {
                                          v51 = v34[16];
                                          v24[32] = v51;
                                          if (v51)
                                          {
                                            v52 = v34[17];
                                            v24[33] = v52;
                                            if (v52)
                                            {
                                              v53 = v34[18];
                                              v24[34] = v53;
                                              if (v53)
                                              {
                                                v54 = v34[19];
                                                v24[35] = v54;
                                                if (v54)
                                                {
                                                  v55 = v34[20];
                                                  v24[36] = v55;
                                                  if (v55)
                                                  {
                                                    v56 = v34[21];
                                                    v24[37] = v56;
                                                    if (v56)
                                                    {
                                                      v57 = v34[22];
                                                      v24[38] = v57;
                                                      if (v57)
                                                      {
                                                        v58 = v34[23];
                                                        v24[39] = v58;
                                                        if (v58)
                                                        {
                                                          v59 = v34[24];
                                                          v24[40] = v59;
                                                          if (v59)
                                                          {
                                                            v60 = v34[25];
                                                            v24[41] = v60;
                                                            if (v60)
                                                            {
                                                              v61 = v34[26];
                                                              v24[42] = v61;
                                                              if (v61)
                                                              {
                                                                v62 = v34[27];
                                                                v24[43] = v62;
                                                                if (v62)
                                                                {
                                                                  v63 = v34[28];
                                                                  v24[44] = v63;
                                                                  if (v63)
                                                                  {
                                                                    v64 = v34[29];
                                                                    v24[45] = v64;
                                                                    if (v64)
                                                                    {
                                                                      v65 = v34[30];
                                                                      v24[46] = v65;
                                                                      if (v65)
                                                                      {
                                                                        v24[47] = 0;
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (v19)
        {
          v66 = *(v19 + 8);
          v67 = v66;
          if (v66)
          {
            v68 = *(v66 + 2);
          }

          else
          {
            v68 = 0;
          }
        }

        else
        {
          v67 = 0;
          v68 = 0;
        }

        v69 = v68;

        if ([v69 UTF8String])
        {
          v70 = [v69 UTF8String];
          if (!v70)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v113 = gLogObj;
            os_log_type_enabled(v113, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            v159 = "_strict_strlcpy";
            LODWORD(v140) = 12;
            v139 = buf;
            v114 = _os_log_send_and_compose_impl();

            if (__nwlog_should_abort(v114))
            {
              goto LABEL_175;
            }

            free(v114);
            v70 = 0;
          }

          v71 = *v70;
          v24[48] = v71;
          if (v71)
          {
            v72 = v70[1];
            v24[49] = v72;
            if (v72)
            {
              v73 = v70[2];
              v24[50] = v73;
              if (v73)
              {
                v74 = v70[3];
                v24[51] = v74;
                if (v74)
                {
                  v75 = v70[4];
                  v24[52] = v75;
                  if (v75)
                  {
                    v76 = v70[5];
                    v24[53] = v76;
                    if (v76)
                    {
                      v77 = v70[6];
                      v24[54] = v77;
                      if (v77)
                      {
                        v78 = v70[7];
                        v24[55] = v78;
                        if (v78)
                        {
                          v79 = v70[8];
                          v24[56] = v79;
                          if (v79)
                          {
                            v80 = v70[9];
                            v24[57] = v80;
                            if (v80)
                            {
                              v81 = v70[10];
                              v24[58] = v81;
                              if (v81)
                              {
                                v82 = v70[11];
                                v24[59] = v82;
                                if (v82)
                                {
                                  v83 = v70[12];
                                  v24[60] = v83;
                                  if (v83)
                                  {
                                    v84 = v70[13];
                                    v24[61] = v84;
                                    if (v84)
                                    {
                                      v85 = v70[14];
                                      v24[62] = v85;
                                      if (v85)
                                      {
                                        v86 = v70[15];
                                        v24[63] = v86;
                                        if (v86)
                                        {
                                          v87 = v70[16];
                                          v24[64] = v87;
                                          if (v87)
                                          {
                                            v88 = v70[17];
                                            v24[65] = v88;
                                            if (v88)
                                            {
                                              v89 = v70[18];
                                              v24[66] = v89;
                                              if (v89)
                                              {
                                                v90 = v70[19];
                                                v24[67] = v90;
                                                if (v90)
                                                {
                                                  v91 = v70[20];
                                                  v24[68] = v91;
                                                  if (v91)
                                                  {
                                                    v92 = v70[21];
                                                    v24[69] = v92;
                                                    if (v92)
                                                    {
                                                      v93 = v70[22];
                                                      v24[70] = v93;
                                                      if (v93)
                                                      {
                                                        v94 = v70[23];
                                                        v24[71] = v94;
                                                        if (v94)
                                                        {
                                                          v95 = v70[24];
                                                          v24[72] = v95;
                                                          if (v95)
                                                          {
                                                            v96 = v70[25];
                                                            v24[73] = v96;
                                                            if (v96)
                                                            {
                                                              v97 = v70[26];
                                                              v24[74] = v97;
                                                              if (v97)
                                                              {
                                                                v98 = v70[27];
                                                                v24[75] = v98;
                                                                if (v98)
                                                                {
                                                                  v99 = v70[28];
                                                                  v24[76] = v99;
                                                                  if (v99)
                                                                  {
                                                                    v100 = v70[29];
                                                                    v24[77] = v100;
                                                                    if (v100)
                                                                    {
                                                                      v101 = v70[30];
                                                                      v24[78] = v101;
                                                                      if (v101)
                                                                      {
                                                                        v24[79] = 0;
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (v19)
        {
          v102 = *(v19 + 24);
        }

        else
        {
          v102 = 0;
        }

        v103 = v102;
        if ([v103 UTF8String])
        {
          v104 = [v103 UTF8String];
          if (!v104)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v142 = gLogObj;
            os_log_type_enabled(v142, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            v159 = "_strict_strlcpy";
            LODWORD(v140) = 12;
            v139 = buf;
            v141 = _os_log_send_and_compose_impl();

            if (__nwlog_should_abort(v141))
            {
LABEL_175:
              __break(1u);
            }

            free(v141);
          }

          v105 = v24 + 80;
          v106 = 128;
          while (1)
          {
            v107 = *v104;
            *v105 = v107;
            if (!v107)
            {
              break;
            }

            ++v105;
            ++v104;
            if (--v106 <= 1)
            {
              *v105 = 0;
              break;
            }
          }
        }

        if (v19)
        {
          if (*(v19 + 40) == 1)
          {
            *(v24 + 52) |= 2u;
          }

          if (*(v19 + 43) == 1)
          {
            *(v24 + 52) |= 8u;
          }

          if (*(v19 + 44) == 1)
          {
            *(v24 + 52) |= 0x10u;
          }

          if (*(v19 + 41) == 1)
          {
            *(v24 + 52) |= 0x40u;
          }

          if (*(v19 + 42) == 1)
          {
            *(v24 + 52) |= 0x80u;
          }

          *(v24 + 53) = v151;
          if (v151)
          {
            v108 = *(v19 + 16);
LABEL_127:
            v109 = v108;
            [v109 getBytes:v24 + 216 length:v151];
          }
        }

        else
        {
          *(v24 + 53) = v151;
          if (v151)
          {
            v108 = 0;
            goto LABEL_127;
          }
        }

        xpc_dictionary_set_data(v29, "data", v24, v23);
        free(v24);
        v110 = [v28 UTF8String];
        if (v110)
        {
          xpc_dictionary_set_value(xdict, v110, v29);
        }

        ++v18;
      }

      while (v18 != v150);
      v115 = [(NSMutableArray *)obj countByEnumeratingWithState:&v153 objects:v164 count:16];
      v150 = v115;
      if (!v115)
      {
LABEL_148:

        goto LABEL_150;
      }
    }
  }

  xdict = 0;
LABEL_150:
  v116 = v146;
  endpoint = v146->_endpoint;
  if (endpoint)
  {
    v118 = endpoint;
    v119 = [(NWPBEndpoint *)v118 data];
    v152 = [NWEndpoint endpointWithProtocolBufferData:v119];

    v116 = v146;
  }

  else
  {
    v152 = 0;
  }

  parameters = v116->_parameters;
  if (parameters)
  {
    v121 = parameters;
    v122 = [(NWPBParameters *)v121 data];
    v123 = [NWParameters parametersWithProtocolBufferData:v122];
  }

  else
  {
    v123 = 0;
  }

  v124 = [v152 internalEndpoint];
  v125 = [v123 internalParameters];
  if (*&v146->_has)
  {
    status = v146->_status;
  }

  else
  {
    status = 0;
  }

  direct = v146->_direct;
  local = v146->_local;
  ipv4 = v146->_ipv4;
  ipv6 = v146->_ipv6;
  v131 = [v144 internalInterface];
  v132 = [v143 internalInterface];
  v133 = _nw_path_create_static(v124, v125, status, uu, direct, local, ipv4, ipv6, v131, v132, xdict);

  v14 = [[NWPath alloc] initWithPath:v133];
  v13 = v146;
LABEL_160:

  return v14;
}

+ (id)createStringFromStatus:(int64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", a3];
  }

  else
  {
    v4 = off_1E6A34198[a3];
  }

  return v4;
}

+ (id)pathForClientID:(id)a3 parametersTLV:(id)a4 pathResultTLV:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  v7 = a5;
  v8 = a4;
  v9 = a3;
  uuid_clear(uu);
  [v9 getUUIDBytes:uu];

  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v10 = nw_context_copy_implicit_context::implicit_context;
  v11 = nw_path_copy_path_for_tlv(uu, v10, [v8 bytes], objc_msgSend(v8, "length"), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"));

  if (v11)
  {
    v12 = [[NWPath alloc] initWithPath:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)pathForClientID:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  v3 = a3;
  uuid_clear(uu);
  [v3 getUUIDBytes:uu];

  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v4 = nw_context_copy_implicit_context::implicit_context;
  v5 = nw_path_copy_path_for_client_with_context(uu);

  if (v5)
  {
    v6 = [[NWPath alloc] initWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)allClientIDs
{
  v2 = nw_path_copy_all_client_ids();
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    count = xpc_array_get_count(v2);
    if (count)
    {
      v5 = count;
      for (i = 0; i != v5; ++i)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{xpc_array_get_uuid(v2, i)}];
        if (v7)
        {
          [v3 addObject:v7];
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end