@interface _ANECompilerService
+ (void)initialize;
- (void)compileModelAt:(id)a3 csIdentity:(id)a4 sandboxExtension:(id)a5 options:(id)a6 tempDirectory:(id)a7 cloneDirectory:(id)a8 outputURL:(id)a9 aotModelBinaryPath:(id)a10 withReply:(id)a11;
@end

@implementation _ANECompilerService

+ (void)initialize
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.compilerService.csQueue", v4);
  v3 = qword_100021B30;
  qword_100021B30 = v2;
}

- (void)compileModelAt:(id)a3 csIdentity:(id)a4 sandboxExtension:(id)a5 options:(id)a6 tempDirectory:(id)a7 cloneDirectory:(id)a8 outputURL:(id)a9 aotModelBinaryPath:(id)a10 withReply:(id)a11
{
  v16 = a3;
  v46 = a4;
  v17 = a5;
  v18 = a6;
  v47 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v41 = mach_continuous_time();
  v23 = +[_ANELog compiler];
  spid = os_signpost_id_generate(v23);

  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_10000F7F8;
  v62[4] = sub_10000F808;
  v63 = 0;
  context = objc_autoreleasePoolPush();
  [v16 string_id];
  kdebug_trace();
  v24 = +[_ANELog compiler];
  v25 = v24;
  v26 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    v27 = [v16 string_id];
    *buf = 134217984;
    v65 = v27;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, spid, "_ANEC_MODEL_COMPILE", "model.string_id:%llu", buf, 0xCu);
  }

  v28 = qword_100021B30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F810;
  block[3] = &unk_10001C718;
  v42 = v18;
  v50 = v42;
  v60 = a2;
  v29 = v22;
  v58 = v29;
  v45 = v17;
  v51 = v45;
  v30 = v16;
  v52 = v30;
  v61 = spid;
  v31 = v19;
  v53 = v31;
  v32 = v46;
  v54 = v32;
  v33 = v20;
  v55 = v33;
  v34 = v21;
  v56 = v34;
  v59 = v62;
  v35 = v47;
  v57 = v35;
  dispatch_sync(v28, block);

  objc_autoreleasePoolPop(context);
  [v30 string_id];
  kdebug_trace();
  v36 = +[_ANELog compiler];
  v37 = v36;
  if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    v38 = [v30 string_id];
    *buf = 134217984;
    v65 = v38;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_EVENT, spid, "_ANEC_MODEL_COMPILE", "model.string_id:%llu", buf, 0xCu);
  }

  v39 = +[_ANELog compiler];
  v40 = v39;
  if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    *buf = 134349056;
    v65 = v41;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_EVENT, spid, "_ANEC_MODEL_COMPILE", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
  }

  _Block_object_dispose(v62, 8);
}

@end