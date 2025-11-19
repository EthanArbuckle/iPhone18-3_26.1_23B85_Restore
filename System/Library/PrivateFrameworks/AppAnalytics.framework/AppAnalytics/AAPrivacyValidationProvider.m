@interface AAPrivacyValidationProvider
- (AAPrivacyValidation)privacyValidation;
- (AAPrivacyValidationProvider)init;
- (AAPrivacyValidationProvider)initWithPrivacyValidation:(id)a3;
- (void)setPrivacyValidation:(id)a3;
@end

@implementation AAPrivacyValidationProvider

- (AAPrivacyValidation)privacyValidation
{
  v3 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPrivacyValidation:(id)a3
{
  v5 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (AAPrivacyValidationProvider)initWithPrivacyValidation:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(AAPrivacyValidationProvider *)&v8 init];
}

- (AAPrivacyValidationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end