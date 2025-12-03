@interface AAPCommandQuitAll
- (AAPCommandQuitAll)initWithDictionary:(id)dictionary;
- (id)_selfReferencingCommandFailedWithReason:(id)reason;
- (id)_selfReferencingCommandSucceeded;
- (void)performWithCompletion:(id)completion;
@end

@implementation AAPCommandQuitAll

- (id)_selfReferencingCommandSucceeded
{
  v3 = objc_alloc_init(SACommandSucceeded);
  [v3 setAceId:{-[NSUUID UUIDString](+[NSUUID UUID](NSUUID, "UUID"), "UUIDString")}];
  [v3 setRefId:{-[AAPCommandQuitAll aceId](self, "aceId")}];
  return v3;
}

- (id)_selfReferencingCommandFailedWithReason:(id)reason
{
  v5 = objc_alloc_init(SACommandFailed);
  [v5 setAceId:{-[NSUUID UUIDString](+[NSUUID UUID](NSUUID, "UUID"), "UUIDString")}];
  [v5 setRefId:{-[AAPCommandQuitAll aceId](self, "aceId")}];
  [v5 setReason:reason];
  return v5;
}

- (AAPCommandQuitAll)initWithDictionary:(id)dictionary
{
  v5.receiver = self;
  v5.super_class = AAPCommandQuitAll;
  v3 = [(AAPCommandQuitAll *)&v5 initWithDictionary:dictionary];
  if (v3)
  {
    v3->_terminator = objc_alloc_init(AAPApplicationTerminator);
  }

  return v3;
}

- (void)performWithCompletion:(id)completion
{
  v4 = [-[AAPCommandQuitAll _selfReferencingCommandFailedWithReason:](self _selfReferencingCommandFailedWithReason:{@"Quit All Apps unsupported on this platform", "dictionary"}];
  v5 = *(completion + 2);

  v5(completion, v4);
}

@end