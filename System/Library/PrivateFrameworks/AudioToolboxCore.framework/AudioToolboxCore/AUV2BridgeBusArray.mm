@interface AUV2BridgeBusArray
- (AUV2BridgeBusArray)initWithOwner:(id)owner scope:(unsigned int)scope;
- (BOOL)isCountChangeable;
- (BOOL)setBusCount:(unint64_t)count error:(id *)error;
@end

@implementation AUV2BridgeBusArray

- (BOOL)setBusCount:(unint64_t)count error:(id *)error
{
  ownerAudioUnit = [(AUAudioUnitBusArray *)self ownerAudioUnit];
  LOBYTE(error) = [ownerAudioUnit _setElementCount:-[AUAudioUnitBusArray busType](self count:"busType") error:{count, error}];

  return error;
}

- (BOOL)isCountChangeable
{
  selfCopy = self;
  ownerAudioUnit = [(AUAudioUnitBusArray *)self ownerAudioUnit];
  LOBYTE(selfCopy) = [ownerAudioUnit _elementCountWritable:{-[AUAudioUnitBusArray busType](selfCopy, "busType")}];

  return selfCopy;
}

- (AUV2BridgeBusArray)initWithOwner:(id)owner scope:(unsigned int)scope
{
  v5.receiver = self;
  v5.super_class = AUV2BridgeBusArray;
  return [(AUAudioUnitBusArray *)&v5 initWithAudioUnit:owner busType:scope];
}

@end