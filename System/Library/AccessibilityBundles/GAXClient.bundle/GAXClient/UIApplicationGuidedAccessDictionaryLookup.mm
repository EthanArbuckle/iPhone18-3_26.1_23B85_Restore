@interface UIApplicationGuidedAccessDictionaryLookup
- (BOOL)_guidedAccessDictionaryLookupAllowed;
- (id)guidedAccessRestrictionIdentifiers;
- (id)textForGuidedAccessRestrictionWithIdentifier:(id)identifier;
- (void)guidedAccessRestrictionWithIdentifier:(id)identifier didChangeState:(int64_t)state;
@end

@implementation UIApplicationGuidedAccessDictionaryLookup

- (BOOL)_guidedAccessDictionaryLookupAllowed
{
  v2 = objc_getAssociatedObject(self, &unk_1BCD8);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)guidedAccessRestrictionIdentifiers
{
  v4 = @"GAXProfileAllowsWebTextDefine";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)guidedAccessRestrictionWithIdentifier:(id)identifier didChangeState:(int64_t)state
{
  if ([identifier isEqualToString:@"GAXProfileAllowsWebTextDefine"])
  {

    [(UIApplicationGuidedAccessDictionaryLookup *)self _guidedAccessSetDictionaryLookupAllowed:state == 0];
  }
}

- (id)textForGuidedAccessRestrictionWithIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"GAXProfileAllowsWebTextDefine"])
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"DICTIONARY_LOOKUP" value:0 table:@"GuidedAccessAppStrings"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end