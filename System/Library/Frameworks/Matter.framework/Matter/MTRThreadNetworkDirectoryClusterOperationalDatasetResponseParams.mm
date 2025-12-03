@interface MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams)init;
- (MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams

- (MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams;
  v2 = [(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams *)&v6 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    operationalDataset = v2->_operationalDataset;
    v2->_operationalDataset = data;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams);
  operationalDataset = [(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams *)self operationalDataset];
  [(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams *)v4 setOperationalDataset:operationalDataset];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_operationalDataset base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: operationalDataset:%@ >", v5, v6];;

  return v7;
}

- (MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams;
  v7 = [(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1107 commandID:3 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12 = 0uLL;
      v8 = sub_238F16E50(&v12, v13);
      if (!v8)
      {
        v8 = [(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams;
  v4 = [(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:*struct length:*(struct + 1)];
  [(MTRThreadNetworkDirectoryClusterOperationalDatasetResponseParams *)self setOperationalDataset:v4];

  v5 = 0;
  v6 = 0;
  result.mFile = v6;
  result.mError = v5;
  result.mLine = HIDWORD(v5);
  return result;
}

@end