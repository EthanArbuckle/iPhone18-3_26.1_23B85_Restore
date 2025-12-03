@interface _ANECompilerService
+ (void)initialize;
- (void)compileModelAt:(id)at csIdentity:(id)identity sandboxExtension:(id)extension options:(id)options tempDirectory:(id)directory cloneDirectory:(id)cloneDirectory outputURL:(id)l aotModelBinaryPath:(id)self0 withReply:(id)self1;
@end

@implementation _ANECompilerService

+ (void)initialize
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.compilerService.csQueue", v4);
  v3 = qword_100021B30;
  qword_100021B30 = v2;
}

- (void)compileModelAt:(id)at csIdentity:(id)identity sandboxExtension:(id)extension options:(id)options tempDirectory:(id)directory cloneDirectory:(id)cloneDirectory outputURL:(id)l aotModelBinaryPath:(id)self0 withReply:(id)self1
{
  atCopy = at;
  identityCopy = identity;
  extensionCopy = extension;
  optionsCopy = options;
  directoryCopy = directory;
  cloneDirectoryCopy = cloneDirectory;
  lCopy = l;
  pathCopy = path;
  replyCopy = reply;
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
  [atCopy string_id];
  kdebug_trace();
  v24 = +[_ANELog compiler];
  v25 = v24;
  v26 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    string_id = [atCopy string_id];
    *buf = 134217984;
    v65 = string_id;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, spid, "_ANEC_MODEL_COMPILE", "model.string_id:%llu", buf, 0xCu);
  }

  v28 = qword_100021B30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F810;
  block[3] = &unk_10001C718;
  v42 = optionsCopy;
  v50 = v42;
  v60 = a2;
  v29 = replyCopy;
  v58 = v29;
  v45 = extensionCopy;
  v51 = v45;
  v30 = atCopy;
  v52 = v30;
  v61 = spid;
  v31 = cloneDirectoryCopy;
  v53 = v31;
  v32 = identityCopy;
  v54 = v32;
  v33 = lCopy;
  v55 = v33;
  v34 = pathCopy;
  v56 = v34;
  v59 = v62;
  v35 = directoryCopy;
  v57 = v35;
  dispatch_sync(v28, block);

  objc_autoreleasePoolPop(context);
  [v30 string_id];
  kdebug_trace();
  v36 = +[_ANELog compiler];
  v37 = v36;
  if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    string_id2 = [v30 string_id];
    *buf = 134217984;
    v65 = string_id2;
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