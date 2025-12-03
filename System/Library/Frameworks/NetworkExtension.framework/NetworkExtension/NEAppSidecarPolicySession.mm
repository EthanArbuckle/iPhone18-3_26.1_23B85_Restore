@interface NEAppSidecarPolicySession
- (BOOL)installPolicies;
- (BOOL)uninstallPolicies;
- (NEAppSidecarPolicySession)init;
@end

@implementation NEAppSidecarPolicySession

- (BOOL)uninstallPolicies
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self || !objc_getProperty(self, a2, 8, 1))
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[NEAppSidecarPolicySession uninstallPolicies]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null self.policySession", &v9, 0xCu);
    }

    goto LABEL_8;
  }

  v4 = 1;
  [objc_getProperty(self v3];
  if (([objc_getProperty(self v5] & 1) == 0)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to uninstall Sidecar policies", &v9, 2u);
    }

LABEL_8:

    v4 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)installPolicies
{
  v153 = *MEMORY[0x1E69E9840];
  if (self && objc_getProperty(self, a2, 8, 1))
  {
    v3 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/rapportd"];
    if (!v3)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v152 = @"/usr/libexec/rapportd";
        _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "failed to get rapportd UUID %@", buf, 0xCu);
      }

      v30 = 0;
      goto LABEL_85;
    }

    selfa = self;
    v4 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/SidecarRelay"];
    if (!v4)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v152 = @"/usr/libexec/SidecarRelay";
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "failed to get sidecarrelay UUID %@", buf, 0xCu);
      }

      v30 = 0;
      goto LABEL_84;
    }

    v5 = +[NEProcessInfo copyDNSUUIDs];
    v6 = v5;
    if (v5)
    {
      v127 = v5;
      v124 = v3;
      v125 = v4;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      obj = v3;
      v7 = [obj countByEnumeratingWithState:&v144 objects:v150 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v132 = *v145;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            v13 = v11;
            v14 = v10;
            if (*v145 != v132)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v144 + 1) + 8 * i);
            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v17 = [NEPolicyCondition effectiveApplication:v15];
            [v16 addObject:v17];

            v18 = +[NEPolicyCondition allInterfaces];
            [v16 addObject:v18];

            v11 = [NEPolicyResult passWithFlags:2];

            v10 = [[NEPolicy alloc] initWithOrder:v9 result:v11 conditions:v16];
            v20 = [objc_getProperty(selfa v19];
            is_debug_logging_enabled = nelog_is_debug_logging_enabled();
            v22 = ne_log_obj();
            v23 = v22;
            if (!v20)
            {
              v31 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
              if (is_debug_logging_enabled)
              {
                v3 = v124;
                v6 = v127;
                if (v31)
                {
                  *buf = 138412290;
                  v152 = v10;
                  _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
                }
              }

              else
              {
                v3 = v124;
                v6 = v127;
                if (v31)
                {
                  v119 = [(NEPolicy *)v10 descriptionWithIndent:0 options:2];
                  *buf = 138412290;
                  v152 = v119;
                  _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
                }
              }

              v112 = obj;
LABEL_80:

              goto LABEL_81;
            }

            if (is_debug_logging_enabled)
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v152 = v10;
                _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v24 = [(NEPolicy *)v10 descriptionWithIndent:0 options:2];
              *buf = 138412290;
              v152 = v24;
              _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
            }

            Property = objc_getProperty(selfa, v25, 16, 1);
            v27 = MEMORY[0x1E696AD98];
            v28 = Property;
            v29 = [v27 numberWithUnsignedInteger:v20];
            [v28 addObject:v29];

            v9 = (v9 + 1);
          }

          v8 = [obj countByEnumeratingWithState:&v144 objects:v150 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
      }

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v126 = v127;
      v129 = [v126 countByEnumeratingWithState:&v140 objects:v149 count:16];
      if (v129)
      {
        obja = *v141;
        while (2)
        {
          v32 = 0;
          do
          {
            v33 = v9;
            if (*v141 != obja)
            {
              objc_enumerationMutation(v126);
            }

            v34 = *(*(&v140 + 1) + 8 * v32);
            v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v36 = [NEPolicyCondition effectiveApplication:v34];
            [v35 addObject:v36];

            v37 = [NEPolicyCondition packetFilterTags:1];
            [v35 addObject:v37];

            v38 = +[NEPolicyCondition allInterfaces];
            [v35 addObject:v38];

            v39 = [NEPolicyResult passWithFlags:2];

            v40 = [[NEPolicy alloc] initWithOrder:v33 result:v39 conditions:v35];
            v42 = [objc_getProperty(selfa v41];
            v43 = nelog_is_debug_logging_enabled();
            v44 = ne_log_obj();
            v45 = v44;
            if (!v42)
            {
              v116 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
              v3 = v124;
              if (v43)
              {
                if (v116)
                {
                  *buf = 138412290;
                  v152 = v40;
                  _os_log_error_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
                }
              }

              else if (v116)
              {
                v121 = [(NEPolicy *)v40 descriptionWithIndent:0 options:2];
                *buf = 138412290;
                v152 = v121;
                _os_log_error_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
              }

              v58 = v40;
              v56 = v39;
              goto LABEL_111;
            }

            v133 = v32;
            if (v43)
            {
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v152 = v40;
                _os_log_debug_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v46 = [(NEPolicy *)v40 descriptionWithIndent:0 options:2];
              *buf = 138412290;
              v152 = v46;
              _os_log_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
            }

            v48 = objc_getProperty(selfa, v47, 16, 1);
            v49 = MEMORY[0x1E696AD98];
            v50 = v48;
            v51 = [v49 numberWithUnsignedInteger:v42];
            [v50 addObject:v51];

            v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v52 = [NEPolicyCondition effectiveApplication:v34];
            [v45 addObject:v52];

            v53 = [MEMORY[0x1E6977E08] endpointWithHostname:@"224.0.0.251" port:@"5353"];
            v54 = [NEPolicyCondition remoteAddress:v53 prefix:0];
            [v45 addObject:v54];

            v55 = +[NEPolicyCondition allInterfaces];
            [v45 addObject:v55];

            v56 = [NEPolicyResult passWithFlags:2];

            v128 = v33;
            v57 = v33 + 1;
            v58 = [[NEPolicy alloc] initWithOrder:(v33 + 1) result:v56 conditions:v45];

            v60 = [objc_getProperty(selfa v59];
            v61 = nelog_is_debug_logging_enabled();
            v62 = ne_log_obj();
            v63 = v62;
            if (!v60)
            {
              v117 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
              if (v61)
              {
                v3 = v124;
                if (v117)
                {
                  *buf = 138412290;
                  v152 = v58;
                  _os_log_error_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
                }
              }

              else
              {
                v3 = v124;
                if (v117)
                {
                  v122 = [(NEPolicy *)v58 descriptionWithIndent:0 options:2];
                  *buf = 138412290;
                  v152 = v122;
                  _os_log_error_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
                }
              }

              goto LABEL_111;
            }

            if (v61)
            {
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v152 = v58;
                _os_log_debug_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              v64 = [(NEPolicy *)v58 descriptionWithIndent:0 options:2];
              *buf = 138412290;
              v152 = v64;
              _os_log_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
            }

            v66 = objc_getProperty(selfa, v65, 16, 1);
            v67 = MEMORY[0x1E696AD98];
            v68 = v66;
            v69 = [v67 numberWithUnsignedInteger:v60];
            [v68 addObject:v69];

            v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v71 = [NEPolicyCondition effectiveApplication:v34];
            [v70 addObject:v71];

            v72 = [MEMORY[0x1E6977E08] endpointWithHostname:@"FF02::FB" port:@"5353"];
            v73 = [NEPolicyCondition remoteAddress:v72 prefix:0];
            [v70 addObject:v73];

            v74 = +[NEPolicyCondition allInterfaces];
            [v70 addObject:v74];

            v11 = [NEPolicyResult passWithFlags:2];

            v75 = (v57 + 1);
            v10 = [[NEPolicy alloc] initWithOrder:v75 result:v11 conditions:v70];

            v77 = [objc_getProperty(selfa v76];
            v78 = nelog_is_debug_logging_enabled();
            v79 = ne_log_obj();
            v80 = v79;
            if (!v77)
            {
              v118 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
              if (v78)
              {
                if (v118)
                {
                  *buf = 138412290;
                  v152 = v10;
                  _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
                }
              }

              else if (v118)
              {
                v123 = [(NEPolicy *)v10 descriptionWithIndent:0 options:2];
                *buf = 138412290;
                v152 = v123;
                _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
              }

              v58 = v10;
              v56 = v11;
              v3 = v124;
LABEL_111:

              v30 = 0;
              v11 = v56;
              v6 = v127;
              goto LABEL_83;
            }

            if (v78)
            {
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v152 = v10;
                _os_log_debug_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              v81 = [(NEPolicy *)v10 descriptionWithIndent:0 options:2];
              *buf = 138412290;
              v152 = v81;
              _os_log_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
            }

            v83 = objc_getProperty(selfa, v82, 16, 1);
            v84 = MEMORY[0x1E696AD98];
            v85 = v83;
            v86 = [v84 numberWithUnsignedInteger:v77];
            [v85 addObject:v86];

            v32 = v133 + 1;
            v9 = (v75 + 1);
          }

          while (v129 != v133 + 1);
          v9 = (v128 + 3);
          v129 = [v126 countByEnumeratingWithState:&v140 objects:v149 count:16];
          if (v129)
          {
            continue;
          }

          break;
        }
      }

      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = v4;
      v87 = [v134 countByEnumeratingWithState:&v136 objects:v148 count:16];
      if (v87)
      {
        v88 = v87;
        v89 = *v137;
        while (2)
        {
          for (j = 0; j != v88; ++j)
          {
            v91 = v11;
            v92 = v10;
            if (*v137 != v89)
            {
              objc_enumerationMutation(v134);
            }

            v93 = *(*(&v136 + 1) + 8 * j);
            v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v95 = [NEPolicyCondition effectiveApplication:v93];
            [v94 addObject:v95];

            v96 = +[NEPolicyCondition allInterfaces];
            [v94 addObject:v96];

            v11 = [NEPolicyResult passWithFlags:2];

            v10 = [[NEPolicy alloc] initWithOrder:v9 result:v11 conditions:v94];
            v98 = [objc_getProperty(selfa v97];
            v99 = nelog_is_debug_logging_enabled();
            v100 = ne_log_obj();
            v101 = v100;
            if (!v98)
            {
              v115 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
              if (v99)
              {
                v3 = v124;
                v4 = v125;
                v6 = v127;
                if (v115)
                {
                  *buf = 138412290;
                  v152 = v10;
                  _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
                }
              }

              else
              {
                v3 = v124;
                v4 = v125;
                v6 = v127;
                if (v115)
                {
                  v120 = [(NEPolicy *)v10 descriptionWithIndent:0 options:2];
                  *buf = 138412290;
                  v152 = v120;
                  _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", buf, 0xCu);
                }
              }

              v112 = v134;
              goto LABEL_80;
            }

            if (v99)
            {
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v152 = v10;
                _os_log_debug_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_DEBUG, "Added policy: %@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
            {
              v102 = [(NEPolicy *)v10 descriptionWithIndent:0 options:2];
              *buf = 138412290;
              v152 = v102;
              _os_log_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_INFO, "Added policy: %@", buf, 0xCu);
            }

            v104 = objc_getProperty(selfa, v103, 16, 1);
            v105 = MEMORY[0x1E696AD98];
            v106 = v104;
            v107 = [v105 numberWithUnsignedInteger:v98];
            [v106 addObject:v107];

            v9 = (v9 + 1);
          }

          v88 = [v134 countByEnumeratingWithState:&v136 objects:v148 count:16];
          if (v88)
          {
            continue;
          }

          break;
        }
      }

      v108 = [objc_getProperty(selfa v108];
      v110 = ne_log_obj();
      v111 = v110;
      v3 = v124;
      if (v108)
      {
        v4 = v125;
        v6 = v127;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_INFO, "Sidecar policies install successful", buf, 2u);
        }

        v30 = 1;
        goto LABEL_83;
      }

      v4 = v125;
      v6 = v127;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_ERROR, "Sidecar policies install failed", buf, 2u);
      }

LABEL_81:
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "failed to get DNS UUID", buf, 2u);
      }
    }

    v30 = 0;
LABEL_83:

LABEL_84:
LABEL_85:

    goto LABEL_86;
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v152 = "[NEAppSidecarPolicySession installPolicies]";
    _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null self.policySession", buf, 0xCu);
  }

  v30 = 0;
LABEL_86:

  v113 = *MEMORY[0x1E69E9840];
  return v30;
}

- (NEAppSidecarPolicySession)init
{
  v12.receiver = self;
  v12.super_class = NEAppSidecarPolicySession;
  v2 = [(NEAppSidecarPolicySession *)&v12 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  initFromPrivilegedProcess = [[NEPolicySession alloc] initFromPrivilegedProcess];
  policySession = v2->_policySession;
  v2->_policySession = initFromPrivilegedProcess;

  v5 = v2->_policySession;
  if (v5)
  {
    [(NEPolicySession *)v5 lockSessionToCurrentProcess];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    policyIDList = v2->_policyIDList;
    v2->_policyIDList = v6;

LABEL_4:
    v8 = v2;
    goto LABEL_8;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "failed to create policy session", v11, 2u);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end