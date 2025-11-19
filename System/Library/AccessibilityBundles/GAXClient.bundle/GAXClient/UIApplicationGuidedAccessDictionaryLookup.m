@interface UIApplicationGuidedAccessDictionaryLookup
- (BOOL)_guidedAccessDictionaryLookupAllowed;
- (id)guidedAccessRestrictionIdentifiers;
- (id)textForGuidedAccessRestrictionWithIdentifier:(id)a3;
- (void)guidedAccessRestrictionWithIdentifier:(id)a3 didChangeState:(int64_t)a4;
@end

@implementation UIApplicationGuidedAccessDictionaryLookup

- (BOOL)_guidedAccessDictionaryLookupAllowed
{
  v2 = objc_getAssociatedObject(self, &unk_1BCD8);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)guidedAccessRestrictionIdentifiers
{
  v4 = @"GAXProfileAllowsWebTextDefine";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)guidedAccessRestrictionWithIdentifier:(id)a3 didChangeState:(int64_t)a4
{
  if ([a3 isEqualToString:@"GAXProfileAllowsWebTextDefine"])
  {

    [(UIApplicationGuidedAccessDictionaryLookup *)self _guidedAccessSetDictionaryLookupAllowed:a4 == 0];
  }
}

- (id)textForGuidedAccessRestrictionWithIdentifier:(id)a3
{
  if ([a3 isEqualToString:@"GAXProfileAllowsWebTextDefine"])
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