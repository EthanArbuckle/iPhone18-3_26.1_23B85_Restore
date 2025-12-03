@interface Server
- (void)canAskTo:(signed __int16)to requiredCapabilities:(id)capabilities reply:(id)reply;
- (void)canManageContactsFor:(int64_t)for reply:(id)reply;
- (void)deliverResponseWithResponse:(id)response toClientWithBundleIdentifier:(id)identifier reply:(id)reply;
- (void)knownHandlesFrom:(id)from reply:(id)reply;
- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply;
- (void)payloadForSendRequestWithQuestion:(id)question recipientGroup:(signed __int16)group clientPayload:(id)payload shouldValidateSendDestinations:(BOOL)destinations reply:(id)reply;
- (void)screenTimeDidReceiveAnswer:(id)answer forRequestWithID:(id)d responderDSID:(id)iD reply:(id)reply;
- (void)sendResponse:(id)response to:(id)to requestMessageGUID:(id)d reply:(id)reply;
- (void)updateMessageBubble:(id)bubble responderHandle:(id)handle answerChoice:(id)choice reply:(id)reply;
@end

@implementation Server

- (void)knownHandlesFrom:(id)from reply:(id)reply
{
  v5 = _Block_copy(reply);
  sub_241165928();
  sub_2411356E8(&qword_27E531380, MEMORY[0x277CEEC50]);
  v6 = sub_241165FD8();
  _Block_copy(v5);

  sub_241133EB0(v6, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)sendResponse:(id)response to:(id)to requestMessageGUID:(id)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(reply);
  v14 = sub_241165EF8();
  v15 = sub_241165DD8();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = sub_241165FA8();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = response;
  v20[6] = v14;
  v20[7] = v15;
  v20[8] = v17;
  v20[9] = sub_241135C30;
  v20[10] = v18;
  responseCopy = response;

  sub_24113C95C(0, 0, v12, &unk_241168560, v20);
}

- (void)screenTimeDidReceiveAnswer:(id)answer forRequestWithID:(id)d responderDSID:(id)iD reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = _Block_copy(reply);
  v14 = sub_241165DD8();
  v16 = v15;
  v17 = sub_241165DD8();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  v21 = sub_241165FA8();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = self;
  v22[5] = answer;
  v22[6] = v14;
  v22[7] = v16;
  v22[8] = v17;
  v22[9] = v19;
  v22[10] = sub_241135C30;
  v22[11] = v20;
  answerCopy = answer;

  sub_24113C95C(0, 0, v12, &unk_241168548, v22);
}

- (void)payloadForSendRequestWithQuestion:(id)question recipientGroup:(signed __int16)group clientPayload:(id)payload shouldValidateSendDestinations:(BOOL)destinations reply:(id)reply
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v17 = _Block_copy(reply);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_241165FA8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = self;
  *(v20 + 40) = question;
  *(v20 + 48) = group;
  *(v20 + 56) = payload;
  *(v20 + 64) = destinations;
  *(v20 + 72) = sub_241135070;
  *(v20 + 80) = v18;
  questionCopy = question;
  payloadCopy = payload;

  sub_24113C95C(0, 0, v16, &unk_241168500, v20);
}

- (void)updateMessageBubble:(id)bubble responderHandle:(id)handle answerChoice:(id)choice reply:(id)reply
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(reply);
  v15 = sub_241165DD8();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = sub_241165FA8();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = bubble;
  v20[6] = v15;
  v20[7] = v17;
  v20[8] = choice;
  v20[9] = sub_241135C30;
  v20[10] = v18;
  bubbleCopy = bubble;
  choiceCopy = choice;

  sub_24113C95C(0, 0, v13, &unk_241168468, v20);
}

- (void)canManageContactsFor:(int64_t)for reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_241165FA8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = for;
  v14[6] = sub_241135C1C;
  v14[7] = v12;

  sub_24113C95C(0, 0, v10, &unk_241168430, v14);
}

- (void)canAskTo:(signed __int16)to requiredCapabilities:(id)capabilities reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = _Block_copy(reply);
  if (capabilities)
  {
    capabilities = sub_241165FD8();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = sub_241165FA8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = self;
  *(v16 + 40) = to;
  *(v16 + 48) = capabilities;
  *(v16 + 56) = sub_2411323C4;
  *(v16 + 64) = v14;

  sub_24113C95C(0, 0, v12, &unk_241168410, v16);
}

- (void)deliverResponseWithResponse:(id)response toClientWithBundleIdentifier:(id)identifier reply:(id)reply
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(reply);
  v13 = sub_241165DD8();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = sub_241165FA8();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = self;
  v18[5] = response;
  v18[6] = v13;
  v18[7] = v15;
  v18[8] = sub_241132210;
  v18[9] = v16;
  responseCopy = response;

  sub_24113C95C(0, 0, v11, &unk_2411683D8, v18);
}

- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_241165FA8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = self;
  *(v14 + 40) = send;
  *(v14 + 48) = sub_241135C30;
  *(v14 + 56) = v12;

  sub_24113C95C(0, 0, v10, &unk_241168388, v14);
}

@end