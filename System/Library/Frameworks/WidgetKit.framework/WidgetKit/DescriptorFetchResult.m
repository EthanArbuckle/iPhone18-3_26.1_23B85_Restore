@interface DescriptorFetchResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC9WidgetKit21DescriptorFetchResult)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DescriptorFetchResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19203922C(v4);
}

- (NSString)description
{
  v2 = self;
  sub_1921167F0();

  v3 = sub_192227930();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_192116DFC(v8);

  sub_192030F04(v8);
  return v6 & 1;
}

- (_TtC9WidgetKit21DescriptorFetchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end