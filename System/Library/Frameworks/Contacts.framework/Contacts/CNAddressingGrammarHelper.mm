@interface CNAddressingGrammarHelper
+ (BOOL)addNoisyValueToContact:(id)a3;
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

+ (BOOL)addNoisyValueToContact:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 probabilityUtility];
  v7 = [v6 trueWithProbability:0.1];

  if (!v7 || ![v4 isKeyAvailable:@"addressingGrammars"])
  {
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E6996530];
  v9 = [v4 addressingGrammars];
  LODWORD(v8) = (*(v8 + 16))(v8, v9);

  if (v8)
  {
    v10 = [a1 noiseAddressingGrammars];
    [v4 setAddressingGrammars:v10];

    goto LABEL_5;
  }

  v12 = [v4 addressingGrammars];
  if ([v12 count] != 1)
  {

LABEL_10:
    LOBYTE(v11) = 0;
    goto LABEL_11;
  }

  v13 = [v4 addressingGrammars];
  v14 = [v13 firstObject];
  v15 = [v14 value];
  v11 = [a1 isNoiseValue:v15];

  if (!v11)
  {
    goto LABEL_11;
  }

  [v4 setAddressingGrammars:MEMORY[0x1E695E0F0]];
LABEL_5:
  LOBYTE(v11) = 1;
LABEL_11:

  return v11;
}

+ (id)noiseAddressingGrammars
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 noiseValue];
  v3 = [CNLabeledValue labeledValueWithLabel:0 value:v2];

  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

@end