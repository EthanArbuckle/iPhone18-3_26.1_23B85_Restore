@interface AXBrailleTranslationResult
- (AXBrailleTranslationResult)initWithCoder:(id)coder;
- (AXBrailleTranslationResult)initWithInputString:(id)string ResultString:(id)resultString locationMap:(id)map;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXBrailleTranslationResult

- (AXBrailleTranslationResult)initWithInputString:(id)string ResultString:(id)resultString locationMap:(id)map
{
  stringCopy = string;
  resultStringCopy = resultString;
  mapCopy = map;
  v15.receiver = self;
  v15.super_class = AXBrailleTranslationResult;
  v12 = [(AXBrailleTranslationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_inputString, string);
    objc_storeStrong(&v13->_resultString, resultString);
    objc_storeStrong(&v13->_locationMap, map);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AXBrailleTranslationResult alloc];
  v5 = [(NSString *)self->_inputString copy];
  v6 = [(NSString *)self->_resultString copy];
  v7 = [(NSArray *)self->_locationMap copy];
  v8 = [(AXBrailleTranslationResult *)v4 initWithInputString:v5 ResultString:v6 locationMap:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resultString = [(AXBrailleTranslationResult *)self resultString];
  [coderCopy encodeObject:resultString forKey:@"resultString"];

  locationMap = [(AXBrailleTranslationResult *)self locationMap];
  [coderCopy encodeObject:locationMap forKey:@"locationMap"];
}

- (AXBrailleTranslationResult)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AXBrailleTranslationResult;
  v5 = [(AXBrailleTranslationResult *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resultString"];
    resultString = v5->_resultString;
    v5->_resultString = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"locationMap"];
    locationMap = v5->_locationMap;
    v5->_locationMap = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end