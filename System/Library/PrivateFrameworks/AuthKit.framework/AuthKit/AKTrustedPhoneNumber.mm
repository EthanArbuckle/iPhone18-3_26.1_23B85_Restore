@interface AKTrustedPhoneNumber
- (AKTrustedPhoneNumber)initWithJSONDictionary:(id)dictionary;
@end

@implementation AKTrustedPhoneNumber

- (AKTrustedPhoneNumber)initWithJSONDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v3 = selfCopy;
  selfCopy = 0;
  v18.receiver = v3;
  v18.super_class = AKTrustedPhoneNumber;
  selfCopy = [(AKTrustedPhoneNumber *)&v18 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v16 = MEMORY[0x1E696AD98];
    v17 = [location[0] objectForKeyedSubscript:@"id"];
    v4 = [v16 numberWithInt:{objc_msgSend(v17, "intValue")}];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v4;
    MEMORY[0x1E69E5920](identifier);
    MEMORY[0x1E69E5920](v17);
    v6 = [location[0] objectForKeyedSubscript:@"numberWithDialCode"];
    numberWithDialCode = selfCopy->_numberWithDialCode;
    selfCopy->_numberWithDialCode = v6;
    MEMORY[0x1E69E5920](numberWithDialCode);
    v8 = [location[0] objectForKeyedSubscript:@"number"];
    number = selfCopy->_number;
    selfCopy->_number = v8;
    MEMORY[0x1E69E5920](number);
    v10 = [location[0] objectForKeyedSubscript:@"obfuscatedNumber"];
    obfuscatedNumber = selfCopy->_obfuscatedNumber;
    selfCopy->_obfuscatedNumber = v10;
    MEMORY[0x1E69E5920](obfuscatedNumber);
    v12 = [location[0] objectForKeyedSubscript:@"pushMode"];
    pushMode = selfCopy->_pushMode;
    selfCopy->_pushMode = v12;
    MEMORY[0x1E69E5920](pushMode);
  }

  v15 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

@end