@interface MPMRInitPropertyLyricsMap
@end

@implementation MPMRInitPropertyLyricsMap

id ___MPMRInitPropertyLyricsMap_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 lyrics];
  v4 = [v3 lyrics];

  if (!v4)
  {
    v5 = [v2 deviceSpecificUserInfo];
    v6 = [v5 objectForKeyedSubscript:@"lrcsGzpData"];

    if (v6)
    {
      v7 = MSVGzipDecompressData();
      if (v7)
      {
        v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end