@interface MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct;
- (MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams)init;
- (MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams)initWithDecodableStruct:(const DecodableType *)struct;
- (MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams

- (MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams;
  v2 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams *)&v6 init];
  v3 = v2;
  if (v2)
  {
    snapshotStreamID = v2->_snapshotStreamID;
    v2->_snapshotStreamID = &unk_284C3E4C8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams);
  snapshotStreamID = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams *)self snapshotStreamID];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams *)v4 setSnapshotStreamID:snapshotStreamID];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: snapshotStreamID:%@ >", v5, self->_snapshotStreamID];;

  return v6;
}

- (MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams;
  v7 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1361 commandID:8 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12 = 0;
      v8 = sub_238F005E4(&v12, v13);
      if (!v8)
      {
        v8 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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

- (MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams)initWithDecodableStruct:(const DecodableType *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams;
  v4 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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

- (ChipError)_setFieldsFromDecodableStruct:(const DecodableType *)struct
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&struct->var0];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateResponseParams *)self setSnapshotStreamID:v4];

  v5 = 0;
  v6 = 0;
  result.mFile = v6;
  result.mError = v5;
  result.mLine = HIDWORD(v5);
  return result;
}

@end