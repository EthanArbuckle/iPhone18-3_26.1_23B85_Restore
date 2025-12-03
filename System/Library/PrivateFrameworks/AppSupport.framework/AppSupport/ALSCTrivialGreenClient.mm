@interface ALSCTrivialGreenClient
+ (id)_skuRegionCode;
- (ALSCTrivialGreenClient)init;
- (id)_initWithSKURegionCode:(id)code key2EnablingSKURegionCodes:(id)codes;
@end

@implementation ALSCTrivialGreenClient

+ (id)_skuRegionCode
{
  v2 = MGCopyAnswer();

  return v2;
}

- (ALSCTrivialGreenClient)init
{
  v3 = +[ALSCTrivialGreenClient _skuRegionCode];

  return [(ALSCTrivialGreenClient *)self _initWithSKURegionCode:v3 key2EnablingSKURegionCodes:&unk_1F0A4F1C8];
}

- (id)_initWithSKURegionCode:(id)code key2EnablingSKURegionCodes:(id)codes
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = ALSCTrivialGreenClient;
  v6 = [(ALSCTrivialGreenClient *)&v11 init];
  if (v6)
  {
    if (code)
    {
      v7 = [codes containsObject:code];
    }

    else
    {
      v7 = 0;
    }

    [(ALSCTrivialGreenClient *)v6 setCalculatedKey2Value:v7];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      calculatedKey2Value = [(ALSCTrivialGreenClient *)v6 calculatedKey2Value];
      *buf = 67109378;
      v13 = calculatedKey2Value;
      v14 = 2112;
      codeCopy = code;
      _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Trivial green calculated value %d for region code %@", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

@end