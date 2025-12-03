@interface DASignalData
- (DASignalData)initWithSourceSignal:(float *)signal receivedSignal:(float *)receivedSignal minimumDelay:(unint64_t)delay maximumDelay:(unint64_t)maximumDelay fileTimeInFrames:(float)frames outputID:(unint64_t)d inputID:(unint64_t)iD fileName:(id)self0;
- (void)freeReceivedData;
- (void)freeSourceData;
@end

@implementation DASignalData

- (DASignalData)initWithSourceSignal:(float *)signal receivedSignal:(float *)receivedSignal minimumDelay:(unint64_t)delay maximumDelay:(unint64_t)maximumDelay fileTimeInFrames:(float)frames outputID:(unint64_t)d inputID:(unint64_t)iD fileName:(id)self0
{
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = DASignalData;
  v19 = [(DASignalData *)&v23 init];
  v20 = v19;
  if (v19)
  {
    [(DASignalData *)v19 setMinimumDelay:delay];
    [(DASignalData *)v20 setMaximumDelay:maximumDelay];
    *&v21 = frames;
    [(DASignalData *)v20 setFileTimeInFrames:v21];
    [(DASignalData *)v20 setSourceSignal:signal];
    [(DASignalData *)v20 setReceivedSignal:receivedSignal];
    [(DASignalData *)v20 setInputID:iD];
    [(DASignalData *)v20 setOutputID:d];
    [(DASignalData *)v20 setFileName:nameCopy];
  }

  return v20;
}

- (void)freeSourceData
{
  sourceSignal = [(DASignalData *)self sourceSignal];

  free(sourceSignal);
}

- (void)freeReceivedData
{
  receivedSignal = [(DASignalData *)self receivedSignal];

  free(receivedSignal);
}

@end