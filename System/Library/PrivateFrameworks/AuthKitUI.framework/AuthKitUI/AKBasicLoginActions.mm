@interface AKBasicLoginActions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AKBasicLoginActions

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v19[2] = a2;
  v19[1] = zone;
  v19[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [selfCopy->_authenticateAction copy];
  v4 = *(v19[0] + 1);
  *(v19[0] + 1) = v3;
  *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v6 = [selfCopy->_ak_cancelAction copy];
  v7 = *(v19[0] + 2);
  *(v19[0] + 2) = v6;
  *&v8 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v9 = [selfCopy->_createIDAction copy];
  v10 = *(v19[0] + 3);
  *(v19[0] + 3) = v9;
  *&v11 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [selfCopy->_useIDAction copy];
  v13 = *(v19[0] + 4);
  *(v19[0] + 4) = v12;
  *&v14 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v15 = [selfCopy->_forgotPasswordAction copy];
  v16 = *(v19[0] + 6);
  *(v19[0] + 6) = v15;
  MEMORY[0x277D82BD8](v16);
  v18 = MEMORY[0x277D82BE0](v19[0]);
  objc_storeStrong(v19, 0);
  return v18;
}

@end