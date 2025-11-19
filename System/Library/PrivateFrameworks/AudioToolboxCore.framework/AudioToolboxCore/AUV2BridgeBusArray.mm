@interface AUV2BridgeBusArray
- (AUV2BridgeBusArray)initWithOwner:(id)a3 scope:(unsigned int)a4;
- (BOOL)isCountChangeable;
- (BOOL)setBusCount:(unint64_t)a3 error:(id *)a4;
@end

@implementation AUV2BridgeBusArray

- (BOOL)setBusCount:(unint64_t)a3 error:(id *)a4
{
  v7 = [(AUAudioUnitBusArray *)self ownerAudioUnit];
  LOBYTE(a4) = [v7 _setElementCount:-[AUAudioUnitBusArray busType](self count:"busType") error:{a3, a4}];

  return a4;
}

- (BOOL)isCountChangeable
{
  v2 = self;
  v3 = [(AUAudioUnitBusArray *)self ownerAudioUnit];
  LOBYTE(v2) = [v3 _elementCountWritable:{-[AUAudioUnitBusArray busType](v2, "busType")}];

  return v2;
}

- (AUV2BridgeBusArray)initWithOwner:(id)a3 scope:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = AUV2BridgeBusArray;
  return [(AUAudioUnitBusArray *)&v5 initWithAudioUnit:a3 busType:a4];
}

@end