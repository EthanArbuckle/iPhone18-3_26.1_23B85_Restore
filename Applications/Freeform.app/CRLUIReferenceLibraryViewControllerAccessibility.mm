@interface CRLUIReferenceLibraryViewControllerAccessibility
+ (BOOL)dictionaryHasDefinitionForTerm:(id)a3;
+ (id)crlaxCastFrom:(id)a3;
@end

@implementation CRLUIReferenceLibraryViewControllerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

+ (BOOL)dictionaryHasDefinitionForTerm:(id)a3
{
  v4 = a3;
  if (UIAccessibilityIsVoiceOverRunning() && +[NSThread isMainThread]&& (byte_101A351A8 & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CRLUIReferenceLibraryViewControllerAccessibility;
    v5 = objc_msgSendSuper2(&v7, "dictionaryHasDefinitionForTerm:", v4);
  }

  return v5;
}

@end