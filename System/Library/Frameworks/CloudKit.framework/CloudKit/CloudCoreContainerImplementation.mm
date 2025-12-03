@interface CloudCoreContainerImplementation
- (_TtC8CloudKit32CloudCoreContainerImplementation)initWithContainerID:(id)d options:(id)options;
- (id)CKPropertiesDescription;
- (void)noteSessionInvalidation:(id)invalidation;
- (void)resolvePersonaValues:(id)values;
@end

@implementation CloudCoreContainerImplementation

- (void)resolvePersonaValues:(id)values
{
  valuesCopy = values;
  selfCopy = self;
  sub_1884AADC4(valuesCopy);
}

- (void)noteSessionInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  selfCopy = self;
  sub_1884AA480(invalidationCopy);
}

- (id)CKPropertiesDescription
{
  selfCopy = self;
  v3 = sub_1884AB0D4();
  v5 = v4;

  v6 = MEMORY[0x18CFD5010](v3, v5);

  return v6;
}

- (_TtC8CloudKit32CloudCoreContainerImplementation)initWithContainerID:(id)d options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  sub_1884AB23C();
}

@end