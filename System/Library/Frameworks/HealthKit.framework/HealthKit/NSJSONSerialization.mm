@interface NSJSONSerialization
@end

@implementation NSJSONSerialization

void __66__NSJSONSerialization_HealthKit__hk_JSONObjectSecureCodingClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFA8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v8 = [v0 initWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  v5 = NSClassFromString(&cfstr_Nsjsonroundtri.isa);
  if (v5)
  {
    [v8 addObject:v5];
  }

  v6 = [v8 copy];
  v7 = hk_JSONObjectSecureCodingClasses_classes;
  hk_JSONObjectSecureCodingClasses_classes = v6;
}

@end