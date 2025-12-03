@interface CVAJasperDepthFrameProcessor
- (CVAJasperDepthFrameProcessor)initWithCalibrationDict:(id)dict;
- (id)process:(__CVBuffer *)process;
@end

@implementation CVAJasperDepthFrameProcessor

- (CVAJasperDepthFrameProcessor)initWithCalibrationDict:(id)dict
{
  dictCopy = dict;
  v10.receiver = self;
  v10.super_class = CVAJasperDepthFrameProcessor;
  v5 = [(CVAJasperDepthFrameProcessor *)&v10 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x277D218E0] calibrationDataWithJasperCalibDataDictionary:dictCopy];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D218D8]) initWithSystemCalibrationData:v6];
    jdProc = v5->_jdProc;
    v5->_jdProc = v7;

LABEL_4:
    v6 = v5;
  }

  return v6;
}

- (id)process:(__CVBuffer *)process
{
  CVPixelBufferLockBaseAddress(process, 1uLL);
  BytesPerRow = CVPixelBufferGetBytesPerRow(process);
  Width = CVPixelBufferGetWidth(process);
  if (BytesPerRow == Width)
  {
    BaseAddress = CVPixelBufferGetBaseAddress(process);
    v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:BaseAddress length:CVPixelBufferGetDataSize(process) freeWhenDone:0];
    v9 = [(JDDepthProcessor *)self->_jdProc generatePointCloudFromRawFrame:v8];

    v10 = v9;
LABEL_13:
    CVPixelBufferUnlockBaseAddress(process, 1uLL);
    v22 = 0;
    goto LABEL_15;
  }

  v11 = Width;
  v12 = objc_autoreleasePoolPush();
  PixelFormatType = CVPixelBufferGetPixelFormatType(process);
  if (PixelFormatType == 1278226488)
  {
    v14 = 1;
  }

  else
  {
    if (PixelFormatType != 1278226742)
    {
      v21 = 0;
      v10 = 0;
      goto LABEL_12;
    }

    v14 = 2;
  }

  Height = CVPixelBufferGetHeight(process);
  v16 = CVPixelBufferGetBaseAddress(process);
  v17 = v14 * v11;
  height = [MEMORY[0x277CBEB28] dataWithLength:v17 * Height];
  if (Height)
  {
    v19 = 0;
    do
    {
      memcpy(([height mutableBytes] + v19), v16, v17);
      v16 += BytesPerRow;
      v19 += v17;
      --Height;
    }

    while (Height);
  }

  v20 = [(JDDepthProcessor *)self->_jdProc generatePointCloudFromRawFrame:height];

  v21 = 1;
  v10 = v20;
LABEL_12:
  objc_autoreleasePoolPop(v12);
  if (v21)
  {
    goto LABEL_13;
  }

  v22 = v10;
  v10 = 0;
LABEL_15:

  return v10;
}

@end