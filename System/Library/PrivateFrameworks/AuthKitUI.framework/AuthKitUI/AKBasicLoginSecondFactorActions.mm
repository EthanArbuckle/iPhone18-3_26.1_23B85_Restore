@interface AKBasicLoginSecondFactorActions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AKBasicLoginSecondFactorActions

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v13[2] = a2;
  v13[1] = zone;
  v13[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [selfCopy->_regenerateCodeAction copy];
  v4 = *(v13[0] + 1);
  *(v13[0] + 1) = v3;
  *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v6 = [selfCopy->_codeEnteredAction copy];
  v7 = *(v13[0] + 2);
  *(v13[0] + 2) = v6;
  *&v8 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v9 = [selfCopy->_ak_cancelAction copy];
  v10 = *(v13[0] + 3);
  *(v13[0] + 3) = v9;
  MEMORY[0x277D82BD8](v10);
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);
  return v12;
}

@end