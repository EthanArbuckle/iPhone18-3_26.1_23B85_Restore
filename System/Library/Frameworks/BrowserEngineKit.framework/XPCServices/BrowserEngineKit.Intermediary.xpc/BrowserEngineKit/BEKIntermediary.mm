@interface BEKIntermediary
- (void)createPlaceholderWithFilename:(NSString *)filename completionHandler:(id)handler;
- (void)isEligibleForContext:(int64_t)context completionHandler:(id)handler;
- (void)replacePlaceholderWithPlaceholderFileWrapper:(NSSecurityScopedURLWrapper *)wrapper downloadedFileWrapper:(NSSecurityScopedURLWrapper *)fileWrapper completionHandler:(id)handler;
@end

@implementation BEKIntermediary

- (void)createPlaceholderWithFilename:(NSString *)filename completionHandler:(id)handler
{
  v7 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = filename;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10000752C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100007E70;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100007E78;
  v15[5] = v14;
  filenameCopy = filename;

  sub_100006458(0, 0, v10, &unk_100007E80, v15);
}

- (void)replacePlaceholderWithPlaceholderFileWrapper:(NSSecurityScopedURLWrapper *)wrapper downloadedFileWrapper:(NSSecurityScopedURLWrapper *)fileWrapper completionHandler:(id)handler
{
  v9 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = wrapper;
  v14[3] = fileWrapper;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_10000752C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100007E50;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100007E58;
  v17[5] = v16;
  wrapperCopy = wrapper;
  fileWrapperCopy = fileWrapper;

  sub_100006458(0, 0, v12, &unk_100007E60, v17);
}

- (void)isEligibleForContext:(int64_t)context completionHandler:(id)handler
{
  v7 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = context;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10000752C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100007E08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100007E18;
  v15[5] = v14;

  sub_100006458(0, 0, v10, &unk_100007E28, v15);
}

@end