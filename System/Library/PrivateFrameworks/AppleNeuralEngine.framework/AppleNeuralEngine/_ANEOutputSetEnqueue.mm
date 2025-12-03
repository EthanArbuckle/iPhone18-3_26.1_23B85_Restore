@interface _ANEOutputSetEnqueue
- (id)initOutputSetWithProcedureIndex:(unsigned int)index setIndex:(unsigned int)setIndex signalValue:(unint64_t)value signalNotRequired:(BOOL)required isOpenLoop:(BOOL)loop;
@end

@implementation _ANEOutputSetEnqueue

- (id)initOutputSetWithProcedureIndex:(unsigned int)index setIndex:(unsigned int)setIndex signalValue:(unint64_t)value signalNotRequired:(BOOL)required isOpenLoop:(BOOL)loop
{
  v13.receiver = self;
  v13.super_class = _ANEOutputSetEnqueue;
  result = [(_ANEOutputSetEnqueue *)&v13 init];
  if (result)
  {
    *(result + 3) = index;
    *(result + 4) = setIndex;
    *(result + 3) = value;
    *(result + 8) = required;
    *(result + 9) = loop;
  }

  return result;
}

@end