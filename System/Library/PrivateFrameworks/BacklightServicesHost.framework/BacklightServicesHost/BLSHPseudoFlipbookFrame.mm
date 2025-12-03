@interface BLSHPseudoFlipbookFrame
- (BLSHPseudoFlipbookFrame)initWithPresentationTime:(unint64_t)time frameId:(unint64_t)id specifier:(id)specifier memoryUsage:(unint64_t)usage;
- (CGRect)rawSurfaceFrame;
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
@end

@implementation BLSHPseudoFlipbookFrame

- (BLSHPseudoFlipbookFrame)initWithPresentationTime:(unint64_t)time frameId:(unint64_t)id specifier:(id)specifier memoryUsage:(unint64_t)usage
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = BLSHPseudoFlipbookFrame;
  v11 = [(BLSHPseudoFlipbookFrame *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_presentationTime = time;
    v11->_frameId = id;
    objc_storeStrong(&v11->_bls_specifier, specifier);
  }

  return v12;
}

- (CGRect)rawSurfaceFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)bls_loggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(BLSHPseudoFlipbookFrame *)self presentationTime];
  v4 = BLSLoggingStringForMachTime();
  [v3 appendString:v4 withName:@"presentationTime"];

  v5 = [v3 appendUInt64:-[BLSHPseudoFlipbookFrame frameId](self withName:{"frameId"), @"frameId"}];
  bls_specifier = [(BLSHPseudoFlipbookFrame *)self bls_specifier];
  v7 = [v3 appendObject:bls_specifier withName:@"specifier"];

  build = [v3 build];

  return build;
}

- (id)bls_shortLoggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:-[BLSHPseudoFlipbookFrame frameId](self withName:{"frameId"), @"frameId"}];
  bls_specifier = [(BLSHPseudoFlipbookFrame *)self bls_specifier];
  if (bls_specifier)
  {
    bls_specifier2 = [(BLSHPseudoFlipbookFrame *)self bls_specifier];
    bls_shortLoggingString = [bls_specifier2 bls_shortLoggingString];
    [v3 appendString:bls_shortLoggingString withName:&stru_283373E60];
  }

  else
  {
    [(BLSHPseudoFlipbookFrame *)self presentationTime];
    bls_specifier2 = BLSShortLoggingStringForMachTime();
    [v3 appendString:bls_specifier2 withName:&stru_283373E60];
  }

  build = [v3 build];

  return build;
}

@end