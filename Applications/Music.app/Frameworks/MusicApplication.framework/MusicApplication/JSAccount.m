@interface JSAccount
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (int64_t)hash;
@end

@implementation JSAccount

- (NSString)description
{
  v2 = self;
  JSAccount.description.getter();

  v3 = sub_AB9260();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = JSAccount.isEqual(_:)(v8);

  sub_12E1C(v8, &unk_DE8E40);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_AB9540();

  return v3;
}

@end