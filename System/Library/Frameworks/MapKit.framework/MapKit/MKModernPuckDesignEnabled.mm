@interface MKModernPuckDesignEnabled
@end

@implementation MKModernPuckDesignEnabled

void ___MKModernPuckDesignEnabled_block_invoke()
{
  _MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher = _MKLinkedOnOrAfterReleaseSet(2824);
  _MKModernPuckDesignEnabled_newPuckEnabled = GEOConfigGetBOOL();
  v0 = _GEOConfigAddBlockListenerForKey();
  v1 = _MKModernPuckDesignEnabled_configListener;
  _MKModernPuckDesignEnabled_configListener = v0;
}

uint64_t ___MKModernPuckDesignEnabled_block_invoke_2()
{
  result = GEOConfigGetBOOL();
  _MKModernPuckDesignEnabled_newPuckEnabled = result;
  return result;
}

@end