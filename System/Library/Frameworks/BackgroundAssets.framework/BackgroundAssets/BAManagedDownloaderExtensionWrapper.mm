@interface BAManagedDownloaderExtensionWrapper
- (BAManagedDownloaderExtensionWrapper)init;
- (BAManagedDownloaderExtensionWrapper)initWithWrappedExtension:(id)a3;
- (id)downloadsForRequest:(int64_t)a3 manifestURL:(id)a4 extensionInfo:(id)a5;
- (void)backgroundDownload:(BADownload *)a3 didReceiveChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5;
- (void)backgroundDownload:(id)a3 failedWithError:(id)a4;
- (void)backgroundDownload:(id)a3 finishedWithFileURL:(id)a4;
@end

@implementation BAManagedDownloaderExtensionWrapper

- (BAManagedDownloaderExtensionWrapper)initWithWrappedExtension:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___BAManagedDownloaderExtensionWrapper_swiftExtension) = a3;
  v4.receiver = self;
  v4.super_class = BAManagedDownloaderExtensionWrapper;
  swift_unknownObjectRetain();
  return [(BAManagedDownloaderExtensionWrapper *)&v4 init];
}

- (id)downloadsForRequest:(int64_t)a3 manifestURL:(id)a4 extensionInfo:(id)a5
{
  v8 = sub_236E819F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E819C4();
  v13 = *(&self->super.isa + OBJC_IVAR___BAManagedDownloaderExtensionWrapper_swiftExtension);
  v14 = a5;
  v15 = self;
  sub_236E764C0(a3, v12, v14, v13);

  (*(v9 + 8))(v12, v8);
  sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
  sub_236E3AA4C();
  v16 = sub_236E82094();

  return v16;
}

- (void)backgroundDownload:(BADownload *)a3 didReceiveChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5
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
  v16[4] = &unk_236E86678;
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

- (void)backgroundDownload:(id)a3 finishedWithFileURL:(id)a4
{
  v5 = sub_236E819F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E819C4();
  v10 = a3;
  sub_236E795A8(v10, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)backgroundDownload:(id)a3 failedWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_236E793B0(v5, v6);
}

- (BAManagedDownloaderExtensionWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end