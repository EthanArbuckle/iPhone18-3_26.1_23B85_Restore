@interface AADiagnosticsConsentRequired
- (AADiagnosticsConsentRequired)init;
- (AADiagnosticsConsentRequired)initWithData:(id)data;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation AADiagnosticsConsentRequired

- (AADiagnosticsConsentRequired)initWithData:(id)data
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AADiagnosticsConsentRequired_data) = data;
  v8.receiver = self;
  v8.super_class = ObjectType;
  dataCopy = data;
  return [(AADiagnosticsConsentRequired *)&v8 init];
}

- (AADiagnosticsConsentRequired)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1B6AAD340(&v8);
  if (v9)
  {

    sub_1B69979CC(&v8, v10);
    v4 = v11;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v4 = sub_1B69E0520();
    v11 = v4;

    v10[0] = v5;
  }

  __swift_project_boxed_opaque_existential_1(v10, v4);
  v6 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(v10);

  return v6;
}

@end