@interface SOKerberosPacData
- (SOKerberosPacData)initWithValidationInfo:(id *)a3;
- (id)description;
@end

@implementation SOKerberosPacData

- (SOKerberosPacData)initWithValidationInfo:(id *)a3
{
  v22.receiver = self;
  v22.super_class = SOKerberosPacData;
  v4 = [(SOKerberosPacData *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(SOKerberosPacData *)v4 convertFromFileTime:a3->var3];
    passwordLastSet = v5->_passwordLastSet;
    v5->_passwordLastSet = v6;

    v8 = [(SOKerberosPacData *)v5 convertFromFileTime:a3->var4];
    passwordCanChange = v5->_passwordCanChange;
    v5->_passwordCanChange = v8;

    if (a3->var5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v10 = [(SOKerberosPacData *)v5 convertFromFileTime:?];
      v11 = 0;
    }

    passwordMustChange = v5->_passwordMustChange;
    v5->_passwordMustChange = v10;

    v5->_passwordNeverExpires = v11;
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:a3->var10.var6 length:a3->var10.var3];
    homeDirectory = v5->_homeDirectory;
    v5->_homeDirectory = v13;

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:a3->var6.var6 length:a3->var6.var3];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_285206D08;
    }

    objc_storeStrong(&v5->_effectiveName, v17);

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:a3->var7.var6 length:a3->var7.var3];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_285206D08;
    }

    objc_storeStrong(&v5->_fullName, v20);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SOKerberosPacData *)self passwordLastSet];
  v5 = [(SOKerberosPacData *)self passwordCanChange];
  v6 = [(SOKerberosPacData *)self passwordMustChange];
  if ([(SOKerberosPacData *)self passwordNeverExpires])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v8 = [(SOKerberosPacData *)self homeDirectory];
  v9 = [v3 stringWithFormat:@"passwordLastSet: %@, passwordCanChange: %@, passwordMustChange: %@, passwordNeverExpires: %@, homeDirectory: %@", v4, v5, v6, v7, v8];

  return v9;
}

@end