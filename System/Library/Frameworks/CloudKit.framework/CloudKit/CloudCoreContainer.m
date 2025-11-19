@interface CloudCoreContainer
- (NSString)description;
- (_TtC8CloudKit18CloudCoreContainer)initWithContainerID:(id)a3 options:(id)a4;
- (_TtC8CloudKit18CloudCoreContainer)initWithImplementation:(id)a3 convenienceConfiguration:(id)a4;
@end

@implementation CloudCoreContainer

- (_TtC8CloudKit18CloudCoreContainer)initWithImplementation:(id)a3 convenienceConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_1884A6A38(v5, a4);
}

- (NSString)description
{
  v2 = self;
  v3 = sub_1884A6D10();
  v5 = v4;

  v6 = MEMORY[0x18CFD5010](v3, v5);

  return v6;
}

- (_TtC8CloudKit18CloudCoreContainer)initWithContainerID:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_1884A7BD8();
}

@end