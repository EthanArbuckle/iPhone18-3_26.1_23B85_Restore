@interface GEORPRapResponse
+ (id)RapStateIconAsString:(int)a3;
@end

@implementation GEORPRapResponse

+ (id)RapStateIconAsString:(int)a3
{
  if (a3 >= 6)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_10165CF48[a3];
  }

  return v4;
}

@end