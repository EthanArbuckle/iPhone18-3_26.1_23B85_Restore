@interface CLKWidgetGroupHorizontalMargin
@end

@implementation CLKWidgetGroupHorizontalMargin

double ___CLKWidgetGroupHorizontalMargin_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&CLKRichRectangularCornerRadius_block_invoke_lock);
  if (CLKRichRectangularCornerRadius_block_invoke___cachedDevice)
  {
    v3 = CLKRichRectangularCornerRadius_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == CLKRichRectangularCornerRadius_block_invoke___previousCLKDeviceVersion))
  {
    v5 = CLKRichRectangularCornerRadius_block_invoke_value;
  }

  else
  {
    CLKRichRectangularCornerRadius_block_invoke___cachedDevice = v2;
    CLKRichRectangularCornerRadius_block_invoke___previousCLKDeviceVersion = [v2 version];
    v5 = ___CLKWidgetGroupHorizontalMargin_block_invoke_2(CLKRichRectangularCornerRadius_block_invoke___previousCLKDeviceVersion, v2);
    CLKRichRectangularCornerRadius_block_invoke_value = v5;
  }

  os_unfair_lock_unlock(&CLKRichRectangularCornerRadius_block_invoke_lock);

  return *&v5;
}

double ___CLKWidgetGroupHorizontalMargin_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_284A34A58;
  v7[1] = &unk_284A34A70;
  v8[0] = &unk_284A34F68;
  v8[1] = &unk_284A34F78;
  v7[2] = &unk_284A34A88;
  v7[3] = &unk_284A34AA0;
  v8[2] = &unk_284A34F88;
  v8[3] = &unk_284A34F88;
  v7[4] = &unk_284A34AB8;
  v7[5] = &unk_284A34AD0;
  v8[4] = &unk_284A34F68;
  v8[5] = &unk_284A34F98;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  [v2 scaledValue:v3 withOverrides:6.0];
  v5 = v4;

  return v5;
}

@end