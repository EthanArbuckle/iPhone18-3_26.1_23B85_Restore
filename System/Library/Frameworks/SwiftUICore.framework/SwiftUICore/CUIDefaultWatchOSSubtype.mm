@interface CUIDefaultWatchOSSubtype
@end

@implementation CUIDefaultWatchOSSubtype

void ___CUIDefaultWatchOSSubtype_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v4 = v0;
    v1 = [v0 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 integerValue];
    }

    else
    {
      v3 = 320;
    }

    v0 = v4;
  }

  else
  {
    v3 = 320;
  }

  _CUIDefaultWatchOSSubtype_watchSubtype = v3;
}

@end