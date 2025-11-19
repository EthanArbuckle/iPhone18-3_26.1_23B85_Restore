@interface DASRenderServerInfo
- (id)_initWithPort:(unsigned int)a3 raw:(id)a4;
- (id)archiveOfContext:(id)a3;
- (id)description;
- (void)_parseRaw;
- (void)dealloc;
@end

@implementation DASRenderServerInfo

- (void)_parseRaw
{
  v107 = 0;
  v2 = [NSRegularExpression regularExpressionWithPattern:"regularExpressionWithPattern:options:error:" options:@"^(?<displayName>.+) (?:display|contexts)(?<displayProperties>(?: \\([^\\)]+\\))*:$" error:?], 1, &v107);
  v62 = v107;
  if (v62)
  {
    v3 = sub_100005B8C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v111 = v62;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "failed to create display info parser -> %@", buf, 0xCu);
    }
  }

  v106 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:"regularExpressionWithPattern:options:error:" options:@"^\\s*(?<contextID>[0-9a-f]+):(?: level (?<level>[^]+);)? pid (?<pid>[0-9]+) \\[(?<process>[^\\]]*)\\](?<contextProperties>(?: \\([^\\)]+\\))*$" error:?], 1, &v106);;
  v61 = v106;
  if (v61)
  {
    v5 = sub_100005B8C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v111 = v61;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "failed to create context info parser -> %@", buf, 0xCu);
    }
  }

  if (!v2)
  {
    v49 = [NSString stringWithFormat:@"failed to create display info parser -> %@", v62];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v111 = v50;
      v112 = 2114;
      v113 = v52;
      v114 = 2048;
      v115 = self;
      v116 = 2114;
      v117 = @"DASParsing.m";
      v118 = 1024;
      v119 = 387;
      v120 = 2114;
      v121 = v49;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v53 = v49;
    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100003150);
  }

  v6 = sub_100005B8C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v47 = [v2 pattern];
    *buf = 138412290;
    v111 = v47;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "created display pattern %@", buf, 0xCu);
  }

  if (!v4)
  {
    v54 = [NSString stringWithFormat:@"failed to create context info parser -> %@", v61];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v55 = NSStringFromSelector(a2);
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      *buf = 138544642;
      v111 = v55;
      v112 = 2114;
      v113 = v57;
      v114 = 2048;
      v115 = self;
      v116 = 2114;
      v117 = @"DASParsing.m";
      v118 = 1024;
      v119 = 389;
      v120 = 2114;
      v121 = v54;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v58 = v54;
    [v54 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100003250);
  }

  v7 = sub_100005B8C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v48 = [v4 pattern];
    *buf = 138412290;
    v111 = v48;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "created context pattern %@", buf, 0xCu);
  }

  v8 = +[NSMutableArray array];
  v9 = +[NSMutableOrderedSet orderedSet];
  v10 = +[NSMutableDictionary dictionary];
  v11 = +[NSMutableDictionary dictionary];
  v12 = +[NSMutableDictionary dictionary];
  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x3032000000;
  v104[3] = sub_1000032BC;
  v104[4] = sub_1000032CC;
  v105 = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x3032000000;
  v102[3] = sub_1000032BC;
  v102[4] = sub_1000032CC;
  v103 = 0;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x3032000000;
  v100[3] = sub_1000032BC;
  v100[4] = sub_1000032CC;
  v101 = 0;
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_1000032D4;
  v92[3] = &unk_100010510;
  v96 = v102;
  v97 = v104;
  v99 = a2;
  v70 = v11;
  v93 = v70;
  v94 = self;
  v13 = v9;
  v95 = v13;
  v98 = v100;
  v14 = objc_retainBlock(v92);
  raw = self->_raw;
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_100003608;
  v81[3] = &unk_100010538;
  v91 = a2;
  v59 = v2;
  v82 = v59;
  v83 = self;
  v16 = v14;
  v88 = v16;
  v89 = v104;
  v68 = v10;
  v84 = v68;
  v90 = v102;
  v17 = v16;
  v60 = v4;
  v85 = v60;
  v18 = v12;
  v86 = v18;
  v63 = v8;
  v87 = v63;
  [(NSString *)raw enumerateLinesUsingBlock:v81];
  v16[2](v16);
  v69 = +[NSMutableOrderedSet orderedSet];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v13;
  v65 = [obj countByEnumeratingWithState:&v77 objects:v109 count:16];
  if (v65)
  {
    v66 = *v78;
    do
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v78 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v77 + 1) + 8 * i);
        v20 = +[NSMutableOrderedSet orderedSet];
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v21 = [v70 objectForKey:v19];
        v22 = [v21 countByEnumeratingWithState:&v73 objects:v108 count:16];
        if (v22)
        {
          v23 = *v74;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v74 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = v17;
              v26 = *(*(&v73 + 1) + 8 * j);
              v27 = [v18 objectForKey:v26];
              if (!v27)
              {
                v41 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"failed to find context %x attached to %@ :\n%@", [v26 unsignedIntValue], v19, self->_raw);
                v42 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  v43 = NSStringFromSelector(a2);
                  v44 = objc_opt_class();
                  v45 = NSStringFromClass(v44);
                  *buf = 138544642;
                  v111 = v43;
                  v112 = 2114;
                  v113 = v45;
                  v114 = 2048;
                  v115 = self;
                  v116 = 2114;
                  v117 = @"DASParsing.m";
                  v118 = 1024;
                  v119 = 471;
                  v120 = 2114;
                  v121 = v41;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
                }

                v46 = v41;
                [v41 UTF8String];
                _bs_set_crash_log_message();
                __break(0);
                JUMPOUT(0x100002EF0);
              }

              [v20 addObject:v27];

              v17 = v25;
            }

            v22 = [v21 countByEnumeratingWithState:&v73 objects:v108 count:16];
          }

          while (v22);
        }

        v28 = [DASDisplayInfo alloc];
        v29 = [v68 objectForKey:v19];
        v30 = [(DASDisplayInfo *)v28 _initWithName:v19 attachedContexts:v20 raw:v29];
        [v69 addObject:v30];
      }

      v65 = [obj countByEnumeratingWithState:&v77 objects:v109 count:16];
    }

    while (v65);
  }

  v31 = [v69 copy];
  displays = self->_displays;
  self->_displays = v31;

  v33 = [v18 copy];
  contextIDNumberToContextMap = self->_contextIDNumberToContextMap;
  self->_contextIDNumberToContextMap = v33;

  v35 = [v18 allValues];
  v36 = [NSSet setWithArray:v35];
  contexts = self->_contexts;
  self->_contexts = v36;

  v38 = [v63 copy];
  parseErrors = self->_parseErrors;
  self->_parseErrors = v38;

  v40 = sub_100005B8C();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v111 = self;
    _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "parse result: '%@'", buf, 0xCu);
  }

  _Block_object_dispose(v100, 8);
  _Block_object_dispose(v102, 8);

  _Block_object_dispose(v104, 8);
}

- (id)description
{
  [BSDescriptionBuilder builderWithObject:self];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100004504;
  v11 = v10 = &unk_1000104A8;
  v12 = self;
  v3 = v11;
  v4 = [v3 modifyBody:&v7];
  v5 = [v3 build];

  return v5;
}

- (id)archiveOfContext:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v27 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"contextInfo"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v28 = [NSString stringWithUTF8String:"[DASRenderServerInfo archiveOfContext:]"];
      *buf = 138544130;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = @"DASParsing.m";
      *&buf[22] = 1024;
      LODWORD(v39) = 273;
      WORD2(v39) = 2114;
      *(&v39 + 6) = v27;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v29 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100004FF8);
  }

  v5 = v4;
  port = self->_port;
  v7 = [v4 identifier];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v8 = off_100015190;
  v36 = off_100015190;
  if (!off_100015190)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100005084;
    *&v39 = &unk_100010920;
    *(&v39 + 1) = &v33;
    v9 = sub_1000050D4();
    v10 = dlsym(v9, "CARenderServerGetClientPort");
    *(*(*(&v39 + 1) + 8) + 24) = v10;
    off_100015190 = *(*(*(&v39 + 1) + 8) + 24);
    v8 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (!v8)
  {
    v30 = +[NSAssertionHandler currentHandler];
    v31 = [NSString stringWithUTF8String:"mach_port_t soft_CARenderServerGetClientPort(mach_port_t, uint32_t)"];
    [v30 handleFailureInFunction:v31 file:@"DASParsing.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v11 = v8(port, v7);
  if (v11)
  {
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"DumpDisplay: capture %x from %i", [v5 identifier], objc_msgSend(v5, "pid"));
    v13 = [RBSAssertion alloc];
    v14 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [v5 pid]);
    v15 = [RBSDomainAttribute attributeWithDomain:@"com.apple.displayarchive" name:@"RenderClientProcessing"];
    v37 = v15;
    v16 = [NSArray arrayWithObjects:&v37 count:1];
    v17 = [v13 initWithExplanation:v12 target:v14 attributes:v16];

    v32 = 0;
    [v17 acquireWithError:&v32];
    v18 = v32;
    if (v18)
    {
      v19 = sub_100005B8C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v24 = [v5 identifier];
        v25 = [v5 pid];
        *buf = 67109376;
        *&buf[4] = v24;
        *&buf[8] = 1024;
        *&buf[10] = v25;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "error acquiring assertion to capture archive of context %x (from %i)", buf, 0xEu);
      }
    }

    v20 = off_100015040(v11);
    [v17 invalidate];
    mach_port_deallocate(mach_task_self_, v11);
    if (v20)
    {

      goto LABEL_18;
    }

    v22 = sub_100005B8C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = [v5 identifier];
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "unable to capture archive of context %x", buf, 8u);
    }
  }

  else
  {
    v12 = sub_100005B8C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = [v5 identifier];
      *buf = 67109120;
      *&buf[4] = v21;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "server doesn't know about context %x", buf, 8u);
    }
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (void)dealloc
{
  port = self->_port;
  BSMachSendRightRelease();
  v4.receiver = self;
  v4.super_class = DASRenderServerInfo;
  [(DASRenderServerInfo *)&v4 dealloc];
}

- (id)_initWithPort:(unsigned int)a3 raw:(id)a4
{
  v7 = a4;
  if ((BSMachPortIsType() & 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"invalid port"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v23 = v14;
      v24 = 2114;
      v25 = v16;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = @"DASParsing.m";
      v30 = 1024;
      v31 = 249;
      v32 = 2114;
      v33 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100005548);
  }

  if (!v7)
  {
    v17 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"raw"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = @"DASParsing.m";
      v30 = 1024;
      v31 = 250;
      v32 = 2114;
      v33 = v17;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100005640);
  }

  v21.receiver = self;
  v21.super_class = DASRenderServerInfo;
  v8 = [(DASRenderServerInfo *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_port = a3;
    v10 = [v7 copy];
    raw = v9->_raw;
    v9->_raw = v10;

    [(DASRenderServerInfo *)v9 _parseRaw];
  }

  return v9;
}

@end