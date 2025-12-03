@interface AAClient
- (AAClient)init;
- (AAClient)initWithIdentifier:(id)identifier name:(id)name version:(id)version build:(int64_t)build;
- (AAClient)initWithIdentifier:(id)identifier name:(id)name version:(id)version buildNumber:(id)number;
- (NSString)fullVersion;
- (int64_t)build;
@end

@implementation AAClient

- (AAClient)initWithIdentifier:(id)identifier name:(id)name version:(id)version buildNumber:(id)number
{
  v7 = sub_1B6AB92E0();
  v9 = v8;
  v10 = sub_1B6AB92E0();
  v12 = v11;
  v13 = sub_1B6AB92E0();
  v15 = v14;
  v16 = sub_1B6AB92E0();
  v17 = (self + OBJC_IVAR___AAClient_identifier);
  *v17 = v7;
  v17[1] = v9;
  v18 = (self + OBJC_IVAR___AAClient_name);
  *v18 = v10;
  v18[1] = v12;
  v19 = (self + OBJC_IVAR___AAClient_version);
  *v19 = v13;
  v19[1] = v15;
  v20 = (self + OBJC_IVAR___AAClient_buildNumber);
  *v20 = v16;
  v20[1] = v21;
  v23.receiver = self;
  v23.super_class = type metadata accessor for Client();
  return [(AAClient *)&v23 init];
}

- (int64_t)build
{
  selfCopy = self;
  v3 = sub_1B69F9390();

  return v3;
}

- (NSString)fullVersion
{
  v5 = *(self + OBJC_IVAR___AAClient_version);
  v6 = *(self + OBJC_IVAR___AAClient_version + 8);
  selfCopy = self;

  MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
  MEMORY[0x1B8C97BE0](*(selfCopy + OBJC_IVAR___AAClient_buildNumber), *(selfCopy + OBJC_IVAR___AAClient_buildNumber + 8));

  v3 = sub_1B6AB92B0();

  return v3;
}

- (AAClient)initWithIdentifier:(id)identifier name:(id)name version:(id)version build:(int64_t)build
{
  sub_1B6AB92E0();
  sub_1B6AB92E0();
  sub_1B6AB92E0();
  return Client.init(identifier:name:version:build:)();
}

- (AAClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end