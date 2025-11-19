@interface NSNumber(ATXScoreLogSerializable)
- (uint64_t)needsQuotes;
- (void)atx_writeToFile:()ATXScoreLogSerializable;
@end

@implementation NSNumber(ATXScoreLogSerializable)

- (uint64_t)needsQuotes
{
  v2 = [a1 isEqualToNumber:&unk_283A58F60];
  v3 = v2 | [a1 isEqualToNumber:&unk_283A58F70];
  return v3 | [a1 isEqualToNumber:&unk_283A58F80];
}

- (void)atx_writeToFile:()ATXScoreLogSerializable
{
  v5 = *[a1 objCType];
  switch(v5)
  {
    case 'd':
      if ([a1 needsQuotes])
      {
        v8 = "%0.16g";
      }

      else
      {
        v8 = "%0.16g";
      }

      [a1 doubleValue];
      goto LABEL_16;
    case 'f':
      if ([a1 needsQuotes])
      {
        v8 = "%0.7g";
      }

      else
      {
        v8 = "%0.7g";
      }

      [a1 floatValue];
      v10 = v9;
LABEL_16:
      fprintf(a3, v8, *&v10);
      return;
    case 'i':
      v6 = [a1 intValue];
      if ([a1 needsQuotes])
      {
        v7 = "%d";
      }

      else
      {
        v7 = "%d";
      }

      fprintf(a3, v7, v6);
      break;
    default:

      printStringRepresentation(a3, a1);
      break;
  }
}

@end