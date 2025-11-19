@interface BLSHPseudoFlipbookFrame
- (BLSHPseudoFlipbookFrame)initWithPresentationTime:(unint64_t)a3 frameId:(unint64_t)a4 specifier:(id)a5 memoryUsage:(unint64_t)a6;
- (CGRect)rawSurfaceFrame;
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
@end

@implementation BLSHPseudoFlipbookFrame

- (BLSHPseudoFlipbookFrame)initWithPresentationTime:(unint64_t)a3 frameId:(unint64_t)a4 specifier:(id)a5 memoryUsage:(unint64_t)a6
{
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BLSHPseudoFlipbookFrame;
  v11 = [(BLSHPseudoFlipbookFrame *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_presentationTime = a3;
    v11->_frameId = a4;
    objc_storeStrong(&v11->_bls_specifier, a5);
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
  v6 = [(BLSHPseudoFlipbookFrame *)self bls_specifier];
  v7 = [v3 appendObject:v6 withName:@"specifier"];

  v8 = [v3 build];

  return v8;
}

- (id)bls_shortLoggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:-[BLSHPseudoFlipbookFrame frameId](self withName:{"frameId"), @"frameId"}];
  v5 = [(BLSHPseudoFlipbookFrame *)self bls_specifier];
  if (v5)
  {
    v6 = [(BLSHPseudoFlipbookFrame *)self bls_specifier];
    v7 = [v6 bls_shortLoggingString];
    [v3 appendString:v7 withName:&stru_283373E60];
  }

  else
  {
    [(BLSHPseudoFlipbookFrame *)self presentationTime];
    v6 = BLSShortLoggingStringForMachTime();
    [v3 appendString:v6 withName:&stru_283373E60];
  }

  v8 = [v3 build];

  return v8;
}

@end