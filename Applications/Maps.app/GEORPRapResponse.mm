@interface GEORPRapResponse
+ (id)RapStateIconAsString:(int)string;
@end

@implementation GEORPRapResponse

+ (id)RapStateIconAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_10165CF48[string];
  }

  return v4;
}

@end