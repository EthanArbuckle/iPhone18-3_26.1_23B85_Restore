@interface BKAppGlobalActionHandler
- (BKAppGlobalActionHandler)init;
- (BKAppGlobalActionHandlerDelegate)delegate;
- (void)books_aboutKeyboardShortcuts:(id)shortcuts;
- (void)books_aboutServicesAndSupport:(id)support;
- (void)books_aboutTermsAndConditions:(id)conditions;
- (void)books_import:(id)books_import;
- (void)books_openRecent:(id)recent;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
@end

@implementation BKAppGlobalActionHandler

- (BKAppGlobalActionHandlerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)books_openRecent:(id)recent
{
  if (recent)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10023AAE8(v6);

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_import:(id)books_import
{
  if (books_import)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v6 = *(self + OBJC_IVAR___BKAppGlobalActionHandler_sceneManager);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_10023D5E4;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100201C54;
  v9[3] = &unk_100A0FEE0;
  v8 = _Block_copy(v9);

  [v6 requestPrimaryScene:v8];
  _Block_release(v8);

  sub_100007840(v10, &unk_100AD5B40);
}

- (void)books_aboutKeyboardShortcuts:(id)shortcuts
{
  if (shortcuts)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10023D4B0();

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_aboutTermsAndConditions:(id)conditions
{
  if (conditions)
  {
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_10079AE34();
  v3 = sub_10079AE04();
  sub_10079ADD4();

  sub_100007840(v4, &unk_100AD5B40);
}

- (void)books_aboutServicesAndSupport:(id)support
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = v10 - v5;
  if (support)
  {
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v7 = sub_1007A2744();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1007A26F4();
  v8 = sub_1007A26E4();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1003457A0(0, 0, v6, &unk_100812EA8, v9);

  sub_100007840(v10, &unk_100AD5B40);
}

- (BKAppGlobalActionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_1007969B4();
  v6 = sub_1007A25E4();
  v7 = *(self + OBJC_IVAR___BKAppGlobalActionHandler_sceneManager);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v13[4] = sub_10023D330;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100201C54;
  v13[3] = &unk_100A0FE40;
  v10 = _Block_copy(v13);
  pickerCopy = picker;
  selfCopy = self;

  [v7 requestPrimaryScene:v10];
  _Block_release(v10);
}

@end