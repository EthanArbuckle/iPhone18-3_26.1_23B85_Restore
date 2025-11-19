@interface CKSecureCodingBox
- (BOOL)isEqual:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSecureCodingBox

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1884B0AE0(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1884B1028(v8);

  sub_18840E840(v8, &qword_1EA90DD10, &qword_1886F8770);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1884B12F8();

  return v3;
}

@end