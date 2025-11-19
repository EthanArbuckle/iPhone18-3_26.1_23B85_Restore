@interface AKTrustedPhoneNumber
- (AKTrustedPhoneNumber)initWithJSONDictionary:(id)a3;
@end

@implementation AKTrustedPhoneNumber

- (AKTrustedPhoneNumber)initWithJSONDictionary:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v20;
  v20 = 0;
  v18.receiver = v3;
  v18.super_class = AKTrustedPhoneNumber;
  v20 = [(AKTrustedPhoneNumber *)&v18 init];
  objc_storeStrong(&v20, v20);
  if (v20)
  {
    v16 = MEMORY[0x1E696AD98];
    v17 = [location[0] objectForKeyedSubscript:@"id"];
    v4 = [v16 numberWithInt:{objc_msgSend(v17, "intValue")}];
    identifier = v20->_identifier;
    v20->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    MEMORY[0x1E69E5920](v17);
    v6 = [location[0] objectForKeyedSubscript:@"numberWithDialCode"];
    numberWithDialCode = v20->_numberWithDialCode;
    v20->_numberWithDialCode = v6;
    MEMORY[0x1E69E5920](numberWithDialCode);
    v8 = [location[0] objectForKeyedSubscript:@"number"];
    number = v20->_number;
    v20->_number = v8;
    MEMORY[0x1E69E5920](number);
    v10 = [location[0] objectForKeyedSubscript:@"obfuscatedNumber"];
    obfuscatedNumber = v20->_obfuscatedNumber;
    v20->_obfuscatedNumber = v10;
    MEMORY[0x1E69E5920](obfuscatedNumber);
    v12 = [location[0] objectForKeyedSubscript:@"pushMode"];
    pushMode = v20->_pushMode;
    v20->_pushMode = v12;
    MEMORY[0x1E69E5920](pushMode);
  }

  v15 = MEMORY[0x1E69E5928](v20);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v15;
}

@end