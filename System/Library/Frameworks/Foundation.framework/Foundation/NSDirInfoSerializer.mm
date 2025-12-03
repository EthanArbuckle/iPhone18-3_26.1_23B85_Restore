@interface NSDirInfoSerializer
- (unint64_t)serializePListValueIn:(id)in key:(id)key value:(id)value;
@end

@implementation NSDirInfoSerializer

- (unint64_t)serializePListValueIn:(id)in key:(id)key value:(id)value
{
  v7 = [self->super.ss writeInt:{*(value + 1), key}];
  v8 = [self->super.ss writeInt:*(value + 8)] + v7;
  v9 = v8 + [self->super.ss writeInt:*(value + 9) & 7];
  return v9 + [self->super.ss writeInt:(*(value + 9) >> 1) & 1];
}

@end