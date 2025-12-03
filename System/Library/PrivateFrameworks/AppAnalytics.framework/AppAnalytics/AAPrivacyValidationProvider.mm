@interface AAPrivacyValidationProvider
- (AAPrivacyValidation)privacyValidation;
- (AAPrivacyValidationProvider)init;
- (AAPrivacyValidationProvider)initWithPrivacyValidation:(id)validation;
- (void)setPrivacyValidation:(id)validation;
@end

@implementation AAPrivacyValidationProvider

- (AAPrivacyValidation)privacyValidation
{
  v3 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPrivacyValidation:(id)validation
{
  v5 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = validation;
  validationCopy = validation;
}

- (AAPrivacyValidationProvider)initWithPrivacyValidation:(id)validation
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation) = validation;
  v8.receiver = self;
  v8.super_class = ObjectType;
  validationCopy = validation;
  return [(AAPrivacyValidationProvider *)&v8 init];
}

- (AAPrivacyValidationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end