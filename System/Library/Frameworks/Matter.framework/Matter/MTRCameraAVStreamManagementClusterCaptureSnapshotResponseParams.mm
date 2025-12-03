@interface MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams)init;
- (MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams

- (MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams;
  v2 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)&v9 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    data = v2->_data;
    v2->_data = data;

    imageCodec = v2->_imageCodec;
    v2->_imageCodec = &unk_284C3E4C8;

    v6 = objc_opt_new();
    resolution = v2->_resolution;
    v2->_resolution = v6;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams);
  data = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)self data];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)v4 setData:data];

  imageCodec = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)self imageCodec];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)v4 setImageCodec:imageCodec];

  resolution = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)self resolution];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)v4 setResolution:resolution];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: data:%@ imageCodec:%@; resolution:%@; >", v5, v6, self->_imageCodec, self->_resolution];;

  return v7;
}

- (MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams;
  v7 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:1361 commandID:13 error:error];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v14 = 0;
      v12[0] = 0;
      v12[1] = 0;
      v13 = 0;
      v8 = sub_238F042EC(v12, v15);
      if (!v8)
      {
        v8 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams;
  v4 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:*struct length:*(struct + 1)];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)self setData:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 16)];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)self setImageCodec:v6];

  v7 = objc_opt_new();
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)self setResolution:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 9)];
  resolution = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)self resolution];
  [resolution setWidth:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 10)];
  resolution2 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotResponseParams *)self resolution];
  [resolution2 setHeight:v10];

  v12 = 0;
  v13 = 0;
  result.mFile = v13;
  result.mError = v12;
  result.mLine = HIDWORD(v12);
  return result;
}

@end