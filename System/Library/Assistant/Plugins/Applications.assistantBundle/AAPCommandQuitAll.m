@interface AAPCommandQuitAll
- (AAPCommandQuitAll)initWithDictionary:(id)a3;
- (id)_selfReferencingCommandFailedWithReason:(id)a3;
- (id)_selfReferencingCommandSucceeded;
- (void)performWithCompletion:(id)a3;
@end

@implementation AAPCommandQuitAll

- (id)_selfReferencingCommandSucceeded
{
  v3 = objc_alloc_init(SACommandSucceeded);
  [v3 setAceId:{-[NSUUID UUIDString](+[NSUUID UUID](NSUUID, "UUID"), "UUIDString")}];
  [v3 setRefId:{-[AAPCommandQuitAll aceId](self, "aceId")}];
  return v3;
}

- (id)_selfReferencingCommandFailedWithReason:(id)a3
{
  v5 = objc_alloc_init(SACommandFailed);
  [v5 setAceId:{-[NSUUID UUIDString](+[NSUUID UUID](NSUUID, "UUID"), "UUIDString")}];
  [v5 setRefId:{-[AAPCommandQuitAll aceId](self, "aceId")}];
  [v5 setReason:a3];
  return v5;
}

- (AAPCommandQuitAll)initWithDictionary:(id)a3
{
  v5.receiver = self;
  v5.super_class = AAPCommandQuitAll;
  v3 = [(AAPCommandQuitAll *)&v5 initWithDictionary:a3];
  if (v3)
  {
    v3->_terminator = objc_alloc_init(AAPApplicationTerminator);
  }

  return v3;
}

- (void)performWithCompletion:(id)a3
{
  v4 = [-[AAPCommandQuitAll _selfReferencingCommandFailedWithReason:](self _selfReferencingCommandFailedWithReason:{@"Quit All Apps unsupported on this platform", "dictionary"}];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

@end