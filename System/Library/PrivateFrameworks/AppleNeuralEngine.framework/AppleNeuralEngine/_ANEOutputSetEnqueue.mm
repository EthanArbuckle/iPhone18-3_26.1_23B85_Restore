@interface _ANEOutputSetEnqueue
- (id)initOutputSetWithProcedureIndex:(unsigned int)a3 setIndex:(unsigned int)a4 signalValue:(unint64_t)a5 signalNotRequired:(BOOL)a6 isOpenLoop:(BOOL)a7;
@end

@implementation _ANEOutputSetEnqueue

- (id)initOutputSetWithProcedureIndex:(unsigned int)a3 setIndex:(unsigned int)a4 signalValue:(unint64_t)a5 signalNotRequired:(BOOL)a6 isOpenLoop:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = _ANEOutputSetEnqueue;
  result = [(_ANEOutputSetEnqueue *)&v13 init];
  if (result)
  {
    *(result + 3) = a3;
    *(result + 4) = a4;
    *(result + 3) = a5;
    *(result + 8) = a6;
    *(result + 9) = a7;
  }

  return result;
}

@end