@interface AMPWritingDirectionsCounts
+ (AMPWritingDirectionsCounts)zero;
+ (id)add:(id)a3 to:(id)a4;
- (AMPWritingDirectionsCounts)init;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation AMPWritingDirectionsCounts

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1E198AEBC(v8);

  sub_1E13E44F8(v8);
  return v6;
}

+ (id)add:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1E198B934(v5, v6);

  return v7;
}

+ (AMPWritingDirectionsCounts)zero
{
  if (qword_1EE1EBB80 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE1EBB88;

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_1E198B2AC();

  v3 = sub_1E1AF5DBC();

  return v3;
}

- (AMPWritingDirectionsCounts)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end