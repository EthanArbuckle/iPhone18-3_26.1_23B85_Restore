@interface EXExtensionGetActivationRules
@end

@implementation EXExtensionGetActivationRules

void ___EXExtensionGetActivationRules_block_invoke()
{
  if (_EXExtensionUseAlternateRules)
  {
    v31 = 0;
    v0 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:_EXExtensionUseAlternateRules options:2 error:&v31];
    v1 = v31;
    if (v0)
    {
      v30 = 0;
      v2 = [MEMORY[0x1E696AE40] propertyListWithData:v0 options:0 format:0 error:&v30];
      v3 = v30;

      v1 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    if (_EXExtensionKitBundle_onceToken != -1)
    {
      ___EXExtensionGetActivationRules_block_invoke_cold_1();
    }

    v4 = [_EXExtensionKitBundle_bundle URLForResource:@"activation_rules" withExtension:@"plist"];
    v5 = MEMORY[0x1E696AE40];
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
    v2 = [v5 propertyListWithData:v6 options:0 format:0 error:0];

    v1 = 0;
  }

  v7 = [v2 objectForKey:@"RULES"];
  v8 = qword_1EA86E9B8;
  qword_1EA86E9B8 = v7;

  v9 = [v2 objectForKey:@"GENERIC_ACCEPT"];
  v10 = _EXPredicateWithString(v9);
  v11 = _EXExtensionGetActivationRules__activation_rules;
  *&_EXExtensionGetActivationRules__activation_rules = v10;

  v12 = [v2 objectForKey:@"GENERIC_REJECT_EXCEPT_ONE_OTHER_TYPE"];
  v13 = _EXPredicateWithString(v12);
  v14 = *(&_EXExtensionGetActivationRules__activation_rules + 1);
  *(&_EXExtensionGetActivationRules__activation_rules + 1) = v13;

  v15 = [v2 objectForKey:@"GENERIC_REJECT_EXCEPT_MULTIPLE_OTHER_TYPES"];
  v16 = _EXPredicateWithString(v15);
  v17 = qword_1EA86E990;
  qword_1EA86E990 = v16;

  v18 = [v2 objectForKey:@"GENERIC_ENFORCE_ALL_TYPES"];
  v19 = _EXPredicateWithString(v18);
  v20 = qword_1EA86E998;
  qword_1EA86E998 = v19;

  v21 = [v2 objectForKey:@"GENERIC_ENFORCE_ANY_TYPE"];
  v22 = _EXPredicateWithString(v21);
  v23 = xmmword_1EA86E9A0;
  *&xmmword_1EA86E9A0 = v22;

  v24 = [v2 objectForKey:@"GENERIC_ENFORCE_ALL_TYPES_WITH_EXCEPTIONS"];
  v25 = _EXPredicateWithString(v24);
  v26 = *(&xmmword_1EA86E9A0 + 1);
  *(&xmmword_1EA86E9A0 + 1) = v25;

  v27 = [v2 objectForKey:@"GENERIC_ENFORCE_ANY_TYPE_WITH_EXCEPTIONS"];
  v28 = _EXPredicateWithString(v27);
  v29 = qword_1EA86E9B0;
  qword_1EA86E9B0 = v28;

  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(_EXExtensionGetActivationRules__activation_rules), vceqzq_s64(*&qword_1EA86E990)), vuzp1q_s32(vceqzq_s64(xmmword_1EA86E9A0), vceqzq_s64(*&qword_1EA86E9B0))))))
  {
    ___EXExtensionGetActivationRules_block_invoke_cold_2(v1);
  }
}

void ___EXExtensionGetActivationRules_block_invoke_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  NSLog(&cfstr_UnableToLoadRu.isa, v1);

  abort();
}

@end