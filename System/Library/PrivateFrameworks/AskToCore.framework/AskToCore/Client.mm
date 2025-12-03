@interface Client
- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply;
@end

@implementation Client

- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526880, &qword_2410E60E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_2410DF350();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = self;
  *(v14 + 40) = send;
  *(v14 + 48) = sub_2410D9A08;
  *(v14 + 56) = v12;

  sub_2410D61B4(0, 0, v10, &unk_2410E6378, v14);
}

@end