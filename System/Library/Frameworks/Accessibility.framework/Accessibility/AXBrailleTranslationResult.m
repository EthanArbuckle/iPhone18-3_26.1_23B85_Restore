@interface AXBrailleTranslationResult
- (AXBrailleTranslationResult)initWithCoder:(id)a3;
- (AXBrailleTranslationResult)initWithInputString:(id)a3 ResultString:(id)a4 locationMap:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXBrailleTranslationResult

- (AXBrailleTranslationResult)initWithInputString:(id)a3 ResultString:(id)a4 locationMap:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AXBrailleTranslationResult;
  v12 = [(AXBrailleTranslationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_inputString, a3);
    objc_storeStrong(&v13->_resultString, a4);
    objc_storeStrong(&v13->_locationMap, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AXBrailleTranslationResult alloc];
  v5 = [(NSString *)self->_inputString copy];
  v6 = [(NSString *)self->_resultString copy];
  v7 = [(NSArray *)self->_locationMap copy];
  v8 = [(AXBrailleTranslationResult *)v4 initWithInputString:v5 ResultString:v6 locationMap:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXBrailleTranslationResult *)self resultString];
  [v4 encodeObject:v5 forKey:@"resultString"];

  v6 = [(AXBrailleTranslationResult *)self locationMap];
  [v4 encodeObject:v6 forKey:@"locationMap"];
}

- (AXBrailleTranslationResult)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AXBrailleTranslationResult;
  v5 = [(AXBrailleTranslationResult *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resultString"];
    resultString = v5->_resultString;
    v5->_resultString = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"locationMap"];
    locationMap = v5->_locationMap;
    v5->_locationMap = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end