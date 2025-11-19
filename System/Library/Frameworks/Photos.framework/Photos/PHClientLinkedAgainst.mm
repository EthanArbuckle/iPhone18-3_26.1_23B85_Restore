@interface PHClientLinkedAgainst
- (PHClientLinkedAgainst)init;
- (PHClientLinkedAgainst)initWithXPCDict:(id)a3;
- (void)encodeToXPCDict:(id)a3;
@end

@implementation PHClientLinkedAgainst

- (void)encodeToXPCDict:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_BOOL(xdict, "PHLinkedOnOrAfterFall2023OSVersionsKey", [(PHClientLinkedAgainst *)self clientLinkedOnOrAfterFall2023OSVersions]);
}

- (PHClientLinkedAgainst)initWithXPCDict:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PHClientLinkedAgainst;
  v5 = [(PHClientLinkedAgainst *)&v7 init];
  if (v5)
  {
    v5->_clientLinkedOnOrAfterFall2023OSVersions = xpc_dictionary_get_BOOL(v4, "PHLinkedOnOrAfterFall2023OSVersionsKey");
  }

  return v5;
}

- (PHClientLinkedAgainst)init
{
  v4.receiver = self;
  v4.super_class = PHClientLinkedAgainst;
  v2 = [(PHClientLinkedAgainst *)&v4 init];
  if (v2)
  {
    v2->_clientLinkedOnOrAfterFall2023OSVersions = dyld_program_sdk_at_least();
  }

  return v2;
}

@end