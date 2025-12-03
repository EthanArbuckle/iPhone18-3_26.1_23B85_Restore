@interface CloudCoreContainer
- (NSString)description;
- (_TtC8CloudKit18CloudCoreContainer)initWithContainerID:(id)d options:(id)options;
- (_TtC8CloudKit18CloudCoreContainer)initWithImplementation:(id)implementation convenienceConfiguration:(id)configuration;
@end

@implementation CloudCoreContainer

- (_TtC8CloudKit18CloudCoreContainer)initWithImplementation:(id)implementation convenienceConfiguration:(id)configuration
{
  implementationCopy = implementation;
  configurationCopy = configuration;
  return sub_1884A6A38(implementationCopy, configuration);
}

- (NSString)description
{
  selfCopy = self;
  v3 = sub_1884A6D10();
  v5 = v4;

  v6 = MEMORY[0x18CFD5010](v3, v5);

  return v6;
}

- (_TtC8CloudKit18CloudCoreContainer)initWithContainerID:(id)d options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  sub_1884A7BD8();
}

@end