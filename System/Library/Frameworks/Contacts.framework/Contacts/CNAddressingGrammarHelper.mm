@interface CNAddressingGrammarHelper
+ (BOOL)addNoisyValueToContact:(id)contact;
+ (id)noiseAddressingGrammars;
+ (id)os_log;
@end

@implementation CNAddressingGrammarHelper

+ (id)os_log
{
  if (os_log_cn_once_token_0_21 != -1)
  {
    +[CNAddressingGrammarHelper os_log];
  }

  v3 = os_log_cn_once_object_0_21;

  return v3;
}

uint64_t __35__CNAddressingGrammarHelper_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNAddressingGrammarHelper");
  v1 = os_log_cn_once_object_0_21;
  os_log_cn_once_object_0_21 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)addNoisyValueToContact:(id)contact
{
  contactCopy = contact;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  probabilityUtility = [currentEnvironment probabilityUtility];
  v7 = [probabilityUtility trueWithProbability:0.1];

  if (!v7 || ![contactCopy isKeyAvailable:@"addressingGrammars"])
  {
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E6996530];
  addressingGrammars = [contactCopy addressingGrammars];
  LODWORD(v8) = (*(v8 + 16))(v8, addressingGrammars);

  if (v8)
  {
    noiseAddressingGrammars = [self noiseAddressingGrammars];
    [contactCopy setAddressingGrammars:noiseAddressingGrammars];

    goto LABEL_5;
  }

  addressingGrammars2 = [contactCopy addressingGrammars];
  if ([addressingGrammars2 count] != 1)
  {

LABEL_10:
    LOBYTE(v11) = 0;
    goto LABEL_11;
  }

  addressingGrammars3 = [contactCopy addressingGrammars];
  firstObject = [addressingGrammars3 firstObject];
  value = [firstObject value];
  v11 = [self isNoiseValue:value];

  if (!v11)
  {
    goto LABEL_11;
  }

  [contactCopy setAddressingGrammars:MEMORY[0x1E695E0F0]];
LABEL_5:
  LOBYTE(v11) = 1;
LABEL_11:

  return v11;
}

+ (id)noiseAddressingGrammars
{
  v6[1] = *MEMORY[0x1E69E9840];
  noiseValue = [self noiseValue];
  v3 = [CNLabeledValue labeledValueWithLabel:0 value:noiseValue];

  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

@end