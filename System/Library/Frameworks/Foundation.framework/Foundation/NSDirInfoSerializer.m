@interface NSDirInfoSerializer
- (unint64_t)serializePListValueIn:(id)a3 key:(id)a4 value:(id)a5;
@end

@implementation NSDirInfoSerializer

- (unint64_t)serializePListValueIn:(id)a3 key:(id)a4 value:(id)a5
{
  v7 = [self->super.ss writeInt:{*(a5 + 1), a4}];
  v8 = [self->super.ss writeInt:*(a5 + 8)] + v7;
  v9 = v8 + [self->super.ss writeInt:*(a5 + 9) & 7];
  return v9 + [self->super.ss writeInt:(*(a5 + 9) >> 1) & 1];
}

@end