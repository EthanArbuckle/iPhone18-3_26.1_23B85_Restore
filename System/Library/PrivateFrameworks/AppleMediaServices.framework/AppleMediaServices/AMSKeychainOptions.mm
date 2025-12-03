@interface AMSKeychainOptions
+ (unint64_t)preferredAttestationStyle;
- (AMSKeychainOptions)initWithCoder:(id)coder;
- (AMSKeychainOptions)initWithOptionsDictionary:(id)dictionary;
- (BOOL)_compareString:(id)string withString:(id)withString;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)optionsDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSKeychainOptions

- (AMSKeychainOptions)initWithOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = AMSKeychainOptions;
  v5 = [(AMSKeychainOptions *)&v16 init];
  if (v5)
  {
    if (!dictionaryCopy)
    {
      dictionaryCopy = MEMORY[0x1E695E0F8];
    }

    v6 = [dictionaryCopy ams_objectForKey:@"AMSKeychainOptionsAuthenticationFallbackVisible" defaultValue:MEMORY[0x1E695E118]];
    v5->_authenticationFallbackVisible = [v6 BOOLValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"AMSKeychainOptionsClientCertLabel"];
    if (v7)
    {
      objc_storeStrong(&v5->_clientCertLabel, v7);
    }

    v8 = [dictionaryCopy ams_objectForKey:@"AMSKeychainOptionsDisplayAuthenticationReason" defaultValue:MEMORY[0x1E695E118]];
    v5->_displayAuthenticationReason = [v8 BOOLValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"AMSKeychainOptionsIntermediateCertLabel"];
    if (v9)
    {
      objc_storeStrong(&v5->_intermediateCertLabel, v9);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"AMSKeychainOptionsLabel"];
    if (v10)
    {
      objc_storeStrong(&v5->_label, v10);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"AMSKeychainOptionsPrompt"];
    if (v11)
    {
      objc_storeStrong(&v5->_prompt, v11);
    }

    v12 = [dictionaryCopy ams_objectForKey:@"AMSKeychainOptionsPurpose" defaultValue:&unk_1F0779640];
    v5->_purpose = [v12 unsignedIntegerValue];

    v13 = [dictionaryCopy ams_objectForKey:@"AMSKeychainOptionsRegenerateKeys" defaultValue:MEMORY[0x1E695E110]];
    v5->_regenerateKeys = [v13 BOOLValue];

    v14 = [dictionaryCopy ams_objectForKey:@"AMSKeychainOptionsStyle" defaultValue:&unk_1F0779640];
    v5->_style = [v14 unsignedIntegerValue];
  }

  return v5;
}

- (id)optionsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions authenticationFallbackVisible](self, "authenticationFallbackVisible")}];
  [v3 ams_setNullableObject:v4 forKey:@"AMSKeychainOptionsAuthenticationFallbackVisible"];

  clientCertLabel = [(AMSKeychainOptions *)self clientCertLabel];
  [v3 ams_setNullableObject:clientCertLabel forKey:@"AMSKeychainOptionsClientCertLabel"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions displayAuthenticationReason](self, "displayAuthenticationReason")}];
  [v3 ams_setNullableObject:v6 forKey:@"AMSKeychainOptionsDisplayAuthenticationReason"];

  intermediateCertLabel = [(AMSKeychainOptions *)self intermediateCertLabel];
  [v3 ams_setNullableObject:intermediateCertLabel forKey:@"AMSKeychainOptionsIntermediateCertLabel"];

  label = [(AMSKeychainOptions *)self label];
  [v3 ams_setNullableObject:label forKey:@"AMSKeychainOptionsLabel"];

  prompt = [(AMSKeychainOptions *)self prompt];
  [v3 ams_setNullableObject:prompt forKey:@"AMSKeychainOptionsPrompt"];

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

  clientCertLabel = [(AMSKeychainOptions *)self clientCertLabel];

  if (clientCertLabel)
  {
    clientCertLabel2 = [(AMSKeychainOptions *)self clientCertLabel];
    v7 = AMSHashIfNeeded(clientCertLabel2);
    [v3 ams_setNullableObject:v7 forKey:@"clientCertLabel"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSKeychainOptions displayAuthenticationReason](self, "displayAuthenticationReason")}];
  [v3 ams_setNullableObject:v8 forKey:@"displayAuthenticationReason"];

  intermediateCertLabel = [(AMSKeychainOptions *)self intermediateCertLabel];

  if (intermediateCertLabel)
  {
    intermediateCertLabel2 = [(AMSKeychainOptions *)self intermediateCertLabel];
    v11 = AMSHashIfNeeded(intermediateCertLabel2);
    [v3 ams_setNullableObject:v11 forKey:@"intermediateCertLabel"];
  }

  label = [(AMSKeychainOptions *)self label];

  if (label)
  {
    label2 = [(AMSKeychainOptions *)self label];
    v14 = AMSHashIfNeeded(label2);
    [v3 ams_setNullableObject:v14 forKey:@"label"];
  }

  prompt = [(AMSKeychainOptions *)self prompt];

  if (prompt)
  {
    prompt2 = [(AMSKeychainOptions *)self prompt];
    v17 = AMSHashIfNeeded(prompt2);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v5 = equalCopy;

  if (!v5)
  {
    goto LABEL_13;
  }

  authenticationFallbackVisible = [(AMSKeychainOptions *)self authenticationFallbackVisible];
  if (authenticationFallbackVisible != [v5 authenticationFallbackVisible])
  {
    goto LABEL_13;
  }

  clientCertLabel = [(AMSKeychainOptions *)self clientCertLabel];
  clientCertLabel2 = [v5 clientCertLabel];
  v9 = [(AMSKeychainOptions *)self _compareString:clientCertLabel withString:clientCertLabel2];

  if (!v9)
  {
    goto LABEL_13;
  }

  displayAuthenticationReason = [(AMSKeychainOptions *)self displayAuthenticationReason];
  if (displayAuthenticationReason != [v5 displayAuthenticationReason])
  {
    goto LABEL_13;
  }

  intermediateCertLabel = [(AMSKeychainOptions *)self intermediateCertLabel];
  intermediateCertLabel2 = [v5 intermediateCertLabel];
  v13 = [(AMSKeychainOptions *)self _compareString:intermediateCertLabel withString:intermediateCertLabel2];

  if (!v13)
  {
    goto LABEL_13;
  }

  label = [(AMSKeychainOptions *)self label];
  label2 = [v5 label];
  v16 = [(AMSKeychainOptions *)self _compareString:label withString:label2];

  if (!v16)
  {
    goto LABEL_13;
  }

  prompt = [(AMSKeychainOptions *)self prompt];
  prompt2 = [v5 prompt];
  v19 = [(AMSKeychainOptions *)self _compareString:prompt withString:prompt2];

  if (!v19)
  {
    goto LABEL_13;
  }

  purpose = [(AMSKeychainOptions *)self purpose];
  if (purpose != [v5 purpose])
  {
    goto LABEL_13;
  }

  regenerateKeys = [(AMSKeychainOptions *)self regenerateKeys];
  if (regenerateKeys != [v5 regenerateKeys])
  {
    goto LABEL_13;
  }

  style = [(AMSKeychainOptions *)self style];
  v23 = style == [v5 style];
LABEL_14:

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  optionsDictionary = [(AMSKeychainOptions *)self optionsDictionary];
  [coderCopy encodeObject:optionsDictionary forKey:@"o"];
}

- (AMSKeychainOptions)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"o"];

  objc_opt_class();
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  v12 = [(AMSKeychainOptions *)self initWithOptionsDictionary:v11];
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  optionsDictionary = [(AMSKeychainOptions *)self optionsDictionary];
  v6 = [optionsDictionary copy];
  v7 = [v4 initWithOptionsDictionary:v6];

  return v7;
}

- (BOOL)_compareString:(id)string withString:(id)withString
{
  stringCopy = string;
  withStringCopy = withString;
  v7 = withStringCopy;
  v8 = (stringCopy || !withStringCopy) && (!stringCopy || !withStringCopy || [stringCopy isEqualToString:withStringCopy]);

  return v8;
}

@end