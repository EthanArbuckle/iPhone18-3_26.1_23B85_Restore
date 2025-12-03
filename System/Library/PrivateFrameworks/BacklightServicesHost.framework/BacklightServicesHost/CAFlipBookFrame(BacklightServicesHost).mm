@interface CAFlipBookFrame(BacklightServicesHost)
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
@end

@implementation CAFlipBookFrame(BacklightServicesHost)

- (id)bls_loggingString
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [self presentationTime];
  v3 = BLSLoggingStringForMachTime();
  [v2 appendString:v3 withName:@"presentationTime"];

  v4 = [v2 appendUInt64:objc_msgSend(self withName:{"frameId"), @"frameId"}];
  bls_specifier = [self bls_specifier];
  bls_loggingString = [bls_specifier bls_loggingString];
  v7 = [v2 appendObject:bls_loggingString withName:@"specifier"];

  mEMORY[0x277CF0978] = [MEMORY[0x277CF0978] sharedFormatter];
  v9 = [mEMORY[0x277CF0978] stringFromByteCount:{objc_msgSend(self, "memoryUsage")}];
  v10 = [v2 appendObject:v9 withName:@"memoryUsage"];

  [self apl];
  v12 = [v2 appendFloat:@"apl" withName:3 decimalPrecision:v11];
  [self aplDimming];
  v14 = [v2 appendFloat:@"dimming" withName:3 decimalPrecision:v13];
  [self rawSurfaceFrame];
  v15 = [v2 appendRect:@"rawSurfaceFrame" withName:?];
  v16 = [v2 appendBool:objc_msgSend(self withName:"isInverted") ifEqualTo:{@"inverted", 1}];
  build = [v2 build];

  return build;
}

- (id)bls_shortLoggingString
{
  v2 = objc_opt_new();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __64__CAFlipBookFrame_BacklightServicesHost__bls_shortLoggingString__block_invoke;
  v9 = &unk_27841E538;
  v10 = v2;
  selfCopy = self;
  v3 = v2;
  [v3 appendProem:0 block:&v6];
  v4 = [v3 description];

  return v4;
}

@end