@interface AKBasicLoginSecondFactorActions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AKBasicLoginSecondFactorActions

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = self;
  v13[2] = a2;
  v13[1] = a3;
  v13[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [v14->_regenerateCodeAction copy];
  v4 = *(v13[0] + 1);
  *(v13[0] + 1) = v3;
  *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v6 = [v14->_codeEnteredAction copy];
  v7 = *(v13[0] + 2);
  *(v13[0] + 2) = v6;
  *&v8 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v9 = [v14->_ak_cancelAction copy];
  v10 = *(v13[0] + 3);
  *(v13[0] + 3) = v9;
  MEMORY[0x277D82BD8](v10);
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);
  return v12;
}

@end