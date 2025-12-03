@interface NSNumber(ATXScoreLogSerializable)
- (uint64_t)needsQuotes;
- (void)atx_writeToFile:()ATXScoreLogSerializable;
@end

@implementation NSNumber(ATXScoreLogSerializable)

- (uint64_t)needsQuotes
{
  v2 = [self isEqualToNumber:&unk_283A58F60];
  v3 = v2 | [self isEqualToNumber:&unk_283A58F70];
  return v3 | [self isEqualToNumber:&unk_283A58F80];
}

- (void)atx_writeToFile:()ATXScoreLogSerializable
{
  v5 = *[self objCType];
  switch(v5)
  {
    case 'd':
      if ([self needsQuotes])
      {
        v8 = "%0.16g";
      }

      else
      {
        v8 = "%0.16g";
      }

      [self doubleValue];
      goto LABEL_16;
    case 'f':
      if ([self needsQuotes])
      {
        v8 = "%0.7g";
      }

      else
      {
        v8 = "%0.7g";
      }

      [self floatValue];
      v10 = v9;
LABEL_16:
      fprintf(a3, v8, *&v10);
      return;
    case 'i':
      intValue = [self intValue];
      if ([self needsQuotes])
      {
        v7 = "%d";
      }

      else
      {
        v7 = "%d";
      }

      fprintf(a3, v7, intValue);
      break;
    default:

      printStringRepresentation(a3, self);
      break;
  }
}

@end