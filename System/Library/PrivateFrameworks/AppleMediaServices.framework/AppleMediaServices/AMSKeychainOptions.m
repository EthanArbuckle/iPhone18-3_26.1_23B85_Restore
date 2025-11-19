@interface AMSKeychainOptions
+ (unint64_t)preferredAttestationStyle;
- (AMSKeychainOptions)initWithCoder:(id)a3;
- (AMSKeychainOptions)initWithOptionsDictionary:(id)a3;
- (BOOL)_compareString:(id)a3 withString:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)optionsDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSKeychainOptions

- (AMSKeychainOptions)initWithOptionsDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AMSKeychainOptions;
  v5 = [(AMSKeychainOptions *)&v16 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = MEMORY[0x1E695E0F8];
    }

    v6 = [v4 ams_objectForKey:@"AMSKeychainOptionsAuthenticationFallbackVisible" defaultValue:MEMORY[0x1E695E118]];
    v5->_authenticationFallbackVisible = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"AMSKeychainOptionsClientCertLabel"];
    if (v7)
    {
      objc_storeStrong(&v5->_clientCertLabel, v7);
    }

    v8 = [v4 ams_objectForKey:@"AMSKeychainOptionsDisplayAuthenticationReason" defaultValue:MEMORY[0x1E695E118]];
    v5->_displayAuthenticationReason = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"AMSKeychainOptionsIntermediateCertLabel"];
    if (v9)
    {
      objc_storeStrong(&v5->_intermediateCertLabel, v9);
    }

    v10 = [v4 objectForKeyedSubscript:@"AMSKeychainOptionsLabel"];
    if (v10)
    {
      objc_storeStrong(&v5->_label, v10);
    }

    v11 = [v4 objectForKeyedSubscript:@"AMSKeychainOptionsPrompt"];
    if (v11)
    {
      objc_storeStrong(&v5->_prompt, v11);
    }

    v12 = [v4 ams_objectForKey:@"AMSKeychainOptionsPurpose" defaultValue:&unk_1F0779640];
    v5->_purpose = [v12 unsignedIntegerValue];

    v13 = [v4 ams_objectForKey:@"AMSKeychainOptionsRegenerateKeys" defaultValue:MEMORY[0x1E695E110]];
    v5->_regenerateKeys = [v13 BOOLValue];

    v14 = [v4 ams_objectForKey:@"AMSKeychainOptionsStyle" defaultValue:&unk_1F0779640];
    v5->_style = [v14 unsignedIntegerValue];
  }

  return v5;
}

- (id)optionsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions authenticationFallbackVisible](self, "authenticationFallbackVisible")}];
  [v3 ams_setNullableObject:v4 forKey:@"AMSKeychainOptionsAuthenticationFallbackVisible"];

  v5 = [(AMSKeychainOptions *)self clientCertLabel];
  [v3 ams_setNullableObject:v5 forKey:@"AMSKeychainOptionsClientCertLabel"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions displayAuthenticationReason](self, "displayAuthenticationReason")}];
  [v3 ams_setNullableObject:v6 forKey:@"AMSKeychainOptionsDisplayAuthenticationReason"];

  v7 = [(AMSKeychainOptions *)self intermediateCertLabel];
  [v3 ams_setNullableObject:v7 forKey:@"AMSKeychainOptionsIntermediateCertLabel"];

  v8 = [(AMSKeychainOptions *)self label];
  [v3 ams_setNullableObject:v8 forKey:@"AMSKeychainOptionsLabel"];

  v9 = [(AMSKeychainOptions *)self prompt];
  [v3 ams_setNullableObject:v9 forKey:@"AMSKeychainOptionsPrompt"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSKeychainOptions purpose](self, "purpose")}];
  [v3 ams_setNullableObject:v10 forKey:@"AMSKeychainOptionsPurpose"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions regenerateKeys](self, "regenerateKeys")}];
  [v3 ams_setNullableObject:v11 forKey:@"AMSKeychainOptionsRegenerateKeys"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSKeychainOptions style](self, "style")}];
  [v3 ams_setNullableObject:v12 forKey:@"AMSKeychainOptionsStyle"];

  v13 = [v3 copy];

  return v13;
}

+ (unint64_t)preferredAttestationStyle
{
  v2 = MGGetBoolAnswer();
  v3 = +[AMSDevice hardwarePlatform];
  v4 = v3;
  v5 = !v2 || [v3 isEqualToString:@"t8015"];

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions authenticationFallbackVisible](self, "authenticationFallbackVisible")}];
  [v3 ams_setNullableObject:v4 forKey:@"authenticationFallbackVisible"];

  v5 = [(AMSKeychainOptions *)self clientCertLabel];

  if (v5)
  {
    v6 = [(AMSKeychainOptions *)self clientCertLabel];
    v7 = AMSHashIfNeeded(v6);
    [v3 ams_setNullableObject:v7 forKey:@"clientCertLabel"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions displayAuthenticationReason](self, "displayAuthenticationReason")}];
  [v3 ams_setNullableObject:v8 forKey:@"displayAuthenticationReason"];

  v9 = [(AMSKeychainOptions *)self intermediateCertLabel];

  if (v9)
  {
    v10 = [(AMSKeychainOptions *)self intermediateCertLabel];
    v11 = AMSHashIfNeeded(v10);
    [v3 ams_setNullableObject:v11 forKey:@"intermediateCertLabel"];
  }

  v12 = [(AMSKeychainOptions *)self label];

  if (v12)
  {
    v13 = [(AMSKeychainOptions *)self label];
    v14 = AMSHashIfNeeded(v13);
    [v3 ams_setNullableObject:v14 forKey:@"label"];
  }

  v15 = [(AMSKeychainOptions *)self prompt];

  if (v15)
  {
    v16 = [(AMSKeychainOptions *)self prompt];
    v17 = AMSHashIfNeeded(v16);
    [v3 ams_setNullableObject:v17 forKey:@"prompt"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSKeychainOptions purpose](self, "purpose")}];
  [v3 ams_setNullableObject:v18 forKey:@"purpose"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions regenerateKeys](self, "regenerateKeys")}];
  [v3 ams_setNullableObject:v19 forKey:@"regenerateKeys"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSKeychainOptions style](self, "style")}];
  [v3 ams_setNullableObject:v20 forKey:@"style"];

  v21 = [self ams_generateDescriptionWithSubObjects:v3];

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v5 = v4;

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [(AMSKeychainOptions *)self authenticationFallbackVisible];
  if (v6 != [v5 authenticationFallbackVisible])
  {
    goto LABEL_13;
  }

  v7 = [(AMSKeychainOptions *)self clientCertLabel];
  v8 = [v5 clientCertLabel];
  v9 = [(AMSKeychainOptions *)self _compareString:v7 withString:v8];

  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = [(AMSKeychainOptions *)self displayAuthenticationReason];
  if (v10 != [v5 displayAuthenticationReason])
  {
    goto LABEL_13;
  }

  v11 = [(AMSKeychainOptions *)self intermediateCertLabel];
  v12 = [v5 intermediateCertLabel];
  v13 = [(AMSKeychainOptions *)self _compareString:v11 withString:v12];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [(AMSKeychainOptions *)self label];
  v15 = [v5 label];
  v16 = [(AMSKeychainOptions *)self _compareString:v14 withString:v15];

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = [(AMSKeychainOptions *)self prompt];
  v18 = [v5 prompt];
  v19 = [(AMSKeychainOptions *)self _compareString:v17 withString:v18];

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = [(AMSKeychainOptions *)self purpose];
  if (v20 != [v5 purpose])
  {
    goto LABEL_13;
  }

  v21 = [(AMSKeychainOptions *)self regenerateKeys];
  if (v21 != [v5 regenerateKeys])
  {
    goto LABEL_13;
  }

  v22 = [(AMSKeychainOptions *)self style];
  v23 = v22 == [v5 style];
LABEL_14:

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSKeychainOptions *)self optionsDictionary];
  [v4 encodeObject:v5 forKey:@"o"];
}

- (AMSKeychainOptions)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [v5 decodeObjectOfClasses:v9 forKey:@"o"];

  objc_opt_class();
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  v12 = [(AMSKeychainOptions *)self initWithOptionsDictionary:v11];
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AMSKeychainOptions *)self optionsDictionary];
  v6 = [v5 copy];
  v7 = [v4 initWithOptionsDictionary:v6];

  return v7;
}

- (BOOL)_compareString:(id)a3 withString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = (v5 || !v6) && (!v5 || !v6 || [v5 isEqualToString:v6]);

  return v8;
}

@end