@interface TIPreferencesControllerAccessibility
@end

@implementation TIPreferencesControllerAccessibility

double __62__TIPreferencesControllerAccessibility__UIKit__TextInput_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(TIPreferencesControllerAccessibility__UIKit__TextInput *)WeakRetained _accessibilitySetMouseKeysEnabled:?];
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  return result;
}

@end