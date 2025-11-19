@interface MTRGeneralDiagnosticsClusterNetworkInterface
- (MTRGeneralDiagnosticsClusterNetworkInterface)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGeneralDiagnosticsClusterNetworkInterface

- (MTRGeneralDiagnosticsClusterNetworkInterface)init
{
  v16.receiver = self;
  v16.super_class = MTRGeneralDiagnosticsClusterNetworkInterface;
  v2 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)&v16 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284BD0DD8;

    isOperational = v3->_isOperational;
    v3->_isOperational = &unk_284C3E588;

    offPremiseServicesReachableIPv4 = v3->_offPremiseServicesReachableIPv4;
    v3->_offPremiseServicesReachableIPv4 = 0;

    offPremiseServicesReachableIPv6 = v3->_offPremiseServicesReachableIPv6;
    v3->_offPremiseServicesReachableIPv6 = 0;

    v8 = [MEMORY[0x277CBEA90] data];
    hardwareAddress = v3->_hardwareAddress;
    v3->_hardwareAddress = v8;

    v10 = [MEMORY[0x277CBEA60] array];
    iPv4Addresses = v3->_iPv4Addresses;
    v3->_iPv4Addresses = v10;

    v12 = [MEMORY[0x277CBEA60] array];
    iPv6Addresses = v3->_iPv6Addresses;
    v3->_iPv6Addresses = v12;

    type = v3->_type;
    v3->_type = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGeneralDiagnosticsClusterNetworkInterface);
  v5 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)self name];
  [(MTRGeneralDiagnosticsClusterNetworkInterface *)v4 setName:v5];

  v6 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)self isOperational];
  [(MTRGeneralDiagnosticsClusterNetworkInterface *)v4 setIsOperational:v6];

  v7 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)self offPremiseServicesReachableIPv4];
  [(MTRGeneralDiagnosticsClusterNetworkInterface *)v4 setOffPremiseServicesReachableIPv4:v7];

  v8 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)self offPremiseServicesReachableIPv6];
  [(MTRGeneralDiagnosticsClusterNetworkInterface *)v4 setOffPremiseServicesReachableIPv6:v8];

  v9 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)self hardwareAddress];
  [(MTRGeneralDiagnosticsClusterNetworkInterface *)v4 setHardwareAddress:v9];

  v10 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)self iPv4Addresses];
  [(MTRGeneralDiagnosticsClusterNetworkInterface *)v4 setIPv4Addresses:v10];

  v11 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)self iPv6Addresses];
  [(MTRGeneralDiagnosticsClusterNetworkInterface *)v4 setIPv6Addresses:v11];

  v12 = [(MTRGeneralDiagnosticsClusterNetworkInterface *)self type];
  [(MTRGeneralDiagnosticsClusterNetworkInterface *)v4 setType:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  isOperational = self->_isOperational;
  offPremiseServicesReachableIPv4 = self->_offPremiseServicesReachableIPv4;
  offPremiseServicesReachableIPv6 = self->_offPremiseServicesReachableIPv6;
  v10 = [(NSData *)self->_hardwareAddress base64EncodedStringWithOptions:0];
  v11 = [v3 stringWithFormat:@"<%@: name:%@ isOperational:%@; offPremiseServicesReachableIPv4:%@; offPremiseServicesReachableIPv6:%@; hardwareAddress:%@; iPv4Addresses:%@; iPv6Addresses:%@; type:%@; >", v5, name, isOperational, offPremiseServicesReachableIPv4, offPremiseServicesReachableIPv6, v10, self->_iPv4Addresses, self->_iPv6Addresses, self->_type];;

  return v11;
}

@end