@interface NEIKEv2SessionConfiguration
- (NEIKEv2SessionConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)copyRemoteAuthKey;
- (void)dealloc;
- (void)setConfigurationReply:(id)reply;
- (void)setConfigurationRequest:(id)request;
@end

@implementation NEIKEv2SessionConfiguration

- (void)setConfigurationReply:(id)reply
{
  v4 = [reply copy];
  if (v4)
  {
    v4->_configurationType = 2;
  }

  configurationReply = self->_configurationReply;
  self->_configurationReply = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setConfigurationRequest:(id)request
{
  v4 = [request copy];
  if (v4)
  {
    v4->_configurationType = 1;
  }

  configurationRequest = self->_configurationRequest;
  self->_configurationRequest = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  localIdentifier = [(NEIKEv2SessionConfiguration *)self localIdentifier];
  v6 = [localIdentifier copy];
  [v4 setLocalIdentifier:v6];

  remoteIdentifier = [(NEIKEv2SessionConfiguration *)self remoteIdentifier];
  v8 = [remoteIdentifier copy];
  [v4 setRemoteIdentifier:v8];

  [v4 setInitialContactDisabled:{-[NEIKEv2SessionConfiguration initialContactDisabled](self, "initialContactDisabled")}];
  [v4 setNegotiateMOBIKE:{-[NEIKEv2SessionConfiguration negotiateMOBIKE](self, "negotiateMOBIKE")}];
  additionalMOBIKEAddresses = [(NEIKEv2SessionConfiguration *)self additionalMOBIKEAddresses];

  if (additionalMOBIKEAddresses)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    additionalMOBIKEAddresses2 = [(NEIKEv2SessionConfiguration *)self additionalMOBIKEAddresses];
    v12 = [v10 initWithArray:additionalMOBIKEAddresses2 copyItems:1];
    [v4 setAdditionalMOBIKEAddresses:v12];
  }

  [v4 setNatTraversalKeepaliveDisabled:{-[NEIKEv2SessionConfiguration natTraversalKeepaliveDisabled](self, "natTraversalKeepaliveDisabled")}];
  [v4 setNatTraversalKeepaliveInterval:{-[NEIKEv2SessionConfiguration natTraversalKeepaliveInterval](self, "natTraversalKeepaliveInterval")}];
  [v4 setNatTraversalKeepaliveOffloadEnabled:{-[NEIKEv2SessionConfiguration natTraversalKeepaliveOffloadEnabled](self, "natTraversalKeepaliveOffloadEnabled")}];
  [v4 setNatTraversalKeepaliveOffloadInterval:{-[NEIKEv2SessionConfiguration natTraversalKeepaliveOffloadInterval](self, "natTraversalKeepaliveOffloadInterval")}];
  [v4 setDeadPeerDetectionEnabled:{-[NEIKEv2SessionConfiguration deadPeerDetectionEnabled](self, "deadPeerDetectionEnabled")}];
  [v4 setDeadPeerDetectionInterval:{-[NEIKEv2SessionConfiguration deadPeerDetectionInterval](self, "deadPeerDetectionInterval")}];
  [v4 setDeadPeerDetectionRetryIntervalMilliseconds:{-[NEIKEv2SessionConfiguration deadPeerDetectionRetryIntervalMilliseconds](self, "deadPeerDetectionRetryIntervalMilliseconds")}];
  [v4 setDeadPeerDetectionMaxRetryCount:{-[NEIKEv2SessionConfiguration deadPeerDetectionMaxRetryCount](self, "deadPeerDetectionMaxRetryCount")}];
  [v4 setDeadPeerDetectionMaxRetryCountBeforeReporting:{-[NEIKEv2SessionConfiguration deadPeerDetectionMaxRetryCountBeforeReporting](self, "deadPeerDetectionMaxRetryCountBeforeReporting")}];
  [v4 setDeadPeerDetectionReceiveIntervalTriggerReporting:{-[NEIKEv2SessionConfiguration deadPeerDetectionReceiveIntervalTriggerReporting](self, "deadPeerDetectionReceiveIntervalTriggerReporting")}];
  [v4 setDeadPeerDetectionReceiveMaxShortDPDBeforeReporting:{-[NEIKEv2SessionConfiguration deadPeerDetectionReceiveMaxShortDPDBeforeReporting](self, "deadPeerDetectionReceiveMaxShortDPDBeforeReporting")}];
  [v4 setIdleTimeoutEnabled:{-[NEIKEv2SessionConfiguration idleTimeoutEnabled](self, "idleTimeoutEnabled")}];
  [v4 setIdleTimeoutSeconds:{-[NEIKEv2SessionConfiguration idleTimeoutSeconds](self, "idleTimeoutSeconds")}];
  [v4 setBlackholeDetectionEnabled:{-[NEIKEv2SessionConfiguration blackholeDetectionEnabled](self, "blackholeDetectionEnabled")}];
  authenticationProtocol = [(NEIKEv2SessionConfiguration *)self authenticationProtocol];
  v14 = [authenticationProtocol copy];
  [v4 setAuthenticationProtocol:v14];

  localPrivateEAPIdentity = [(NEIKEv2SessionConfiguration *)self localPrivateEAPIdentity];
  v16 = [localPrivateEAPIdentity copy];
  [v4 setLocalPrivateEAPIdentity:v16];

  localEncryptedEAPIdentity = [(NEIKEv2SessionConfiguration *)self localEncryptedEAPIdentity];
  v18 = [localEncryptedEAPIdentity copy];
  [v4 setLocalEncryptedEAPIdentity:v18];

  username = [(NEIKEv2SessionConfiguration *)self username];
  v20 = [username copy];
  [v4 setUsername:v20];

  password = [(NEIKEv2SessionConfiguration *)self password];
  v22 = [password copy];
  [v4 setPassword:v22];

  passwordReference = [(NEIKEv2SessionConfiguration *)self passwordReference];
  v24 = [passwordReference copy];
  [v4 setPasswordReference:v24];

  sharedSecret = [(NEIKEv2SessionConfiguration *)self sharedSecret];
  v26 = [sharedSecret copy];
  [v4 setSharedSecret:v26];

  sharedSecretReference = [(NEIKEv2SessionConfiguration *)self sharedSecretReference];
  v28 = [sharedSecretReference copy];
  [v4 setSharedSecretReference:v28];

  localCertificateName = [(NEIKEv2SessionConfiguration *)self localCertificateName];
  v30 = [localCertificateName copy];
  [v4 setLocalCertificateName:v30];

  localCertificateReference = [(NEIKEv2SessionConfiguration *)self localCertificateReference];
  v32 = [localCertificateReference copy];
  [v4 setLocalCertificateReference:v32];

  remoteCertificateHostname = [(NEIKEv2SessionConfiguration *)self remoteCertificateHostname];
  v34 = [remoteCertificateHostname copy];
  [v4 setRemoteCertificateHostname:v34];

  remoteCertificateAuthorityName = [(NEIKEv2SessionConfiguration *)self remoteCertificateAuthorityName];
  v36 = [remoteCertificateAuthorityName copy];
  [v4 setRemoteCertificateAuthorityName:v36];

  remoteCertificateAuthorityReferences = [(NEIKEv2SessionConfiguration *)self remoteCertificateAuthorityReferences];

  if (remoteCertificateAuthorityReferences)
  {
    v38 = objc_alloc(MEMORY[0x1E695DEC8]);
    remoteCertificateAuthorityReferences2 = [(NEIKEv2SessionConfiguration *)self remoteCertificateAuthorityReferences];
    v40 = [v38 initWithArray:remoteCertificateAuthorityReferences2 copyItems:1];
    [v4 setRemoteCertificateAuthorityReferences:v40];
  }

  remoteCertificateAuthorityHash = [(NEIKEv2SessionConfiguration *)self remoteCertificateAuthorityHash];
  v42 = [remoteCertificateAuthorityHash copy];
  [v4 setRemoteCertificateAuthorityHash:v42];

  [v4 setEnableCertificateRevocationCheck:{-[NEIKEv2SessionConfiguration enableCertificateRevocationCheck](self, "enableCertificateRevocationCheck")}];
  [v4 setStrictCertificateRevocationCheck:{-[NEIKEv2SessionConfiguration strictCertificateRevocationCheck](self, "strictCertificateRevocationCheck")}];
  [v4 setDisableRemoteCertificateValidation:{-[NEIKEv2SessionConfiguration disableRemoteCertificateValidation](self, "disableRemoteCertificateValidation")}];
  [v4 setLocalPrivateKeyRef:{-[NEIKEv2SessionConfiguration localPrivateKeyRef](self, "localPrivateKeyRef")}];
  [v4 setRemotePublicKeyRef:{-[NEIKEv2SessionConfiguration remotePublicKeyRef](self, "remotePublicKeyRef")}];
  remoteAuthentication = [(NEIKEv2SessionConfiguration *)self remoteAuthentication];
  v44 = [remoteAuthentication copy];
  [v4 setRemoteAuthentication:v44];

  tlsMinimumVersion = [(NEIKEv2SessionConfiguration *)self tlsMinimumVersion];
  v46 = [tlsMinimumVersion copy];
  [v4 setTlsMinimumVersion:v46];

  tlsMaximumVersion = [(NEIKEv2SessionConfiguration *)self tlsMaximumVersion];
  v48 = [tlsMaximumVersion copy];
  [v4 setTlsMaximumVersion:v48];

  configurationRequest = [(NEIKEv2SessionConfiguration *)self configurationRequest];
  v50 = [configurationRequest copy];
  [v4 setConfigurationRequest:v50];

  configurationReply = [(NEIKEv2SessionConfiguration *)self configurationReply];
  v52 = [configurationReply copy];
  [v4 setConfigurationReply:v52];

  v53 = objc_opt_self();
  customIKEAuthPayloads = [v53 customIKEAuthPayloads];

  if (customIKEAuthPayloads)
  {
    v55 = objc_alloc(MEMORY[0x1E695DEC8]);
    customIKEAuthPayloads2 = [(NEIKEv2SessionConfiguration *)self customIKEAuthPayloads];
    v57 = [v55 initWithArray:customIKEAuthPayloads2 copyItems:1];
    [v4 setCustomIKEAuthPayloads:v57];
  }

  customIKEAuthVendorPayloads = [(NEIKEv2SessionConfiguration *)self customIKEAuthVendorPayloads];

  if (customIKEAuthVendorPayloads)
  {
    v59 = objc_alloc(MEMORY[0x1E695DEC8]);
    customIKEAuthVendorPayloads2 = [(NEIKEv2SessionConfiguration *)self customIKEAuthVendorPayloads];
    v61 = [v59 initWithArray:customIKEAuthVendorPayloads2 copyItems:1];
    [v4 setCustomIKEAuthVendorPayloads:v61];
  }

  customIKEAuthPrivateNotifies = [(NEIKEv2SessionConfiguration *)self customIKEAuthPrivateNotifies];

  if (customIKEAuthPrivateNotifies)
  {
    v63 = objc_alloc(MEMORY[0x1E695DEC8]);
    customIKEAuthPrivateNotifies2 = [(NEIKEv2SessionConfiguration *)self customIKEAuthPrivateNotifies];
    v65 = [v63 initWithArray:customIKEAuthPrivateNotifies2 copyItems:1];
    [v4 setCustomIKEAuthPrivateNotifies:v65];
  }

  iMEI = [(NEIKEv2SessionConfiguration *)self IMEI];
  v67 = [iMEI copy];
  [v4 setIMEI:v67];

  iMEISV = [(NEIKEv2SessionConfiguration *)self IMEISV];
  v69 = [iMEISV copy];
  [v4 setIMEISV:v69];

  v70 = [(NEIKEv2SessionConfiguration *)self ppk];
  v71 = [v70 copy];
  [v4 setPpk:v71];

  ppkReference = [(NEIKEv2SessionConfiguration *)self ppkReference];
  v73 = [ppkReference copy];
  [v4 setPpkReference:v73];

  ppkID = [(NEIKEv2SessionConfiguration *)self ppkID];
  v75 = [ppkID copy];
  [v4 setPpkID:v75];

  [v4 setPpkIDType:{-[NEIKEv2SessionConfiguration ppkIDType](self, "ppkIDType")}];
  [v4 setPpkMandatory:{-[NEIKEv2SessionConfiguration ppkMandatory](self, "ppkMandatory")}];
  return v4;
}

- (void)dealloc
{
  [(NEIKEv2SessionConfiguration *)self setLocalPrivateKeyRef:0];
  [(NEIKEv2SessionConfiguration *)self setRemotePublicKeyRef:0];
  v3.receiver = self;
  v3.super_class = NEIKEv2SessionConfiguration;
  [(NEIKEv2SessionConfiguration *)&v3 dealloc];
}

- (NEIKEv2SessionConfiguration)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2SessionConfiguration;
  v2 = [(NEIKEv2SessionConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

- (void)copyRemoteAuthKey
{
  selfCopy = self;
  if (self)
  {
    if ([self remotePublicKeyRef])
    {
      selfCopy = [selfCopy remotePublicKeyRef];
      CFRetain(selfCopy);
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

@end