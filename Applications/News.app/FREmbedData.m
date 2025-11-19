@interface FREmbedData
- (unint64_t)autoPlayMediaWithValue:(id)a3 withType:(int)a4;
@end

@implementation FREmbedData

- (unint64_t)autoPlayMediaWithValue:(id)a3 withType:(int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    if ([v5 isEqualToString:@"video"])
    {
      v7 = 2;
    }

    else if ([v6 isEqualToString:@"audio"])
    {
      v7 = 1;
    }

    else
    {
      v7 = ([v6 isEqualToString:@"all"] << 63) >> 63;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end