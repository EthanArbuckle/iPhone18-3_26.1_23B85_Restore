@interface NFBackgroundTagReadingExtensionManager
- (BOOL)extensionIdentity:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)validateExtension:(id)a3;
- (NFBackgroundTagReadingExtensionManager)initWithURLPrefixList:(id)a3;
- (id)_extractURIFromMessage:(id)a3;
- (id)dumpState;
- (id)findExtensionWithNdef:(id)a3 error:(id *)a4;
- (void)postXPCEventDictionary:(id)a3;
- (void)processNdef:(id)a3 tag:(id)a4 completion:(id)a5;
- (void)processNdef:(id)a3 tag:(id)a4 targetExtension:(id)a5 completion:(id)a6;
@end

@implementation NFBackgroundTagReadingExtensionManager

- (NFBackgroundTagReadingExtensionManager)initWithURLPrefixList:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  registeredProcessorList = self->_registeredProcessorList;
  self->_registeredProcessorList = v6;

  objc_storeStrong(&self->_restrictedURLPrefixList, a3);
  v13.receiver = self;
  v13.super_class = NFBackgroundTagReadingExtensionManager;
  v8 = [(NFExtensionPointManager *)&v13 initWithIdentifier:@"com.apple.nfcd.background.tag.reading.extension"];
  if (v8)
  {
    v9 = objc_opt_new();
    xpcPublisherList = v8->_xpcPublisherList;
    v8->_xpcPublisherList = v9;

    v11 = v8;
  }

  return v8;
}

- (BOOL)extensionIdentity:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = a4;
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v15 = [v7 description];
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i exIdentity=%@", v16, ClassName, Name, 72, v15);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    v22 = [v7 description];
    *buf = 67110146;
    v35 = v19;
    v36 = 2082;
    v37 = v20;
    v38 = 2082;
    v39 = v21;
    v40 = 1024;
    v41 = 72;
    v42 = 2112;
    v43 = v22;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i exIdentity=%@", buf, 0x2Cu);
  }

  v23 = [v7 bundleIdentifier];
  v24 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NFBackgroundTagReadingExtensionProtocol];
  [v8 setRemoteObjectInterface:v24];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100007390;
  v31[3] = &unk_100018A28;
  v31[4] = self;
  v33 = a2;
  v25 = v23;
  v32 = v25;
  [v8 setInterruptionHandler:v31];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100007524;
  v28[3] = &unk_100018A28;
  v29 = v25;
  v30 = a2;
  v28[4] = self;
  v26 = v25;
  [v8 setInvalidationHandler:v28];
  [v8 resume];

  return 1;
}

- (BOOL)validateExtension:(id)a3
{
  v158 = a3;
  v4 = [v158 identity];
  if (!v4)
  {
    __assert_rtn("[NFBackgroundTagReadingExtensionManager validateExtension:]", "NFBackgroundTagReadingExtensionManager.m", 97, "nil != targetExtension.identity");
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v160 = self;
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v11 = [v158 identity];
    v12 = [v11 applicationExtensionRecord];
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i appExtRecord=%@", v13, ClassName, Name, 99, v12);

    self = v160;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(self);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(self);
    v18 = sel_getName(a2);
    v19 = [v158 identity];
    v20 = [v19 applicationExtensionRecord];
    *buf = 67110146;
    v168 = v16;
    v169 = 2082;
    v170 = v17;
    v171 = 2082;
    v172 = v18;
    v173 = 1024;
    v174 = 99;
    v175 = 2112;
    v176 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i appExtRecord=%@", buf, 0x2Cu);

    self = v160;
  }

  v21 = [v158 identity];
  v22 = [v21 entitlementNamed:@"com.apple.nfcd.background.tag.reading.extension.generic" ofClass:objc_opt_class()];

  v23 = [(NFBackgroundTagReadingExtensionManager *)self restrictedURLPrefixList];
  if (v23)
  {
    v24 = [(NFBackgroundTagReadingExtensionManager *)self restrictedURLPrefixList];
    v25 = v24 != 0;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
  if (!v25 && v22)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 BOOLValue])
    {
      v27 = [(NFBackgroundTagReadingExtensionManager *)self defaultProcessor];

      if (v27)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v28 = NFLogGetLogger();
        if (v28)
        {
          v29 = v28;
          v30 = object_getClass(self);
          v31 = class_isMetaClass(v30);
          v32 = object_getClassName(self);
          v148 = sel_getName(a2);
          v33 = 45;
          if (v31)
          {
            v33 = 43;
          }

          v29(4, "%c[%{public}s %{public}s]:%i Default processor has already been set; ignoring", v33, v32, v148, 112);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v34 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = object_getClass(self);
          if (class_isMetaClass(v35))
          {
            v36 = 43;
          }

          else
          {
            v36 = 45;
          }

          v37 = object_getClassName(self);
          v38 = sel_getName(a2);
          *buf = 67109890;
          v168 = v36;
          v169 = 2082;
          v170 = v37;
          v171 = 2082;
          v172 = v38;
          v173 = 1024;
          v174 = 112;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Default processor has already been set; ignoring", buf, 0x22u);
        }
      }

      else
      {
        [(NFBackgroundTagReadingExtensionManager *)self setDefaultProcessor:v158];
      }

      v26 = 1;
    }

    else
    {
      v26 = 0;
    }
  }

  v157 = v25;
  v39 = [v158 identity];
  v40 = [v39 entitlementNamed:@"com.apple.nfcd.background.tag.reading.extension.urls" ofClass:objc_opt_class()];

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v41 = NFLogGetLogger();
  if (v41)
  {
    v42 = v41;
    v43 = object_getClass(self);
    v44 = class_isMetaClass(v43);
    v45 = object_getClassName(self);
    v149 = sel_getName(a2);
    v46 = 45;
    if (v44)
    {
      v46 = 43;
    }

    v42(6, "%c[%{public}s %{public}s]:%i urls entitlement present=%d", v46, v45, v149, 122, v40 != 0);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v47 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = object_getClass(self);
    v49 = v26;
    if (class_isMetaClass(v48))
    {
      v50 = 43;
    }

    else
    {
      v50 = 45;
    }

    v51 = object_getClassName(self);
    v52 = sel_getName(a2);
    *buf = 67110146;
    v168 = v50;
    v26 = v49;
    v169 = 2082;
    v170 = v51;
    v171 = 2082;
    v172 = v52;
    v173 = 1024;
    v174 = 122;
    v175 = 1024;
    LODWORD(v176) = v40 != 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i urls entitlement present=%d", buf, 0x28u);
  }

  if (v40)
  {
    objc_opt_class();
    v155 = v40;
    if (objc_opt_isKindOfClass())
    {
      v156 = v26;
      v154 = v22;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      obj = v40;
      v53 = [obj countByEnumeratingWithState:&v162 objects:v166 count:16];
      if (!v53)
      {
        goto LABEL_87;
      }

      v54 = v53;
      v55 = *v163;
      while (1)
      {
        v56 = 0;
        do
        {
          if (*v163 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v57 = *(*(&v162 + 1) + 8 * v56);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = [[NSURL alloc] initWithString:v57 encodingInvalidCharacters:0];
            v59 = v58;
            if (v58)
            {
              v60 = [v58 absoluteString];
              v61 = [(NFBackgroundTagReadingExtensionManager *)self registeredProcessorList];
              v62 = [v61 objectForKey:v60];

              if (v62)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v63 = NFLogGetLogger();
                if (v63)
                {
                  v64 = v63;
                  v65 = object_getClass(self);
                  v66 = class_isMetaClass(v65);
                  v67 = object_getClassName(self);
                  v150 = sel_getName(a2);
                  v68 = 45;
                  if (v66)
                  {
                    v68 = 43;
                  }

                  v145 = v67;
                  self = v160;
                  v64(6, "%c[%{public}s %{public}s]:%i %{public}@ has been already registered to %{public}@", v68, v145, v150, 144, v60, v62);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v69 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  v70 = object_getClass(self);
                  if (class_isMetaClass(v70))
                  {
                    v71 = 43;
                  }

                  else
                  {
                    v71 = 45;
                  }

                  v72 = object_getClassName(v160);
                  v73 = sel_getName(a2);
                  *buf = 67110402;
                  v168 = v71;
                  self = v160;
                  v169 = 2082;
                  v170 = v72;
                  v171 = 2082;
                  v172 = v73;
                  v173 = 1024;
                  v174 = 144;
                  v175 = 2114;
                  v176 = v60;
                  v177 = 2114;
                  v178 = v62;
                  v74 = v69;
                  v75 = "%c[%{public}s %{public}s]:%i %{public}@ has been already registered to %{public}@";
                  v76 = 54;
                  goto LABEL_60;
                }
              }

              else if (v157 && (-[NFBackgroundTagReadingExtensionManager restrictedURLPrefixList](self, "restrictedURLPrefixList"), v77 = objc_claimAutoreleasedReturnValue(), v78 = [v77 containsObject:v60], v77, (v78 & 1) == 0))
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v90 = NFLogGetLogger();
                if (v90)
                {
                  v91 = v90;
                  v92 = object_getClass(self);
                  v93 = class_isMetaClass(v92);
                  v147 = object_getClassName(self);
                  v152 = sel_getName(a2);
                  v94 = 45;
                  if (v93)
                  {
                    v94 = 43;
                  }

                  self = v160;
                  v91(6, "%c[%{public}s %{public}s]:%i %{public}@ is not part of the restriction list", v94, v147, v152, 150, v60);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v69 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  v95 = object_getClass(self);
                  if (class_isMetaClass(v95))
                  {
                    v96 = 43;
                  }

                  else
                  {
                    v96 = 45;
                  }

                  v97 = object_getClassName(v160);
                  v98 = sel_getName(a2);
                  *buf = 67110146;
                  v168 = v96;
                  self = v160;
                  v169 = 2082;
                  v170 = v97;
                  v171 = 2082;
                  v172 = v98;
                  v173 = 1024;
                  v174 = 150;
                  v175 = 2114;
                  v176 = v60;
                  v74 = v69;
                  v75 = "%c[%{public}s %{public}s]:%i %{public}@ is not part of the restriction list";
                  v76 = 44;
LABEL_60:
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, v75, buf, v76);
                }
              }

              else
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v79 = NFLogGetLogger();
                if (v79)
                {
                  v80 = v79;
                  v81 = object_getClass(self);
                  v82 = class_isMetaClass(v81);
                  v83 = object_getClassName(self);
                  v151 = sel_getName(a2);
                  v84 = 45;
                  if (v82)
                  {
                    v84 = 43;
                  }

                  v146 = v83;
                  self = v160;
                  v80(6, "%c[%{public}s %{public}s]:%i %{public}@ register under extension %{public}@", v84, v146, v151, 155, v60, v158);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v85 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  v86 = object_getClass(self);
                  if (class_isMetaClass(v86))
                  {
                    v87 = 43;
                  }

                  else
                  {
                    v87 = 45;
                  }

                  v88 = object_getClassName(v160);
                  v89 = sel_getName(a2);
                  *buf = 67110402;
                  v168 = v87;
                  self = v160;
                  v169 = 2082;
                  v170 = v88;
                  v171 = 2082;
                  v172 = v89;
                  v173 = 1024;
                  v174 = 155;
                  v175 = 2114;
                  v176 = v60;
                  v177 = 2114;
                  v178 = v158;
                  _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ register under extension %{public}@", buf, 0x36u);
                }

                v69 = [(NFBackgroundTagReadingExtensionManager *)self registeredProcessorList];
                [v69 setObject:v158 forKey:v60];
                v156 = 1;
              }
            }
          }

          v56 = v56 + 1;
        }

        while (v54 != v56);
        v99 = [obj countByEnumeratingWithState:&v162 objects:v166 count:16];
        v54 = v99;
        if (!v99)
        {
LABEL_87:

          v40 = v155;
          v100 = v156;
          if (v156)
          {
            v101 = [v158 identity];
            v102 = [v101 entitlementNamed:@"com.apple.nfcd.background.tag.reading.extension.nonui" ofClass:objc_opt_class()];

            if (v102)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v158 setPresentUI:{objc_msgSend(v102, "BOOLValue") ^ 1}];
              }
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v103 = NFLogGetLogger();
          if (v103)
          {
            v104 = v103;
            v105 = object_getClass(self);
            v106 = class_isMetaClass(v105);
            v107 = object_getClassName(self);
            v108 = sel_getName(a2);
            v109 = [(NFBackgroundTagReadingExtensionManager *)self registeredProcessorList];
            v110 = 45;
            if (v106)
            {
              v110 = 43;
            }

            v104(6, "%c[%{public}s %{public}s]:%i urlProcessor=%@", v110, v107, v108, 171, v109);

            v40 = v155;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v111 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = object_getClass(self);
            if (class_isMetaClass(v112))
            {
              v113 = 43;
            }

            else
            {
              v113 = 45;
            }

            v114 = object_getClassName(self);
            v115 = sel_getName(a2);
            v116 = [(NFBackgroundTagReadingExtensionManager *)self registeredProcessorList];
            *buf = 67110146;
            v168 = v113;
            v100 = v156;
            v169 = 2082;
            v170 = v114;
            v171 = 2082;
            v172 = v115;
            v173 = 1024;
            v174 = 171;
            v175 = 2112;
            v176 = v116;
            _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i urlProcessor=%@", buf, 0x2Cu);
          }

          v22 = v154;
          goto LABEL_124;
        }
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v117 = NFLogGetLogger();
    if (v117)
    {
      v118 = v117;
      v119 = object_getClass(self);
      v120 = class_isMetaClass(v119);
      v121 = object_getClassName(self);
      v122 = sel_getName(a2);
      v123 = objc_opt_class();
      v124 = NSStringFromClass(v123);
      v125 = 45;
      if (v120)
      {
        v125 = 43;
      }

      v118(3, "%c[%{public}s %{public}s]:%i [%@] %@", v125, v121, v122, 126, v124, v155);

      self = v160;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v126 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      v127 = object_getClass(self);
      if (class_isMetaClass(v127))
      {
        v128 = 43;
      }

      else
      {
        v128 = 45;
      }

      v129 = object_getClassName(self);
      v130 = sel_getName(a2);
      v131 = objc_opt_class();
      v132 = NSStringFromClass(v131);
      *buf = 67110402;
      v168 = v128;
      v169 = 2082;
      v170 = v129;
      v171 = 2082;
      v172 = v130;
      v173 = 1024;
      v174 = 126;
      v175 = 2112;
      v176 = v132;
      v177 = 2112;
      v178 = v155;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i [%@] %@", buf, 0x36u);
    }

    v40 = v155;
  }

  if (v26)
  {
    v100 = 1;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v133 = NFLogGetLogger();
    if (v133)
    {
      v134 = v133;
      v135 = object_getClass(self);
      v136 = class_isMetaClass(v135);
      v137 = object_getClassName(self);
      v153 = sel_getName(a2);
      v138 = 45;
      if (v136)
      {
        v138 = 43;
      }

      v134(4, "%c[%{public}s %{public}s]:%i urls missing", v138, v137, v153, 129);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v111 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      v139 = object_getClass(self);
      if (class_isMetaClass(v139))
      {
        v140 = 43;
      }

      else
      {
        v140 = 45;
      }

      v141 = v22;
      v142 = object_getClassName(self);
      v143 = sel_getName(a2);
      *buf = 67109890;
      v168 = v140;
      v169 = 2082;
      v170 = v142;
      v22 = v141;
      v171 = 2082;
      v172 = v143;
      v173 = 1024;
      v174 = 129;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i urls missing", buf, 0x22u);
    }

    v100 = 0;
LABEL_124:
  }

  return v100 & 1;
}

- (id)_extractURIFromMessage:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 records];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isURIRecord])
        {
          v8 = [v7 decode];
          v4 = [[NSURLComponents alloc] initWithString:v8];

          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)findExtensionWithNdef:(id)a3 error:(id *)a4
{
  v6 = self;
  v7 = [(NFBackgroundTagReadingExtensionManager *)self _extractURIFromMessage:a3];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(v6);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v6);
    Name = sel_getName(a2);
    v14 = [(NFBackgroundTagReadingExtensionManager *)v6 registeredProcessorList];
    [v14 allKeys];
    v16 = v15 = v6;
    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i availableExtension=%@", v17, ClassName, Name, 190, v16);

    v6 = v15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = object_getClass(v6);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    v21 = object_getClassName(v6);
    v22 = sel_getName(a2);
    v23 = [(NFBackgroundTagReadingExtensionManager *)v6 registeredProcessorList];
    v24 = [v23 allKeys];
    *buf = 67110146;
    v109 = v20;
    v110 = 2082;
    v111 = v21;
    v112 = 2082;
    v113 = v22;
    v114 = 1024;
    v115 = 190;
    v116 = 2112;
    v117 = v24;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i availableExtension=%@", buf, 0x2Cu);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v26 = v25;
    v27 = object_getClass(v6);
    v28 = class_isMetaClass(v27);
    v89 = object_getClassName(v6);
    v91 = sel_getName(a2);
    v29 = 45;
    if (v28)
    {
      v29 = 43;
    }

    v26(6, "%c[%{public}s %{public}s]:%i url=%@", v29, v89, v91, 191, v7);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = object_getClass(v6);
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(v6);
    v34 = sel_getName(a2);
    *buf = 67110146;
    v109 = v32;
    v110 = 2082;
    v111 = v33;
    v112 = 2082;
    v113 = v34;
    v114 = 1024;
    v115 = 191;
    v116 = 2112;
    v117 = v7;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i url=%@", buf, 0x2Cu);
  }

  v97 = v7;
  if (!v7)
  {
    if (a4)
    {
      v67 = [NSError alloc];
      v68 = [NSString stringWithUTF8String:"nfcd"];
      v106[0] = NSLocalizedDescriptionKey;
      v69 = [NSString stringWithUTF8String:"Not found"];
      v107[0] = v69;
      v107[1] = &off_100019258;
      v106[1] = @"Line";
      v106[2] = @"Method";
      v70 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v107[2] = v70;
      v106[3] = NSDebugDescriptionErrorKey;
      v71 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 195];
      v107[3] = v71;
      v72 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:4];
      *a4 = [v67 initWithDomain:v68 code:65 userInfo:v72];
LABEL_63:

      v7 = v97;
    }

LABEL_64:
    v74 = 0;
    goto LABEL_65;
  }

  v93 = a4;
  v94 = a2;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v95 = v6;
  v35 = [(NFBackgroundTagReadingExtensionManager *)v6 registeredProcessorList];
  v36 = [v35 allKeys];

  v37 = [v36 countByEnumeratingWithState:&v99 objects:v105 count:16];
  if (v37)
  {
    v38 = v37;
    v98 = *v100;
    v96 = v36;
LABEL_22:
    v39 = 0;
    while (1)
    {
      if (*v100 != v98)
      {
        objc_enumerationMutation(v36);
      }

      v40 = *(*(&v99 + 1) + 8 * v39);
      v41 = [[NSURLComponents alloc] initWithString:v40];
      v42 = [v41 scheme];
      v43 = [v7 scheme];
      v44 = [v42 compare:v43 options:1];

      if (!v44)
      {
        v45 = [v41 host];

        if (!v45)
        {
          goto LABEL_34;
        }

        v46 = [v7 host];

        if (v46)
        {
          v47 = [v41 host];
          if (![v47 length])
          {

LABEL_34:
            v51 = [v41 path];
            if (!v51)
            {
              goto LABEL_49;
            }

            v52 = v51;
            v53 = [v41 path];
            v54 = [v53 length];

            if (!v54)
            {
              goto LABEL_49;
            }

            v55 = [v7 path];

            if (v55)
            {
              v56 = [v7 URL];
              v57 = [v56 pathComponents];

              v58 = [v41 URL];
              v59 = [v58 pathComponents];

              v60 = [v57 count];
              if (v60 >= [v59 count])
              {
                if (![v59 count])
                {
                  goto LABEL_48;
                }

                v61 = 1;
                do
                {
                  v62 = [v59 objectAtIndexedSubscript:v61 - 1];
                  v63 = [v57 objectAtIndexedSubscript:v61 - 1];
                  v64 = [v62 compare:v63 options:1];

                  if ([v59 count] <= v61)
                  {
                    break;
                  }

                  ++v61;
                }

                while (!v64);
                v36 = v96;
                v7 = v97;
                if (!v64)
                {
LABEL_48:

LABEL_49:
                  v66 = v95;
                  v73 = [(NFBackgroundTagReadingExtensionManager *)v95 registeredProcessorList];
                  v74 = [v73 objectForKeyedSubscript:v40];

                  if (v74)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_50;
                }
              }
            }

            goto LABEL_26;
          }

          v48 = [v41 host];
          v49 = [v7 host];
          v50 = [v48 compare:v49 options:1];

          if (!v50)
          {
            goto LABEL_34;
          }
        }
      }

LABEL_26:

      if (++v39 == v38)
      {
        v65 = [v36 countByEnumeratingWithState:&v99 objects:v105 count:16];
        v38 = v65;
        if (v65)
        {
          goto LABEL_22;
        }

        break;
      }
    }
  }

  v66 = v95;
LABEL_50:
  v75 = [(NFBackgroundTagReadingExtensionManager *)v66 defaultProcessor];

  if (!v75)
  {
    if (v93)
    {
      v87 = [NSError alloc];
      v68 = [NSString stringWithUTF8String:"nfcd"];
      v103[0] = NSLocalizedDescriptionKey;
      v69 = [NSString stringWithUTF8String:"Not found"];
      v104[0] = v69;
      v104[1] = &off_100019270;
      v103[1] = @"Line";
      v103[2] = @"Method";
      v70 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v94)];
      v104[2] = v70;
      v103[3] = NSDebugDescriptionErrorKey;
      v71 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v94), 257];
      v104[3] = v71;
      v72 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:4];
      *v93 = [v87 initWithDomain:v68 code:65 userInfo:v72];
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v76 = NFLogGetLogger();
  if (v76)
  {
    v77 = v76;
    v78 = object_getClass(v66);
    v79 = class_isMetaClass(v78);
    v80 = object_getClassName(v66);
    v92 = sel_getName(v94);
    v81 = 45;
    if (v79)
    {
      v81 = 43;
    }

    v90 = v80;
    v7 = v97;
    v77(6, "%c[%{public}s %{public}s]:%i Use default processor", v81, v90, v92, 254);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v82 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    v83 = object_getClass(v66);
    if (class_isMetaClass(v83))
    {
      v84 = 43;
    }

    else
    {
      v84 = 45;
    }

    v85 = object_getClassName(v66);
    v86 = sel_getName(v94);
    *buf = 67109890;
    v109 = v84;
    v110 = 2082;
    v111 = v85;
    v112 = 2082;
    v113 = v86;
    v114 = 1024;
    v115 = 254;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Use default processor", buf, 0x22u);
  }

  v74 = [(NFBackgroundTagReadingExtensionManager *)v66 defaultProcessor];
LABEL_65:

  return v74;
}

- (void)processNdef:(id)a3 tag:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  v10 = a5;
  v11 = [(NFBackgroundTagReadingExtensionManager *)self findExtensionWithNdef:v8 error:&v13];
  v12 = v13;
  if (v12)
  {
    v10[2](v10, v12);
  }

  else
  {
    [(NFBackgroundTagReadingExtensionManager *)self processNdef:v8 tag:v9 targetExtension:v11 completion:v10];
  }
}

- (void)processNdef:(id)a3 tag:(id)a4 targetExtension:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v13;
  v16 = v14;
  if (!v15)
  {
    v27 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v68[0] = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v69[0] = v25;
    v69[1] = &off_100019288;
    v68[1] = @"Line";
    v68[2] = @"Method";
    v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v69[2] = v28;
    v68[3] = NSDebugDescriptionErrorKey;
    v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 282];
    v69[3] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];
    v31 = [v27 initWithDomain:v20 code:10 userInfo:v30];
LABEL_18:
    (v16)[2](v16, v31);

    goto LABEL_19;
  }

  v57 = v14;
  if (![(NFExtensionPointManager *)self launchExtension:v15])
  {
    v32 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v66[0] = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithUTF8String:"Aborted"];
    v67[0] = v25;
    v67[1] = &off_1000192A0;
    v66[1] = @"Line";
    v66[2] = @"Method";
    v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v67[2] = v28;
    v66[3] = NSDebugDescriptionErrorKey;
    v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 287];
    v67[3] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:4];
    v31 = [v32 initWithDomain:v20 code:3 userInfo:v30];
    v16 = v57;
    goto LABEL_18;
  }

  v53 = self;
  v54 = a2;
  v55 = v12;
  v56 = v11;
  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NFBackgroundTagReadingExtensionManager processNdef", "", buf, 2u);
  }

  v18 = 3;
  do
  {
    *buf = 0;
    *v65 = buf;
    *&v65[8] = 0x3032000000;
    *&v65[16] = sub_100009BC0;
    *&v65[24] = sub_100009BD0;
    *&v65[32] = 0;
    v19 = [v15 xpcConnection];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100009BD8;
    v61[3] = &unk_100018A50;
    v61[4] = buf;
    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler:v61];

    v21 = *(*v65 + 40);
    if (v21)
    {
      if ([v21 code] == 4097)
      {
        --v18;
      }

      else
      {
        v18 = 0;
      }
    }

    _Block_object_dispose(buf, 8);
  }

  while (v18 >= 1 && !v20);
  v22 = [v15 extensionProcess];
  v23 = [v22 configuration];
  v24 = [v23 extensionIdentity];
  v25 = [v24 bundleIdentifier];

  if (v20)
  {
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100009BE8;
    v58[3] = &unk_100018A78;
    v58[4] = v53;
    v60 = v54;
    v25 = v25;
    v59 = v25;
    v11 = v56;
    [v20 processNDEF:v56 tag:v12 replyWithXPCEvent:v58];
    v26 = NFSharedSignpostLog();
    v16 = v57;
    if (os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFBackgroundTagReadingExtensionManager processNdef", "", buf, 2u);
    }

    [v15 invalidateXPC];
    (*(v57 + 2))(v57, 0);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v16 = v57;
    if (Logger)
    {
      v34 = Logger;
      Class = object_getClass(v53);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v53);
      Name = sel_getName(v54);
      v37 = 45;
      if (isMetaClass)
      {
        v37 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Fail to get xpc proxy to %@", v37, ClassName, Name, 314, v25);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(v53);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(v53);
      v42 = sel_getName(v54);
      *buf = 67110146;
      *&buf[4] = v40;
      *v65 = 2082;
      *&v65[2] = v41;
      *&v65[10] = 2082;
      *&v65[12] = v42;
      *&v65[20] = 1024;
      *&v65[22] = 314;
      *&v65[26] = 2112;
      *&v65[28] = v25;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Fail to get xpc proxy to %@", buf, 0x2Cu);
    }

    v43 = NFSharedSignpostLog();
    if (os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NFBackgroundTagReadingExtensionManager processNdef", "proxy error", buf, 2u);
    }

    v44 = [NSError alloc];
    v45 = [NSString stringWithUTF8String:"nfcd"];
    v62[0] = NSLocalizedDescriptionKey;
    v46 = [NSString stringWithUTF8String:"XPC Error"];
    v63[0] = v46;
    v63[1] = &off_1000192B8;
    v62[1] = @"Line";
    v62[2] = @"Method";
    v47 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v54)];
    v63[2] = v47;
    v62[3] = NSDebugDescriptionErrorKey;
    v48 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v54), 316];
    v63[3] = v48;
    v49 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:4];
    v50 = [v44 initWithDomain:v45 code:7 userInfo:v49];
    (*(v57 + 2))(v57, v50);

    v20 = 0;
    v12 = v55;
    v11 = v56;
  }

LABEL_19:
}

- (void)postXPCEventDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v14 = [v4 NF_stringForKey:@"streamName"];
    v5 = [v4 NF_stringForKey:@"eventString"];
    v6 = [v4 NF_dictionaryForKey:@"eventDictionary"];

    if (v14 && v5 | v6)
    {
      if (!self->_xpcEventDispatchQueue)
      {
        v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, -1);
        v9 = dispatch_queue_create("com.apple.nfc.bkgTagReadExtManager.xpcEvent", v8);
        xpcEventDispatchQueue = self->_xpcEventDispatchQueue;
        self->_xpcEventDispatchQueue = v9;
      }

      v11 = [(NFBackgroundTagReadingExtensionManager *)self xpcPublisherList];
      v12 = [v11 objectForKeyedSubscript:v14];

      if (!v12)
      {
        v12 = [[NFXPCEventPublisher alloc] initWithStreamName:v14 queue:self->_xpcEventDispatchQueue];
        if (v12)
        {
          v13 = [(NFBackgroundTagReadingExtensionManager *)self xpcPublisherList];
          [v13 setObject:v12 forKey:v14];
        }
      }

      if (v5)
      {
        [v12 sendXpcNotificationEventWithString:v5];
      }

      if (v6)
      {
        [v12 sendXpcNotificationEventWithDictionary:v6];
      }
    }
  }
}

- (id)dumpState
{
  v3 = [NSMutableDictionary alloc];
  v9.receiver = self;
  v9.super_class = NFBackgroundTagReadingExtensionManager;
  v4 = [(NFExtensionPointManager *)&v9 dumpState];
  v5 = [v3 initWithDictionary:v4];

  if (NFIsInternalBuild())
  {
    v6 = [(NFBackgroundTagReadingExtensionManager *)self registeredProcessorList];
    v7 = [v6 description];
    [v5 setObject:v7 forKeyedSubscript:@"processors"];
  }

  return v5;
}

@end