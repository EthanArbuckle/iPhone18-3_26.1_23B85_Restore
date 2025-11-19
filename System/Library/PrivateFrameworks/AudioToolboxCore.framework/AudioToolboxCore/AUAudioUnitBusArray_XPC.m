@interface AUAudioUnitBusArray_XPC
- (AUAudioUnitBusArray_XPC)initWithOwner:(id)a3 scope:(unsigned int)a4 busses:(id)a5 countWritable:(BOOL)a6;
- (BOOL)setBusCount:(unint64_t)a3 error:(id *)a4;
@end

@implementation AUAudioUnitBusArray_XPC

- (BOOL)setBusCount:(unint64_t)a3 error:(id *)a4
{
  v7 = [(AUAudioUnitBusArray *)self ownerAudioUnit];
  LOBYTE(a4) = [v7 _setBusCount:a3 scope:-[AUAudioUnitBusArray busType](self error:{"busType"), a4}];

  return a4;
}

- (AUAudioUnitBusArray_XPC)initWithOwner:(id)a3 scope:(unsigned int)a4 busses:(id)a5 countWritable:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AUAudioUnitBusArray_XPC;
  v12 = [(AUAudioUnitBusArray *)&v15 initWithAudioUnit:v10 busType:a4];
  v13 = v12;
  if (v12)
  {
    [(AUAudioUnitBusArray *)v12 replaceBusses:v11];
    v13->_countWritable = a6;
  }

  return v13;
}

@end