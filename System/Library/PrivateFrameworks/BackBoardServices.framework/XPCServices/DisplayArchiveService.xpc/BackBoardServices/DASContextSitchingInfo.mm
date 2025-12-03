@interface DASContextSitchingInfo
+ (id)infoWithContextInfoToArchive:(id)archive;
- (id)_initWithContextInfoToArchiveMap:(id)map;
- (id)archiveOfContext:(id)context;
- (id)description;
@end

@implementation DASContextSitchingInfo

- (id)description
{
  [BSDescriptionBuilder builderWithObject:self];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100001924;
  v10 = &unk_1000104A8;
  v12 = v11 = self;
  v3 = v12;
  v4 = [v3 modifyBody:&v7];
  build = [v3 build];

  return build;
}

- (id)archiveOfContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    v8 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"contextInfo"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = [NSString stringWithUTF8String:"[DASContextSitchingInfo archiveOfContext:]"];
      *buf = 138544130;
      v11 = v9;
      v12 = 2114;
      v13 = @"DASParsing.m";
      v14 = 1024;
      v15 = 186;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100001E88);
  }

  v5 = contextCopy;
  v6 = [(NSDictionary *)self->_contextInfoToArchiveMap objectForKey:contextCopy];

  return v6;
}

- (id)_initWithContextInfoToArchiveMap:(id)map
{
  mapCopy = map;
  if (!mapCopy)
  {
    v23 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"contextInfoToArchive"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v36 = v24;
      v37 = 2114;
      v38 = v26;
      v39 = 2048;
      selfCopy = self;
      v41 = 2114;
      v42 = @"DASParsing.m";
      v43 = 1024;
      v44 = 151;
      v45 = 2114;
      v46 = v23;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000021D8);
  }

  v6 = mapCopy;
  v7 = [mapCopy count];
  v8 = [NSMutableDictionary dictionaryWithCapacity:v7];
  v9 = [NSMutableDictionary dictionaryWithCapacity:v7];
  +[NSMutableSet set];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000021E0;
  v10 = v28[3] = &unk_100010438;
  v29 = v10;
  v11 = v6;
  v30 = v11;
  v34 = a2;
  selfCopy2 = self;
  v31 = selfCopy2;
  v13 = v8;
  v32 = v13;
  v14 = v9;
  v33 = v14;
  [v11 enumerateKeysAndObjectsUsingBlock:v28];
  v27.receiver = selfCopy2;
  v27.super_class = DASContextSitchingInfo;
  v15 = [(DASContextSitchingInfo *)&v27 init];
  if (v15)
  {
    v16 = [v13 copy];
    contextIDNumberToContextMap = v15->_contextIDNumberToContextMap;
    v15->_contextIDNumberToContextMap = v16;

    v18 = [v11 copy];
    contextInfoToArchiveMap = v15->_contextInfoToArchiveMap;
    v15->_contextInfoToArchiveMap = v18;

    v20 = [v10 copy];
    contexts = v15->_contexts;
    v15->_contexts = v20;
  }

  return v15;
}

+ (id)infoWithContextInfoToArchive:(id)archive
{
  archiveCopy = archive;
  v4 = [[DASContextSitchingInfo alloc] _initWithContextInfoToArchiveMap:archiveCopy];

  return v4;
}

@end