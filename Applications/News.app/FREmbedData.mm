@interface FREmbedData
- (unint64_t)autoPlayMediaWithValue:(id)value withType:(int)type;
@end

@implementation FREmbedData

- (unint64_t)autoPlayMediaWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  v6 = valueCopy;
  if (type == 3)
  {
    if ([valueCopy isEqualToString:@"video"])
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