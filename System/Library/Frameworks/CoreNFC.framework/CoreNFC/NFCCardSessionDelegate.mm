@interface NFCCardSessionDelegate
- (_TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate)init;
- (void)didConnectToReader;
- (void)didDetectField:(BOOL)a3;
- (void)didDisconnectFromReader;
- (void)didInvalidate;
- (void)didReceiveAPDU:(id)a3;
- (void)didStartSession:(id)a3;
- (void)didTerminate:(id)a3;
- (void)fieldChanged:(BOOL)a3;
- (void)hwStateDidChange:(unsigned int)a3;
@end

@implementation NFCCardSessionDelegate

- (void)fieldChanged:(BOOL)a3
{
  v4 = self;
  sub_237296578(a3);
}

- (void)didReceiveAPDU:(id)a3
{
  v5 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v15 - v8;
  v10 = a3;
  v11 = self;
  v12 = sub_2372D0FC4();
  v14 = v13;

  v15[1] = v12;
  v15[2] = v14 | 0x1000000000000000;
  v16 = 0;
  sub_23728DFE4(v12, v14);
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();

  sub_23728E084(v12, v14);
  (*(v6 + 8))(v9, v5);
}

- (void)didConnectToReader
{
  v2 = self;
  sub_237296970();
}

- (void)didDisconnectFromReader
{
  v2 = self;
  sub_237296BE8();
}

- (void)didDetectField:(BOOL)a3
{
  v4 = self;
  sub_237296E68(a3);
}

- (void)didStartSession:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_237297108(a3);
}

- (void)didInvalidate
{
  v3 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v9 - v6;
  v9 = xmmword_2372D4690;
  v10 = 0;
  v8 = self;
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();
  (*(v4 + 8))(v7, v3);
  sub_2372D1164();
}

- (void)didTerminate:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_2372974B8(v5);
}

- (void)hwStateDidChange:(unsigned int)a3
{
  v5 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v11 - v8;
  if (a3 != 2)
  {
    v11 = xmmword_2372D4690;
    v12 = 0;
    v10 = self;
    sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
    sub_2372D1154();
    (*(v6 + 8))(v9, v5);
    sub_2372D1164();
  }
}

- (_TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end