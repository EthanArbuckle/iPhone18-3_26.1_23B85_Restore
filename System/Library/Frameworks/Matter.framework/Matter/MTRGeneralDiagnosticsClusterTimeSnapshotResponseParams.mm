@interface MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams)init;
- (MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams)initWithResponseValue:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams

- (MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams;
  v2 = [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    systemTimeMs = v2->_systemTimeMs;
    v2->_systemTimeMs = &unk_284C3E4C8;

    posixTimeMs = v3->_posixTimeMs;
    v3->_posixTimeMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams);
  v5 = [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)self systemTimeMs];
  [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)v4 setSystemTimeMs:v5];

  v6 = [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)self posixTimeMs];
  [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)v4 setPosixTimeMs:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: systemTimeMs:%@ posixTimeMs:%@; >", v5, self->_systemTimeMs, self->_posixTimeMs];;

  return v6;
}

- (MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams)initWithResponseValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams;
  v7 = [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:51 commandID:2 error:a4];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v8 = sub_238F187DC(&v12, v15);
      if (!v8)
      {
        v8 = [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, a4);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams;
  v4 = [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a3];
  [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)self setSystemTimeMs:v5];

  if (*(a3 + 16))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 1)];
    [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)self setPosixTimeMs:v6];
  }

  else
  {
    [(MTRGeneralDiagnosticsClusterTimeSnapshotResponseParams *)self setPosixTimeMs:0];
  }

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end