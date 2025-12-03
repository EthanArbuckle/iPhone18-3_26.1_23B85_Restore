@interface CNContactTypeDescription(ABSExtentions)
- (BOOL)absPropertyID:()ABSExtentions;
- (id)CNValueFromABSValue:()ABSExtentions;
- (uint64_t)ABSValueFromCNValue:()ABSExtentions;
@end

@implementation CNContactTypeDescription(ABSExtentions)

- (BOOL)absPropertyID:()ABSExtentions
{
  if (a3)
  {
    *a3 = 15;
  }

  return a3 != 0;
}

- (uint64_t)ABSValueFromCNValue:()ABSExtentions
{
  v5.receiver = self;
  v5.super_class = &off_2849B1450;
  v1 = objc_msgSendSuper2(&v5, sel_ABSValueFromCNValue_);
  v2 = +[ABSConstantsMapping CNToABPersonKindConstantsMapping];
  v3 = [v2 mappedConstant:v1];

  return v3;
}

- (id)CNValueFromABSValue:()ABSExtentions
{
  v5.receiver = self;
  v5.super_class = &off_2849B1450;
  v1 = objc_msgSendSuper2(&v5, sel_CNValueFromABSValue_);
  v2 = +[ABSConstantsMapping ABToCNPersonKindConstantsMapping];
  v3 = [v2 mappedConstant:v1];

  return v3;
}

@end