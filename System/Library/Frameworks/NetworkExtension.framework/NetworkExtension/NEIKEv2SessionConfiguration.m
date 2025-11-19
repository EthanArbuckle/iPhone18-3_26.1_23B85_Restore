@interface NEIKEv2SessionConfiguration
- (NEIKEv2SessionConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)copyRemoteAuthKey;
- (void)dealloc;
- (void)setConfigurationReply:(id)a3;
- (void)setConfigurationRequest:(id)a3;
@end

@implementation NEIKEv2SessionConfiguration

- (void)setConfigurationReply:(id)a3
{
  v4 = [a3 copy];
  if (v4)
  {
    v4->_configurationType = 2;
  }

  configurationReply = self->_configurationReply;
  self->_configurationReply = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setConfigurationRequest:(id)a3
{
  v4 = [a3 copy];
  if (v4)
  {
    v4->_configurationType = 1;
  }

  configurationRequest = self->_configurationRequest;
  self->_configurationRequest = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NEIKEv2SessionConfiguration *)self localIdentifier];
  v6 = [v5 copy];
  [v4 setLocalIdentifier:v6];

  v7 = [(NEIKEv2SessionConfiguration *)self remoteIdentifier];
  v8 = [v7 copy];
  [v4 setRemoteIdentifier:v8];

  [v4 setInitialContactDisabled:{-[NEIKEv2SessionConfiguration initialContactDisabled](self, "initialContactDisabled")}];
  [v4 setNegotiateMOBIKE:{-[NEIKEv2SessionConfiguration negotiateMOBIKE](self, "negotiateMOBIKE")}];
  v9 = [(NEIKEv2SessionConfiguration *)self additionalMOBIKEAddresses];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    v11 = [(NEIKEv2SessionConfiguration *)self additionalMOBIKEAddresses];
    v12 = [v10 initWithArray:v11 copyItems:1];
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
  v13 = [(NEIKEv2SessionConfiguration *)self authenticationProtocol];
  v14 = [v13 copy];
  [v4 setAuthenticationProtocol:v14];

  v15 = [(NEIKEv2SessionConfiguration *)self localPrivateEAPIdentity];
  v16 = [v15 copy];
  [v4 setLocalPrivateEAPIdentity:v16];

  v17 = [(NEIKEv2SessionConfiguration *)self localEncryptedEAPIdentity];
  v18 = [v17 copy];
  [v4 setLocalEncryptedEAPIdentity:v18];

  v19 = [(NEIKEv2SessionConfiguration *)self username];
  v20 = [v19 copy];
  [v4 setUsername:v20];

  v21 = [(NEIKEv2SessionConfiguration *)self password];
  v22 = [v21 copy];
  [v4 setPassword:v22];

  v23 = [(NEIKEv2SessionConfiguration *)self passwordReference];
  v24 = [v23 copy];
  [v4 setPasswordReference:v24];

  v25 = [(NEIKEv2SessionConfiguration *)self sharedSecret];
  v26 = [v25 copy];
  [v4 setSharedSecret:v26];

  v27 = [(NEIKEv2SessionConfiguration *)self sharedSecretReference];
  v28 = [v27 copy];
  [v4 setSharedSecretReference:v28];

  v29 = [(NEIKEv2SessionConfiguration *)self localCertificateName];
  v30 = [v29 copy];
  [v4 setLocalCertificateName:v30];

  v31 = [(NEIKEv2SessionConfiguration *)self localCertificateReference];
  v32 = [v31 copy];
  [v4 setLocalCertificateReference:v32];

  v33 = [(NEIKEv2SessionConfiguration *)self remoteCertificateHostname];
  v34 = [v33 copy];
  [v4 setRemoteCertificateHostname:v34];

  v35 = [(NEIKEv2SessionConfiguration *)self remoteCertificateAuthorityName];
  v36 = [v35 copy];
  [v4 setRemoteCertificateAuthorityName:v36];

  v37 = [(NEIKEv2SessionConfiguration *)self remoteCertificateAuthorityReferences];

  if (v37)
  {
    v38 = objc_alloc(MEMORY[0x1E695DEC8]);
    v39 = [(NEIKEv2SessionConfiguration *)self remoteCertificateAuthorityReferences];
    v40 = [v38 initWithArray:v39 copyItems:1];
    [v4 setRemoteCertificateAuthorityReferences:v40];
  }

  v41 = [(NEIKEv2SessionConfiguration *)self remoteCertificateAuthorityHash];
  v42 = [v41 copy];
  [v4 setRemoteCertificateAuthorityHash:v42];

  [v4 setEnableCertificateRevocationCheck:{-[NEIKEv2SessionConfiguration enableCertificateRevocationCheck](self, "enableCertificateRevocationCheck")}];
  [v4 setStrictCertificateRevocationCheck:{-[NEIKEv2SessionConfiguration strictCertificateRevocationCheck](self, "strictCertificateRevocationCheck")}];
  [v4 setDisableRemoteCertificateValidation:{-[NEIKEv2SessionConfiguration disableRemoteCertificateValidation](self, "disableRemoteCertificateValidation")}];
  [v4 setLocalPrivateKeyRef:{-[NEIKEv2SessionConfiguration localPrivateKeyRef](self, "localPrivateKeyRef")}];
  [v4 setRemotePublicKeyRef:{-[NEIKEv2SessionConfiguration remotePublicKeyRef](self, "remotePublicKeyRef")}];
  v43 = [(NEIKEv2SessionConfiguration *)self remoteAuthentication];
  v44 = [v43 copy];
  [v4 setRemoteAuthentication:v44];

  v45 = [(NEIKEv2SessionConfiguration *)self tlsMinimumVersion];
  v46 = [v45 copy];
  [v4 setTlsMinimumVersion:v46];

  v47 = [(NEIKEv2SessionConfiguration *)self tlsMaximumVersion];
  v48 = [v47 copy];
  [v4 setTlsMaximumVersion:v48];

  v49 = [(NEIKEv2SessionConfiguration *)self configurationRequest];
  v50 = [v49 copy];
  [v4 setConfigurationRequest:v50];

  v51 = [(NEIKEv2SessionConfiguration *)self configurationReply];
  v52 = [v51 copy];
  [v4 setConfigurationReply:v52];

  v53 = objc_opt_self();
  v54 = [v53 customIKEAuthPayloads];

  if (v54)
  {
    v55 = objc_alloc(MEMORY[0x1E695DEC8]);
    v56 = [(NEIKEv2SessionConfiguration *)self customIKEAuthPayloads];
    v57 = [v55 initWithArray:v56 copyItems:1];
    [v4 setCustomIKEAuthPayloads:v57];
  }

  v58 = [(NEIKEv2SessionConfiguration *)self customIKEAuthVendorPayloads];

  if (v58)
  {
    v59 = objc_alloc(MEMORY[0x1E695DEC8]);
    v60 = [(NEIKEv2SessionConfiguration *)self customIKEAuthVendorPayloads];
    v61 = [v59 initWithArray:v60 copyItems:1];
    [v4 setCustomIKEAuthVendorPayloads:v61];
  }

  v62 = [(NEIKEv2SessionConfiguration *)self customIKEAuthPrivateNotifies];

  if (v62)
  {
    v63 = objc_alloc(MEMORY[0x1E695DEC8]);
    v64 = [(NEIKEv2SessionConfiguration *)self customIKEAuthPrivateNotifies];
    v65 = [v63 initWithArray:v64 copyItems:1];
    [v4 setCustomIKEAuthPrivateNotifies:v65];
  }

  v66 = [(NEIKEv2SessionConfiguration *)self IMEI];
  v67 = [v66 copy];
  [v4 setIMEI:v67];

  v68 = [(NEIKEv2SessionConfiguration *)self IMEISV];
  v69 = [v68 copy];
  [v4 setIMEISV:v69];

  v70 = [(NEIKEv2SessionConfiguration *)self ppk];
  v71 = [v70 copy];
  [v4 setPpk:v71];

  v72 = [(NEIKEv2SessionConfiguration *)self ppkReference];
  v73 = [v72 copy];
  [v4 setPpkReference:v73];

  v74 = [(NEIKEv2SessionConfiguration *)self ppkID];
  v75 = [v74 copy];
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
  v1 = a1;
  if (a1)
  {
    if ([a1 remotePublicKeyRef])
    {
      v1 = [v1 remotePublicKeyRef];
      CFRetain(v1);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

@end