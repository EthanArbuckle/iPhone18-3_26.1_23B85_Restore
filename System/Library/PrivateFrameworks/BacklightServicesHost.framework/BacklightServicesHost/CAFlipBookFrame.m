@interface CAFlipBookFrame
@end

@implementation CAFlipBookFrame

id __64__CAFlipBookFrame_BacklightServicesHost__bls_shortLoggingString__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendPointer:*(a1 + 40) withName:0];
  v3 = [*(a1 + 32) appendUInt64:objc_msgSend(*(a1 + 40) withName:{"frameId"), @"id"}];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bls_specifier];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 bls_specifier];
    v8 = [v7 bls_shortLoggingString];
    [v4 appendString:v8 withName:0];
  }

  else
  {
    [v6 presentationTime];
    v7 = BLSShortLoggingStringForMachTime();
    [v4 appendString:v7 withName:0];
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CF0978] sharedFormatter];
  v11 = [v10 stringFromByteCount:{objc_msgSend(*(a1 + 40), "memoryUsage")}];
  v12 = [v9 appendObject:v11 withName:0];

  [*(a1 + 40) apl];
  v14 = [*(a1 + 32) appendFloat:@"apl" withName:3 decimalPrecision:v13];
  [*(a1 + 40) aplDimming];
  v15 = *(a1 + 32);
  [*(a1 + 40) aplDimming];
  v17 = [v15 appendFloat:@"%" withName:3 decimalPrecision:v16];
  v18 = *(a1 + 32);
  [*(a1 + 40) rawSurfaceFrame];
  v19 = [v18 appendRect:0 withName:?];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isInverted") ifEqualTo:{@"inverted", 1}];
}

@end