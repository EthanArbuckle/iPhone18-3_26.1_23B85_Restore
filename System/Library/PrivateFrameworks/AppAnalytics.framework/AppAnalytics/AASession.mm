@interface AASession
- (AASession)init;
- (NSDate)startDate;
- (NSDictionary)sessionData;
- (NSString)identifier;
- (NSString)name;
@end

@implementation AASession

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___AASession_identifier);
  v3 = *(self + OBJC_IVAR___AASession_identifier + 8);

  v4 = sub_1B6AB92B0();

  return v4;
}

- (NSString)name
{
  if (*(self + OBJC_IVAR___AASession_name + 8))
  {
    v2 = *(self + OBJC_IVAR___AASession_name);
    v3 = *(self + OBJC_IVAR___AASession_name + 8);

    v4 = sub_1B6AB92B0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___AASession_startDate, v3);
  v8 = sub_1B6AB8D20();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSDictionary)sessionData
{
  v2 = *(self + OBJC_IVAR___AASession_sessionData);

  v3 = sub_1B6AB91F0();

  return v3;
}

- (AASession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end