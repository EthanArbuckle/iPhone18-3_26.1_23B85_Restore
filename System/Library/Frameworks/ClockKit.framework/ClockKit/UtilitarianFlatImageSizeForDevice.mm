@interface UtilitarianFlatImageSizeForDevice
@end

@implementation UtilitarianFlatImageSizeForDevice

uint64_t ___UtilitarianFlatImageSizeForDevice_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_2_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_2___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_2___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_2_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_2___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_2___previousCLKDeviceVersion = [v2 version];
    ___UtilitarianFlatImageSizeForDevice_block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_2___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_2_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_2_lock);

  return v5;
}

void ___UtilitarianFlatImageSizeForDevice_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  *&xmmword_27DE91920 = ___UtilitarianFlatImageSizeForDevice_block_invoke_4(v4, v4);
  *(&xmmword_27DE91920 + 1) = v2;
  _UtilitarianFlatImageSizeForDevice__imageSize = ___UtilitarianFlatImageSizeForDevice_block_invoke_4([v4 setNewestAllowedSizeClass:&unk_284A34128], v4);
  *algn_27DE91918 = v3;
}

double ___UtilitarianFlatImageSizeForDevice_block_invoke_4(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_284A34110;
  v8[1] = &unk_284A34128;
  v9[0] = &unk_284A34D78;
  v9[1] = &unk_284A34D88;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a2;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 scaledValue:v4 withOverrides:22.0];
  v6 = v5;

  [v3 scaledValue:10.0];
  return v6;
}

@end