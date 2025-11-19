@interface ClassKitDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation ClassKitDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v32 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1000010FC;
  v42 = sub_10000110C;
  v43 = 0;
  v3 = dispatch_block_create(0, &stru_100004158);
  v4 = +[CLSUtilityService sharedInstance];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100001118;
  v35[3] = &unk_100004180;
  v37 = &v38;
  block = v3;
  v36 = block;
  [v4 databasePathWithCompletion:v35];

  v5 = dispatch_time(0, 10000000000);
  dispatch_block_wait(block, v5);
  v6 = v39[5];
  if (v6)
  {
    v31 = [v6 stringByDeletingLastPathComponent];
    v7 = [v31 stringByDeletingLastPathComponent];
    v30 = [DEAttachmentItem attachmentWithPath:@"/System/Library/CoreServices/SystemVersion.plist"];
    v44[0] = v30;
    v29 = [NSString stringWithFormat:@"%@/%@", v7, @"db/ClassKit.db"];
    v28 = [DEAttachmentItem attachmentWithPath:v29];
    v44[1] = v28;
    v27 = [NSString stringWithFormat:@"%@/%@", v7, @"db/ClassKit.db-shm"];
    v26 = [DEAttachmentItem attachmentWithPath:v27];
    v44[2] = v26;
    v25 = [NSString stringWithFormat:@"%@/%@", v7, @"db/ClassKit.db-wal"];
    v24 = [DEAttachmentItem attachmentWithPath:v25];
    v44[3] = v24;
    v23 = [NSString stringWithFormat:@"%@/%@", v7, @"db/student.db"];
    v22 = [DEAttachmentItem attachmentWithPath:v23];
    v44[4] = v22;
    v21 = [NSString stringWithFormat:@"%@/%@", v7, @"db/student.db-shm"];
    v20 = [DEAttachmentItem attachmentWithPath:v21];
    v44[5] = v20;
    v8 = [NSString stringWithFormat:@"%@/%@", v7, @"db/student.db-wal"];
    v9 = [DEAttachmentItem attachmentWithPath:v8];
    v44[6] = v9;
    v10 = [NSString stringWithFormat:@"%@/%@", v7, @"db/teacher.db"];
    v11 = [DEAttachmentItem attachmentWithPath:v10];
    v44[7] = v11;
    v12 = [NSString stringWithFormat:@"%@/%@", v7, @"db/teacher.db-shm"];
    v13 = [DEAttachmentItem attachmentWithPath:v12];
    v44[8] = v13;
    v14 = [NSString stringWithFormat:@"%@/%@", v7, @"db/teacher.db-wal"];
    v15 = [DEAttachmentItem attachmentWithPath:v14];
    v44[9] = v15;
    v16 = [NSArray arrayWithObjects:v44 count:10];
  }

  else
  {
    CLSInitLog();
    v17 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Database path is nil, cannot find the ClassKit files", buf, 2u);
    }

    v18 = [DEAttachmentItem attachmentWithPath:@"/System/Library/CoreServices/SystemVersion.plist"];
    v45 = v18;
    v16 = [NSArray arrayWithObjects:&v45 count:1];
    v31 = v18;
  }

  _Block_object_dispose(&v38, 8);

  return v16;
}

@end