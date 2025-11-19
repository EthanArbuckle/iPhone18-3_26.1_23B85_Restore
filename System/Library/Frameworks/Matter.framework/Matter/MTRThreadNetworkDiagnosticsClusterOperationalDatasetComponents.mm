@interface MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents
- (MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents

- (MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents)init
{
  v17.receiver = self;
  v17.super_class = MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents;
  v2 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)&v17 init];
  v3 = v2;
  if (v2)
  {
    activeTimestampPresent = v2->_activeTimestampPresent;
    v2->_activeTimestampPresent = &unk_284C3E588;

    pendingTimestampPresent = v3->_pendingTimestampPresent;
    v3->_pendingTimestampPresent = &unk_284C3E588;

    masterKeyPresent = v3->_masterKeyPresent;
    v3->_masterKeyPresent = &unk_284C3E588;

    networkNamePresent = v3->_networkNamePresent;
    v3->_networkNamePresent = &unk_284C3E588;

    extendedPanIdPresent = v3->_extendedPanIdPresent;
    v3->_extendedPanIdPresent = &unk_284C3E588;

    meshLocalPrefixPresent = v3->_meshLocalPrefixPresent;
    v3->_meshLocalPrefixPresent = &unk_284C3E588;

    delayPresent = v3->_delayPresent;
    v3->_delayPresent = &unk_284C3E588;

    panIdPresent = v3->_panIdPresent;
    v3->_panIdPresent = &unk_284C3E588;

    channelPresent = v3->_channelPresent;
    v3->_channelPresent = &unk_284C3E588;

    pskcPresent = v3->_pskcPresent;
    v3->_pskcPresent = &unk_284C3E588;

    securityPolicyPresent = v3->_securityPolicyPresent;
    v3->_securityPolicyPresent = &unk_284C3E588;

    channelMaskPresent = v3->_channelMaskPresent;
    v3->_channelMaskPresent = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents);
  v5 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self activeTimestampPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setActiveTimestampPresent:v5];

  v6 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self pendingTimestampPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setPendingTimestampPresent:v6];

  v7 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self masterKeyPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setMasterKeyPresent:v7];

  v8 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self networkNamePresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setNetworkNamePresent:v8];

  v9 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self extendedPanIdPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setExtendedPanIdPresent:v9];

  v10 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self meshLocalPrefixPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setMeshLocalPrefixPresent:v10];

  v11 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self delayPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setDelayPresent:v11];

  v12 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self panIdPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setPanIdPresent:v12];

  v13 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self channelPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setChannelPresent:v13];

  v14 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self pskcPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setPskcPresent:v14];

  v15 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self securityPolicyPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setSecurityPolicyPresent:v15];

  v16 = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self channelMaskPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setChannelMaskPresent:v16];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: activeTimestampPresent:%@ pendingTimestampPresent:%@; masterKeyPresent:%@; networkNamePresent:%@; extendedPanIdPresent:%@; meshLocalPrefixPresent:%@; delayPresent:%@; panIdPresent:%@; channelPresent:%@; pskcPresent:%@; securityPolicyPresent:%@; channelMaskPresent:%@; >", v5, self->_activeTimestampPresent, self->_pendingTimestampPresent, self->_masterKeyPresent, self->_networkNamePresent, self->_extendedPanIdPresent, self->_meshLocalPrefixPresent, self->_delayPresent, self->_panIdPresent, self->_channelPresent, self->_pskcPresent, self->_securityPolicyPresent, self->_channelMaskPresent];;

  return v6;
}

@end