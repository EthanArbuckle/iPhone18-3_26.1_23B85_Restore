@interface CRLUIReferenceLibraryViewControllerAccessibility
+ (BOOL)dictionaryHasDefinitionForTerm:(id)term;
+ (id)crlaxCastFrom:(id)from;
@end

@implementation CRLUIReferenceLibraryViewControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

+ (BOOL)dictionaryHasDefinitionForTerm:(id)term
{
  termCopy = term;
  if (UIAccessibilityIsVoiceOverRunning() && +[NSThread isMainThread]&& (byte_101A351A8 & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CRLUIReferenceLibraryViewControllerAccessibility;
    v5 = objc_msgSendSuper2(&v7, "dictionaryHasDefinitionForTerm:", termCopy);
  }

  return v5;
}

@end