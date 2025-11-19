@interface NWParameters
+ (NWParameters)parametersWithCParameters:(id)a3;
+ (NWParameters)parametersWithProtocolBufferData:(id)a3;
- (BOOL)allowDuplicateStateUpdates;
- (BOOL)allowJoiningConnectedFd;
- (BOOL)allowSocketAccess;
- (BOOL)allowUnusableAddresses;
- (BOOL)attachProtocolListener;
- (BOOL)copyEffectiveAuditToken:(id *)a3;
- (BOOL)disableNagleAlgorithm;
- (BOOL)enableTFO;
- (BOOL)enableTFONoCookie;
- (BOOL)enableTLS;
- (BOOL)fastOpenForceEnable;
- (BOOL)hasDelegatedPIDForOriginatingPID:(int)a3;
- (BOOL)hasDelegatedProcessUUID;
- (BOOL)hasNonEmptyProxyConfiguration;
- (BOOL)hasPreferredNetworkAgents;
- (BOOL)hasProhibitedNetworkAgents;
- (BOOL)hasRequiredNetworkAgents;
- (BOOL)httpsProxyIsOpaque;
- (BOOL)httpsProxyOverTLS;
- (BOOL)ignoreResolverStats;
- (BOOL)indefinite;
- (BOOL)isDiscretionary;
- (BOOL)isDryRun;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)keepAlive;
- (BOOL)keepAliveOffload;
- (BOOL)multipath;
- (BOOL)multipathForceEnable;
- (BOOL)noProxy;
- (BOOL)preferNoProxy;
- (BOOL)prohibitCellular;
- (BOOL)prohibitConstrainedPaths;
- (BOOL)prohibitExpensivePaths;
- (BOOL)prohibitFallback;
- (BOOL)prohibitJoiningProtocols;
- (BOOL)prohibitRoaming;
- (BOOL)reduceBuffering;
- (BOOL)resolvePTR;
- (BOOL)reuseLocalAddress;
- (BOOL)trustInvalidCertificates;
- (BOOL)useAWDL;
- (BOOL)useLongOutstandingQueries;
- (BOOL)useP2P;
- (NSArray)parentIDs;
- (NSArray)protocolTransforms;
- (NSData)TLSSessionID;
- (NSData)metadata;
- (NSString)account;
- (NSString)effectiveBundleID;
- (NSString)privateDescription;
- (NSURL)sanitizedURL;
- (NSURL)url;
- (NSUUID)effectiveProcessUUID;
- (NSUUID)parentID;
- (NSUUID)processUUID;
- (NWAddressEndpoint)localAddress;
- (NWInterface)requiredInterface;
- (NWParameters)init;
- (NWParameters)initWithCoder:(id)a3;
- (NWParameters)initWithParameters:(id)a3;
- (id)copyCParameters;
- (id)copyRequiredAgentsDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createProtocolBufferObject;
- (id)description;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
- (int)multipathService;
- (int)pid;
- (int64_t)requiredCompanionProxyInterfaceType;
- (int64_t)requiredInterfaceSubtype;
- (int64_t)requiredInterfaceType;
- (unint64_t)dataMode;
- (unint64_t)hash;
- (unint64_t)keepAliveIdleTime;
- (unint64_t)keepAliveInterval;
- (unint64_t)trafficClass;
- (unsigned)ipProtocol;
- (unsigned)requiredAddressFamily;
- (unsigned)tlsVersionWithSSLProtocol:(int)a3;
- (unsigned)transportProtocol;
- (unsigned)uid;
- (void)avoidNetworkAgentWithDomain:(id)a3 type:(id)a4;
- (void)avoidNetworkAgentWithUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)preferNetworkAgentWithDomain:(id)a3 type:(id)a4;
- (void)preferNetworkAgentWithUUID:(id)a3;
- (void)prohibitInterface:(id)a3;
- (void)prohibitInterfaceSubtype:(int64_t)a3;
- (void)prohibitInterfaceType:(int64_t)a3;
- (void)prohibitNetworkAgentWithUUID:(id)a3;
- (void)prohibitNetworkAgentsWithDomain:(id)a3 type:(id)a4;
- (void)requireNetworkAgentWithDomain:(id)a3 type:(id)a4;
- (void)requireNetworkAgentWithUUID:(id)a3;
- (void)setAccount:(id)a3;
- (void)setAllowDuplicateStateUpdates:(BOOL)a3;
- (void)setAllowJoiningConnectedFd:(BOOL)a3;
- (void)setAllowSocketAccess:(BOOL)a3;
- (void)setAllowUnusableAddresses:(BOOL)a3;
- (void)setAttachProtocolListener:(BOOL)a3;
- (void)setDataMode:(unint64_t)a3;
- (void)setDisableNagleAlgorithm:(BOOL)a3;
- (void)setDiscretionary:(BOOL)a3;
- (void)setEffectiveBundleID:(id)a3;
- (void)setEffectiveProcessUUID:(id)a3;
- (void)setEnableTFO:(BOOL)a3;
- (void)setEnableTFONoCookie:(BOOL)a3;
- (void)setEnableTLS:(BOOL)a3;
- (void)setFastOpenForceEnable:(BOOL)a3;
- (void)setHttpsProxyIsOpaque:(BOOL)a3;
- (void)setHttpsProxyOverTLS:(BOOL)a3;
- (void)setIgnoreResolverStats:(BOOL)a3;
- (void)setIndefinite:(BOOL)a3;
- (void)setInitialDataPayload:(id)a3;
- (void)setKeepAlive:(BOOL)a3;
- (void)setKeepAliveIdleTime:(unint64_t)a3;
- (void)setKeepAliveInterval:(unint64_t)a3;
- (void)setKeepAliveOffload:(BOOL)a3;
- (void)setLocalAddress:(id)a3;
- (void)setMaximumSSLProtocolVersion:(unint64_t)a3;
- (void)setMetadata:(id)a3;
- (void)setMinimumSSLProtocolVersion:(unint64_t)a3;
- (void)setMultipath:(BOOL)a3;
- (void)setMultipathForceEnable:(BOOL)a3;
- (void)setMultipathService:(int)a3;
- (void)setNoProxy:(BOOL)a3;
- (void)setParentID:(id)a3;
- (void)setPid:(int)a3;
- (void)setPreferNoProxy:(BOOL)a3;
- (void)setProcessUUID:(id)a3;
- (void)setProhibitConstrainedPaths:(BOOL)a3;
- (void)setProhibitExpensivePaths:(BOOL)a3;
- (void)setProhibitFallback:(BOOL)a3;
- (void)setProhibitJoiningProtocols:(BOOL)a3;
- (void)setProhibitRoaming:(BOOL)a3;
- (void)setProtocolTransforms:(id)a3;
- (void)setProxyConfiguration:(id)a3;
- (void)setReduceBuffering:(BOOL)a3;
- (void)setRequiredAddressFamily:(unsigned __int8)a3;
- (void)setRequiredCompanionProxyInterfaceType:(int64_t)a3;
- (void)setRequiredInterface:(id)a3;
- (void)setRequiredInterfaceSubtype:(int64_t)a3;
- (void)setRequiredInterfaceType:(int64_t)a3;
- (void)setResolvePTR:(BOOL)a3;
- (void)setReuseLocalAddress:(BOOL)a3;
- (void)setSSLCipherSuites:(id)a3;
- (void)setSourceApplicationWithBundleID:(id)a3;
- (void)setSourceApplicationWithToken:(id *)a3;
- (void)setTLSSessionID:(id)a3;
- (void)setTrafficClass:(unint64_t)a3;
- (void)setTrustInvalidCertificates:(BOOL)a3;
- (void)setUid:(unsigned int)a3;
- (void)setUrl:(id)a3;
- (void)setUseAWDL:(BOOL)a3;
- (void)setUseLongOutstandingQueries:(BOOL)a3;
- (void)setUseP2P:(BOOL)a3;
@end

@implementation NWParameters

- (id)description
{
  v2 = [(NWParameters *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (NSUUID)processUUID
{
  v8 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v3 = [(NWParameters *)self internalParameters];
  nw_parameters_get_proc_uuid(v3);

  is_null = uuid_is_null(uu);
  v5 = 0;
  if (!is_null)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
  }

  return v5;
}

- (NSUUID)effectiveProcessUUID
{
  v8 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v3 = [(NWParameters *)self internalParameters];
  nw_parameters_get_e_proc_uuid(v3);

  is_null = uuid_is_null(uu);
  v5 = 0;
  if (!is_null)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
  }

  return v5;
}

- (NSString)effectiveBundleID
{
  v2 = [(NWParameters *)self internalParameters];
  effective_bundle_id = nw_parameters_get_effective_bundle_id(v2);

  if (effective_bundle_id)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:effective_bundle_id];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)pid
{
  v2 = [(NWParameters *)self internalParameters];
  pid = nw_parameters_get_pid(v2);

  return pid;
}

- (unsigned)uid
{
  v2 = [(NWParameters *)self internalParameters];
  uid = nw_parameters_get_uid(v2);

  return uid;
}

- (NSString)account
{
  v2 = [(NWParameters *)self internalParameters];
  account_id = nw_parameters_get_account_id(v2);

  if (account_id)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:account_id];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)url
{
  v2 = [(NWParameters *)self internalParameters];
  url = nw_parameters_get_url(v2, v3);

  if (url)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = nw_nsstring(url);
    v7 = [v5 URLWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSURL)sanitizedURL
{
  v2 = [(NWParameters *)self internalParameters];
  sanitized_url = nw_parameters_get_sanitized_url(v2, v3);

  if (sanitized_url)
  {
    v5 = objc_alloc(MEMORY[0x1E695DFF8]);
    v6 = nw_nsstring(sanitized_url);
    sanitized_url = [v5 initWithString:v6];
  }

  return sanitized_url;
}

- (unint64_t)dataMode
{
  v2 = [(NWParameters *)self internalParameters];
  data_mode = nw_parameters_get_data_mode(v2);

  return data_mode;
}

- (NSArray)protocolTransforms
{
  v2 = [(NWParameters *)self internalParameters];
  v3 = nw_parameters_copy_transform_array(v2);

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__NWParameters_protocolTransforms__block_invoke;
  aBlock[3] = &unk_1E6A3CCB8;
  v5 = v4;
  v9 = v5;
  v6 = v5;
  if (v3)
  {
    _nw_array_apply(v3, aBlock);
    v6 = v9;
  }

  return v5;
}

- (BOOL)isDryRun
{
  v2 = [(NWParameters *)self internalParameters];
  dry_run = nw_parameters_get_dry_run(v2);

  return dry_run;
}

- (unint64_t)trafficClass
{
  v2 = [(NWParameters *)self internalParameters];
  traffic_class = nw_parameters_get_traffic_class(v2);

  return traffic_class;
}

- (unsigned)ipProtocol
{
  v2 = [(NWParameters *)self internalParameters];
  ip_protocol = nw_parameters_get_ip_protocol(v2);

  return ip_protocol;
}

- (unsigned)transportProtocol
{
  v2 = [(NWParameters *)self internalParameters];
  upper_transport_protocol = nw_parameters_get_upper_transport_protocol(v2);

  return upper_transport_protocol;
}

- (unsigned)requiredAddressFamily
{
  v2 = [(NWParameters *)self internalParameters];
  required_address_family = nw_parameters_get_required_address_family(v2);

  return required_address_family;
}

- (BOOL)reuseLocalAddress
{
  v2 = [(NWParameters *)self internalParameters];
  reuse_local_address = nw_parameters_get_reuse_local_address(v2);

  return reuse_local_address;
}

- (NWInterface)requiredInterface
{
  v2 = [(NWParameters *)self internalParameters];
  v3 = nw_parameters_copy_required_interface(v2);

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

- (int64_t)requiredInterfaceType
{
  v2 = [(NWParameters *)self internalParameters];
  required_interface_type = nw_parameters_get_required_interface_type(v2);

  return required_interface_type;
}

- (int64_t)requiredCompanionProxyInterfaceType
{
  v2 = [(NWParameters *)self internalParameters];
  next_hop_required_interface_type = nw_parameters_get_next_hop_required_interface_type(v2);

  return next_hop_required_interface_type;
}

- (BOOL)prohibitExpensivePaths
{
  v2 = [(NWParameters *)self internalParameters];
  prohibit_expensive = nw_parameters_get_prohibit_expensive(v2);

  return prohibit_expensive;
}

- (BOOL)enableTFO
{
  v2 = [(NWParameters *)self internalParameters];
  tfo = nw_parameters_get_tfo(v2);

  return tfo;
}

- (BOOL)disableNagleAlgorithm
{
  v2 = [(NWParameters *)self internalParameters];
  no_delay = nw_parameters_get_no_delay(v2);

  return no_delay;
}

- (BOOL)prohibitConstrainedPaths
{
  v2 = [(NWParameters *)self internalParameters];
  prohibit_constrained = nw_parameters_get_prohibit_constrained(v2);

  return prohibit_constrained;
}

- (BOOL)prohibitRoaming
{
  v2 = [(NWParameters *)self internalParameters];
  prohibit_roaming = nw_parameters_get_prohibit_roaming(v2);

  return prohibit_roaming;
}

- (BOOL)useLongOutstandingQueries
{
  v2 = [(NWParameters *)self internalParameters];
  use_long_outstanding_queries = nw_parameters_get_use_long_outstanding_queries(v2);

  return use_long_outstanding_queries;
}

- (BOOL)resolvePTR
{
  v2 = [(NWParameters *)self internalParameters];
  resolve_ptr = nw_parameters_get_resolve_ptr(v2);

  return resolve_ptr;
}

- (BOOL)useAWDL
{
  v2 = [(NWParameters *)self internalParameters];
  use_awdl = nw_parameters_get_use_awdl(v2);

  return use_awdl;
}

- (BOOL)useP2P
{
  v2 = [(NWParameters *)self internalParameters];
  use_p2p = nw_parameters_get_use_p2p(v2);

  return use_p2p;
}

- (int)multipathService
{
  v2 = [(NWParameters *)self internalParameters];
  multipath_service = nw_parameters_get_multipath_service(v2);

  return multipath_service;
}

- (BOOL)enableTLS
{
  v2 = [(NWParameters *)self internalParameters];
  tls = nw_parameters_get_tls(v2);

  return tls;
}

- (NSData)TLSSessionID
{
  v2 = [(NWParameters *)self internalParameters];
  nw_parameters_copy_tls_session_id(v2);

  return 0;
}

- (BOOL)trustInvalidCertificates
{
  v2 = [(NWParameters *)self internalParameters];
  should_trust_invalid_certificates = nw_parameters_get_should_trust_invalid_certificates(v2);

  return should_trust_invalid_certificates;
}

- (id)copyCParameters
{
  v2 = [(NWParameters *)self internalParameters];
  v3 = _nw_parameters_copy(v2);

  return v3;
}

- (BOOL)allowDuplicateStateUpdates
{
  v2 = [(NWParameters *)self internalParameters];
  allow_duplicate_state_updates = nw_parameters_get_allow_duplicate_state_updates(v2);

  return allow_duplicate_state_updates;
}

- (void)setAllowDuplicateStateUpdates:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_allow_duplicate_state_updates(v4, a3);
}

- (BOOL)allowJoiningConnectedFd
{
  v2 = [(NWParameters *)self internalParameters];
  allow_joining_connected_fd = nw_parameters_get_allow_joining_connected_fd(v2);

  return allow_joining_connected_fd;
}

- (void)setAllowJoiningConnectedFd:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_allow_joining_connected_fd(v4, a3);
}

- (BOOL)prohibitJoiningProtocols
{
  v2 = [(NWParameters *)self internalParameters];
  prohibit_joining_protocols = nw_parameters_get_prohibit_joining_protocols(v2);

  return prohibit_joining_protocols;
}

- (void)setProhibitJoiningProtocols:(BOOL)a3
{
  v3 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_prohibit_joining_protocols(v4, v3);
}

- (BOOL)attachProtocolListener
{
  v2 = [(NWParameters *)self internalParameters];
  attach_protocol_listener = nw_parameters_get_attach_protocol_listener(v2);

  return attach_protocol_listener;
}

- (void)setAttachProtocolListener:(BOOL)a3
{
  v3 = [(NWParameters *)self internalParameters];
  nw_parameters_set_attach_protocol_listener(v3);
}

- (BOOL)httpsProxyOverTLS
{
  v2 = [(NWParameters *)self internalParameters];
  https_proxy_over_tls = nw_parameters_get_https_proxy_over_tls(v2);

  return https_proxy_over_tls;
}

- (void)setHttpsProxyOverTLS:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_https_proxy_over_tls(v4, a3);
}

- (BOOL)httpsProxyIsOpaque
{
  v2 = [(NWParameters *)self internalParameters];
  is_opaque = nw_parameters_get_https_proxy_is_opaque(v2);

  return is_opaque;
}

- (void)setHttpsProxyIsOpaque:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_https_proxy_is_opaque(v4, a3);
}

- (BOOL)preferNoProxy
{
  v2 = [(NWParameters *)self internalParameters];
  prefer_no_proxy = nw_parameters_get_prefer_no_proxy(v2);

  return prefer_no_proxy;
}

- (void)setPreferNoProxy:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_prefer_no_proxy(v4, a3);
}

- (BOOL)allowUnusableAddresses
{
  v2 = [(NWParameters *)self internalParameters];
  allow_unusable_addresses = nw_parameters_get_allow_unusable_addresses(v2);

  return allow_unusable_addresses;
}

- (void)setAllowUnusableAddresses:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_allow_unusable_addresses(v4, a3);
}

- (id)createProtocolBufferObject
{
  v3 = objc_alloc_init(NWPBParameters);
  v4 = [(NWParameters *)self effectiveProcessUUID];
  v5 = [v4 UUIDString];
  if (v3)
  {
    objc_storeStrong(&v3->_effectiveProcessUUID, v5);
  }

  v6 = [(NWParameters *)self processUUID];
  v7 = [v6 UUIDString];
  if (v3)
  {
    objc_storeStrong(&v3->_realProcessUUID, v7);
  }

  v8 = [(NWParameters *)self localAddress];
  v9 = [v8 createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_localEndpoint, v9);
  }

  v10 = [(NWParameters *)self account];
  if (v3)
  {
    objc_storeStrong(&v3->_account, v10);
  }

  if ([(NWParameters *)self requiredAddressFamily])
  {
    v11 = [(NWParameters *)self requiredAddressFamily];
    if (v3)
    {
      *&v3->_has |= 1u;
      v3->_addressFamily = v11;
      v12 = [(NWParameters *)self dataMode];
LABEL_13:
      *&v3->_has |= 2u;
      v3->_dataMode = v12;
      v13 = [(NWParameters *)self effectiveBundleID];
      objc_storeStrong(&v3->_effectiveBundleID, v13);
      goto LABEL_14;
    }

    [(NWParameters *)self dataMode];
  }

  else
  {
    v12 = [(NWParameters *)self dataMode];
    if (v3)
    {
      goto LABEL_13;
    }
  }

  v13 = [(NWParameters *)self effectiveBundleID];
LABEL_14:

  v14 = [(NWParameters *)self metadata];
  if (v3)
  {
    objc_storeStrong(&v3->_metadata, v14);
  }

  v15 = [(NWParameters *)self requiredInterface];
  v16 = [v15 createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_requiredInterface, v16);
  }

  v17 = [(NWParameters *)self requiredInterfaceType];
  if (v3)
  {
    *&v3->_has |= 0x10u;
    v3->_requiredInterfaceType = v17;
    v18 = [(NWParameters *)self trafficClass];
    *&v3->_has |= 0x20u;
    v3->_trafficClass = v18;
  }

  else
  {
    [(NWParameters *)self trafficClass];
  }

  v19 = [(NWParameters *)self url];
  v20 = [v19 absoluteString];
  if (v3)
  {
    objc_storeStrong(&v3->_url, v20);
  }

  if ([(NWParameters *)self enableTFO])
  {
    v21 = [(NWParameters *)self enableTFO];
    if (v3)
    {
      *&v3->_has |= 0x40u;
      v3->_fastOpen = v21;
    }
  }

  if ([(NWParameters *)self keepAlive])
  {
    v22 = [(NWParameters *)self keepAlive];
    if (v3)
    {
      *&v3->_has |= 0x80u;
      v3->_keepalive = v22;
      v23 = [(NWParameters *)self useLongOutstandingQueries];
LABEL_29:
      *&v3->_has |= 0x100u;
      v3->_longOutstandingQueries = v23;
      v24 = [(NWParameters *)self multipathService];
      *&v3->_has |= 8u;
      v3->_multipathService = v24;
      v25 = [(NWParameters *)self prohibitFallback];
      *&v3->_has |= 0x200u;
      v3->_noFallback = v25;
      v26 = [(NWParameters *)self prohibitExpensivePaths];
      *&v3->_has |= 0x400u;
      v3->_prohibitExpensive = v26;
      v27 = [(NWParameters *)self reuseLocalAddress];
      *&v3->_has |= 0x1000u;
      v3->_reuseLocalAddress = v27;
      v28 = [(NWParameters *)self useAWDL];
      *&v3->_has |= 0x2000u;
      v3->_useAWDL = v28;
      v29 = [(NWParameters *)self useP2P];
      *&v3->_has |= 0x4000u;
      v3->_useP2P = v29;
      goto LABEL_30;
    }

    [(NWParameters *)self useLongOutstandingQueries];
  }

  else
  {
    v23 = [(NWParameters *)self useLongOutstandingQueries];
    if (v3)
    {
      goto LABEL_29;
    }
  }

  [(NWParameters *)self multipathService];
  [(NWParameters *)self prohibitFallback];
  [(NWParameters *)self prohibitExpensivePaths];
  [(NWParameters *)self reuseLocalAddress];
  [(NWParameters *)self useAWDL];
  [(NWParameters *)self useP2P];
LABEL_30:
  v30 = [(NWParameters *)self internalParameters];
  has_required_netagents = nw_parameters_has_required_netagents(v30);

  if (has_required_netagents)
  {
    v32 = [(NWParameters *)self internalParameters];
    v33 = nw_parameters_copy_required_netagent_domains(v32);

    v34 = [(NWParameters *)self internalParameters];
    v35 = nw_parameters_copy_required_netagent_types(v34);

    if (v33)
    {
      if (v35)
      {
        count = xpc_array_get_count(v33);
        if (count)
        {
          v37 = count;
          for (i = 0; i != v37; ++i)
          {
            string = xpc_array_get_string(v33, i);
            v40 = xpc_array_get_string(v35, i);
            if (string)
            {
              v41 = v40;
              if (v40)
              {
                v42 = objc_alloc_init(NWPBAgentClass);
                v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
                if (v42)
                {
                  objc_storeStrong(&v42->_domain, v43);
                }

                v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
                if (v42)
                {
                  objc_storeStrong(&v42->_type, v44);
                }

                v45 = v42;
                if (v3)
                {
                  requiredAgents = v3->_requiredAgents;
                  if (!requiredAgents)
                  {
                    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v48 = v3->_requiredAgents;
                    v3->_requiredAgents = v47;

                    requiredAgents = v3->_requiredAgents;
                  }

                  [(NSMutableArray *)requiredAgents addObject:v45];
                }
              }
            }
          }
        }
      }
    }
  }

  v49 = [(NWParameters *)self internalParameters];
  has_prohibited_netagents = nw_parameters_has_prohibited_netagents(v49);

  if (has_prohibited_netagents)
  {
    v51 = [(NWParameters *)self internalParameters];
    v52 = nw_parameters_copy_prohibited_netagent_domains(v51);

    v53 = [(NWParameters *)self internalParameters];
    v54 = nw_parameters_copy_prohibited_netagent_types(v53);

    if (v52)
    {
      if (v54)
      {
        v55 = xpc_array_get_count(v52);
        if (v55)
        {
          v56 = v55;
          for (j = 0; j != v56; ++j)
          {
            v58 = xpc_array_get_string(v52, j);
            v59 = xpc_array_get_string(v54, j);
            if (v58)
            {
              v60 = v59;
              if (v59)
              {
                v61 = objc_alloc_init(NWPBAgentClass);
                v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v58];
                if (v61)
                {
                  objc_storeStrong(&v61->_domain, v62);
                }

                v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v60];
                if (v61)
                {
                  objc_storeStrong(&v61->_type, v63);
                }

                v64 = v61;
                if (v3)
                {
                  prohibitedAgents = v3->_prohibitedAgents;
                  if (!prohibitedAgents)
                  {
                    v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v67 = v3->_prohibitedAgents;
                    v3->_prohibitedAgents = v66;

                    prohibitedAgents = v3->_prohibitedAgents;
                  }

                  [(NSMutableArray *)prohibitedAgents addObject:v64];
                }
              }
            }
          }
        }
      }
    }
  }

  v68 = [(NWParameters *)self internalParameters];
  has_preferred_netagents = nw_parameters_has_preferred_netagents(v68);

  if (has_preferred_netagents)
  {
    v70 = [(NWParameters *)self internalParameters];
    v71 = nw_parameters_copy_preferred_netagent_domains(v70);

    v72 = [(NWParameters *)self internalParameters];
    v73 = nw_parameters_copy_preferred_netagent_types(v72);

    if (v71)
    {
      if (v73)
      {
        v74 = xpc_array_get_count(v71);
        if (v74)
        {
          v75 = v74;
          for (k = 0; k != v75; ++k)
          {
            v77 = xpc_array_get_string(v71, k);
            v78 = xpc_array_get_string(v73, k);
            if (v77)
            {
              v79 = v78;
              if (v78)
              {
                v80 = objc_alloc_init(NWPBAgentClass);
                v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v77];
                if (v80)
                {
                  objc_storeStrong(&v80->_domain, v81);
                }

                v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v79];
                if (v80)
                {
                  objc_storeStrong(&v80->_type, v82);
                }

                v83 = v80;
                if (v3)
                {
                  preferredAgents = v3->_preferredAgents;
                  if (!preferredAgents)
                  {
                    v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v86 = v3->_preferredAgents;
                    v3->_preferredAgents = v85;

                    preferredAgents = v3->_preferredAgents;
                  }

                  [(NSMutableArray *)preferredAgents addObject:v83];
                }
              }
            }
          }
        }
      }
    }
  }

  v87 = [(NWParameters *)self internalParameters];
  has_prohibited_interfaces = nw_parameters_has_prohibited_interfaces(v87);

  if (has_prohibited_interfaces)
  {
    v89 = [(NWParameters *)self internalParameters];
    v90 = nw_parameters_copy_prohibited_interfaces(v89);

    if (v90)
    {
      v91 = xpc_array_get_count(v90);
      if (v91)
      {
        v92 = v91;
        for (m = 0; m != v92; ++m)
        {
          v94 = xpc_array_get_value(v90, m);
          v95 = nw_interface_create_from_dictionary(v94);

          if (v95)
          {
            v96 = [[NWInterface alloc] initWithInterface:v95];
            v97 = [(NWInterface *)v96 createProtocolBufferObject];
            if (v3)
            {
              prohibitedInterfaces = v3->_prohibitedInterfaces;
              if (!prohibitedInterfaces)
              {
                v99 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v100 = v3->_prohibitedInterfaces;
                v3->_prohibitedInterfaces = v99;

                prohibitedInterfaces = v3->_prohibitedInterfaces;
              }

              [(NSMutableArray *)prohibitedInterfaces addObject:v97];
            }
          }
        }
      }
    }
  }

  v101 = [(NWParameters *)self internalParameters];
  has_prohibited_interface_types = nw_parameters_has_prohibited_interface_types(v101);

  if (has_prohibited_interface_types)
  {
    v103 = [(NWParameters *)self internalParameters];
    v104 = nw_parameters_copy_prohibited_interface_types(v103);

    if (v104)
    {
      v105 = xpc_array_get_count(v104);
      if (v105)
      {
        v106 = v105;
        for (n = 0; n != v106; ++n)
        {
          xpc_array_get_uint64(v104, n);
          if (v3)
          {
            PBRepeatedInt32Add();
          }
        }
      }
    }
  }

  v108 = [(NWParameters *)self internalParameters];
  has_prohibited_interface_subtypes = nw_parameters_has_prohibited_interface_subtypes(v108);

  if (has_prohibited_interface_subtypes)
  {
    v110 = [(NWParameters *)self internalParameters];
    v111 = nw_parameters_copy_prohibited_interface_subtypes(v110);

    if (v111)
    {
      v112 = xpc_array_get_count(v111);
      if (v112)
      {
        v113 = v112;
        for (ii = 0; ii != v113; ++ii)
        {
          xpc_array_get_uint64(v111, ii);
          if (v3)
          {
            PBRepeatedInt32Add();
          }
        }
      }
    }
  }

  return v3;
}

- (void)setMetadata:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = xpc_data_create([v4 bytes], objc_msgSend(v4, "length"));
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NWParameters *)self internalParameters];
  nw_parameters_set_metadata(v6, v5);
}

- (NSData)metadata
{
  v2 = [(NWParameters *)self internalParameters];
  v3 = nw_parameters_copy_metadata(v2);

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    bytes_ptr = xpc_data_get_bytes_ptr(v3);
    v6 = [v4 initWithBytes:bytes_ptr length:xpc_data_get_length(v3)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(NWParameters *)self internalParameters];
  v3 = v2;
  if (v2)
  {
    hash = _nw_parameters_get_hash(v2);
  }

  else
  {
    hash = 0;
  }

  return hash;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NWParameters *)self internalParameters];
    v7 = [v5 internalParameters];

    is_equal = v6 == v7;
    if (v6 != v7 && v6 && v7)
    {
      is_equal = _nw_parameters_is_equal(v6, v7);
    }
  }

  else
  {
    is_equal = 0;
  }

  return is_equal;
}

- (id)copyRequiredAgentsDescription
{
  v3 = [(NWParameters *)self internalParameters];
  v4 = nw_parameters_copy_required_netagent_domains(v3);

  if (v4)
  {
    v5 = [(NWParameters *)self internalParameters];
    v6 = nw_parameters_copy_required_netagent_types(v5);

    if (v6)
    {
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x2020000000;
      v16 = 0;
      v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __45__NWParameters_copyRequiredAgentsDescription__block_invoke;
      applier[3] = &unk_1E6A33FD8;
      v12 = v6;
      v8 = v7;
      v13 = v8;
      v14 = v15;
      xpc_array_apply(v4, applier);
      if ([v8 length])
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v8];
      }

      else
      {
        v9 = 0;
      }

      _Block_object_dispose(v15, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __45__NWParameters_copyRequiredAgentsDescription__block_invoke(uint64_t a1, size_t a2, void *a3)
{
  v5 = a3;
  Class = object_getClass(v5);
  v7 = MEMORY[0x1E69E9F10];
  if (Class == MEMORY[0x1E69E9F10])
  {
    v8 = xpc_array_get_value(*(a1 + 32), a2);
    if (object_getClass(v8) == v7)
    {
      string_ptr = xpc_string_get_string_ptr(v5);
      v10 = xpc_string_get_string_ptr(v8);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v11 = ", ";
      }

      else
      {
        v11 = "";
      }

      [*(a1 + 40) appendFormat:@"%s%s:%s", v11, string_ptr, v10];
    }
  }

  return 1;
}

- (BOOL)hasNonEmptyProxyConfiguration
{
  v2 = [(NWParameters *)self internalParameters];
  has_custom_proxy_configs = nw_parameters_has_custom_proxy_configs(v2);

  return has_custom_proxy_configs;
}

- (BOOL)hasProhibitedNetworkAgents
{
  v2 = [(NWParameters *)self internalParameters];
  has_prohibited_netagents = nw_parameters_has_prohibited_netagents(v2);

  return has_prohibited_netagents;
}

- (BOOL)hasPreferredNetworkAgents
{
  v2 = [(NWParameters *)self internalParameters];
  has_preferred_netagents = nw_parameters_has_preferred_netagents(v2);

  return has_preferred_netagents;
}

- (BOOL)hasRequiredNetworkAgents
{
  v2 = [(NWParameters *)self internalParameters];
  has_required_netagents = nw_parameters_has_required_netagents(v2);

  return has_required_netagents;
}

- (void)setDiscretionary:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_discretionary(v4, a3);
}

- (BOOL)isDiscretionary
{
  v2 = [(NWParameters *)self internalParameters];
  discretionary = nw_parameters_get_discretionary(v2);

  return discretionary;
}

- (void)setProhibitFallback:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_no_fallback(v4, a3);
}

- (BOOL)prohibitFallback
{
  v2 = [(NWParameters *)self internalParameters];
  no_fallback = nw_parameters_get_no_fallback(v2);

  return no_fallback;
}

- (BOOL)isValid
{
  v2 = [(NWParameters *)self internalParameters];
  v3 = nw_parameters_are_valid(v2);

  return v3;
}

uint64_t __34__NWParameters_protocolTransforms__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [[NWProtocolTransform alloc] initWithCTransform:v4];

  [v3 addObject:v5];
  return 1;
}

- (void)setProtocolTransforms:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _nw_array_create();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) internalTransform];
        v12 = v11;
        if (v5 && v11)
        {
          _nw_array_append(v5, v11);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = [(NWParameters *)self internalParameters];
  nw_parameters_set_transform_array(v13, v5);
}

- (void)setInitialDataPayload:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [v4 _createDispatchData];
  if (v6)
  {
LABEL_8:
    v12 = [(NWParameters *)self internalParameters];
    nw_parameters_set_initial_data_payload(v12, v6);

    goto LABEL_9;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446210;
  v21 = "[NWParameters setInitialDataPayload:]";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v8, &type, &v18))
  {
    goto LABEL_20;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v21 = "[NWParameters setInitialDataPayload:]";
      v11 = "%{public}s NWCreateDispatchDataFromNSData failed";
LABEL_17:
      v16 = v9;
      v17 = v10;
LABEL_18:
      _os_log_impl(&dword_181A37000, v16, v17, v11, buf, 0xCu);
    }
  }

  else
  {
    if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v21 = "[NWParameters setInitialDataPayload:]";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s NWCreateDispatchDataFromNSData failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (!v15)
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v21 = "[NWParameters setInitialDataPayload:]";
      v11 = "%{public}s NWCreateDispatchDataFromNSData failed, no backtrace";
      v16 = v9;
      v17 = v14;
      goto LABEL_18;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v21 = "[NWParameters setInitialDataPayload:]";
      v11 = "%{public}s NWCreateDispatchDataFromNSData failed, backtrace limit exceeded";
      goto LABEL_17;
    }
  }

LABEL_19:

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_9:
}

- (void)setSourceApplicationWithBundleID:(id)a3
{
  v5 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_source_application_by_bundle_id_internal(v4, [v5 UTF8String]);
}

- (void)setSourceApplicationWithToken:(id *)a3
{
  v5 = [(NWParameters *)self internalParameters];
  v4 = *&a3->var0[4];
  v6[0] = *a3->var0;
  v6[1] = v4;
  nw_parameters_set_source_application(v5, v6);
}

- (void)setMaximumSSLProtocolVersion:(unint64_t)a3
{
  [(NWParameters *)self tlsVersionWithSSLProtocol:?];
  [(NWParameters *)self setMaximumSSLProtocolVersionInternal:a3];
  v5 = [(NWParameters *)self internalParameters];
  nw_parameters_set_maximum_tls_protocol_version(v5);
}

- (void)setMinimumSSLProtocolVersion:(unint64_t)a3
{
  [(NWParameters *)self tlsVersionWithSSLProtocol:?];
  [(NWParameters *)self setMinimumSSLProtocolVersionInternal:a3];
  v5 = [(NWParameters *)self internalParameters];
  nw_parameters_set_minimum_tls_protocol_version(v5);
}

- (unsigned)tlsVersionWithSSLProtocol:(int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = "unknown";
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        return 0;
      }

      if (a3 != 1)
      {
LABEL_17:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = 136446722;
          v8 = "[NWParameters tlsVersionWithSSLProtocol:]";
          v9 = 2082;
          v10 = v3;
          v11 = 1024;
          v12 = a3;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Parameters have %{public}s SSLProtocol %d, ignoring", &v7, 0x1Cu);
        }

        return 0;
      }
    }

    else
    {
      if (a3 == 2)
      {
        return 768;
      }

      if (a3 != 3)
      {
        return 769;
      }
    }

LABEL_16:
    v3 = "deprecated";
    goto LABEL_17;
  }

  if (a3 <= 7)
  {
    if ((a3 - 5) >= 2)
    {
      if (a3 == 7)
      {
        return 770;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a3 == 8)
  {
    return 771;
  }

  if (a3 != 9)
  {
    if (a3 == 10)
    {
      return 772;
    }

    goto LABEL_17;
  }

  return -257;
}

- (void)setKeepAliveOffload:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_keepalive_offload(v4, a3);
}

- (BOOL)keepAliveOffload
{
  v2 = [(NWParameters *)self internalParameters];
  keepalive_offload = nw_parameters_get_keepalive_offload(v2);

  return keepalive_offload;
}

- (void)setKeepAliveInterval:(unint64_t)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_keepalive_interval(v4, a3);
}

- (unint64_t)keepAliveInterval
{
  v2 = [(NWParameters *)self internalParameters];
  keepalive_interval = nw_parameters_get_keepalive_interval(v2);

  return keepalive_interval;
}

- (void)setKeepAliveIdleTime:(unint64_t)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_keepalive_idle_time(v4, a3);
}

- (unint64_t)keepAliveIdleTime
{
  v2 = [(NWParameters *)self internalParameters];
  keepalive_idle_time = nw_parameters_get_keepalive_idle_time(v2);

  return keepalive_idle_time;
}

- (void)setKeepAlive:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_keepalive_enabled(v4, a3);
}

- (BOOL)keepAlive
{
  v2 = [(NWParameters *)self internalParameters];
  keepalive_enabled = nw_parameters_get_keepalive_enabled(v2);

  return keepalive_enabled;
}

- (void)setSSLCipherSuites:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NWParameters *)self setSSLCipherSuitesInternal:v4];
  if (![v4 count])
  {
    v5 = [(NWParameters *)self internalParameters];
    nw_parameters_set_ssl_cipher_suites(v5, 0, 0);
LABEL_13:

    return;
  }

  v5 = [v4 allObjects];
  v6 = [v5 count];
  if (!v6)
  {
    v16 = __nwlog_obj();
    os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v21 = "[NWParameters setSSLCipherSuites:]";
    LODWORD(v19) = 12;
    v18 = buf;
    v17 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v17))
    {
      goto LABEL_16;
    }

    free(v17);
  }

  v7 = malloc_type_calloc(2uLL, v6, 0xD001139FuLL);
  if (v7)
  {
    v8 = v7;
    if (v6)
    {
      for (i = 0; i != v6; v8[i++] = v11)
      {
        v10 = [v5 objectAtIndexedSubscript:{i, v18, v19}];
        v11 = [v10 unsignedIntValue];
      }
    }

    v12 = [(NWParameters *)self internalParameters:v18];
    nw_parameters_set_ssl_cipher_suites(v12, v8, v6);

    free(v8);
    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v21 = "[NWParameters setSSLCipherSuites:]";
  v22 = 2048;
  v23 = 2;
  v24 = 2048;
  v25 = v6;
  v14 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v14))
  {
    free(v14);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "[NWParameters setSSLCipherSuites:]";
      v22 = 1024;
      LODWORD(v23) = v6;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s Could not allocate array for %u SSL cipher suites", buf, 0x12u);
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
}

- (void)setTLSSessionID:(id)a3
{
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (v4)
  {
    v7 = v4;
    v5 = object_getClass(v4) == MEMORY[0x1E69E9E70];
    v4 = v7;
    if (v5)
    {
      v6 = [(NWParameters *)self internalParameters];
      nw_parameters_set_tls_session_id(v6);

      v4 = v7;
    }
  }
}

- (void)setEnableTLS:(BOOL)a3
{
  v3 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_tls(v4, v3);
}

- (void)setNoProxy:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_no_proxy(v4, a3);
}

- (BOOL)noProxy
{
  v2 = [(NWParameters *)self internalParameters];
  no_proxy = nw_parameters_get_no_proxy(v2);

  return no_proxy;
}

- (void)setIndefinite:(BOOL)a3
{
  v3 = [(NWParameters *)self internalParameters];
  nw_parameters_set_indefinite(v3);
}

- (BOOL)indefinite
{
  v2 = [(NWParameters *)self internalParameters];
  indefinite = nw_parameters_get_indefinite(v2);

  return indefinite;
}

- (void)setMultipathForceEnable:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_multipath_force_enable(v4, a3);
}

- (BOOL)multipathForceEnable
{
  v2 = [(NWParameters *)self internalParameters];
  multipath_force_enable = nw_parameters_get_multipath_force_enable(v2);

  return multipath_force_enable;
}

- (void)setMultipathService:(int)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_multipath_service(v4, a3);
}

- (void)setMultipath:(BOOL)a3
{
  v3 = a3;
  v4 = [(NWParameters *)self internalParameters];
  v6 = v4;
  if (v3)
  {
    v5 = nw_multipath_service_interactive;
  }

  else
  {
    v5 = nw_multipath_service_disabled;
  }

  nw_parameters_set_multipath_service(v4, v5);
}

- (BOOL)multipath
{
  v2 = [(NWParameters *)self internalParameters];
  multipath = nw_parameters_get_multipath(v2);

  return multipath;
}

- (void)setResolvePTR:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_resolve_ptr(v4, a3);
}

- (void)setUseP2P:(BOOL)a3
{
  v3 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_use_p2p(v4, v3);
}

- (void)setUseAWDL:(BOOL)a3
{
  v3 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_use_awdl(v4, v3);
}

- (void)setIgnoreResolverStats:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_ignore_resolver_stats(v4, a3);
}

- (BOOL)ignoreResolverStats
{
  v2 = [(NWParameters *)self internalParameters];
  ignore_resolver_stats = nw_parameters_get_ignore_resolver_stats(v2);

  return ignore_resolver_stats;
}

- (void)setUseLongOutstandingQueries:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_use_long_outstanding_queries(v4, a3);
}

- (void)setDisableNagleAlgorithm:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_no_delay(v4, a3);
}

- (void)setReduceBuffering:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_reduce_buffering(v4, a3);
}

- (BOOL)reduceBuffering
{
  v2 = [(NWParameters *)self internalParameters];
  reduce_buffering = nw_parameters_get_reduce_buffering(v2);

  return reduce_buffering;
}

- (void)setFastOpenForceEnable:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_fast_open_force_enable(v4, a3);
}

- (BOOL)fastOpenForceEnable
{
  v2 = [(NWParameters *)self internalParameters];
  fast_open_force_enable = nw_parameters_get_fast_open_force_enable(v2);

  return fast_open_force_enable;
}

- (void)setEnableTFONoCookie:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_tfo_no_cookie(v4, a3);
}

- (BOOL)enableTFONoCookie
{
  v2 = [(NWParameters *)self internalParameters];
  tfo_no_cookie = nw_parameters_get_tfo_no_cookie(v2);

  return tfo_no_cookie;
}

- (void)setEnableTFO:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_tfo(v4, a3);
}

- (void)avoidNetworkAgentWithDomain:(id)a3 type:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(NWParameters *)self internalParameters];
  v8 = nw_parameters_copy_avoided_netagent_domains(v7);

  v9 = [(NWParameters *)self internalParameters];
  v10 = nw_parameters_copy_avoided_netagent_types(v9);

  if (!v8 || !v10)
  {
    v11 = xpc_array_create(0, 0);

    v12 = xpc_array_create(0, 0);
    v10 = v12;
    v8 = v11;
  }

  v13 = [v18 UTF8String];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = "";
  }

  xpc_array_set_string(v8, 0xFFFFFFFFFFFFFFFFLL, v14);
  v15 = [v6 UTF8String];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = "";
  }

  xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, v16);
  v17 = [(NWParameters *)self internalParameters];
  nw_parameters_set_avoided_netagent_classes(v17, v8, v10);
}

- (void)avoidNetworkAgentWithUUID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(NWParameters *)self internalParameters];
    v6 = nw_parameters_copy_avoided_netagent_uuids(v5);

    if (!v6)
    {
      v6 = xpc_array_create(0, 0);
    }

    *uuid = 0;
    v9 = 0;
    [v4 getUUIDBytes:uuid];
    xpc_array_set_uuid(v6, 0xFFFFFFFFFFFFFFFFLL, uuid);
    v7 = [(NWParameters *)self internalParameters];
    nw_parameters_set_avoided_netagent_uuids(v7, v6);
  }
}

- (void)preferNetworkAgentWithDomain:(id)a3 type:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(NWParameters *)self internalParameters];
  v8 = nw_parameters_copy_preferred_netagent_domains(v7);

  v9 = [(NWParameters *)self internalParameters];
  v10 = nw_parameters_copy_preferred_netagent_types(v9);

  if (!v8 || !v10)
  {
    v11 = xpc_array_create(0, 0);

    v12 = xpc_array_create(0, 0);
    v10 = v12;
    v8 = v11;
  }

  v13 = [v18 UTF8String];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = "";
  }

  xpc_array_set_string(v8, 0xFFFFFFFFFFFFFFFFLL, v14);
  v15 = [v6 UTF8String];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = "";
  }

  xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, v16);
  v17 = [(NWParameters *)self internalParameters];
  nw_parameters_set_preferred_netagent_classes(v17, v8, v10);
}

- (void)preferNetworkAgentWithUUID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(NWParameters *)self internalParameters];
    v6 = nw_parameters_copy_preferred_netagent_uuids(v5);

    if (!v6)
    {
      v6 = xpc_array_create(0, 0);
    }

    *uuid = 0;
    v9 = 0;
    [v4 getUUIDBytes:uuid];
    xpc_array_set_uuid(v6, 0xFFFFFFFFFFFFFFFFLL, uuid);
    v7 = [(NWParameters *)self internalParameters];
    nw_parameters_set_preferred_netagent_uuids(v7, v6);
  }
}

- (void)requireNetworkAgentWithDomain:(id)a3 type:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(NWParameters *)self internalParameters];
  v8 = nw_parameters_copy_required_netagent_domains(v7);

  v9 = [(NWParameters *)self internalParameters];
  v10 = nw_parameters_copy_required_netagent_types(v9);

  if (!v8 || !v10)
  {
    v11 = xpc_array_create(0, 0);

    v12 = xpc_array_create(0, 0);
    v10 = v12;
    v8 = v11;
  }

  v13 = [v18 UTF8String];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = "";
  }

  xpc_array_set_string(v8, 0xFFFFFFFFFFFFFFFFLL, v14);
  v15 = [v6 UTF8String];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = "";
  }

  xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, v16);
  v17 = [(NWParameters *)self internalParameters];
  nw_parameters_set_required_netagent_classes(v17, v8, v10);
}

- (void)requireNetworkAgentWithUUID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(NWParameters *)self internalParameters];
    v6 = nw_parameters_copy_required_netagent_uuids(v5);

    if (!v6)
    {
      v6 = xpc_array_create(0, 0);
    }

    *uuid = 0;
    v9 = 0;
    [v4 getUUIDBytes:uuid];
    xpc_array_set_uuid(v6, 0xFFFFFFFFFFFFFFFFLL, uuid);
    v7 = [(NWParameters *)self internalParameters];
    nw_parameters_set_required_netagent_uuids(v7, v6);
  }
}

- (void)setRequiredCompanionProxyInterfaceType:(int64_t)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_next_hop_required_interface_type(v4, a3);
}

- (void)setRequiredInterfaceSubtype:(int64_t)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_required_interface_subtype(v4, a3);
}

- (int64_t)requiredInterfaceSubtype
{
  v2 = [(NWParameters *)self internalParameters];
  required_interface_subtype = nw_parameters_get_required_interface_subtype(v2);

  return required_interface_subtype;
}

- (void)setRequiredInterfaceType:(int64_t)a3
{
  v3 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_required_interface_type(v4, v3);
}

- (void)setRequiredInterface:(id)a3
{
  v4 = a3;
  parameters = [(NWParameters *)self internalParameters];
  v5 = [v4 internalInterface];

  nw_parameters_require_interface(parameters, v5);
}

- (void)prohibitNetworkAgentsWithDomain:(id)a3 type:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(NWParameters *)self internalParameters];
    v10 = nw_parameters_copy_prohibited_netagent_domains(v9);

    v11 = [(NWParameters *)self internalParameters];
    v12 = nw_parameters_copy_prohibited_netagent_types(v11);

    if (!v10 || !v12)
    {
      v13 = xpc_array_create(0, 0);

      v14 = xpc_array_create(0, 0);
      v12 = v14;
      v10 = v13;
    }

    v15 = [v6 UTF8String];
    if (v15)
    {
      xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, v15);
      goto LABEL_24;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446466;
    v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
    v46 = 2114;
    v47 = v6;
    LODWORD(v40) = 22;
    v38 = buf;
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v17, &type, &v42))
    {
LABEL_22:
      if (v17)
      {
        free(v17);
      }

LABEL_24:
      v26 = [v8 UTF8String];
      if (v26)
      {
        xpc_array_set_string(v12, 0xFFFFFFFFFFFFFFFFLL, v26);
LABEL_42:
        v37 = [(NWParameters *)self internalParameters:v39];
        nw_parameters_set_prohibited_netagent_classes(v37, v10, v12);

        goto LABEL_43;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      *buf = 136446466;
      v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
      v46 = 2114;
      v47 = v8;
      LODWORD(v41) = 22;
      v39 = buf;
      v28 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v42 = 0;
      if (!__nwlog_fault(v28, &type, &v42))
      {
LABEL_40:
        if (v28)
        {
          free(v28);
        }

        goto LABEL_42;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446466;
          v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
          v46 = 2114;
          v47 = v8;
          v31 = "%{public}s Failed to get UTF8String from type %{public}@";
LABEL_37:
          v35 = v29;
          v36 = v30;
LABEL_38:
          _os_log_impl(&dword_181A37000, v35, v36, v31, buf, 0x16u);
        }
      }

      else
      {
        if (v42 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v33 = type;
          v34 = os_log_type_enabled(v29, type);
          if (backtrace_string)
          {
            if (v34)
            {
              *buf = 136446722;
              v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
              v46 = 2114;
              v47 = v8;
              v48 = 2082;
              v49 = backtrace_string;
              _os_log_impl(&dword_181A37000, v29, v33, "%{public}s Failed to get UTF8String from type %{public}@, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
            goto LABEL_40;
          }

          if (!v34)
          {
            goto LABEL_39;
          }

          *buf = 136446466;
          v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
          v46 = 2114;
          v47 = v8;
          v31 = "%{public}s Failed to get UTF8String from type %{public}@, no backtrace";
          v35 = v29;
          v36 = v33;
          goto LABEL_38;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446466;
          v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
          v46 = 2114;
          v47 = v8;
          v31 = "%{public}s Failed to get UTF8String from type %{public}@, backtrace limit exceeded";
          goto LABEL_37;
        }
      }

LABEL_39:

      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446466;
        v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
        v46 = 2114;
        v47 = v6;
        v20 = "%{public}s Failed to get UTF8String from domain %{public}@";
LABEL_19:
        v24 = v18;
        v25 = v19;
LABEL_20:
        _os_log_impl(&dword_181A37000, v24, v25, v20, buf, 0x16u);
      }
    }

    else
    {
      if (v42 == 1)
      {
        v21 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(v18, type);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446722;
            v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
            v46 = 2114;
            v47 = v6;
            v48 = 2082;
            v49 = v21;
            _os_log_impl(&dword_181A37000, v18, v22, "%{public}s Failed to get UTF8String from domain %{public}@, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v21);
          goto LABEL_22;
        }

        if (!v23)
        {
          goto LABEL_21;
        }

        *buf = 136446466;
        v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
        v46 = 2114;
        v47 = v6;
        v20 = "%{public}s Failed to get UTF8String from domain %{public}@, no backtrace";
        v24 = v18;
        v25 = v22;
        goto LABEL_20;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446466;
        v45 = "[NWParameters prohibitNetworkAgentsWithDomain:type:]";
        v46 = 2114;
        v47 = v6;
        v20 = "%{public}s Failed to get UTF8String from domain %{public}@, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_43:
}

- (void)prohibitNetworkAgentWithUUID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(NWParameters *)self internalParameters];
    v6 = nw_parameters_copy_prohibited_netagent_uuids(v5);

    if (!v6)
    {
      v6 = xpc_array_create(0, 0);
    }

    *uuid = 0;
    v9 = 0;
    [v4 getUUIDBytes:uuid];
    xpc_array_set_uuid(v6, 0xFFFFFFFFFFFFFFFFLL, uuid);
    v7 = [(NWParameters *)self internalParameters];
    nw_parameters_set_prohibited_netagent_uuids(v7, v6);
  }
}

- (void)prohibitInterface:(id)a3
{
  v9 = a3;
  v4 = [(NWParameters *)self internalParameters];
  v5 = nw_parameters_copy_prohibited_interfaces(v4);

  if (!v5)
  {
    v5 = xpc_array_create(0, 0);
  }

  v6 = [v9 internalInterface];
  v7 = nw_interface_copy_dictionary(v6);

  if (v7)
  {
    xpc_array_set_value(v5, 0xFFFFFFFFFFFFFFFFLL, v7);
    v8 = [(NWParameters *)self internalParameters];
    nw_parameters_set_prohibited_interfaces(v8, v5);
  }
}

- (void)prohibitInterfaceSubtype:(int64_t)a3
{
  v5 = [(NWParameters *)self internalParameters];
  objectsa = nw_parameters_copy_prohibited_interface_subtypes(v5);

  v6 = objectsa;
  if (!objectsa)
  {
    v6 = xpc_array_create(0, 0);
  }

  objects = v6;
  xpc_array_set_uint64(v6, 0xFFFFFFFFFFFFFFFFLL, a3);
  v7 = [(NWParameters *)self internalParameters];
  nw_parameters_set_prohibited_interface_subtypes(v7, objects);
}

- (void)prohibitInterfaceType:(int64_t)a3
{
  v5 = [(NWParameters *)self internalParameters];
  objectsa = nw_parameters_copy_prohibited_interface_types(v5);

  v6 = objectsa;
  if (!objectsa)
  {
    v6 = xpc_array_create(0, 0);
  }

  objects = v6;
  xpc_array_set_uint64(v6, 0xFFFFFFFFFFFFFFFFLL, a3);
  v7 = [(NWParameters *)self internalParameters];
  nw_parameters_set_prohibited_interface_types(v7, objects);
}

- (BOOL)prohibitCellular
{
  v2 = [(NWParameters *)self internalParameters];
  prohibit_cellular = nw_parameters_get_prohibit_cellular(v2);

  return prohibit_cellular;
}

- (void)setProhibitRoaming:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_prohibit_roaming(v4, a3);
}

- (void)setProhibitConstrainedPaths:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_prohibit_constrained(v4, a3);
}

- (void)setProhibitExpensivePaths:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_prohibit_expensive(v4, a3);
}

- (void)setProxyConfiguration:(id)a3
{
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (v4)
  {
    v7 = v4;
    v5 = object_getClass(v4) == MEMORY[0x1E69E9E80];
    v4 = v7;
    if (v5)
    {
      v6 = [(NWParameters *)self internalParameters];
      nw_parameters_set_proxy_configuration(v6, v7);

      v4 = v7;
    }
  }
}

- (void)setUrl:(id)a3
{
  v5 = [a3 absoluteString];
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_url(v4, [v5 UTF8String]);
}

- (void)setReuseLocalAddress:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_reuse_local_address(v4, a3);
}

- (void)setLocalAddress:(id)a3
{
  v4 = a3;
  parameters = [(NWParameters *)self internalParameters];
  v5 = [v4 internalEndpoint];

  nw_parameters_set_local_endpoint(parameters, v5);
}

- (NWAddressEndpoint)localAddress
{
  v2 = [(NWParameters *)self internalParameters];
  v3 = nw_parameters_copy_local_endpoint(v2);

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

- (void)setRequiredAddressFamily:(unsigned __int8)a3
{
  v3 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_required_address_family(v4, v3);
}

- (void)setParentID:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  v4 = a3;
  uuid_clear(uu);
  [v4 getUUIDBytes:uu];

  v5 = [(NWParameters *)self internalParameters];
  nw_parameters_set_parent_id(v5, uu);
}

- (NSArray)parentIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NWParameters *)self internalParameters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__NWParameters_parentIDs__block_invoke;
  v7[3] = &unk_1E6A3A500;
  v5 = v3;
  v8 = v5;
  nw_parameters_iterate_parent_ids(v4, v7);

  return v5;
}

uint64_t __25__NWParameters_parentIDs__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2];
  [v2 addObject:v3];

  return 1;
}

- (NSUUID)parentID
{
  v8 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v3 = [(NWParameters *)self internalParameters];
  nw_parameters_get_parent_id(v3, uu);

  is_null = uuid_is_null(uu);
  v5 = 0;
  if (!is_null)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
  }

  return v5;
}

- (BOOL)copyEffectiveAuditToken:(id *)a3
{
  v4 = [(NWParameters *)self internalParameters];
  LOBYTE(a3) = nw_parameters_get_effective_audit_token(v4, a3);

  return a3;
}

- (void)setEffectiveBundleID:(id)a3
{
  v5 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_effective_bundle_id(v4, [v5 UTF8String]);
}

- (void)setEffectiveProcessUUID:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  v4 = a3;
  uuid_clear(uu);
  [v4 getUUIDBytes:uu];

  v5 = [(NWParameters *)self internalParameters];
  nw_parameters_set_e_proc_uuid(v5, uu);
}

- (BOOL)hasDelegatedProcessUUID
{
  v2 = [(NWParameters *)self internalParameters];
  has_delegated_proc_uuid = nw_parameters_has_delegated_proc_uuid(v2);

  return has_delegated_proc_uuid;
}

- (void)setProcessUUID:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  v4 = a3;
  uuid_clear(uu);
  [v4 getUUIDBytes:uu];

  v5 = [(NWParameters *)self internalParameters];
  nw_parameters_set_proc_uuid(v5, uu);
}

- (void)setUid:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_uid(v4, v3);
}

- (BOOL)hasDelegatedPIDForOriginatingPID:(int)a3
{
  v4 = [(NWParameters *)self internalParameters];
  LOBYTE(a3) = nw_parameters_has_delegated_proc_pid(v4, a3);

  return a3;
}

- (void)setPid:(int)a3
{
  v3 = *&a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_pid(v4, v3);
}

- (void)setTrafficClass:(unint64_t)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_traffic_class(v4, a3);
}

- (void)setDataMode:(unint64_t)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_data_mode(v4, a3);
}

- (void)setAccount:(id)a3
{
  v5 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_account_id(v4, [v5 UTF8String]);
}

- (BOOL)allowSocketAccess
{
  v2 = [(NWParameters *)self internalParameters];
  allow_socket_access = nw_parameters_get_allow_socket_access(v2);

  return allow_socket_access;
}

- (void)setAllowSocketAccess:(BOOL)a3
{
  v3 = a3;
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_allow_socket_access(v4, v3);
}

- (void)setTrustInvalidCertificates:(BOOL)a3
{
  v4 = [(NWParameters *)self internalParameters];
  nw_parameters_set_should_trust_invalid_certificates(v4, a3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NWParameters allocWithZone:a3];
  v5 = [(NWParameters *)self internalParameters];
  v6 = _nw_parameters_copy(v5);
  v7 = [(NWParameters *)v4 initWithParameters:v6];

  return v7;
}

- (NSString)privateDescription
{
  v2 = [(NWParameters *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = [(NWParameters *)self processUUID];
  [v7 appendPrettyObject:v8 withName:@"processUUID" indent:v5 showFullContent:v4];

  v9 = [(NWParameters *)self effectiveProcessUUID];
  [v7 appendPrettyObject:v9 withName:@"effectiveProcessUUID" indent:v5 showFullContent:v4];

  v10 = [(NWParameters *)self effectiveBundleID];
  [v7 appendPrettyObject:v10 withName:@"effectiveBundleID" indent:v5 showFullContent:v4];

  [v7 appendPrettyInt:-[NWParameters pid](self withName:"pid") indent:{@"pid", v5}];
  [v7 appendPrettyInt:-[NWParameters uid](self withName:"uid") indent:{@"uid", v5}];
  v11 = [(NWParameters *)self account];
  [v7 appendPrettyObject:v11 withName:@"account" indent:v5 showFullContent:v4];

  v12 = [(NWParameters *)self url];
  [v7 appendPrettyObject:v12 withName:@"url" indent:v5 showFullContent:v4];

  v13 = [(NWParameters *)self sanitizedURL];
  [v7 appendPrettyObject:v13 withName:@"sanitizedURL" indent:v5 showFullContent:v4];

  if ([(NWParameters *)self dataMode]== 1)
  {
    v14 = @"Datagram";
  }

  else
  {
    if ([(NWParameters *)self dataMode]!= 2)
    {
      goto LABEL_6;
    }

    v14 = @"Stream";
  }

  [v7 appendPrettyObject:v14 withName:@"dataMode" indent:v5 showFullContent:v4];
LABEL_6:
  v15 = [(NWParameters *)self internalParameters];
  is_known_tracker = nw_parameters_get_is_known_tracker(v15);

  if (is_known_tracker)
  {
    [v7 appendPrettyBOOL:1 withName:@"knownTracker" indent:v5];
  }

  v17 = [(NWParameters *)self internalParameters];
  is_third_party_web_content = nw_parameters_is_third_party_web_content(v17);

  if (is_third_party_web_content)
  {
    [v7 appendPrettyBOOL:1 withName:@"thirdPartyWebContent" indent:v5];
  }

  v19 = [(NWParameters *)self internalParameters];
  is_approved_app_domain = nw_parameters_is_approved_app_domain(v19);

  if (is_approved_app_domain)
  {
    [v7 appendPrettyBOOL:1 withName:@"approvedAppDomain" indent:v5];
  }

  v21 = [(NWParameters *)self protocolTransforms];
  [v7 appendPrettyObject:v21 withName:@"protocolTransforms" indent:v5 showFullContent:v4];

  if ([(NWParameters *)self isDryRun])
  {
    [v7 appendPrettyBOOL:-[NWParameters isDryRun](self withName:"isDryRun") indent:{@"isDryRun", v5}];
  }

  if ([(NWParameters *)self trafficClass])
  {
    [v7 appendPrettyInt:-[NWParameters trafficClass](self withName:"trafficClass") indent:{@"trafficClass", v5}];
  }

  if ([(NWParameters *)self ipProtocol])
  {
    [v7 appendPrettyInt:-[NWParameters ipProtocol](self withName:"ipProtocol") indent:{@"ipProtocol", v5}];
  }

  if ([(NWParameters *)self transportProtocol])
  {
    [v7 appendPrettyInt:-[NWParameters transportProtocol](self withName:"transportProtocol") indent:{@"transportProtocol", v5}];
  }

  if ([(NWParameters *)self requiredAddressFamily])
  {
    [v7 appendPrettyInt:-[NWParameters requiredAddressFamily](self withName:"requiredAddressFamily") indent:{@"requiredAddressFamily", v5}];
  }

  v22 = [(NWParameters *)self internalParameters];
  v23 = nw_parameters_copy_local_endpoint(v22);

  if (v23)
  {
    v24 = [(NWParameters *)self localAddress];
    [v7 appendPrettyObject:v24 withName:@"localAddress" indent:v5 showFullContent:v4];
  }

  if ([(NWParameters *)self reuseLocalAddress])
  {
    [v7 appendPrettyBOOL:-[NWParameters reuseLocalAddress](self withName:"reuseLocalAddress") indent:{@"reuseLocalAddress", v5}];
  }

  v25 = [(NWParameters *)self requiredInterface];
  [v7 appendPrettyObject:v25 withName:@"requiredInterface" indent:v5 showFullContent:v4];

  if ([(NWParameters *)self requiredInterfaceType])
  {
    v26 = [NWInterface descriptionForType:[(NWParameters *)self requiredInterfaceType]];
    [v7 appendPrettyObject:v26 withName:@"requiredInterfaceType" indent:v5 showFullContent:1];
  }

  if ([(NWParameters *)self requiredCompanionProxyInterfaceType])
  {
    v27 = [NWInterface descriptionForType:[(NWParameters *)self requiredCompanionProxyInterfaceType]];
    [v7 appendPrettyObject:v27 withName:@"requiredCompanionInterfaceType" indent:v5 showFullContent:1];
  }

  v28 = [(NWParameters *)self internalParameters];
  has_prohibited_interface_types = nw_parameters_has_prohibited_interface_types(v28);

  if (has_prohibited_interface_types)
  {
    v30 = [(NWParameters *)self internalParameters];
    v31 = nw_parameters_copy_prohibited_interface_types(v30);

    if (v31)
    {
      v32 = MEMORY[0x1865DFA50](v31);
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v32];
      [v7 appendPrettyObject:v33 withName:@"prohibitedInterfaceTypes" indent:v5 showFullContent:1];

      if (v32)
      {
        free(v32);
      }
    }
  }

  v34 = [(NWParameters *)self internalParameters];
  has_prohibited_interface_subtypes = nw_parameters_has_prohibited_interface_subtypes(v34);

  if (has_prohibited_interface_subtypes)
  {
    v36 = [(NWParameters *)self internalParameters];
    v37 = nw_parameters_copy_prohibited_interface_subtypes(v36);

    if (v37)
    {
      v38 = MEMORY[0x1865DFA50](v37);
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v38];
      [v7 appendPrettyObject:v39 withName:@"prohibitedInterfaceSubtypes" indent:v5 showFullContent:1];

      if (v38)
      {
        free(v38);
      }
    }
  }

  v40 = [(NWParameters *)self internalParameters];
  has_preferred_interface_subtypes = nw_parameters_has_preferred_interface_subtypes(v40);

  if (has_preferred_interface_subtypes)
  {
    v42 = [(NWParameters *)self internalParameters];
    v43 = nw_parameters_copy_preferred_interface_subtypes(v42);

    if (v43)
    {
      v44 = MEMORY[0x1865DFA50](v43);
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v44];
      [v7 appendPrettyObject:v45 withName:@"preferredInterfaceSubtypes" indent:v5 showFullContent:1];

      if (v44)
      {
        free(v44);
      }
    }
  }

  v46 = [(NWParameters *)self internalParameters];
  has_preferred_netagents = nw_parameters_has_preferred_netagents(v46);

  if (has_preferred_netagents)
  {
    v48 = [(NWParameters *)self internalParameters];
    v49 = nw_parameters_copy_preferred_netagent_domains(v48);

    if (v49)
    {
      v50 = MEMORY[0x1865DFA50](v49);
      v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v50];
      [v7 appendPrettyObject:v51 withName:@"preferredNetworkAgentDomains" indent:v5 showFullContent:1];

      if (v50)
      {
        free(v50);
      }
    }

    v52 = [(NWParameters *)self internalParameters];
    v53 = nw_parameters_copy_preferred_netagent_types(v52);

    if (v53)
    {
      v54 = MEMORY[0x1865DFA50](v53);
      v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v54];
      [v7 appendPrettyObject:v55 withName:@"preferredNetworkAgentTypes" indent:v5 showFullContent:1];

      if (v54)
      {
        free(v54);
      }
    }

    v56 = [(NWParameters *)self internalParameters];
    v57 = nw_parameters_copy_preferred_netagent_uuids(v56);

    if (v57)
    {
      v58 = MEMORY[0x1865DFA50](v57);
      v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v58];
      [v7 appendPrettyObject:v59 withName:@"preferredNetworkAgentUUIDs" indent:v5 showFullContent:1];

      if (v58)
      {
        free(v58);
      }
    }
  }

  v60 = [(NWParameters *)self internalParameters];
  has_required_netagents = nw_parameters_has_required_netagents(v60);

  if (has_required_netagents)
  {
    v62 = [(NWParameters *)self internalParameters];
    v63 = nw_parameters_copy_required_netagent_domains(v62);

    if (v63)
    {
      v64 = MEMORY[0x1865DFA50](v63);
      v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v64];
      [v7 appendPrettyObject:v65 withName:@"requiredNetworkAgentDomains" indent:v5 showFullContent:1];

      if (v64)
      {
        free(v64);
      }
    }

    v66 = [(NWParameters *)self internalParameters];
    v67 = nw_parameters_copy_required_netagent_types(v66);

    if (v67)
    {
      v68 = MEMORY[0x1865DFA50](v67);
      v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v68];
      [v7 appendPrettyObject:v69 withName:@"requiredNetworkAgentTypes" indent:v5 showFullContent:1];

      if (v68)
      {
        free(v68);
      }
    }

    v70 = [(NWParameters *)self internalParameters];
    v71 = nw_parameters_copy_required_netagent_uuids(v70);

    if (v71)
    {
      v72 = MEMORY[0x1865DFA50](v71);
      v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v72];
      [v7 appendPrettyObject:v73 withName:@"requiredNetworkAgentUUIDs" indent:v5 showFullContent:1];

      if (v72)
      {
        free(v72);
      }
    }
  }

  v74 = [(NWParameters *)self internalParameters];
  has_prohibited_netagents = nw_parameters_has_prohibited_netagents(v74);

  if (has_prohibited_netagents)
  {
    v76 = [(NWParameters *)self internalParameters];
    v77 = nw_parameters_copy_prohibited_netagent_domains(v76);

    if (v77)
    {
      v78 = MEMORY[0x1865DFA50](v77);
      v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v78];
      [v7 appendPrettyObject:v79 withName:@"prohibitedNetworkAgentDomains" indent:v5 showFullContent:1];

      if (v78)
      {
        free(v78);
      }
    }

    v80 = [(NWParameters *)self internalParameters];
    v81 = nw_parameters_copy_prohibited_netagent_types(v80);

    if (v81)
    {
      v82 = MEMORY[0x1865DFA50](v81);
      v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v82];
      [v7 appendPrettyObject:v83 withName:@"prohibitedNetworkAgentTypes" indent:v5 showFullContent:1];

      if (v82)
      {
        free(v82);
      }
    }

    v84 = [(NWParameters *)self internalParameters];
    v85 = nw_parameters_copy_prohibited_netagent_uuids(v84);

    if (v85)
    {
      v86 = MEMORY[0x1865DFA50](v85);
      v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v86];
      [v7 appendPrettyObject:v87 withName:@"prohibitedNetworkAgentUUIDs" indent:v5 showFullContent:1];

      if (v86)
      {
        free(v86);
      }
    }
  }

  if ([(NWParameters *)self prohibitExpensivePaths])
  {
    [v7 appendPrettyBOOL:-[NWParameters prohibitExpensivePaths](self withName:"prohibitExpensivePaths") indent:{@"prohibitExpensivePaths", v5}];
  }

  if ([(NWParameters *)self prohibitConstrainedPaths])
  {
    [v7 appendPrettyBOOL:-[NWParameters prohibitConstrainedPaths](self withName:"prohibitConstrainedPaths") indent:{@"prohibitConstrainedPaths", v5}];
  }

  if ([(NWParameters *)self prohibitRoaming])
  {
    [v7 appendPrettyBOOL:-[NWParameters prohibitRoaming](self withName:"prohibitRoaming") indent:{@"prohibitRoaming", v5}];
  }

  if ([(NWParameters *)self enableTFO])
  {
    [v7 appendPrettyBOOL:-[NWParameters enableTFO](self withName:"enableTFO") indent:{@"enableTFO", v5}];
  }

  if ([(NWParameters *)self disableNagleAlgorithm])
  {
    [v7 appendPrettyBOOL:-[NWParameters disableNagleAlgorithm](self withName:"disableNagleAlgorithm") indent:{@"disableNagleAlgorithm", v5}];
  }

  if ([(NWParameters *)self useLongOutstandingQueries])
  {
    [v7 appendPrettyBOOL:-[NWParameters useLongOutstandingQueries](self withName:"useLongOutstandingQueries") indent:{@"useLongOutstandingQueries", v5}];
  }

  if ([(NWParameters *)self resolvePTR])
  {
    [v7 appendPrettyBOOL:-[NWParameters resolvePTR](self withName:"resolvePTR") indent:{@"resolvePTR", v5}];
  }

  if ([(NWParameters *)self useAWDL])
  {
    [v7 appendPrettyBOOL:-[NWParameters useAWDL](self withName:"useAWDL") indent:{@"useAWDL", v5}];
  }

  if ([(NWParameters *)self useP2P])
  {
    [v7 appendPrettyBOOL:-[NWParameters useP2P](self withName:"useP2P") indent:{@"useP2P", v5}];
  }

  if ([(NWParameters *)self multipathService])
  {
    [v7 appendPrettyInt:-[NWParameters multipathService](self withName:"multipathService") indent:{@"multipathService", v5}];
  }

  if ([(NWParameters *)self enableTLS])
  {
    [v7 appendPrettyBOOL:-[NWParameters enableTLS](self withName:"enableTLS") indent:{@"enableTLS", v5}];
  }

  v88 = [(NWParameters *)self TLSSessionID];
  [v7 appendPrettyObject:v88 withName:@"TLSSessionID" indent:v5 showFullContent:v4];

  v89 = [(NWParameters *)self internalParameters];
  LODWORD(v88) = nw_parameters_has_initial_data_payload(v89);

  if (v88)
  {
    v90 = [(NWParameters *)self internalParameters];
    v91 = nw_parameters_copy_initial_data_payload(v90);

    v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zu bytes]", dispatch_data_get_size(v91)];
    [v7 appendPrettyObject:v92 withName:@"initialDataPayload" indent:v5 showFullContent:1];
  }

  if ([(NWParameters *)self trustInvalidCertificates])
  {
    [v7 appendPrettyBOOL:-[NWParameters trustInvalidCertificates](self withName:"trustInvalidCertificates") indent:{@"trustInvalidCertificates", v5}];
  }

  v93 = [(NWParameters *)self internalParameters];
  fallback_mode = nw_parameters_get_fallback_mode(v93);

  if (fallback_mode)
  {
    [v7 appendPrettyInt:fallback_mode withName:@"fallbackMode" indent:v5];
  }

  v95 = [(NWParameters *)self internalParameters];
  include_ble = nw_parameters_get_include_ble(v95);

  if (include_ble)
  {
    [v7 appendPrettyBOOL:1 withName:@"includeBle" indent:v5];
  }

  v97 = [(NWParameters *)self internalParameters];
  include_screen_off_devices = nw_parameters_get_include_screen_off_devices(v97);

  if (include_screen_off_devices)
  {
    [v7 appendPrettyBOOL:1 withName:@"includeScreenOff" indent:v5];
  }

  v99 = [MEMORY[0x1E696AEC0] stringWithString:v7];

  return v99;
}

- (NWParameters)initWithParameters:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v23.receiver = self;
    v23.super_class = NWParameters;
    v6 = [(NWParameters *)&v23 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_internalParameters, a3);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "[NWParameters initWithParameters:]";
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
        v27 = "[NWParameters initWithParameters:]";
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
          v27 = "[NWParameters initWithParameters:]";
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
        v27 = "[NWParameters initWithParameters:]";
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
        v27 = "[NWParameters initWithParameters:]";
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
  v27 = "[NWParameters initWithParameters:]";
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
        v27 = "[NWParameters initWithParameters:]";
        v13 = "%{public}s called with null parameters";
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
            v27 = "[NWParameters initWithParameters:]";
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_31;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v27 = "[NWParameters initWithParameters:]";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_29;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWParameters initWithParameters:]";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
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

- (NWParameters)init
{
  v31 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = NWParameters;
  v2 = [(NWParameters *)&v26 init];
  if (!v2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v28 = "[NWParameters init]";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v7, &type, &v24))
    {
      goto LABEL_14;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v28 = "[NWParameters init]";
        v21 = "%{public}s [super init] failed";
LABEL_39:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type;
        v23 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v28 = "[NWParameters init]";
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v14 = backtrace_string;
LABEL_13:
          free(v14);
          goto LABEL_14;
        }

        if (!v23)
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v28 = "[NWParameters init]";
        v21 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_39;
      }

      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v28 = "[NWParameters init]";
        v21 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_39;
      }
    }

LABEL_40:

LABEL_14:
    if (!v7)
    {
LABEL_16:
      v5 = 0;
      goto LABEL_17;
    }

LABEL_15:
    free(v7);
    goto LABEL_16;
  }

  v3 = _nw_parameters_create();
  internalParameters = v2->_internalParameters;
  v2->_internalParameters = v3;

  if (!v2->_internalParameters)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v28 = "[NWParameters init]";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v7, &type, &v24))
    {
      goto LABEL_14;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "[NWParameters init]";
      v10 = "%{public}s nw_parameters_create failed";
LABEL_20:
      v16 = v8;
      v17 = v9;
      goto LABEL_21;
    }

    if (v24 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "[NWParameters init]";
      v10 = "%{public}s nw_parameters_create failed, backtrace limit exceeded";
      goto LABEL_20;
    }

    v11 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v12 = type;
    v13 = os_log_type_enabled(v8, type);
    if (!v11)
    {
      if (!v13)
      {
LABEL_22:

        if (!v7)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      *buf = 136446210;
      v28 = "[NWParameters init]";
      v10 = "%{public}s nw_parameters_create failed, no backtrace";
      v16 = v8;
      v17 = v12;
LABEL_21:
      _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
      goto LABEL_22;
    }

    if (v13)
    {
      *buf = 136446466;
      v28 = "[NWParameters init]";
      v29 = 2082;
      v30 = v11;
      _os_log_impl(&dword_181A37000, v8, v12, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    v14 = v11;
    goto LABEL_13;
  }

  v5 = v2;
LABEL_17:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NWParameters *)self internalParameters];
  v6 = v5;
  if (v5 && (v7 = _nw_parameters_copy_serialized_bytes(v5)) != 0)
  {
    v8 = v7;
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_data(v9, "swift-json", [v8 bytes], objc_msgSend(v8, "length"));

    if (v9)
    {
      v10 = MEMORY[0x1E695DF90];
      v11 = v9;
      v12 = [v10 dictionary];
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 3221225472;
      *&applier[16] = __NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke;
      v37 = &unk_1E6A39980;
      v13 = v12;
      v38 = v13;
      xpc_dictionary_apply(v11, applier);

      if (v13)
      {
        [v4 encodeObject:v13 forKey:@"dictionary"];
LABEL_43:

        goto LABEL_44;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      *applier = 136446210;
      *&applier[4] = "[NWParameters encodeWithCoder:]";
      v25 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (!__nwlog_fault(v25, &type, &v34))
      {
LABEL_41:
        if (v25)
        {
          free(v25);
        }

        goto LABEL_43;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *applier = 136446210;
          *&applier[4] = "[NWParameters encodeWithCoder:]";
          v28 = "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed";
LABEL_38:
          v32 = v26;
          v33 = v27;
LABEL_39:
          _os_log_impl(&dword_181A37000, v32, v33, v28, applier, 0xCu);
        }
      }

      else
      {
        if (v34 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v30 = type;
          v31 = os_log_type_enabled(v26, type);
          if (backtrace_string)
          {
            if (v31)
            {
              *applier = 136446466;
              *&applier[4] = "[NWParameters encodeWithCoder:]";
              *&applier[12] = 2082;
              *&applier[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v26, v30, "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, dumping backtrace:%{public}s", applier, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_41;
          }

          if (!v31)
          {
            goto LABEL_40;
          }

          *applier = 136446210;
          *&applier[4] = "[NWParameters encodeWithCoder:]";
          v28 = "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, no backtrace";
          v32 = v26;
          v33 = v30;
          goto LABEL_39;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *applier = 136446210;
          *&applier[4] = "[NWParameters encodeWithCoder:]";
          v28 = "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, backtrace limit exceeded";
          goto LABEL_38;
        }
      }

LABEL_40:

      goto LABEL_41;
    }
  }

  else
  {
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  *applier = 136446210;
  *&applier[4] = "[NWParameters encodeWithCoder:]";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v15, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_23;
      }

      *applier = 136446210;
      *&applier[4] = "[NWParameters encodeWithCoder:]";
      v18 = "%{public}s nw_parameters_copy_dictionary failed";
LABEL_21:
      v22 = v16;
      v23 = v17;
      goto LABEL_22;
    }

    if (v34 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_23;
      }

      *applier = 136446210;
      *&applier[4] = "[NWParameters encodeWithCoder:]";
      v18 = "%{public}s nw_parameters_copy_dictionary failed, backtrace limit exceeded";
      goto LABEL_21;
    }

    v19 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v20 = type;
    v21 = os_log_type_enabled(v16, type);
    if (!v19)
    {
      if (!v21)
      {
LABEL_23:

        if (!v15)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      *applier = 136446210;
      *&applier[4] = "[NWParameters encodeWithCoder:]";
      v18 = "%{public}s nw_parameters_copy_dictionary failed, no backtrace";
      v22 = v16;
      v23 = v20;
LABEL_22:
      _os_log_impl(&dword_181A37000, v22, v23, v18, applier, 0xCu);
      goto LABEL_23;
    }

    if (v21)
    {
      *applier = 136446466;
      *&applier[4] = "[NWParameters encodeWithCoder:]";
      *&applier[12] = 2082;
      *&applier[14] = v19;
      _os_log_impl(&dword_181A37000, v16, v20, "%{public}s nw_parameters_copy_dictionary failed, dumping backtrace:%{public}s", applier, 0x16u);
    }

    free(v19);
  }

  if (v15)
  {
LABEL_17:
    free(v15);
  }

LABEL_18:
  v11 = 0;
LABEL_44:
}

- (NWParameters)initWithCoder:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = NWParameters;
  v5 = [(NWParameters *)&v57 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 initWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"dictionary"];
    v14 = v13;
    if (v13)
    {
      XPCDictionaryFromNSDictionary = NWUtilsCreateXPCDictionaryFromNSDictionary(v13);
      v16 = XPCDictionaryFromNSDictionary;
      if (XPCDictionaryFromNSDictionary)
      {
        *length = 0;
        data = xpc_dictionary_get_data(XPCDictionaryFromNSDictionary, "swift-json", length);
        v18 = 0;
        if (data && *length)
        {
          v19 = data;
          v20 = objc_alloc(MEMORY[0x1E695DEF0]);
          v21 = [v20 initWithBytes:v19 length:*length];
          v18 = _nw_parameters_create_from_serialized_bytes(v21);
        }

        [(NWParameters *)v5 setInternalParameters:v18];

        v22 = [(NWParameters *)v5 internalParameters];

        if (v22)
        {
          v23 = v5;
LABEL_48:

          goto LABEL_49;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        *length = 136446210;
        *&length[4] = "[NWParameters initWithCoder:]";
        v30 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v55 = 0;
        if (!__nwlog_fault(v30, &type, &v55))
        {
LABEL_45:
          if (!v30)
          {
LABEL_47:
            v23 = 0;
            goto LABEL_48;
          }

LABEL_46:
          free(v30);
          goto LABEL_47;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (!os_log_type_enabled(v31, type))
          {
            goto LABEL_57;
          }

          *length = 136446210;
          *&length[4] = "[NWParameters initWithCoder:]";
          v33 = "%{public}s nw_parameters_create_from_dictionary failed";
          goto LABEL_55;
        }

        if (v55 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (!os_log_type_enabled(v31, type))
          {
            goto LABEL_57;
          }

          *length = 136446210;
          *&length[4] = "[NWParameters initWithCoder:]";
          v33 = "%{public}s nw_parameters_create_from_dictionary failed, backtrace limit exceeded";
          goto LABEL_55;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v39 = type;
        v44 = os_log_type_enabled(v31, type);
        if (backtrace_string)
        {
          if (v44)
          {
            *length = 136446466;
            *&length[4] = "[NWParameters initWithCoder:]";
            v59 = 2082;
            v60 = backtrace_string;
            v41 = "%{public}s nw_parameters_create_from_dictionary failed, dumping backtrace:%{public}s";
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        if (v44)
        {
          *length = 136446210;
          *&length[4] = "[NWParameters initWithCoder:]";
          v33 = "%{public}s nw_parameters_create_from_dictionary failed, no backtrace";
          goto LABEL_65;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        *length = 136446210;
        *&length[4] = "[NWParameters initWithCoder:]";
        v30 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v55 = 0;
        if (!__nwlog_fault(v30, &type, &v55))
        {
          goto LABEL_45;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (!os_log_type_enabled(v31, type))
          {
            goto LABEL_57;
          }

          *length = 136446210;
          *&length[4] = "[NWParameters initWithCoder:]";
          v33 = "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed";
LABEL_55:
          v46 = v31;
          v47 = v32;
LABEL_56:
          _os_log_impl(&dword_181A37000, v46, v47, v33, length, 0xCu);
          goto LABEL_57;
        }

        if (v55 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type;
          if (!os_log_type_enabled(v31, type))
          {
            goto LABEL_57;
          }

          *length = 136446210;
          *&length[4] = "[NWParameters initWithCoder:]";
          v33 = "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, backtrace limit exceeded";
          goto LABEL_55;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v39 = type;
        v40 = os_log_type_enabled(v31, type);
        if (backtrace_string)
        {
          if (v40)
          {
            *length = 136446466;
            *&length[4] = "[NWParameters initWithCoder:]";
            v59 = 2082;
            v60 = backtrace_string;
            v41 = "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, dumping backtrace:%{public}s";
LABEL_43:
            _os_log_impl(&dword_181A37000, v31, v39, v41, length, 0x16u);
          }

LABEL_44:

          free(backtrace_string);
          goto LABEL_45;
        }

        if (v40)
        {
          *length = 136446210;
          *&length[4] = "[NWParameters initWithCoder:]";
          v33 = "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, no backtrace";
LABEL_65:
          v46 = v31;
          v47 = v39;
          goto LABEL_56;
        }
      }

LABEL_57:

      if (!v30)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    *length = 136446210;
    *&length[4] = "[NWParameters initWithCoder:]";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v25, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_37;
        }

        *length = 136446210;
        *&length[4] = "[NWParameters initWithCoder:]";
        v28 = "%{public}s decodeObjectOfClasses:forKey failed";
LABEL_35:
        v42 = v26;
        v43 = v27;
        goto LABEL_36;
      }

      if (v55 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_37;
        }

        *length = 136446210;
        *&length[4] = "[NWParameters initWithCoder:]";
        v28 = "%{public}s decodeObjectOfClasses:forKey failed, backtrace limit exceeded";
        goto LABEL_35;
      }

      v34 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v35 = type;
      v36 = os_log_type_enabled(v26, type);
      if (!v34)
      {
        if (!v36)
        {
LABEL_37:

          if (!v25)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        *length = 136446210;
        *&length[4] = "[NWParameters initWithCoder:]";
        v28 = "%{public}s decodeObjectOfClasses:forKey failed, no backtrace";
        v42 = v26;
        v43 = v35;
LABEL_36:
        _os_log_impl(&dword_181A37000, v42, v43, v28, length, 0xCu);
        goto LABEL_37;
      }

      if (v36)
      {
        *length = 136446466;
        *&length[4] = "[NWParameters initWithCoder:]";
        v59 = 2082;
        v60 = v34;
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s decodeObjectOfClasses:forKey failed, dumping backtrace:%{public}s", length, 0x16u);
      }

      free(v34);
    }

    if (!v25)
    {
LABEL_24:
      v23 = 0;
LABEL_49:

      goto LABEL_50;
    }

LABEL_23:
    free(v25);
    goto LABEL_24;
  }

  v48 = __nwlog_obj();
  *length = 136446210;
  *&length[4] = "[NWParameters initWithCoder:]";
  v49 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (__nwlog_fault(v49, &type, &v55))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v50, type))
      {
        *length = 136446210;
        *&length[4] = "[NWParameters initWithCoder:]";
        v52 = "%{public}s [super init] failed";
LABEL_79:
        _os_log_impl(&dword_181A37000, v50, v51, v52, length, 0xCu);
      }
    }

    else
    {
      if (v55 == 1)
      {
        v53 = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        v51 = type;
        v54 = os_log_type_enabled(v50, type);
        if (v53)
        {
          if (v54)
          {
            *length = 136446466;
            *&length[4] = "[NWParameters initWithCoder:]";
            v59 = 2082;
            v60 = v53;
            _os_log_impl(&dword_181A37000, v50, v51, "%{public}s [super init] failed, dumping backtrace:%{public}s", length, 0x16u);
          }

          free(v53);
          goto LABEL_81;
        }

        if (!v54)
        {
          goto LABEL_80;
        }

        *length = 136446210;
        *&length[4] = "[NWParameters initWithCoder:]";
        v52 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_79;
      }

      v50 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v50, type))
      {
        *length = 136446210;
        *&length[4] = "[NWParameters initWithCoder:]";
        v52 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_79;
      }
    }

LABEL_80:
  }

LABEL_81:
  if (v49)
  {
    free(v49);
  }

  v23 = 0;
LABEL_50:

  return v23;
}

+ (NWParameters)parametersWithProtocolBufferData:(id)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [[NWPBParameters alloc] initWithData:v3];
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446210;
    v104 = "+[NWParameters parametersWithProtocolBufferData:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v97 = 0;
    if (__nwlog_fault(v22, &type, &v97))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v104 = "+[NWParameters parametersWithProtocolBufferData:]";
        v25 = "%{public}s [NWPBParameters initWithData:] failed";
LABEL_90:
        v78 = v23;
        v79 = v24;
        goto LABEL_91;
      }

      if (v97 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v104 = "+[NWParameters parametersWithProtocolBufferData:]";
        v25 = "%{public}s [NWPBParameters initWithData:] failed, backtrace limit exceeded";
        goto LABEL_90;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v75 = type;
      v76 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (!v76)
        {
LABEL_92:

          if (!v22)
          {
            goto LABEL_84;
          }

          goto LABEL_83;
        }

        *buf = 136446210;
        v104 = "+[NWParameters parametersWithProtocolBufferData:]";
        v25 = "%{public}s [NWPBParameters initWithData:] failed, no backtrace";
        v78 = v23;
        v79 = v75;
LABEL_91:
        _os_log_impl(&dword_181A37000, v78, v79, v25, buf, 0xCu);
        goto LABEL_92;
      }

      if (v76)
      {
        *buf = 136446466;
        v104 = "+[NWParameters parametersWithProtocolBufferData:]";
        v105 = 2082;
        v106 = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v75, "%{public}s [NWPBParameters initWithData:] failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v22)
    {
LABEL_84:
      v7 = 0;
      goto LABEL_85;
    }

LABEL_83:
    free(v22);
    goto LABEL_84;
  }

  v80 = v3;
  v5 = [NWParameters alloc];
  empty_stack = _nw_parameters_create_empty_stack();
  v7 = [(NWParameters *)v5 initWithParameters:empty_stack];

  if (v4->_effectiveProcessUUID)
  {
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v9 = v4->_effectiveProcessUUID;
    v10 = [v8 initWithUUIDString:v9];
    [(NWParameters *)v7 setEffectiveProcessUUID:v10];
  }

  if (v4->_realProcessUUID)
  {
    v11 = objc_alloc(MEMORY[0x1E696AFB0]);
    v12 = v4->_realProcessUUID;
    v13 = [v11 initWithUUIDString:v12];
    [(NWParameters *)v7 setProcessUUID:v13];
  }

  localEndpoint = v4->_localEndpoint;
  if (localEndpoint)
  {
    v15 = localEndpoint;
    v16 = [(NWPBEndpoint *)v15 data];
    v17 = [NWEndpoint endpointWithProtocolBufferData:v16];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NWParameters *)v7 setLocalAddress:v17];
    }
  }

  v18 = v4->_account;
  [(NWParameters *)v7 setAccount:v18];

  has = v4->_has;
  if (has)
  {
    [(NWParameters *)v7 setRequiredAddressFamily:LOBYTE(v4->_addressFamily)];
    has = v4->_has;
  }

  if ((has & 2) != 0)
  {
    dataMode = v4->_dataMode;
  }

  else
  {
    dataMode = 0;
  }

  [(NWParameters *)v7 setDataMode:dataMode];
  v26 = v4->_effectiveBundleID;
  [(NWParameters *)v7 setEffectiveBundleID:v26];

  v27 = v4->_metadata;
  [(NWParameters *)v7 setMetadata:v27];

  requiredInterface = v4->_requiredInterface;
  if (requiredInterface)
  {
    v29 = requiredInterface;
    v30 = [(NWPBInterface *)v29 data];
    v31 = [NWInterface interfaceWithProtocolBufferData:v30];
    [(NWParameters *)v7 setRequiredInterface:v31];
  }

  if ((*&v4->_has & 0x10) != 0)
  {
    requiredInterfaceType = v4->_requiredInterfaceType;
  }

  else
  {
    requiredInterfaceType = 0;
  }

  [(NWParameters *)v7 setRequiredInterfaceType:requiredInterfaceType];
  [(NWParameters *)v7 setTrafficClass:v4->_trafficClass];
  url = v4->_url;
  if (url)
  {
    v34 = MEMORY[0x1E695DFF8];
    v35 = url;
    v36 = [v34 URLWithString:v35];
    [(NWParameters *)v7 setUrl:v36];
  }

  v37 = v4->_has;
  if ((v37 & 0x40) != 0)
  {
    [(NWParameters *)v7 setEnableTFO:v4->_fastOpen];
    v37 = v4->_has;
  }

  if ((v37 & 0x80) != 0)
  {
    [(NWParameters *)v7 setKeepAlive:v4->_keepalive];
  }

  [(NWParameters *)v7 setUseLongOutstandingQueries:v4->_longOutstandingQueries];
  [(NWParameters *)v7 setMultipathService:v4->_multipathService];
  [(NWParameters *)v7 setProhibitFallback:v4->_noFallback];
  [(NWParameters *)v7 setProhibitExpensivePaths:v4->_prohibitExpensive];
  [(NWParameters *)v7 setReuseLocalAddress:v4->_reuseLocalAddress];
  [(NWParameters *)v7 setUseAWDL:v4->_useAWDL];
  [(NWParameters *)v7 setUseP2P:v4->_useP2P];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v38 = v4->_requiredAgents;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v94;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v94 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v93 + 1) + 8 * i);
        if (v43)
        {
          v44 = *(v43 + 8);
          v45 = *(v43 + 16);
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        v46 = v45;
        [(NWParameters *)v7 requireNetworkAgentWithDomain:v44 type:v46];
      }

      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v93 objects:v102 count:16];
    }

    while (v40);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v47 = v4->_preferredAgents;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v90;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v90 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v89 + 1) + 8 * j);
        if (v52)
        {
          v53 = *(v52 + 8);
          v54 = *(v52 + 16);
        }

        else
        {
          v53 = 0;
          v54 = 0;
        }

        v55 = v54;
        [(NWParameters *)v7 preferNetworkAgentWithDomain:v53 type:v55];
      }

      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v49);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v56 = v4->_prohibitedAgents;
  v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v85 objects:v100 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v86;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v86 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v85 + 1) + 8 * k);
        if (v61)
        {
          v62 = *(v61 + 8);
          v63 = *(v61 + 16);
        }

        else
        {
          v62 = 0;
          v63 = 0;
        }

        v64 = v63;
        [(NWParameters *)v7 prohibitNetworkAgentsWithDomain:v62 type:v64];
      }

      v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v85 objects:v100 count:16];
    }

    while (v58);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v65 = v4->_prohibitedInterfaces;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v81 objects:v99 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v82;
    do
    {
      for (m = 0; m != v67; ++m)
      {
        if (*v82 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = [*(*(&v81 + 1) + 8 * m) data];
        v71 = [NWInterface interfaceWithProtocolBufferData:v70];
        [(NWParameters *)v7 prohibitInterface:v71];
      }

      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v81 objects:v99 count:16];
    }

    while (v67);
  }

  for (n = 0; n < v4->_prohibitedInterfaceTypes.count; ++n)
  {
    [(NWParameters *)v7 prohibitInterfaceType:v4->_prohibitedInterfaceTypes.list[n]];
  }

  for (ii = 0; ii < v4->_prohibitedInterfaceSubTypes.count; ++ii)
  {
    [(NWParameters *)v7 prohibitInterfaceSubtype:v4->_prohibitedInterfaceSubTypes.list[ii]];
  }

  v3 = v80;
LABEL_85:

  return v7;
}

+ (NWParameters)parametersWithCParameters:(id)a3
{
  v3 = a3;
  v4 = [NWParameters alloc];
  v5 = _nw_parameters_copy(v3);

  v6 = [(NWParameters *)v4 initWithParameters:v5];

  return v6;
}

@end