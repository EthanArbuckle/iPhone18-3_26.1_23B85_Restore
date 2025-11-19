@interface CNContactProperty
@end

@implementation CNContactProperty

void __55__CNContactProperty_UIAdditions__phoneticPropertiesMap__block_invoke()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C348];
  v1 = *MEMORY[0x1E695C2F0];
  v7[0] = *MEMORY[0x1E695C240];
  v7[1] = v1;
  v2 = *MEMORY[0x1E695C350];
  v8[0] = v0;
  v8[1] = v2;
  v3 = *MEMORY[0x1E695C328];
  v7[2] = *MEMORY[0x1E695C230];
  v7[3] = v3;
  v4 = *MEMORY[0x1E695C358];
  v8[2] = *MEMORY[0x1E695C340];
  v8[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = phoneticPropertiesMap_properties;
  phoneticPropertiesMap_properties = v5;
}

@end