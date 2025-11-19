@interface DASignalData
- (DASignalData)initWithSourceSignal:(float *)a3 receivedSignal:(float *)a4 minimumDelay:(unint64_t)a5 maximumDelay:(unint64_t)a6 fileTimeInFrames:(float)a7 outputID:(unint64_t)a8 inputID:(unint64_t)a9 fileName:(id)a10;
- (void)freeReceivedData;
- (void)freeSourceData;
@end

@implementation DASignalData

- (DASignalData)initWithSourceSignal:(float *)a3 receivedSignal:(float *)a4 minimumDelay:(unint64_t)a5 maximumDelay:(unint64_t)a6 fileTimeInFrames:(float)a7 outputID:(unint64_t)a8 inputID:(unint64_t)a9 fileName:(id)a10
{
  v18 = a10;
  v23.receiver = self;
  v23.super_class = DASignalData;
  v19 = [(DASignalData *)&v23 init];
  v20 = v19;
  if (v19)
  {
    [(DASignalData *)v19 setMinimumDelay:a5];
    [(DASignalData *)v20 setMaximumDelay:a6];
    *&v21 = a7;
    [(DASignalData *)v20 setFileTimeInFrames:v21];
    [(DASignalData *)v20 setSourceSignal:a3];
    [(DASignalData *)v20 setReceivedSignal:a4];
    [(DASignalData *)v20 setInputID:a9];
    [(DASignalData *)v20 setOutputID:a8];
    [(DASignalData *)v20 setFileName:v18];
  }

  return v20;
}

- (void)freeSourceData
{
  v2 = [(DASignalData *)self sourceSignal];

  free(v2);
}

- (void)freeReceivedData
{
  v2 = [(DASignalData *)self receivedSignal];

  free(v2);
}

@end