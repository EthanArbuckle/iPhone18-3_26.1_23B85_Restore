@interface VSAppleSubscriptionValueTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation VSAppleSubscriptionValueTransformer

- (id)transformedValue:(id)value
{
  v7 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:value requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(VSAppleSubscriptionValueTransformer *)v4 transformedValue:v5];
    }
  }

  return v3;
}

- (id)reverseTransformedValue:(id)value
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  v4 = MEMORY[0x277CBEB98];
  valueCopy = value;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v7 = [v4 setWithArray:v6];
  v12 = 0;
  v8 = [v3 unarchivedObjectOfClasses:v7 fromData:valueCopy error:&v12];

  v9 = v12;
  if (v9)
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VSAppleSubscriptionValueTransformer *)v9 reverseTransformedValue:v10];
    }
  }

  return v8;
}

- (void)transformedValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error archiving VSAppleSubscription value: %@", &v2, 0xCu);
}

- (void)reverseTransformedValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving VSAppleSubscription value: %@", &v2, 0xCu);
}

@end