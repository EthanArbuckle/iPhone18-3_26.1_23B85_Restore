@interface AVPointCloudData
- (ADJasperPointCloud)jasperPointCloud;
- (AVPointCloudData)initWithDataBuffer:(__CVBuffer *)a3;
- (const)bankIdentifiers;
- (const)confidenceScores;
- (const)spotIdentifiers;
- (id)debugDescription;
- (id)description;
- (uint64_t)points;
- (unsigned)pointCloudFormatType;
- (void)dealloc;
@end

@implementation AVPointCloudData

- (id)debugDescription
{
  [(AVPointCloudData *)self pointCloudFormatType];
  v3 = AVStringForOSType();
  v4 = [(AVPointCloudData *)self pointCount];
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"'%@' %d points", v3, v4];
  if (v4 >= 1)
  {
    [v5 appendFormat:@", bank:%d", *-[AVPointCloudData bankIdentifiers](self, "bankIdentifiers")];
  }

  v6 = MEMORY[0x1E696AEC0];

  return [v6 stringWithString:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVPointCloudData debugDescription](self, "debugDescription")];
}

- (void)dealloc
{
  dataBuffer = self->_dataBuffer;
  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  v4.receiver = self;
  v4.super_class = AVPointCloudData;
  [(AVPointCloudData *)&v4 dealloc];
}

- (ADJasperPointCloud)jasperPointCloud
{
  result = self->_jasperPointCloud;
  if (!result)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__2;
    v4 = getADJasperPointCloudClass_softClass;
    v10 = __Block_byref_object_dispose__2;
    v11 = getADJasperPointCloudClass_softClass;
    if (!getADJasperPointCloudClass_softClass)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __getADJasperPointCloudClass_block_invoke;
      v5[3] = &unk_1E786EC30;
      v5[4] = &v6;
      __getADJasperPointCloudClass_block_invoke(v5);
      v4 = v7[5];
    }

    _Block_object_dispose(&v6, 8);
    result = [v4 makeWithDataBuffer:self->_dataBuffer];
    self->_jasperPointCloud = result;
  }

  return result;
}

- (unsigned)pointCloudFormatType
{
  dataBuffer = self->_dataBuffer;
  if (dataBuffer)
  {
    LODWORD(dataBuffer) = MEMORY[0x1EEDBF800](dataBuffer, a2);
  }

  return dataBuffer;
}

- (uint64_t)points
{
  if ([a1 pointCloudFormatType] != 1785950320)
  {
    return 0;
  }

  v2 = [a1 jasperPointCloud];

  return [v2 points];
}

- (const)confidenceScores
{
  if ([(AVPointCloudData *)self pointCloudFormatType]!= 1785950320)
  {
    return 0;
  }

  v3 = [(AVPointCloudData *)self jasperPointCloud];

  return [(ADJasperPointCloud *)v3 confidences];
}

- (const)spotIdentifiers
{
  if ([(AVPointCloudData *)self pointCloudFormatType]!= 1785950320)
  {
    return 0;
  }

  v3 = [(AVPointCloudData *)self jasperPointCloud];

  return [(ADJasperPointCloud *)v3 spotIds];
}

- (const)bankIdentifiers
{
  if ([(AVPointCloudData *)self pointCloudFormatType]!= 1785950320)
  {
    return 0;
  }

  v3 = [(AVPointCloudData *)self jasperPointCloud];

  return [(ADJasperPointCloud *)v3 bankIds];
}

- (AVPointCloudData)initWithDataBuffer:(__CVBuffer *)a3
{
  v8.receiver = self;
  v8.super_class = AVPointCloudData;
  v4 = [(AVPointCloudData *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    v4->_dataBuffer = v5;
    v6 = CVBufferCopyAttachment(v5, *MEMORY[0x1E6990D40], 0);
    if (v6)
    {
      v6 = CFAutorelease(v6);
    }

    v4->_projectorMode = [objc_msgSend(v6 objectForKeyedSubscript:{*MEMORY[0x1E6991138]), "intValue"}];
  }

  return v4;
}

@end