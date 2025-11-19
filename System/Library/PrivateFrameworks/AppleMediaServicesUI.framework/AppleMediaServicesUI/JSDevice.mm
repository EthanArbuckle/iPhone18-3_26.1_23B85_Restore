@interface JSDevice
- (BOOL)isBundle;
- (NSArray)languages;
- (NSDate)activationDate;
- (NSString)modelPartNumber;
- (int64_t)fileSystemFreeSize;
- (int64_t)fileSystemImportantFreeSize;
- (int64_t)fileSystemOpportunisticFreeSize;
- (int64_t)fileSystemSize;
@end

@implementation JSDevice

- (NSDate)activationDate
{
  v3 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = self;
  sub_10010E418(v6);

  v8 = type metadata accessor for Date();
  isa = 0;
  if (sub_100009F34(v6, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return isa;
}

- (BOOL)isBundle
{
  v2 = self;
  v3 = sub_10010E67C();

  return v3 & 1;
}

- (int64_t)fileSystemFreeSize
{
  v2 = self;
  v3 = sub_10010E6DC();

  return v3;
}

- (int64_t)fileSystemImportantFreeSize
{
  v2 = self;
  v3 = sub_10010E728();

  return v3;
}

- (int64_t)fileSystemOpportunisticFreeSize
{
  v2 = self;
  v3 = sub_10010E914();

  return v3;
}

- (int64_t)fileSystemSize
{
  v2 = self;
  v3 = sub_10010E960();

  return v3;
}

- (NSArray)languages
{
  v2 = self;
  sub_10010ED50();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)modelPartNumber
{
  v2 = self;
  sub_10010EE1C();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end