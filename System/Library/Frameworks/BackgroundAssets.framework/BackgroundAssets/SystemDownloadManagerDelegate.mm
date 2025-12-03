@interface SystemDownloadManagerDelegate
- (void)download:(BADownload *)download didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
- (void)download:(id)download didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)download:(id)download failedWithError:(id)error;
- (void)download:(id)download finishedWithFileURL:(id)l;
- (void)downloadDidBegin:(id)begin;
- (void)downloadDidPause:(id)pause;
@end

@implementation SystemDownloadManagerDelegate

- (void)downloadDidBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_236E5D984(beginCopy, "Download did begin: %{public}@", &unk_2849D9108, &unk_236E854A0);
}

- (void)downloadDidPause:(id)pause
{
  pauseCopy = pause;
  selfCopy = self;
  sub_236E5D984(pauseCopy, "Download did pause: %{public}@", &unk_2849D90E0, &unk_236E85490);
}

- (void)download:(id)download didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  downloadCopy = download;
  selfCopy = self;
  sub_236E5E160(downloadCopy, bytes, written, write);
}

- (void)download:(BADownload *)download didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = download;
  v14[3] = challenge;
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
  downloadCopy = download;
  challengeCopy = challenge;
  selfCopy = self;
  sub_236E7A3F4(0, 0, v12, &unk_236E85050, v17);
}

- (void)download:(id)download failedWithError:(id)error
{
  downloadCopy = download;
  errorCopy = error;
  selfCopy = self;
  sub_236E5F6B0(downloadCopy, errorCopy);
}

- (void)download:(id)download finishedWithFileURL:(id)l
{
  v6 = sub_236E819F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_236E819C4();
  downloadCopy = download;
  selfCopy = self;
  sub_236E60950(downloadCopy, v10);

  (*(v7 + 8))(v10, v6);
}

@end