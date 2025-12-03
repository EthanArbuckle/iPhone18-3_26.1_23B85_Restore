@interface AMSUIDynamicImpressionMetrics
- (AMSUIDynamicImpressionMetrics)initWithIdentifier:(id)identifier fields:(id)fields custom:(id)custom;
@end

@implementation AMSUIDynamicImpressionMetrics

- (AMSUIDynamicImpressionMetrics)initWithIdentifier:(id)identifier fields:(id)fields custom:(id)custom
{
  identifierCopy = identifier;
  fieldsCopy = fields;
  customCopy = custom;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v11 = getAMSUIDDynamicImpressionMetricsClass_softClass;
  v19 = getAMSUIDDynamicImpressionMetricsClass_softClass;
  if (!getAMSUIDDynamicImpressionMetricsClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getAMSUIDDynamicImpressionMetricsClass_block_invoke;
    v15[3] = &unk_1E7F241B0;
    v15[4] = &v16;
    __getAMSUIDDynamicImpressionMetricsClass_block_invoke(v15);
    v11 = v17[3];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);
  v13 = [[v11 alloc] initWithIdentifier:identifierCopy fields:fieldsCopy custom:customCopy];

  return v13;
}

@end