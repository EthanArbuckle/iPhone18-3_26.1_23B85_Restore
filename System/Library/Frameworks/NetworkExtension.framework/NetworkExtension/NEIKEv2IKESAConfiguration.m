@interface NEIKEv2IKESAConfiguration
- (NEIKEv2IKESAConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setProposals:(id)a3;
@end

@implementation NEIKEv2IKESAConfiguration

- (void)setProposals:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
  proposals = self->_proposals;
  self->_proposals = v4;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_proposals;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        ++v9;
        if (v12)
        {
          *(v12 + 8) = v9;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NEIKEv2IKESAConfiguration *)self localEndpoint];
  v6 = [v5 copy];
  [v4 setLocalEndpoint:v6];

  v7 = [(NEIKEv2IKESAConfiguration *)self remoteEndpoint];
  v8 = [v7 copy];
  [v4 setRemoteEndpoint:v8];

  v9 = [(NEIKEv2IKESAConfiguration *)self outgoingInterfaceName];
  v10 = [v9 copy];
  [v4 setOutgoingInterfaceName:v10];

  [v4 setRandomizeLocalPort:{-[NEIKEv2IKESAConfiguration randomizeLocalPort](self, "randomizeLocalPort")}];
  [v4 setServerMode:{-[NEIKEv2IKESAConfiguration serverMode](self, "serverMode")}];
  [v4 setAllowRedirect:{-[NEIKEv2IKESAConfiguration allowRedirect](self, "allowRedirect")}];
  [v4 setDisableSwitchToNATTPorts:{-[NEIKEv2IKESAConfiguration disableSwitchToNATTPorts](self, "disableSwitchToNATTPorts")}];
  [v4 setAllowTCPEncapsulation:{-[NEIKEv2IKESAConfiguration allowTCPEncapsulation](self, "allowTCPEncapsulation")}];
  [v4 setUseTLSForTCPEncapsulation:{-[NEIKEv2IKESAConfiguration useTLSForTCPEncapsulation](self, "useTLSForTCPEncapsulation")}];
  [v4 setForceUDPEncapsulation:{-[NEIKEv2IKESAConfiguration forceUDPEncapsulation](self, "forceUDPEncapsulation")}];
  [v4 setPreferInitiatorProposalOrder:{-[NEIKEv2IKESAConfiguration preferInitiatorProposalOrder](self, "preferInitiatorProposalOrder")}];
  [v4 setTcpEncapsulationPort:{-[NEIKEv2IKESAConfiguration tcpEncapsulationPort](self, "tcpEncapsulationPort")}];
  [v4 setNonceSize:{-[NEIKEv2IKESAConfiguration nonceSize](self, "nonceSize")}];
  [v4 setStrictNonceSizeChecks:{-[NEIKEv2IKESAConfiguration strictNonceSizeChecks](self, "strictNonceSizeChecks")}];
  v11 = [(NEIKEv2IKESAConfiguration *)self redirectedFromServer];
  v12 = [v11 copy];
  [v4 setRedirectedFromServer:v12];

  v13 = [(NEIKEv2IKESAConfiguration *)self proposals];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E695DEC8]);
    v15 = [(NEIKEv2IKESAConfiguration *)self proposals];
    v16 = [v14 initWithArray:v15 copyItems:1];
    [v4 setProposals:v16];
  }

  v17 = [(NEIKEv2IKESAConfiguration *)self customIKESAInitPayloads];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E695DEC8]);
    v19 = [(NEIKEv2IKESAConfiguration *)self customIKESAInitPayloads];
    v20 = [v18 initWithArray:v19 copyItems:1];
    [v4 setCustomIKESAInitPayloads:v20];
  }

  v21 = [(NEIKEv2IKESAConfiguration *)self customIKESAInitVendorPayloads];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E695DEC8]);
    v23 = [(NEIKEv2IKESAConfiguration *)self customIKESAInitVendorPayloads];
    v24 = [v22 initWithArray:v23 copyItems:1];
    [v4 setCustomIKESAInitVendorPayloads:v24];
  }

  [v4 setMaximumPacketSize:{-[NEIKEv2IKESAConfiguration maximumPacketSize](self, "maximumPacketSize")}];
  [v4 setHeaderOverhead:{-[NEIKEv2IKESAConfiguration headerOverhead](self, "headerOverhead")}];
  [v4 setRequestChildlessSA:{-[NEIKEv2IKESAConfiguration requestChildlessSA](self, "requestChildlessSA")}];
  [v4 setRequestPPK:{-[NEIKEv2IKESAConfiguration requestPPK](self, "requestPPK")}];
  v25 = [(NEIKEv2IKESAConfiguration *)self extraSupportedSignatureHashes];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x1E695DFD8]);
    v27 = [(NEIKEv2IKESAConfiguration *)self extraSupportedSignatureHashes];
    v28 = [v26 initWithSet:v27 copyItems:1];
    [v4 setExtraSupportedSignatureHashes:v28];
  }

  v29 = [(NEIKEv2IKESAConfiguration *)self supportedSecurePasswordMethods];

  if (v29)
  {
    v30 = objc_alloc(MEMORY[0x1E695DFD8]);
    v31 = [(NEIKEv2IKESAConfiguration *)self supportedSecurePasswordMethods];
    v32 = [v30 initWithSet:v31 copyItems:1];
    [v4 setSupportedSecurePasswordMethods:v32];
  }

  return v4;
}

- (NEIKEv2IKESAConfiguration)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2IKESAConfiguration;
  v2 = [(NEIKEv2IKESAConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(NEIKEv2IKESAConfiguration *)v2 setNonceSize:16];
    [(NEIKEv2IKESAConfiguration *)v3 setMaximumPacketSize:0];
    [(NEIKEv2IKESAConfiguration *)v3 setHeaderOverhead:0xFFFFFFFFLL];
    v4 = v3;
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

@end