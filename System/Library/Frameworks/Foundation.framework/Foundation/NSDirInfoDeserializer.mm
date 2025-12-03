@interface NSDirInfoDeserializer
- (id)deserializePListValueIn:(id)in key:(id)key length:(unint64_t)length;
@end

@implementation NSDirInfoDeserializer

- (id)deserializePListValueIn:(id)in key:(id)key length:(unint64_t)length
{
  v6 = [[NSDocInfo allocWithZone:?]];
  v6->time = [self->super.ds readInt];
  v6->mode = [self->super.ds readInt];
  readInt = [self->super.ds readInt];
  readInt2 = [self->super.ds readInt];
  v9 = readInt + 3;
  if (readInt >= 0)
  {
    v9 = readInt;
  }

  *(&v6->mode + 1) = *(&v6->mode + 1) & 0xFFF8 | readInt & 1 | v9 & 4 | (2 * (readInt2 & 1));
  return v6;
}

@end