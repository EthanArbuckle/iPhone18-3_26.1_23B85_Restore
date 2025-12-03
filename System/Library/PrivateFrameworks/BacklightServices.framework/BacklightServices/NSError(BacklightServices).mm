@interface NSError(BacklightServices)
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
@end

@implementation NSError(BacklightServices)

- (id)bls_loggingString
{
  v2 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__NSError_BacklightServices__bls_loggingString__block_invoke;
  v9[3] = &unk_278428688;
  v3 = v2;
  v10 = v3;
  selfCopy = self;
  [v3 appendProem:0 block:v9];
  underlyingErrors = [self underlyingErrors];
  if ([underlyingErrors count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__NSError_BacklightServices__bls_loggingString__block_invoke_3;
    v7[3] = &unk_278428CE8;
    v8 = v3;
    [v8 appendCollection:underlyingErrors withName:@"underlyingErrors" itemBlock:v7];
  }

  v5 = [v3 description];

  return v5;
}

- (id)bls_shortLoggingString
{
  v2 = objc_opt_new();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__NSError_BacklightServices__bls_shortLoggingString__block_invoke;
  v5[3] = &unk_278428638;
  v5[4] = self;
  [v2 appendCustomFormatWithName:0 block:v5];
  v3 = [v2 description];

  return v3;
}

@end