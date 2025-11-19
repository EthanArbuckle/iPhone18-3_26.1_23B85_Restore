@interface MTRTLSClientManagementClusterTLSEndpointStruct
- (MTRTLSClientManagementClusterTLSEndpointStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRTLSClientManagementClusterTLSEndpointStruct

- (MTRTLSClientManagementClusterTLSEndpointStruct)init
{
  v13.receiver = self;
  v13.super_class = MTRTLSClientManagementClusterTLSEndpointStruct;
  v2 = [(MTRTLSClientManagementClusterTLSEndpointStruct *)&v13 init];
  v3 = v2;
  if (v2)
  {
    endpointID = v2->_endpointID;
    v2->_endpointID = &unk_284C3E588;

    v5 = [MEMORY[0x277CBEA90] data];
    hostname = v3->_hostname;
    v3->_hostname = v5;

    port = v3->_port;
    v3->_port = &unk_284C3E588;

    caid = v3->_caid;
    v3->_caid = &unk_284C3E588;

    ccdid = v3->_ccdid;
    v3->_ccdid = 0;

    status = v3->_status;
    v3->_status = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRTLSClientManagementClusterTLSEndpointStruct);
  v5 = [(MTRTLSClientManagementClusterTLSEndpointStruct *)self endpointID];
  [(MTRTLSClientManagementClusterTLSEndpointStruct *)v4 setEndpointID:v5];

  v6 = [(MTRTLSClientManagementClusterTLSEndpointStruct *)self hostname];
  [(MTRTLSClientManagementClusterTLSEndpointStruct *)v4 setHostname:v6];

  v7 = [(MTRTLSClientManagementClusterTLSEndpointStruct *)self port];
  [(MTRTLSClientManagementClusterTLSEndpointStruct *)v4 setPort:v7];

  v8 = [(MTRTLSClientManagementClusterTLSEndpointStruct *)self caid];
  [(MTRTLSClientManagementClusterTLSEndpointStruct *)v4 setCaid:v8];

  v9 = [(MTRTLSClientManagementClusterTLSEndpointStruct *)self ccdid];
  [(MTRTLSClientManagementClusterTLSEndpointStruct *)v4 setCcdid:v9];

  v10 = [(MTRTLSClientManagementClusterTLSEndpointStruct *)self status];
  [(MTRTLSClientManagementClusterTLSEndpointStruct *)v4 setStatus:v10];

  v11 = [(MTRTLSClientManagementClusterTLSEndpointStruct *)self fabricIndex];
  [(MTRTLSClientManagementClusterTLSEndpointStruct *)v4 setFabricIndex:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  endpointID = self->_endpointID;
  v7 = [(NSData *)self->_hostname base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: endpointID:%@ hostname:%@; port:%@; caid:%@; ccdid:%@; status:%@; fabricIndex:%@; >", v5, endpointID, v7, self->_port, self->_caid, self->_ccdid, self->_status, self->_fabricIndex];;

  return v8;
}

@end