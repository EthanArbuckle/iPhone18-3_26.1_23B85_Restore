@interface AKBasicLoginActions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AKBasicLoginActions

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = self;
  v19[2] = a2;
  v19[1] = a3;
  v19[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [v20->_authenticateAction copy];
  v4 = *(v19[0] + 1);
  *(v19[0] + 1) = v3;
  *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v6 = [v20->_ak_cancelAction copy];
  v7 = *(v19[0] + 2);
  *(v19[0] + 2) = v6;
  *&v8 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v9 = [v20->_createIDAction copy];
  v10 = *(v19[0] + 3);
  *(v19[0] + 3) = v9;
  *&v11 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [v20->_useIDAction copy];
  v13 = *(v19[0] + 4);
  *(v19[0] + 4) = v12;
  *&v14 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v15 = [v20->_forgotPasswordAction copy];
  v16 = *(v19[0] + 6);
  *(v19[0] + 6) = v15;
  MEMORY[0x277D82BD8](v16);
  v18 = MEMORY[0x277D82BE0](v19[0]);
  objc_storeStrong(v19, 0);
  return v18;
}

@end