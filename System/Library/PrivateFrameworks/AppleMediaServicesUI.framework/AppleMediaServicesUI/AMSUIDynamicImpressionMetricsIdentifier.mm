@interface AMSUIDynamicImpressionMetricsIdentifier
- (AMSUIDynamicImpressionMetricsIdentifier)initWithParent:(id)parent element:(id)element index:(int64_t)index;
@end

@implementation AMSUIDynamicImpressionMetricsIdentifier

- (AMSUIDynamicImpressionMetricsIdentifier)initWithParent:(id)parent element:(id)element index:(int64_t)index
{
  parentCopy = parent;
  elementCopy = element;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v10 = getAMSUIDDynamicImpressionMetricsIdentifierClass_softClass;
  v18 = getAMSUIDDynamicImpressionMetricsIdentifierClass_softClass;
  if (!getAMSUIDDynamicImpressionMetricsIdentifierClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getAMSUIDDynamicImpressionMetricsIdentifierClass_block_invoke;
    v14[3] = &unk_1E7F241B0;
    v14[4] = &v15;
    __getAMSUIDDynamicImpressionMetricsIdentifierClass_block_invoke(v14);
    v10 = v16[3];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);
  v12 = [[v10 alloc] initWithParent:parentCopy element:elementCopy index:index];

  return v12;
}

@end