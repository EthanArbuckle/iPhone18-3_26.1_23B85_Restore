@interface CBSpatialInteractionDeviceTimestampInfo
- (id)descriptionWithLevel:(int)a3;
@end

@implementation CBSpatialInteractionDeviceTimestampInfo

- (id)descriptionWithLevel:(int)a3
{
  if (a3 > 5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&self->_timestamp];
    if (self->_timestamp == 0.0)
    {
      goto LABEL_5;
    }

LABEL_8:
    NSAppendPrintF_safe();
    v7 = 0;
    if (!self->_reason)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (qword_1ED7C1FA0 != -1)
  {
    [CBSpatialInteractionDeviceTimestampInfo descriptionWithLevel:];
  }

  v4 = qword_1ED7C1F98;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:self->_timestamp];
  v6 = [v4 stringFromDate:v5];

  if (self->_timestamp != 0.0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v7 = 0;
  if (self->_reason)
  {
LABEL_9:
    v11 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v8 = v7;

    v7 = v8;
  }

LABEL_10:
  if (self->_duplicateCount)
  {
    duplicateCount = self->_duplicateCount;
    NSAppendPrintF_safe();
    v9 = v7;

    v7 = v9;
  }

  return v7;
}

uint64_t __64__CBSpatialInteractionDeviceTimestampInfo_descriptionWithLevel___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED7C1F98;
  qword_1ED7C1F98 = v0;

  v2 = qword_1ED7C1F98;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

@end