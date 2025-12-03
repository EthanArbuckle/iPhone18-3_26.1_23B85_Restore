@interface NWPath
+ (NWPath)pathWithProtocolBufferData:(id)data;
+ (id)allClientIDs;
+ (id)createStringFromStatus:(int64_t)status;
+ (id)pathForClientID:(id)d;
+ (id)pathForClientID:(id)d parametersTLV:(id)v pathResultTLV:(id)lV;
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
- (BOOL)unsatisfiedVoluntaryAgentMatchesAddress:(id)address triggerImmediately:(BOOL *)immediately;
- (BOOL)usesCompanion;
- (BOOL)usesInterfaceType:(int64_t)type;
- (BOOL)usesNetworkAgent:(id)agent;
- (BOOL)usesNetworkAgentType:(Class)type;
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
- (NWPath)initWithPath:(id)path;
- (NWPathStatus)status;
- (id)copyDNSSearchDomains:(BOOL)domains;
- (id)copyDNSServerEndpoints:(BOOL)endpoints;
- (id)copyDNSServersStrings:(id)strings;
- (id)copyDataFromNetworkAgentWithDomain:(id)domain type:(id)type;
- (id)copyFlowDivertToken;
- (id)createProtocolBufferObject;
- (id)delegateInterface;
- (id)description;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (id)genericNetworkAgentsWithDomain:(id)domain type:(id)type;
- (id)inactiveNetworkAgentUUIDsOnlyVoluntary:(BOOL)voluntary;
- (id)networkAgentsOfType:(Class)type;
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
  internalPath = [(NWPath *)self internalPath];
  status = nw_path_get_status(internalPath);

  return status;
}

- (BOOL)isConstrained
{
  internalPath = [(NWPath *)self internalPath];
  is_constrained = _nw_path_is_constrained(internalPath);

  return is_constrained;
}

- (BOOL)isExpensive
{
  internalPath = [(NWPath *)self internalPath];
  is_expensive = _nw_path_is_expensive(internalPath);

  return is_expensive;
}

- (NWInterface)interface
{
  internalPath = [(NWPath *)self internalPath];
  v4 = nw_path_copy_direct_interface(internalPath);

  if (v4)
  {
    v5 = [[NWInterface alloc] initWithInterface:v4];
LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  internalPath2 = [(NWPath *)self internalPath];
  interface_index = nw_path_get_interface_index(internalPath2);

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
  status = [(NWPath *)self status];

  return [NWPath createStringFromStatus:status];
}

- (int64_t)reason
{
  internalPath = [(NWPath *)self internalPath];
  reason = nw_path_get_reason(internalPath);

  return reason;
}

- (BOOL)supportsIPv4
{
  internalPath = [(NWPath *)self internalPath];
  has_ipv4 = nw_path_has_ipv4(internalPath);

  return has_ipv4;
}

- (BOOL)supportsIPv6
{
  internalPath = [(NWPath *)self internalPath];
  has_ipv6 = nw_path_has_ipv6(internalPath);

  return has_ipv6;
}

- (NSString)reasonDescription
{
  internalPath = [(NWPath *)self internalPath];
  reason_description = nw_path_get_reason_description(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  is_viable = nw_path_is_viable(internalPath);

  return is_viable;
}

- (BOOL)isUltraConstrained
{
  internalPath = [(NWPath *)self internalPath];
  is_ultra_constrained = _nw_path_is_ultra_constrained(internalPath);

  return is_ultra_constrained;
}

- (BOOL)usesCompanion
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_uses_companion(internalPath);

  return v3;
}

- (NSUUID)clientID
{
  v8 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  internalPath = [(NWPath *)self internalPath];
  if (nw_path_get_client_id(internalPath, uu))
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
  internalPath = [(NWPath *)self internalPath];
  mtu = nw_path_get_mtu(internalPath);

  return mtu;
}

- (unsigned)fallbackInterfaceIndex
{
  internalPath = [(NWPath *)self internalPath];
  fallback_interface_index = nw_path_get_fallback_interface_index(internalPath);

  return fallback_interface_index;
}

- (BOOL)fallbackIsWeak
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_fallback_is_weak(internalPath);

  return v3;
}

- (BOOL)fallbackEligible
{
  internalPath = [(NWPath *)self internalPath];
  should_fallback = nw_path_should_fallback(internalPath, 0);

  return should_fallback;
}

- (int64_t)maximumDatagramSize
{
  internalPath = [(NWPath *)self internalPath];
  maximum_datagram_size = nw_path_get_maximum_datagram_size(internalPath);

  return maximum_datagram_size;
}

- (unint64_t)secondsSinceInterfaceChange
{
  internalPath = [(NWPath *)self internalPath];
  interface_time_delta = nw_path_get_interface_time_delta(internalPath);

  return interface_time_delta;
}

- (NSArray)groupMembers
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_group_members(internalPath);

  if (v3 && _nw_array_get_count(v3))
  {
    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __22__NWPath_groupMembers__block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v5 = array;
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
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_fallback_is_preferred(internalPath);

  return v3;
}

- (NSArray)flows
{
  internalPath = [(NWPath *)self internalPath];
  v3 = _nw_path_copy_flows(internalPath);

  if (v3 && _nw_array_get_count(v3))
  {
    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __15__NWPath_flows__block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v5 = array;
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
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_gateways(internalPath);

  if (v3 && _nw_array_get_count(v3))
  {
    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __18__NWPath_gateways__block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v5 = array;
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
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_is_direct(internalPath);

  return v3;
}

- (BOOL)isLocal
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_is_local(internalPath);

  return v3;
}

- (NWEndpoint)effectiveLocalEndpoint
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_effective_local_endpoint(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_effective_remote_endpoint(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  scoped_interface_index = nw_path_get_scoped_interface_index(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_legacy_proxy_settings(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  v3 = internalPath;
  if (internalPath)
  {
    v4 = _nw_path_is_flow_divert(internalPath);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFiltered
{
  internalPath = [(NWPath *)self internalPath];
  v3 = internalPath;
  if (internalPath)
  {
    filter_unit = _nw_path_get_filter_unit(internalPath);
  }

  else
  {
    filter_unit = 0;
  }

  return filter_unit != 0;
}

- (BOOL)isListener
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_is_listener(internalPath);

  return v3;
}

- (BOOL)isRoaming
{
  internalPath = [(NWPath *)self internalPath];
  is_roaming = nw_path_is_roaming(internalPath);

  return is_roaming;
}

- (BOOL)shouldProbeConnectivity
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_should_probe_connectivity(internalPath);

  return v3;
}

- (BOOL)isLinkQualityAbort
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_link_quality_abort(internalPath);

  return v3;
}

- (BOOL)isListenerInterfaceSpecific
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_listener_is_interface_specific(internalPath);

  return v3;
}

- (BOOL)supportsDNS
{
  internalPath = [(NWPath *)self internalPath];
  has_dns = nw_path_has_dns(internalPath);

  return has_dns;
}

- (BOOL)hasProxySettings
{
  internalPath = [(NWPath *)self internalPath];
  has_proxy_settings = nw_path_has_proxy_settings(internalPath);

  return has_proxy_settings;
}

- (BOOL)isPerAppVPN
{
  internalPath = [(NWPath *)self internalPath];
  is_per_app_vpn = nw_path_is_per_app_vpn(internalPath);

  return is_per_app_vpn;
}

- (BOOL)hasKernelExtensionFilter
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_has_kernel_extension_filter(internalPath);

  return v3;
}

- (BOOL)hasCustomPFRules
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_has_custom_pf_rules(internalPath);

  return v3;
}

- (BOOL)hasApplicationLevelFirewall
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_has_application_level_firewall(internalPath);

  return v3;
}

- (BOOL)hasParentalControls
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_has_parental_controls(internalPath);

  return v3;
}

- (id)createProtocolBufferObject
{
  v3 = objc_alloc_init(NWPBPath);
  endpoint = [(NWPath *)self endpoint];
  createProtocolBufferObject = [endpoint createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_endpoint, createProtocolBufferObject);
  }

  parameters = [(NWPath *)self parameters];
  createProtocolBufferObject2 = [parameters createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_parameters, createProtocolBufferObject2);
  }

  status = [(NWPath *)self status];
  if (v3)
  {
    *&v3->_has |= 1u;
    v3->_status = status;
  }

  clientID = [(NWPath *)self clientID];
  uUIDString = [clientID UUIDString];
  if (v3)
  {
    objc_storeStrong(&v3->_clientUUID, uUIDString);
  }

  interface = [(NWPath *)self interface];
  createProtocolBufferObject3 = [interface createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_directInterface, createProtocolBufferObject3);
  }

  delegateInterface = [(NWPath *)self delegateInterface];
  createProtocolBufferObject4 = [delegateInterface createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_delegateInterface, createProtocolBufferObject4);
  }

  isDirect = [(NWPath *)self isDirect];
  if (v3)
  {
    *&v3->_has |= 2u;
    v3->_direct = isDirect;
    isLocal = [(NWPath *)self isLocal];
    *&v3->_has |= 0x10u;
    v3->_local = isLocal;
    supportsIPv4 = [(NWPath *)self supportsIPv4];
    *&v3->_has |= 4u;
    v3->_ipv4 = supportsIPv4;
    supportsIPv6 = [(NWPath *)self supportsIPv6];
    *&v3->_has |= 8u;
    v3->_ipv6 = supportsIPv6;
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
  internalPath = [(NWPath *)self internalPath];
  is_eligible_for_CrazyIvan46 = nw_path_is_eligible_for_CrazyIvan46(internalPath);

  return is_eligible_for_CrazyIvan46;
}

- (NWParameters)derivedParameters
{
  v3 = [NWParameters alloc];
  internalPath = [(NWPath *)self internalPath];
  v5 = nw_path_copy_derived_parameters(internalPath);
  v6 = [(NWParameters *)v3 initWithParameters:v5];

  return v6;
}

- (NWAdvertiseDescriptor)advertiseDescriptor
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_advertise_descriptor(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  has_advertise_descriptor = nw_path_has_advertise_descriptor(internalPath);

  return has_advertise_descriptor;
}

- (NWBrowseDescriptor)browseDescriptor
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_browse_descriptor(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  has_browse_descriptor = nw_path_has_browse_descriptor(internalPath);

  return has_browse_descriptor;
}

- (NWInterface)connectedInterface
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_connected_interface(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_endpoint(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  v5 = nw_path_copy_parameters(internalPath);
  v6 = [(NWParameters *)v3 initWithParameters:v5];

  return v6;
}

- (unsigned)policyID
{
  internalPath = [(NWPath *)self internalPath];
  policy_id = nw_path_get_policy_id(internalPath);

  return policy_id;
}

- (unsigned)filterControlUnit
{
  internalPath = [(NWPath *)self internalPath];
  v3 = internalPath;
  if (internalPath)
  {
    filter_unit = _nw_path_get_filter_unit(internalPath);
  }

  else
  {
    filter_unit = 0;
  }

  return filter_unit;
}

- (int)dnsServiceID
{
  internalPath = [(NWPath *)self internalPath];
  dns_service_id = nw_path_get_dns_service_id(internalPath, 1);

  return dns_service_id;
}

- (BOOL)hasUnsatisfiedFallbackAgent
{
  v7 = *MEMORY[0x1E69E9840];
  internalPath = [(NWPath *)self internalPath];
  v5 = 0;
  memset(v6, 0, sizeof(v6));
  vpn_config_uuid = nw_path_get_vpn_config_uuid(internalPath, v6, &v5, 1, 1);

  return vpn_config_uuid;
}

- (BOOL)unsatisfiedVoluntaryAgentMatchesAddress:(id)address triggerImmediately:(BOOL *)immediately
{
  addressCopy = address;
  internalPath = [(NWPath *)self internalPath];
  address = [addressCopy address];

  v8 = nw_path_voluntary_agent_matches_address(internalPath, address);
  return v8;
}

- (id)copyFlowDivertToken
{
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_flow_divert_token(internalPath);

  return v3;
}

- (unsigned)flowDivertAggregateUnit
{
  internalPath = [(NWPath *)self internalPath];
  v3 = internalPath;
  if (internalPath)
  {
    flow_divert_aggregate_unit = _nw_path_get_flow_divert_aggregate_unit(internalPath);
  }

  else
  {
    flow_divert_aggregate_unit = 0;
  }

  return flow_divert_aggregate_unit;
}

- (unsigned)flowDivertControlUnit
{
  internalPath = [(NWPath *)self internalPath];
  v3 = internalPath;
  if (internalPath)
  {
    flow_divert_unit = _nw_path_get_flow_divert_unit(internalPath);
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

- (id)copyDNSSearchDomains:(BOOL)domains
{
  domainsCopy = domains;
  internalPath = [(NWPath *)self internalPath];
  v5 = internalPath;
  if (domainsCopy)
  {
    v6 = nw_path_copy_override_resolver_configs(internalPath);
  }

  else
  {
    v6 = nw_path_copy_resolver_configs(internalPath);
  }

  v7 = v6;

  if (v7 && _nw_array_get_count(v7))
  {
    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __31__NWPath_copyDNSSearchDomains___block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v9 = array;
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
  overrideDNSServers = [(NWPath *)self overrideDNSServers];
  v4 = [(NWPath *)self copyDNSServersStrings:overrideDNSServers];

  return v4;
}

- (NSArray)overrideDNSServers
{
  v2 = [(NWPath *)self copyDNSServerEndpoints:1];

  return v2;
}

- (NSArray)dnsServersAsStrings
{
  dnsServers = [(NWPath *)self dnsServers];
  v4 = [(NWPath *)self copyDNSServersStrings:dnsServers];

  return v4;
}

- (id)copyDNSServersStrings:(id)strings
{
  v17 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  if (stringsCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = stringsCopy;
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

          addressStringNoPort = [*(*(&v12 + 1) + 8 * i) addressStringNoPort];
          [v4 addObject:addressStringNoPort];
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

- (id)copyDNSServerEndpoints:(BOOL)endpoints
{
  endpointsCopy = endpoints;
  internalPath = [(NWPath *)self internalPath];
  v5 = internalPath;
  if (endpointsCopy)
  {
    v6 = nw_path_copy_override_resolver_configs(internalPath);
  }

  else
  {
    v6 = nw_path_copy_resolver_configs(internalPath);
  }

  v7 = v6;

  if (v7 && _nw_array_get_count(v7))
  {
    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __33__NWPath_copyDNSServerEndpoints___block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v9 = array;
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
  internalPath = [(NWPath *)self internalPath];
  fallback_interface_index = nw_path_get_fallback_interface_index(internalPath);

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
  internalPath = [(NWPath *)self internalPath];
  v3 = nw_path_copy_delegate_interface(internalPath);

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

- (id)inactiveNetworkAgentUUIDsOnlyVoluntary:(BOOL)voluntary
{
  if ([(NWPath *)self status])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    internalPath = [(NWPath *)self internalPath];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __49__NWPath_inactiveNetworkAgentUUIDsOnlyVoluntary___block_invoke;
    v13 = &unk_1E6A34178;
    voluntaryCopy = voluntary;
    v7 = v5;
    v14 = v7;
    _nw_path_enumerate_network_agents(internalPath, &v10);

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

- (id)genericNetworkAgentsWithDomain:(id)domain type:(id)type
{
  domainCopy = domain;
  typeCopy = type;
  if ([(NWPath *)self status])
  {
    array = [MEMORY[0x1E695DF70] array];
    internalPath = [(NWPath *)self internalPath];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__NWPath_genericNetworkAgentsWithDomain_type___block_invoke;
    v13[3] = &unk_1E6A34150;
    v14 = domainCopy;
    v15 = typeCopy;
    v10 = array;
    v16 = v10;
    _nw_path_enumerate_network_agents(internalPath, v13);

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

- (id)networkAgentsOfType:(Class)type
{
  if (type)
  {
    status = [(NWPath *)self status];
    if (status)
    {
      array = [MEMORY[0x1E695DF70] array];
      internalPath = [(NWPath *)self internalPath];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __30__NWPath_networkAgentsOfType___block_invoke;
      v15 = &unk_1E6A34128;
      typeCopy = type;
      v9 = array;
      v16 = v9;
      _nw_path_enumerate_network_agents(internalPath, &v12);

      if ([v9 count])
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      status = v10;
    }
  }

  else
  {
    status = 0;
  }

  return status;
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

- (id)copyDataFromNetworkAgentWithDomain:(id)domain type:(id)type
{
  domainCopy = domain;
  typeCopy = type;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__50000;
  v21 = __Block_byref_object_dispose__50001;
  v22 = 0;
  internalPath = [(NWPath *)self internalPath];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__NWPath_copyDataFromNetworkAgentWithDomain_type___block_invoke;
  v13[3] = &unk_1E6A34100;
  v9 = domainCopy;
  v14 = v9;
  v10 = typeCopy;
  v15 = v10;
  v16 = &v17;
  _nw_path_enumerate_network_agents(internalPath, v13);

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

- (BOOL)usesNetworkAgent:(id)agent
{
  v16[2] = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16[0] = 0;
  v16[1] = 0;
  if (agentCopy && [(NWPath *)self status])
  {
    agentUUID = [agentCopy agentUUID];
    [agentUUID getUUIDBytes:v16];

    internalPath = [(NWPath *)self internalPath];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __27__NWPath_usesNetworkAgent___block_invoke;
    aBlock[3] = &unk_1E6A340D8;
    v10 = agentCopy;
    v11 = &v12;
    _nw_path_access_network_agent(internalPath, v16, aBlock);

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

- (BOOL)usesNetworkAgentType:(Class)type
{
  typeCopy = type;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (type)
  {
    if ([(NWPath *)self status])
    {
      internalPath = [(NWPath *)self internalPath];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __31__NWPath_usesNetworkAgentType___block_invoke;
      v7[3] = &unk_1E6A340B0;
      v7[4] = &v8;
      v7[5] = typeCopy;
      _nw_path_enumerate_network_agents(internalPath, v7);

      LOBYTE(typeCopy) = *(v9 + 24);
    }

    else
    {
      LOBYTE(typeCopy) = 0;
    }
  }

  _Block_object_dispose(&v8, 8);
  return typeCopy & 1;
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

- (BOOL)usesInterfaceType:(int64_t)type
{
  typeCopy = type;
  internalPath = [(NWPath *)self internalPath];
  LOBYTE(typeCopy) = _nw_path_uses_interface_type(internalPath, typeCopy);

  return typeCopy;
}

- (BOOL)isEqualToPath:(NWPath *)path
{
  v4 = path;
  internalPath = [(NWPath *)self internalPath];
  internalPath2 = [(NWPath *)v4 internalPath];

  LOBYTE(v4) = _nw_path_is_equal_inner(internalPath, internalPath2, 0);
  return v4;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  contentCopy = content;
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  statusAsString = [(NWPath *)self statusAsString];
  [v7 appendPrettyObject:statusAsString withName:@"status" indent:v5 showFullContent:1];

  [v7 appendPrettyInt:-[NWPath reason](self withName:"reason") indent:{@"reasonCode", v5}];
  reasonDescription = [(NWPath *)self reasonDescription];
  [v7 appendPrettyObject:reasonDescription withName:@"reason" indent:v5 showFullContent:1];

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

  clientID = [(NWPath *)self clientID];
  [v7 appendPrettyObject:clientID withName:@"clientID" indent:v5 showFullContent:1];

  if (!contentCopy)
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
  flows = [(NWPath *)self flows];
  [v7 appendPrettyObject:flows withName:@"flows" indent:v5 showFullContent:1];

  groupMembers = [(NWPath *)self groupMembers];
  [v7 appendPrettyObject:groupMembers withName:@"groupMembers" indent:v5 showFullContent:1];

  internalPath = [(NWPath *)self internalPath];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __48__NWPath_descriptionWithIndent_showFullContent___block_invoke;
  v36 = &unk_1E6A34088;
  v15 = v7;
  v37 = v15;
  v38 = v5;
  v39 = contentCopy;
  nw_path_enumerate_interface_options(internalPath, &v33);

  v16 = [(NWPath *)self effectiveLocalEndpoint:v33];
  [v15 appendPrettyObject:v16 withName:@"effectiveLocalEndpoint" indent:v5 showFullContent:1];

  effectiveRemoteEndpoint = [(NWPath *)self effectiveRemoteEndpoint];
  [v15 appendPrettyObject:effectiveRemoteEndpoint withName:@"effectiveRemoteEndpoint" indent:v5 showFullContent:1];

  interface = [(NWPath *)self interface];
  [v15 appendPrettyObject:interface withName:@"interface" indent:v5 showFullContent:1];

  scopedInterface = [(NWPath *)self scopedInterface];
  [v15 appendPrettyObject:scopedInterface withName:@"scopedInterface" indent:v5 showFullContent:1];

  dnsServers = [(NWPath *)self dnsServers];
  [v15 appendPrettyObject:dnsServers withName:@"dnsServers" indent:v5 showFullContent:1];

  internalPath2 = [(NWPath *)self internalPath];
  v22 = nw_path_copy_resolver_configs(internalPath2);
  [v15 appendPrettyObject:v22 withName:@"resolvers" indent:v5 showFullContent:1];

  dnsSearchDomains = [(NWPath *)self dnsSearchDomains];
  [v15 appendPrettyObject:dnsSearchDomains withName:@"dnsSearchDomains" indent:v5 showFullContent:1];

  internalPath3 = [(NWPath *)self internalPath];
  v25 = nw_path_copy_override_resolver_configs(internalPath3);
  [v15 appendPrettyObject:v25 withName:@"override-resolvers" indent:v5 showFullContent:1];

  overrideDNSSearchDomains = [(NWPath *)self overrideDNSSearchDomains];
  [v15 appendPrettyObject:overrideDNSSearchDomains withName:@"override-dnsSearchDomains" indent:v5 showFullContent:1];

  gateways = [(NWPath *)self gateways];
  [v15 appendPrettyObject:gateways withName:@"gateways" indent:v5 showFullContent:1];

  proxySettings = [(NWPath *)self proxySettings];
  [v15 appendPrettyObject:proxySettings withName:@"proxySettings" indent:v5 showFullContent:1];

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
  internalPath4 = [(NWPath *)self internalPath];
  v31 = nw_path_has_nat64_prefixes(internalPath4);

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

- (NWPath)initWithPath:(id)path
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (pathCopy)
  {
    v23.receiver = self;
    v23.super_class = NWPath;
    v6 = [(NWPath *)&v23 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_internalPath, path);
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

+ (NWPath)pathWithProtocolBufferData:(id)data
{
  v166 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v3 = [[NWPBPath alloc] initWithData:dataCopy];
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
    data = [(NWPBInterface *)v7 data];
    v144 = [NWInterface interfaceWithProtocolBufferData:data];

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
    data2 = [(NWPBInterface *)v16 data];
    v143 = [NWInterface interfaceWithProtocolBufferData:data2];

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
          uTF8String = [v33 UTF8String];
          if (!uTF8String)
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
            uTF8String = 0;
          }

          v35 = *uTF8String;
          v24[16] = v35;
          if (v35)
          {
            v36 = uTF8String[1];
            v24[17] = v36;
            if (v36)
            {
              v37 = uTF8String[2];
              v24[18] = v37;
              if (v37)
              {
                v38 = uTF8String[3];
                v24[19] = v38;
                if (v38)
                {
                  v39 = uTF8String[4];
                  v24[20] = v39;
                  if (v39)
                  {
                    v40 = uTF8String[5];
                    v24[21] = v40;
                    if (v40)
                    {
                      v41 = uTF8String[6];
                      v24[22] = v41;
                      if (v41)
                      {
                        v42 = uTF8String[7];
                        v24[23] = v42;
                        if (v42)
                        {
                          v43 = uTF8String[8];
                          v24[24] = v43;
                          if (v43)
                          {
                            v44 = uTF8String[9];
                            v24[25] = v44;
                            if (v44)
                            {
                              v45 = uTF8String[10];
                              v24[26] = v45;
                              if (v45)
                              {
                                v46 = uTF8String[11];
                                v24[27] = v46;
                                if (v46)
                                {
                                  v47 = uTF8String[12];
                                  v24[28] = v47;
                                  if (v47)
                                  {
                                    v48 = uTF8String[13];
                                    v24[29] = v48;
                                    if (v48)
                                    {
                                      v49 = uTF8String[14];
                                      v24[30] = v49;
                                      if (v49)
                                      {
                                        v50 = uTF8String[15];
                                        v24[31] = v50;
                                        if (v50)
                                        {
                                          v51 = uTF8String[16];
                                          v24[32] = v51;
                                          if (v51)
                                          {
                                            v52 = uTF8String[17];
                                            v24[33] = v52;
                                            if (v52)
                                            {
                                              v53 = uTF8String[18];
                                              v24[34] = v53;
                                              if (v53)
                                              {
                                                v54 = uTF8String[19];
                                                v24[35] = v54;
                                                if (v54)
                                                {
                                                  v55 = uTF8String[20];
                                                  v24[36] = v55;
                                                  if (v55)
                                                  {
                                                    v56 = uTF8String[21];
                                                    v24[37] = v56;
                                                    if (v56)
                                                    {
                                                      v57 = uTF8String[22];
                                                      v24[38] = v57;
                                                      if (v57)
                                                      {
                                                        v58 = uTF8String[23];
                                                        v24[39] = v58;
                                                        if (v58)
                                                        {
                                                          v59 = uTF8String[24];
                                                          v24[40] = v59;
                                                          if (v59)
                                                          {
                                                            v60 = uTF8String[25];
                                                            v24[41] = v60;
                                                            if (v60)
                                                            {
                                                              v61 = uTF8String[26];
                                                              v24[42] = v61;
                                                              if (v61)
                                                              {
                                                                v62 = uTF8String[27];
                                                                v24[43] = v62;
                                                                if (v62)
                                                                {
                                                                  v63 = uTF8String[28];
                                                                  v24[44] = v63;
                                                                  if (v63)
                                                                  {
                                                                    v64 = uTF8String[29];
                                                                    v24[45] = v64;
                                                                    if (v64)
                                                                    {
                                                                      v65 = uTF8String[30];
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
          uTF8String2 = [v69 UTF8String];
          if (!uTF8String2)
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
            uTF8String2 = 0;
          }

          v71 = *uTF8String2;
          v24[48] = v71;
          if (v71)
          {
            v72 = uTF8String2[1];
            v24[49] = v72;
            if (v72)
            {
              v73 = uTF8String2[2];
              v24[50] = v73;
              if (v73)
              {
                v74 = uTF8String2[3];
                v24[51] = v74;
                if (v74)
                {
                  v75 = uTF8String2[4];
                  v24[52] = v75;
                  if (v75)
                  {
                    v76 = uTF8String2[5];
                    v24[53] = v76;
                    if (v76)
                    {
                      v77 = uTF8String2[6];
                      v24[54] = v77;
                      if (v77)
                      {
                        v78 = uTF8String2[7];
                        v24[55] = v78;
                        if (v78)
                        {
                          v79 = uTF8String2[8];
                          v24[56] = v79;
                          if (v79)
                          {
                            v80 = uTF8String2[9];
                            v24[57] = v80;
                            if (v80)
                            {
                              v81 = uTF8String2[10];
                              v24[58] = v81;
                              if (v81)
                              {
                                v82 = uTF8String2[11];
                                v24[59] = v82;
                                if (v82)
                                {
                                  v83 = uTF8String2[12];
                                  v24[60] = v83;
                                  if (v83)
                                  {
                                    v84 = uTF8String2[13];
                                    v24[61] = v84;
                                    if (v84)
                                    {
                                      v85 = uTF8String2[14];
                                      v24[62] = v85;
                                      if (v85)
                                      {
                                        v86 = uTF8String2[15];
                                        v24[63] = v86;
                                        if (v86)
                                        {
                                          v87 = uTF8String2[16];
                                          v24[64] = v87;
                                          if (v87)
                                          {
                                            v88 = uTF8String2[17];
                                            v24[65] = v88;
                                            if (v88)
                                            {
                                              v89 = uTF8String2[18];
                                              v24[66] = v89;
                                              if (v89)
                                              {
                                                v90 = uTF8String2[19];
                                                v24[67] = v90;
                                                if (v90)
                                                {
                                                  v91 = uTF8String2[20];
                                                  v24[68] = v91;
                                                  if (v91)
                                                  {
                                                    v92 = uTF8String2[21];
                                                    v24[69] = v92;
                                                    if (v92)
                                                    {
                                                      v93 = uTF8String2[22];
                                                      v24[70] = v93;
                                                      if (v93)
                                                      {
                                                        v94 = uTF8String2[23];
                                                        v24[71] = v94;
                                                        if (v94)
                                                        {
                                                          v95 = uTF8String2[24];
                                                          v24[72] = v95;
                                                          if (v95)
                                                          {
                                                            v96 = uTF8String2[25];
                                                            v24[73] = v96;
                                                            if (v96)
                                                            {
                                                              v97 = uTF8String2[26];
                                                              v24[74] = v97;
                                                              if (v97)
                                                              {
                                                                v98 = uTF8String2[27];
                                                                v24[75] = v98;
                                                                if (v98)
                                                                {
                                                                  v99 = uTF8String2[28];
                                                                  v24[76] = v99;
                                                                  if (v99)
                                                                  {
                                                                    v100 = uTF8String2[29];
                                                                    v24[77] = v100;
                                                                    if (v100)
                                                                    {
                                                                      v101 = uTF8String2[30];
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
          uTF8String3 = [v103 UTF8String];
          if (!uTF8String3)
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
            v107 = *uTF8String3;
            *v105 = v107;
            if (!v107)
            {
              break;
            }

            ++v105;
            ++uTF8String3;
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
        uTF8String4 = [v28 UTF8String];
        if (uTF8String4)
        {
          xpc_dictionary_set_value(xdict, uTF8String4, v29);
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
    data3 = [(NWPBEndpoint *)v118 data];
    v152 = [NWEndpoint endpointWithProtocolBufferData:data3];

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
    data4 = [(NWPBParameters *)v121 data];
    v123 = [NWParameters parametersWithProtocolBufferData:data4];
  }

  else
  {
    v123 = 0;
  }

  internalEndpoint = [v152 internalEndpoint];
  internalParameters = [v123 internalParameters];
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
  internalInterface = [v144 internalInterface];
  internalInterface2 = [v143 internalInterface];
  v133 = _nw_path_create_static(internalEndpoint, internalParameters, status, uu, direct, local, ipv4, ipv6, internalInterface, internalInterface2, xdict);

  v14 = [[NWPath alloc] initWithPath:v133];
  v13 = v146;
LABEL_160:

  return v14;
}

+ (id)createStringFromStatus:(int64_t)status
{
  if (status >= 4)
  {
    status = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", status];
  }

  else
  {
    status = off_1E6A34198[status];
  }

  return status;
}

+ (id)pathForClientID:(id)d parametersTLV:(id)v pathResultTLV:(id)lV
{
  v15 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  lVCopy = lV;
  vCopy = v;
  dCopy = d;
  uuid_clear(uu);
  [dCopy getUUIDBytes:uu];

  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v10 = nw_context_copy_implicit_context::implicit_context;
  v11 = nw_path_copy_path_for_tlv(uu, v10, [vCopy bytes], objc_msgSend(vCopy, "length"), objc_msgSend(lVCopy, "bytes"), objc_msgSend(lVCopy, "length"));

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

+ (id)pathForClientID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  dCopy = d;
  uuid_clear(uu);
  [dCopy getUUIDBytes:uu];

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
    array = [MEMORY[0x1E695DF70] array];
    count = xpc_array_get_count(v2);
    if (count)
    {
      v5 = count;
      for (i = 0; i != v5; ++i)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{xpc_array_get_uuid(v2, i)}];
        if (v7)
        {
          [array addObject:v7];
        }
      }
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

@end