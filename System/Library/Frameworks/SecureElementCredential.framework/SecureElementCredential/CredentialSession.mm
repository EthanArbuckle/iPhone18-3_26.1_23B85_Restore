@interface CredentialSession
- (void)installationCompletedWithCredentials:(NSArray *)a3 completionHandler:(id)a4;
- (void)presentmentAssertionTimeoutWithError:(NSError *)a3 completionHandler:(id)a4;
- (void)receivedHciDataWithData:(NSData *)a3 appletIdentifier:(NSData *)a4 completionHandler:(id)a5;
- (void)rfFieldChanged:(BOOL)a3 completionHandler:(id)a4;
- (void)sessionEndedWithError:(id)a3;
- (void)sessionErrorEventWithReason:(NSError *)a3 completionHandler:(id)a4;
@end

@implementation CredentialSession

- (void)presentmentAssertionTimeoutWithError:(NSError *)a3 completionHandler:(id)a4
{
  v7 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23AA961EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23AA97F28;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23AA97F30;
  v15[5] = v14;
  v16 = a3;

  sub_23AA8F52C(0, 0, v10, &unk_23AA97F38, v15);
}

- (void)installationCompletedWithCredentials:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23AA961EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23AA97EE0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23AA97EE8;
  v15[5] = v14;
  v16 = a3;

  sub_23AA8F52C(0, 0, v10, &unk_23AA97EF0, v15);
}

- (void)receivedHciDataWithData:(NSData *)a3 appletIdentifier:(NSData *)a4 completionHandler:(id)a5
{
  v9 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23AA961EC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23AA97EA8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23AA97EB0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_23AA8F52C(0, 0, v12, &unk_23AA97EB8, v17);
}

- (void)rfFieldChanged:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_23AA961EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23AA97E70;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23AA97E78;
  v15[5] = v14;

  sub_23AA8F52C(0, 0, v10, &unk_23AA97E80, v15);
}

- (void)sessionErrorEventWithReason:(NSError *)a3 completionHandler:(id)a4
{
  v7 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23AA961EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23AA97E08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23AA97E18;
  v15[5] = v14;
  v16 = a3;

  sub_23AA8F52C(0, 0, v10, &unk_23AA97E28, v15);
}

- (void)sessionEndedWithError:(id)a3
{

  v4 = a3;
  sub_23AA8EDDC(a3);
}

@end