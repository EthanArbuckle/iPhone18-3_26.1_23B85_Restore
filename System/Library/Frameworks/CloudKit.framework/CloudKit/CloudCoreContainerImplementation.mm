@interface CloudCoreContainerImplementation
- (_TtC8CloudKit32CloudCoreContainerImplementation)initWithContainerID:(id)a3 options:(id)a4;
- (id)CKPropertiesDescription;
- (void)noteSessionInvalidation:(id)a3;
- (void)resolvePersonaValues:(id)a3;
@end

@implementation CloudCoreContainerImplementation

- (void)resolvePersonaValues:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1884AADC4(v4);
}

- (void)noteSessionInvalidation:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1884AA480(v5);
}

- (id)CKPropertiesDescription
{
  v2 = self;
  v3 = sub_1884AB0D4();
  v5 = v4;

  v6 = MEMORY[0x18CFD5010](v3, v5);

  return v6;
}

- (_TtC8CloudKit32CloudCoreContainerImplementation)initWithContainerID:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_1884AB23C();
}

@end