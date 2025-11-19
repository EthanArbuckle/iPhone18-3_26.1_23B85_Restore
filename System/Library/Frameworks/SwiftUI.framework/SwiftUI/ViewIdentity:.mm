@interface ViewIdentity:
- (void)AlertStorage;
- (void)ConfirmationDialog;
@end

@implementation ViewIdentity:

- (void)ConfirmationDialog
{
  if (!lazy cache variable for type metadata for [ViewIdentity : ConfirmationDialog])
  {
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ViewIdentity : ConfirmationDialog]);
    }
  }
}

- (void)AlertStorage
{
  if (!lazy cache variable for type metadata for [ViewIdentity : AlertStorage])
  {
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ViewIdentity : AlertStorage]);
    }
  }
}

@end