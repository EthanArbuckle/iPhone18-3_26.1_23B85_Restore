@interface CKSecureCodingBox
- (BOOL)isEqual:(id)equal;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKSecureCodingBox

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1884B0AE0(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1884B1028(v8);

  sub_18840E840(v8, &qword_1EA90DD10, &qword_1886F8770);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1884B12F8();

  return v3;
}

@end