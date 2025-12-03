@interface MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents
- (MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents);
  activeTimestampPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self activeTimestampPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setActiveTimestampPresent:activeTimestampPresent];

  pendingTimestampPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self pendingTimestampPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setPendingTimestampPresent:pendingTimestampPresent];

  masterKeyPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self masterKeyPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setMasterKeyPresent:masterKeyPresent];

  networkNamePresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self networkNamePresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setNetworkNamePresent:networkNamePresent];

  extendedPanIdPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self extendedPanIdPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setExtendedPanIdPresent:extendedPanIdPresent];

  meshLocalPrefixPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self meshLocalPrefixPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setMeshLocalPrefixPresent:meshLocalPrefixPresent];

  delayPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self delayPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setDelayPresent:delayPresent];

  panIdPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self panIdPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setPanIdPresent:panIdPresent];

  channelPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self channelPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setChannelPresent:channelPresent];

  pskcPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self pskcPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setPskcPresent:pskcPresent];

  securityPolicyPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self securityPolicyPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setSecurityPolicyPresent:securityPolicyPresent];

  channelMaskPresent = [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)self channelMaskPresent];
  [(MTRThreadNetworkDiagnosticsClusterOperationalDatasetComponents *)v4 setChannelMaskPresent:channelMaskPresent];

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