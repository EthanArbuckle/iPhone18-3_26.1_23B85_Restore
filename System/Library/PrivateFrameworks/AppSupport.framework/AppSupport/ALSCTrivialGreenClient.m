@interface ALSCTrivialGreenClient
+ (id)_skuRegionCode;
- (ALSCTrivialGreenClient)init;
- (id)_initWithSKURegionCode:(id)a3 key2EnablingSKURegionCodes:(id)a4;
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

- (id)_initWithSKURegionCode:(id)a3 key2EnablingSKURegionCodes:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = ALSCTrivialGreenClient;
  v6 = [(ALSCTrivialGreenClient *)&v11 init];
  if (v6)
  {
    if (a3)
    {
      v7 = [a4 containsObject:a3];
    }

    else
    {
      v7 = 0;
    }

    [(ALSCTrivialGreenClient *)v6 setCalculatedKey2Value:v7];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ALSCTrivialGreenClient *)v6 calculatedKey2Value];
      *buf = 67109378;
      v13 = v8;
      v14 = 2112;
      v15 = a3;
      _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Trivial green calculated value %d for region code %@", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

@end