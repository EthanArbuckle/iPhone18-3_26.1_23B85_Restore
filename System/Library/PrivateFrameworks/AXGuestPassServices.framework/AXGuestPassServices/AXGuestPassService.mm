@interface AXGuestPassService
+ (AXGuestPassService)sharedInstance;
- (id)getSyncedProfileData:(id)a3;
- (id)getSyncedProfiles;
- (void)beginGuestPassSessionWithData:(NSData *)a3 completionBlock:(id)a4;
- (void)beginGuestPassTransferWithCompletionBlock:(id)a3;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)deleteDataFromiCloud;
- (void)endGuestPassSessionWithCompletionBlock:(id)a3;
- (void)endGuestPassTransferWithCompletionBlock:(id)a3;
- (void)initializeMonitor;
- (void)initializeSyncEngine;
- (void)resumeGuestPassSessionWithCompletionBlock:(id)a3;
- (void)syncLatestDataToiCloud;
@end

@implementation AXGuestPassService

+ (AXGuestPassService)sharedInstance
{
  if (qword_280D9E900 != -1)
  {
    swift_once();
  }

  v3 = qword_280D9E908;

  return v3;
}

- (void)initializeMonitor
{
  v2 = self;
  AXGuestPassService.initializeMonitor()();
}

- (void)beginGuestPassTransferWithCompletionBlock:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23D60C4D0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23D60D318;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23D60D320;
  v12[5] = v11;
  v13 = self;
  sub_23D603178(0, 0, v7, &unk_23D60D328, v12);
}

- (void)endGuestPassTransferWithCompletionBlock:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23D60C4D0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23D60D2F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23D60D300;
  v12[5] = v11;
  v13 = self;
  sub_23D603178(0, 0, v7, &unk_23D60D308, v12);
}

- (void)beginGuestPassSessionWithData:(NSData *)a3 completionBlock:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23D60C4D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23D60D2D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23D60D2E0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_23D603178(0, 0, v9, &unk_23D60D2E8, v14);
}

- (void)endGuestPassSessionWithCompletionBlock:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23D60C4D0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23D60D2B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23D60D2C0;
  v12[5] = v11;
  v13 = self;
  sub_23D603178(0, 0, v7, &unk_23D60D2C8, v12);
}

- (void)resumeGuestPassSessionWithCompletionBlock:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23D60C4D0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23D60D270;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23D60D280;
  v12[5] = v11;
  v13 = self;
  sub_23D603178(0, 0, v7, &unk_23D60D290, v12);
}

- (void)syncLatestDataToiCloud
{
  v2 = self;
  sub_23D5FDB5C();
}

- (void)deleteDataFromiCloud
{
  v2 = self;
  sub_23D5FDE80();
}

- (void)initializeSyncEngine
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF2C0, &qword_23D60D420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v9 - v4;
  v6 = sub_23D60C4D0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  v8 = self;
  sub_23D5FE148(0, 0, v5, &unk_23D60D228, v7);
}

- (id)getSyncedProfiles
{
  v2 = self;
  v3 = AXGuestPassService.getSyncedProfiles()();

  if (v3)
  {
    v4 = sub_23D60C460();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getSyncedProfileData:(id)a3
{
  v4 = sub_23D60C400();
  v6 = v5;
  v7 = self;
  v8 = AXGuestPassService.getSyncedProfileData(_:)(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_23D60C150();
    sub_23D604A88(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  v5 = a3;
  v6 = self;
  AXGuestPassService.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(a3);
}

@end