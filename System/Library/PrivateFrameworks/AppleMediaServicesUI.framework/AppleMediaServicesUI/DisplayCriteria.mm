@interface DisplayCriteria
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DisplayCriteria

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001839F4(v4);
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

  v6 = sub_100183E40(v8);

  sub_100009FB0(v8, &qword_10026D350, &qword_1001E6050);
  return v6 & 1;
}

@end