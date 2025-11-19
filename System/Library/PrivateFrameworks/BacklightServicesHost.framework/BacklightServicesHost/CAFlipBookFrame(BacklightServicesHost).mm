@interface CAFlipBookFrame(BacklightServicesHost)
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
@end

@implementation CAFlipBookFrame(BacklightServicesHost)

- (id)bls_loggingString
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:a1];
  [a1 presentationTime];
  v3 = BLSLoggingStringForMachTime();
  [v2 appendString:v3 withName:@"presentationTime"];

  v4 = [v2 appendUInt64:objc_msgSend(a1 withName:{"frameId"), @"frameId"}];
  v5 = [a1 bls_specifier];
  v6 = [v5 bls_loggingString];
  v7 = [v2 appendObject:v6 withName:@"specifier"];

  v8 = [MEMORY[0x277CF0978] sharedFormatter];
  v9 = [v8 stringFromByteCount:{objc_msgSend(a1, "memoryUsage")}];
  v10 = [v2 appendObject:v9 withName:@"memoryUsage"];

  [a1 apl];
  v12 = [v2 appendFloat:@"apl" withName:3 decimalPrecision:v11];
  [a1 aplDimming];
  v14 = [v2 appendFloat:@"dimming" withName:3 decimalPrecision:v13];
  [a1 rawSurfaceFrame];
  v15 = [v2 appendRect:@"rawSurfaceFrame" withName:?];
  v16 = [v2 appendBool:objc_msgSend(a1 withName:"isInverted") ifEqualTo:{@"inverted", 1}];
  v17 = [v2 build];

  return v17;
}

- (id)bls_shortLoggingString
{
  v2 = objc_opt_new();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __64__CAFlipBookFrame_BacklightServicesHost__bls_shortLoggingString__block_invoke;
  v9 = &unk_27841E538;
  v10 = v2;
  v11 = a1;
  v3 = v2;
  [v3 appendProem:0 block:&v6];
  v4 = [v3 description];

  return v4;
}

@end