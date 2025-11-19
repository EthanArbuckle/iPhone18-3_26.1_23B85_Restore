@interface ASDTGestalt
+ (id)getAcousticID;
@end

@implementation ASDTGestalt

+ (id)getAcousticID
{
  v2 = MGGetSInt32Answer();
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%d", "AID", v2];
  }

  return v3;
}

@end