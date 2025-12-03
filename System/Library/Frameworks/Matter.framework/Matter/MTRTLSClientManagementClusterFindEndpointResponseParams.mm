@interface MTRTLSClientManagementClusterFindEndpointResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRTLSClientManagementClusterFindEndpointResponseParams)init;
- (MTRTLSClientManagementClusterFindEndpointResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRTLSClientManagementClusterFindEndpointResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSClientManagementClusterFindEndpointResponseParams

- (MTRTLSClientManagementClusterFindEndpointResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRTLSClientManagementClusterFindEndpointResponseParams;
  v2 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    endpoint = v2->_endpoint;
    v2->_endpoint = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTLSClientManagementClusterFindEndpointResponseParams);
  endpoint = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
  [(MTRTLSClientManagementClusterFindEndpointResponseParams *)v4 setEndpoint:endpoint];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: endpoint:%@ >", v5, self->_endpoint];;

  return v6;
}

- (MTRTLSClientManagementClusterFindEndpointResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = MTRTLSClientManagementClusterFindEndpointResponseParams;
  v7 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)&v18 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:2050 commandID:3 error:error];
  if (v17)
  {
    sub_2393C5AAC(v16);
    sub_2393C5ADC(v16, *(v17 + 1), *(v17 + 3));
    v8 = sub_2393C6FD0(v16, 256);
    if (!v8)
    {
      v12 = 0;
      v14[14] = 0;
      v15 = 0;
      v13 = 0;
      memset(v14, 0, 13);
      v8 = sub_238F2EE20(&v12, v16);
      if (!v8)
      {
        v8 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v17);
LABEL_10:

  return v10;
}

- (MTRTLSClientManagementClusterFindEndpointResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRTLSClientManagementClusterFindEndpointResponseParams;
  v4 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = objc_opt_new();
  [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self setEndpoint:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  endpoint = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
  [endpoint setEndpointID:v6];

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 1) length:*(struct + 2)];
  endpoint2 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
  [endpoint2 setHostname:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 12)];
  endpoint3 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
  [endpoint3 setPort:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 13)];
  endpoint4 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
  [endpoint4 setCaid:v12];

  if (*(struct + 30))
  {
    endpoint6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 14)];
    endpoint5 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
    [endpoint5 setCcdid:endpoint6];
  }

  else
  {
    endpoint6 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
    [endpoint6 setCcdid:0];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 32)];
  endpoint7 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
  [endpoint7 setStatus:v16];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 33)];
  endpoint8 = [(MTRTLSClientManagementClusterFindEndpointResponseParams *)self endpoint];
  [endpoint8 setFabricIndex:v18];

  v20 = 0;
  v21 = 0;
  result.mFile = v21;
  result.mError = v20;
  result.mLine = HIDWORD(v20);
  return result;
}

@end