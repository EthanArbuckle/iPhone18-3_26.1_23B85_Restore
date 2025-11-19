@interface AISAppleIDAuthContextProvider
- (_TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider)init;
- (id)remoteUIStyle;
- (void)contextDidDismissLoginAlertController:(id)a3;
- (void)contextDidEndPresentingSecondaryUI:(id)a3;
- (void)contextDidPresentLoginAlertController:(id)a3;
- (void)contextWillBeginPresentingSecondaryUI:(id)a3;
- (void)contextWillDismissLoginAlertController:(id)a3;
- (void)signAdditionalHeadersWithRequest:(NSMutableURLRequest *)a3 withCompletion:(id)a4;
- (void)willPresentModalNavigationController:(id)a3;
@end

@implementation AISAppleIDAuthContextProvider

- (_TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contextDidPresentLoginAlertController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409DF0AC();
}

- (void)contextWillDismissLoginAlertController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409DF230();
}

- (void)contextDidDismissLoginAlertController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409DF3B4();
}

- (void)contextWillBeginPresentingSecondaryUI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409DF538();
}

- (void)contextDidEndPresentingSecondaryUI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409DF6BC();
}

- (id)remoteUIStyle
{
  v2 = sub_2409DF840();

  return v2;
}

- (void)willPresentModalNavigationController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409DF978();
}

- (void)signAdditionalHeadersWithRequest:(NSMutableURLRequest *)a3 withCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A36D00;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A30840;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A33600, v16);
}

@end