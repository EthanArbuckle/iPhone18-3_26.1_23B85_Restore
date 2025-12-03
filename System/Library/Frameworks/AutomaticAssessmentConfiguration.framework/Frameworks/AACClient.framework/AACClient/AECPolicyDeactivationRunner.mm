@interface AECPolicyDeactivationRunner
- (void)deactivateWithCompletion:(id)completion;
@end

@implementation AECPolicyDeactivationRunner

- (void)deactivateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *&self->deactivation[24];
  v7 = *&self->deactivation[32];
  __swift_project_boxed_opaque_existential_1(self->deactivation, v6);
  v8 = *(v7 + 16);

  _Block_copy(v4);
  v9 = v8(v6, v7);
  v10 = v9;
  if (v11)
  {
    _Block_release(v4);
    (v10)(sub_236E037F4, v5);
  }

  else
  {
    v9();
    (*(v4 + 2))(v4, 0);

    _Block_release(v4);
  }

  sub_236E05D38();
}

@end