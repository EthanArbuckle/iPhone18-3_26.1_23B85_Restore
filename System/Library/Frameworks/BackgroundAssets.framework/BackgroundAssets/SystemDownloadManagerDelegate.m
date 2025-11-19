@interface SystemDownloadManagerDelegate
- (void)download:(BADownload *)a3 didReceiveChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5;
- (void)download:(id)a3 didWriteBytes:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6;
- (void)download:(id)a3 failedWithError:(id)a4;
- (void)download:(id)a3 finishedWithFileURL:(id)a4;
- (void)downloadDidBegin:(id)a3;
- (void)downloadDidPause:(id)a3;
@end

@implementation SystemDownloadManagerDelegate

- (void)downloadDidBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_236E5D984(v4, "Download did begin: %{public}@", &unk_2849D9108, &unk_236E854A0);
}

- (void)downloadDidPause:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_236E5D984(v4, "Download did pause: %{public}@", &unk_2849D90E0, &unk_236E85490);
}

- (void)download:(id)a3 didWriteBytes:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6
{
  v10 = a3;
  v11 = self;
  sub_236E5E160(v10, a4, a5, a6);
}

- (void)download:(BADownload *)a3 didReceiveChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_236E82034();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_236E85450;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_236E85048;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_236E7A3F4(0, 0, v12, &unk_236E85050, v17);
}

- (void)download:(id)a3 failedWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_236E5F6B0(v6, v8);
}

- (void)download:(id)a3 finishedWithFileURL:(id)a4
{
  v6 = sub_236E819F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_236E819C4();
  v11 = a3;
  v12 = self;
  sub_236E60950(v11, v10);

  (*(v7 + 8))(v10, v6);
}

@end