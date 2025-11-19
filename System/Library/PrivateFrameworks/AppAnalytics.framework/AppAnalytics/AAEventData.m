@interface AAEventData
+ (NSString)dataName;
- (AAEventData)init;
- (NSDate)eventDate;
- (NSString)appSessionID;
- (id)toDict;
@end

@implementation AAEventData

- (NSDate)eventDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___AAEventData_eventDate, v3);
  v8 = sub_1B6AB8D20();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSString)appSessionID
{
  if (*(self + OBJC_IVAR___AAEventData_appSessionID + 8))
  {
    v2 = *(self + OBJC_IVAR___AAEventData_appSessionID);
    v3 = *(self + OBJC_IVAR___AAEventData_appSessionID + 8);

    v4 = sub_1B6AB92B0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (NSString)dataName
{
  v2 = sub_1B6AB92B0();

  return v2;
}

- (id)toDict
{
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

- (AAEventData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end