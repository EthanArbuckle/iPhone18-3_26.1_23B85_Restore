@interface AUAudioUnitBusArray_XPC
- (AUAudioUnitBusArray_XPC)initWithOwner:(id)owner scope:(unsigned int)scope busses:(id)busses countWritable:(BOOL)writable;
- (BOOL)setBusCount:(unint64_t)count error:(id *)error;
@end

@implementation AUAudioUnitBusArray_XPC

- (BOOL)setBusCount:(unint64_t)count error:(id *)error
{
  ownerAudioUnit = [(AUAudioUnitBusArray *)self ownerAudioUnit];
  LOBYTE(error) = [ownerAudioUnit _setBusCount:count scope:-[AUAudioUnitBusArray busType](self error:{"busType"), error}];

  return error;
}

- (AUAudioUnitBusArray_XPC)initWithOwner:(id)owner scope:(unsigned int)scope busses:(id)busses countWritable:(BOOL)writable
{
  ownerCopy = owner;
  bussesCopy = busses;
  v15.receiver = self;
  v15.super_class = AUAudioUnitBusArray_XPC;
  v12 = [(AUAudioUnitBusArray *)&v15 initWithAudioUnit:ownerCopy busType:scope];
  v13 = v12;
  if (v12)
  {
    [(AUAudioUnitBusArray *)v12 replaceBusses:bussesCopy];
    v13->_countWritable = writable;
  }

  return v13;
}

@end