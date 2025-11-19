@interface HeadphoneDigitalEngravingManager
- (id)fetchEngravingDataHandler;
- (void)deviceDidConnect:(id)a3;
- (void)setFetchEngravingDataHandler:(id)a3;
@end

@implementation HeadphoneDigitalEngravingManager

- (id)fetchEngravingDataHandler
{
  if (*(self + OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1000B70EC;
    v5[3] = &unk_100193BC0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFetchEngravingDataHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000B8618;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler);
  v8 = *(self + OBJC_IVAR____TtC18SharingViewService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_100012050(v8);
}

- (void)deviceDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B7534(v4);
}

@end