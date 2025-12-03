@interface NEPolicySession
+ (uint64_t)copyTLVForBytes:(uint64_t)bytes messageLength:(uint64_t)length type:(unint64_t)type includeHeaderOffset:(int)offset n:(int)n hasFlags:(int)flags;
+ (void)addTLVToMessage:(char)message type:(uint64_t)type length:(uint64_t)length value:;
- (BOOL)apply;
- (BOOL)lockSessionToCurrentProcess;
- (BOOL)removeAllDomainFilters;
- (BOOL)removeAllDomainTries;
- (BOOL)removeAllPolicies;
- (BOOL)removeDomainFilterWithID:(unint64_t)d;
- (BOOL)removeDomainTrieWithID:(unint64_t)d;
- (BOOL)removePolicyWithID:(unint64_t)d;
- (NEPolicySession)initWithSessionName:(id)name;
- (NEPolicySession)initWithSocket:(int)socket;
- (id)dumpDomainTries;
- (id)dumpKernelPolicies;
- (id)initFromPrivilegedProcess;
- (id)policyWithID:(unint64_t)d;
- (int)dupSocket;
- (int64_t)priority;
- (unint64_t)addDomainFilterWithData:(id)data;
- (unint64_t)addDomainTrieWithData:(id)data;
- (void)dealloc;
- (void)setPriority:(int64_t)priority;
@end

@implementation NEPolicySession

- (BOOL)removeAllPolicies
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    if (necp_session_action())
    {
      goto LABEL_3;
    }

    Property = 0;
LABEL_9:
    [Property removeAllObjects];
    result = 1;
    goto LABEL_10;
  }

  sessionFD = self->_sessionFD;
  if (!necp_session_action())
  {
    Property = objc_getProperty(self, v4, 32, 1);
    goto LABEL_9;
  }

LABEL_3:
  v5 = *__error();
  if (strerror_r(v5, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v10[0] = 67109378;
    v10[1] = v5;
    v11 = 2080;
    v12 = __strerrbuf;
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Failed to delete all policies: [%d] %s", v10, 0x12u);
  }

  result = 0;
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)removePolicyWithID:(unint64_t)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!self)
  {
    if (necp_session_action())
    {
      goto LABEL_3;
    }

    Property = 0;
LABEL_9:
    v11 = MEMORY[0x1E696AD98];
    v12 = Property;
    v13 = [v11 numberWithUnsignedInteger:d];
    [v12 removeObjectForKey:v13];

    result = 1;
    goto LABEL_10;
  }

  sessionFD = self->_sessionFD;
  if (!necp_session_action())
  {
    Property = objc_getProperty(self, v6, 32, 1);
    goto LABEL_9;
  }

LABEL_3:
  v7 = *__error();
  if (strerror_r(v7, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109634;
    v17 = dCopy;
    v18 = 1024;
    v19 = v7;
    v20 = 2080;
    v21 = __strerrbuf;
    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "Failed to delete policy %u: [%d] %s", buf, 0x18u);
  }

  result = 0;
LABEL_10:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)policyWithID:(unint64_t)d
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v4 = MEMORY[0x1E696AD98];
  selfCopy = self;
  v6 = [v4 numberWithUnsignedInteger:d];
  v7 = [(NEPolicySession *)selfCopy objectForKey:v6];

  return v7;
}

- (BOOL)apply
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  v3 = necp_session_action();
  if (v3)
  {
    v4 = *__error();
    if (strerror_r(v4, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8[0] = 67109378;
      v8[1] = v4;
      v9 = 2080;
      v10 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Failed to apply policies: [%d] %s", v8, 0x12u);
    }
  }

  result = v3 == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)dumpDomainTries
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = 800;
  v4 = malloc_type_malloc(0x320uLL, 0x73504546uLL);
  if (!v4)
  {
    v3 = 400;
    v4 = malloc_type_malloc(0x190uLL, 0x76B5BE94uLL);
    if (!v4)
    {
      v16 = *__error();
      if (strerror_r(v16, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        *v32 = 400;
        *&v32[8] = 1024;
        *&v32[10] = v16;
        v33 = 2080;
        v34 = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "Failed to allocate memory for trie dump (%zu bytes): [%d] %s", buf, 0x1Cu);
      }

      goto LABEL_28;
    }
  }

  v5 = v4;
  __memset_chk();
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  if (necp_session_action())
  {
    v7 = __error();
    v8 = *v7;
    if (*v7 != 12)
    {
      if (v8 != 2)
      {
        if (strerror_r(*v7, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109378;
          *v32 = v8;
          *&v32[4] = 2080;
          *&v32[6] = __strerrbuf;
          _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "Failed to dump all tries: [%d] %s", buf, 0x12u);
        }

        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if (strerror_r(12, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

LABEL_22:
      free(v5);
LABEL_28:
      v15 = 0;
      goto LABEL_29;
    }

    *buf = 67109378;
    *v32 = 12;
    *&v32[4] = 2080;
    *&v32[6] = __strerrbuf;
    v13 = "Failed to dump all tries: [%d] %s";
    v14 = buf;
LABEL_38:
    _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v13, v14, 0x12u);
    goto LABEL_21;
  }

  v10 = *v5;
  if (!v10)
  {
LABEL_17:
    free(v5);
    v15 = @"No domain trie entry";
    goto LABEL_29;
  }

  v11 = v3 - 4;
  if (40 * v10 > v11)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *__strerrbuf = 67109376;
    *&__strerrbuf[4] = v10;
    *&__strerrbuf[8] = 2048;
    *&__strerrbuf[10] = v11;
    v13 = "Received trie count <%d> invalid with buffer size <%zu>";
    v14 = __strerrbuf;
    goto LABEL_38;
  }

  *&__strerrbuf[16] = 0x1400000014;
  *__strerrbuf = xmmword_1BAA4FA2C;
  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(__CFString *)v15 appendToStringAtColumnWithContent:__strerrbuf column:0 content:"ID" appendAsNewLine:0 addNewLine:0];
  [(__CFString *)v15 appendToStringAtColumnWithContent:__strerrbuf column:1 content:"MEMORY" appendAsNewLine:0 addNewLine:0];
  [(__CFString *)v15 appendToStringAtColumnWithContent:__strerrbuf column:2 content:"NODES(MEM:COUNT)" appendAsNewLine:0 addNewLine:0];
  [(__CFString *)v15 appendToStringAtColumnWithContent:__strerrbuf column:3 content:"MAPS(MEM:COUNT)" appendAsNewLine:0 addNewLine:0];
  [(__CFString *)v15 appendToStringAtColumnWithContent:__strerrbuf column:4 content:"BYTES(MEM:COUNT)" appendAsNewLine:0 addNewLine:0];
  [(__CFString *)v15 appendToStringAtColumnWithContent:__strerrbuf column:5 content:"FLAGS" appendAsNewLine:0 addNewLine:1];
  v29 = v5;
  v20 = v5 + 5;
  do
  {
    context = objc_autoreleasePoolPush();
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", *(v20 - 4)];
    -[__CFString appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:](v15, "appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:", __strerrbuf, 0, [v21 UTF8String], 0, 0);
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", *(v20 - 3)];
    -[__CFString appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:](v15, "appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:", __strerrbuf, 1, [v22 UTF8String], 0, 0);
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u : %u", *(v20 - 2), v20[1]];
    -[__CFString appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:](v15, "appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:", __strerrbuf, 2, [v23 UTF8String], 0, 0);
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u : %u", *(v20 - 1), v20[2]];
    -[__CFString appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:](v15, "appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:", __strerrbuf, 3, [v24 UTF8String], 0, 0);
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u : %u", *v20, v20[3]];
    -[__CFString appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:](v15, "appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:", __strerrbuf, 4, [v25 UTF8String], 0, 0);
    v26 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"[ "];
    v27 = v26;
    v28 = v20[5];
    if (v28)
    {
      [v26 appendFormat:@"R|"];
      v28 = v20[5];
    }

    if ((v28 & 2) != 0)
    {
      [v27 appendFormat:@"P|"];
    }

    v20 += 10;
    [v27 appendFormat:@" ]"];
    -[__CFString appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:](v15, "appendToStringAtColumnWithContent:column:content:appendAsNewLine:addNewLine:", __strerrbuf, 5, [v27 UTF8String], 0, 1);

    objc_autoreleasePoolPop(context);
    --v10;
  }

  while (v10);
  free(v29);
LABEL_29:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)dumpKernelPolicies
{
  v156 = *MEMORY[0x1E69E9840];
  v3 = 0x80000;
  v4 = malloc_type_malloc(0x80000uLL, 0x680F73ACuLL);
  if (!v4)
  {
    v3 = 0x40000;
    v4 = malloc_type_malloc(0x40000uLL, 0xC79C673FuLL);
    if (!v4)
    {
      v19 = *__error();
      if (strerror_r(v19, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        *&buf[4] = 0x40000;
        *&buf[12] = 1024;
        *&buf[14] = v19;
        *&buf[18] = 2080;
        v153 = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_FAULT, "Failed to allocate memory for policy dump (%zu bytes): [%d] %s", buf, 0x1Cu);
      }

      goto LABEL_26;
    }
  }

  v5 = v4;
  __memset_chk();
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  if (necp_session_action())
  {
    v7 = __error();
    v8 = *v7;
    if (*v7 != 12)
    {
      if (strerror_r(*v7, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109378;
        *&buf[4] = v8;
        *&buf[8] = 2080;
        *&buf[10] = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "Failed to dump all policies: [%d] %s", buf, 0x12u);
      }

      goto LABEL_25;
    }

    if (strerror_r(12, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *&buf[4] = 12;
      *&buf[8] = 2080;
      *&buf[10] = __strerrbuf;
      v10 = "Failed to dump all policies: [%d] %s";
      v11 = buf;
      v12 = v9;
      v13 = 18;
LABEL_23:
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v10, v11, v13);
    }

LABEL_24:

LABEL_25:
    free(v5);
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  v14 = *v5;
  if (v14 <= 3)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *__strerrbuf = 0;
    v10 = "Dump TLV size too small, ignoring";
LABEL_22:
    v11 = __strerrbuf;
    v12 = v9;
    v13 = 2;
    goto LABEL_23;
  }

  if (v3 - 4 < v14)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *__strerrbuf = 0;
    v10 = "Dump TLV size too large, ignoring";
    goto LABEL_22;
  }

  v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v5 + 1 length:v14];
  free(v5);
  *buf = xmmword_1BAA4FA18;
  *&buf[16] = 20;
  v22 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v22 appendToStringAtColumnWithContent:buf column:0 content:"PROCESS" appendAsNewLine:0 addNewLine:0];
  [v22 appendToStringAtColumnWithContent:buf column:1 content:"SESSION ORDER" appendAsNewLine:0 addNewLine:0];
  [v22 appendToStringAtColumnWithContent:buf column:2 content:"POLICY ORDER" appendAsNewLine:0 addNewLine:0];
  [v22 appendToStringAtColumnWithContent:buf column:3 content:"CONDITIONS" appendAsNewLine:0 addNewLine:0];
  [v22 appendToStringAtColumnWithContent:buf column:4 content:"RESULTS" appendAsNewLine:0 addNewLine:1];
  v23 = 0x1E7F04000uLL;
  v24 = v21;
  v16 = v22;
  objc_opt_self();
  bytes = [v24 bytes];
  v136 = v24;
  v26 = 0;
  v142 = [v24 length];
  v143 = bytes;
  v27 = bytes + v142;
  v28 = bytes;
  v140 = v16;
  v141 = bytes + v142;
  while (1)
  {
    v29 = objc_autoreleasePoolPush();
    objc_opt_self();
    objc_opt_self();
    if (v27 <= v28)
    {
      v124 = ne_log_obj();
      if (!os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
      {
        goto LABEL_220;
      }

      *__strerrbuf = 0;
      v125 = "Reached end of TLV Buffer";
      v126 = v124;
      v127 = 2;
      goto LABEL_219;
    }

    v30 = *(v28 + 1);
    if (&v28[v30 + 5] > v27)
    {
      break;
    }

    v31 = [NEPolicySession copyTLVForBytes:v143 messageLength:v142 type:101 includeHeaderOffset:v26 n:0 hasFlags:?];
    if (!v31)
    {
      goto LABEL_221;
    }

    v32 = v31;
    v148 = v26;
    v145 = v28;
    v146 = v29;
    v147 = [v31 length];
    v33 = *(v23 + 3448);
    v34 = v32;
    objc_opt_self();
    v144 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v149 = v34;
    v151 = v35;
    if ([v34 length])
    {
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = *(v23 + 3448);
        bytes2 = [v34 bytes];
        objc_opt_self();
        if (!bytes2)
        {
          break;
        }

        v40 = bytes2 + v36;
        v41 = *(bytes2 + v36);
        if (!v41)
        {
          break;
        }

        v150 = *(v40 + 1);
        v42 = +[NEPolicySession copyTLVForBytes:messageLength:type:includeHeaderOffset:n:hasFlags:](*(v23 + 3448), [v34 bytes] + v36, objc_msgSend(v34, "length"), v41, 0, 0);
        v43 = objc_alloc_init(MEMORY[0x1E696AD60]);
        if (v42 && [v42 bytes])
        {
          if (v41 > 99)
          {
            if (v41 == 100 || v41 == 102)
            {
              [v43 appendFormat:@"%s", objc_msgSend(v42, "bytes"), bytes4];
            }

            else if (v41 == 103)
            {
              v45 = *[v42 bytes];
              v46 = "unknown";
              if ((v45 / 1000) <= 0xA)
              {
                v46 = off_1E7F0A608[v45 / 1000];
              }

              [v43 appendFormat:@"%s (%u)", v46, v45];
            }
          }

          else
          {
            switch(v41)
            {
              case 2:
                goto LABEL_47;
              case 3:
                if ([v42 length])
                {
                  v47 = 0;
                  v48 = 0;
                  while (1)
                  {
                    v49 = v23;
                    v50 = *(v23 + 3448);
                    bytes3 = [v42 bytes];
                    objc_opt_self();
                    if (bytes3)
                    {
                      v48 += *(bytes3 + v47 + 1) + 6;
                      v52 = *(bytes3 + v47 + 5);
                      v53 = *(bytes3 + v47);
                    }

                    else
                    {
                      v52 = 0;
                      v53 = 0;
                    }

                    v54 = +[NEPolicySession copyTLVForBytes:messageLength:type:includeHeaderOffset:n:hasFlags:](*(v49 + 3448), [v42 bytes] + v47, objc_msgSend(v42, "length"), v53, 0, 1);
                    v55 = objc_alloc_init(MEMORY[0x1E696AD60]);
                    v56 = [v151 objectForKey:&unk_1F38BA5F8];
                    if (!v56)
                    {
                      v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    }

                    switch(v53)
                    {
                      case 0:
                        v57 = v55;
                        v58 = @"default ";
                        goto LABEL_130;
                      case 1:
                        memset(__strerrbuf, 0, 37);
                        uuid_unparse([v54 bytes], __strerrbuf);
                        v78 = "!";
                        if ((v52 & 1) == 0)
                        {
                          v78 = "";
                        }

                        bytes4 = __strerrbuf;
                        [v55 appendFormat:@"%seffective-application:%s ", v78];
                        goto LABEL_131;
                      case 2:
                        memset(__strerrbuf, 0, 37);
                        uuid_unparse([v54 bytes], __strerrbuf);
                        v77 = "!";
                        if ((v52 & 1) == 0)
                        {
                          v77 = "";
                        }

                        bytes4 = __strerrbuf;
                        [v55 appendFormat:@"%sreal-application:%s ", v77];
                        goto LABEL_131;
                      case 3:
                        if (v52)
                        {
                          v69 = "!";
                        }

                        else
                        {
                          v69 = "";
                        }

                        if ((v52 & 2) != 0)
                        {
                          v70 = "fqdn";
                        }

                        else
                        {
                          v70 = "domain";
                        }

                        bytes4 = v70;
                        [v54 bytes];
                        [v55 appendFormat:@"%s%s:%s ", v69];
                        goto LABEL_131;
                      case 4:
                        if (v52)
                        {
                          v61 = "!";
                        }

                        else
                        {
                          v61 = "";
                        }

                        bytes4 = [v54 bytes];
                        [v55 appendFormat:@"%saccount-identifier:%s ", v61];
                        goto LABEL_131;
                      case 5:
                        if (v54 && [v54 length])
                        {
                          if (v52)
                          {
                            v67 = "!";
                          }

                          else
                          {
                            v67 = "";
                          }

                          bytes4 = [v54 bytes];
                          [v55 appendFormat:@"%scustom-entitlement:%s ", v67];
                        }

                        else
                        {
                          v83 = "!";
                          if ((v52 & 1) == 0)
                          {
                            v83 = "";
                          }

                          v129 = v83;
                          v57 = v55;
                          v58 = @"%sentitlement ";
LABEL_130:
                          [v57 appendFormat:v58, v129];
                        }

                        goto LABEL_131;
                      case 6:
                        if (v52)
                        {
                          v79 = "!";
                        }

                        else
                        {
                          v79 = "";
                        }

                        [v55 appendFormat:@"%seffective-pid:%u ", v79, *objc_msgSend(v54, "bytes")];
                        v23 = v49;
                        v35 = v151;
                        if ([v54 length] >= 8)
                        {
                          bytes4 = *([v54 bytes] + 4);
                          [v55 appendFormat:@"%sversion:%d ", v79];
                        }

                        goto LABEL_132;
                      case 7:
                        if (v52)
                        {
                          v80 = "!";
                        }

                        else
                        {
                          v80 = "";
                        }

                        bytes4 = *[v54 bytes];
                        [v55 appendFormat:@"%suid:%u ", v80];
                        goto LABEL_131;
                      case 8:
                        v82 = "!";
                        if ((v52 & 1) == 0)
                        {
                          v82 = "";
                        }

                        [v55 appendFormat:@"%sall-interfaces ", v82];
                        goto LABEL_131;
                      case 9:
                        if (v52)
                        {
                          v81 = "!";
                        }

                        else
                        {
                          v81 = "";
                        }

                        bytes4 = [v54 bytes];
                        [v55 appendFormat:@"%sscoped-interface:%s ", v81];
                        goto LABEL_131;
                      case 10:
                        bytes5 = [v54 bytes];
                        v60 = "!";
                        if ((v52 & 1) == 0)
                        {
                          v60 = "";
                        }

                        bytes4 = *bytes5;
                        v131 = bytes5[1];
                        [v55 appendFormat:@"%straffic-class-range:%u-%u ", v60];
                        goto LABEL_131;
                      case 11:
                        if (v52)
                        {
                          v68 = "!";
                        }

                        else
                        {
                          v68 = "";
                        }

                        bytes4 = *[v54 bytes];
                        [v55 appendFormat:@"%sip-protocol:%u ", v68];
                        goto LABEL_131;
                      case 16:
                        v155 = 0u;
                        memset(__strerrbuf, 0, sizeof(__strerrbuf));
                        bytes6 = [v54 bytes];
                        v63 = bytes6[3];
                        v65 = *bytes6;
                        v64 = bytes6[1];
                        *&__strerrbuf[32] = bytes6[2];
                        v155 = v63;
                        *__strerrbuf = v65;
                        *&__strerrbuf[16] = v64;
                        v66 = "!";
                        if ((v52 & 1) == 0)
                        {
                          v66 = "";
                        }

                        bytes4 = __strerrbuf;
                        [v55 appendFormat:@"%sagent-domain:%s/agent-type:%s", v66];
                        goto LABEL_131;
                      default:
                        if ((v53 & 0xFE) == 0xE)
                        {
                          bytes7 = [v54 bytes];
                          v139 = NECreateAddressString(bytes7);
                          v84 = NECreateAddressString((bytes7 + 28));
                          v85 = "!";
                          if ((v52 & 1) == 0)
                          {
                            v85 = "";
                          }

                          if (v139)
                          {
                            v86 = v139;
                          }

                          else
                          {
                            v86 = @"<nil>";
                          }

                          v87 = v84;
                          if (v53 == 14)
                          {
                            v88 = @"%slocal-address-range:%@-%@";
                          }

                          else
                          {
                            v88 = @"%sremote-address-range:%@-%@";
                          }

                          bytes4 = v86;
                          [v55 appendFormat:v88, v85];

                          goto LABEL_131;
                        }

                        if ((v53 & 0xFE) == 0xC)
                        {
                          bytes8 = [v54 bytes];
                          v71 = NECreateAddressStringWithPort((bytes8 + 1));
                          v72 = "!";
                          if ((v52 & 1) == 0)
                          {
                            v72 = "";
                          }

                          v73 = @"<nil>";
                          if (v71)
                          {
                            v73 = v71;
                          }

                          v74 = v71;
                          v75 = *bytes8;
                          if (v53 == 12)
                          {
                            v76 = @"%slocal-address:%@/%u";
                          }

                          else
                          {
                            v76 = @"%sremote-address:%@/%u";
                          }

                          bytes4 = v73;
                          [v55 appendFormat:v76, v72];

LABEL_131:
                          v23 = v49;
                          v35 = v151;
                          goto LABEL_132;
                        }

                        v89 = v53 - 17;
                        v23 = v49;
                        v35 = v151;
                        switch(v89)
                        {
                          case 0:
                            v90 = "!";
                            if ((v52 & 1) == 0)
                            {
                              v90 = "";
                            }

                            [v55 appendFormat:@"%smodern-network-api", v90];
                            break;
                          case 1:
                            if (v52)
                            {
                              v97 = "!";
                            }

                            else
                            {
                              v97 = "";
                            }

                            bytes4 = *[v54 bytes];
                            [v55 appendFormat:@"%slocal-networks:%u", v97];
                            break;
                          case 7:
                            if (v52)
                            {
                              v94 = "!";
                            }

                            else
                            {
                              v94 = "";
                            }

                            bytes4 = *[v54 bytes];
                            [v55 appendFormat:@"%sclient-flags:%u", v94];
                            break;
                          case 8:
                            v103 = "!";
                            if ((v52 & 1) == 0)
                            {
                              v103 = "";
                            }

                            [v55 appendFormat:@"%slocal-address-empty", v103];
                            break;
                          case 9:
                            v104 = "!";
                            if ((v52 & 1) == 0)
                            {
                              v104 = "";
                            }

                            [v55 appendFormat:@"%sremote-address-empty", v104];
                            break;
                          case 10:
                            v95 = "!";
                            if ((v52 & 1) == 0)
                            {
                              v95 = "";
                            }

                            [v55 appendFormat:@"%splatform-binary", v95];
                            break;
                          case 11:
                            bytes9 = [v54 bytes];
                            v99 = "!";
                            if ((v52 & 1) == 0)
                            {
                              v99 = "";
                            }

                            v132 = bytes9[2];
                            v134 = bytes9[1];
                            bytes4 = *bytes9;
                            [v55 appendFormat:@"%splatform:%u/sdk-version:%u/min-sdk-version:%u", v99];
                            break;
                          case 12:
                            if (v54 && [v54 length])
                            {
                              if (v52)
                              {
                                v100 = "!";
                              }

                              else
                              {
                                v100 = "";
                              }

                              bytes4 = [v54 bytes];
                              [v55 appendFormat:@"%ssigning-identifier:%s ", v100];
                            }

                            else
                            {
                              v107 = "!";
                              if ((v52 & 1) == 0)
                              {
                                v107 = "";
                              }

                              [v55 appendFormat:@"%ssigning-identifier ", v107];
                            }

                            break;
                          case 13:
                            if (v52)
                            {
                              v106 = "!";
                            }

                            else
                            {
                              v106 = "";
                            }

                            bytes4 = *[v54 bytes];
                            [v55 appendFormat:@"%spacket-filter-tags:%u", v106];
                            break;
                          case 14:
                            v105 = "!";
                            if ((v52 & 1) == 0)
                            {
                              v105 = "";
                            }

                            [v55 appendFormat:@"%sis-loopback", v105];
                            break;
                          case 15:
                            v92 = "!";
                            if ((v52 & 1) == 0)
                            {
                              v92 = "";
                            }

                            [v55 appendFormat:@"%sdelegate-is-platform-binary", v92];
                            break;
                          case 20:
                            if (v52)
                            {
                              v96 = "!";
                            }

                            else
                            {
                              v96 = "";
                            }

                            bytes4 = (bswap32(*[v54 bytes]) >> 16);
                            [v55 appendFormat:@"%sscheme-port:%u", v96];
                            break;
                          case 21:
                            if (v52)
                            {
                              v93 = "!";
                            }

                            else
                            {
                              v93 = "";
                            }

                            bytes4 = *[v54 bytes];
                            [v55 appendFormat:@"%sdomain-filter:%u ", v93];
                            break;
                          case 22:
                            v91 = "!";
                            if ((v52 & 1) == 0)
                            {
                              v91 = "";
                            }

                            [v55 appendFormat:@"%ssigned-result", v91];
                            break;
                          case 26:
                            if ([v54 length] >= 0xC)
                            {
                              bytes10 = [v54 bytes];
                              v102 = "!";
                              if ((v52 & 1) == 0)
                              {
                                v102 = "";
                              }

                              v133 = bytes10[1];
                              v135 = bytes10[2];
                              bytes4 = *bytes10;
                              [v55 appendFormat:@"%sscoped-interface-flags: %X, eflags %X, xflags %X", v102];
                            }

                            break;
                          default:
                            break;
                        }

LABEL_132:
                        [v56 addObject:v55];
                        [v35 setObject:v56 forKey:&unk_1F38BA5F8];

                        v47 = v48;
                        if ([v42 length] <= v48)
                        {
                          goto LABEL_50;
                        }

                        break;
                    }
                  }
                }

                goto LABEL_50;
              case 5:
LABEL_47:
                [v43 appendFormat:@"%u", *objc_msgSend(v42, "bytes"), bytes4];
                break;
            }
          }
        }

        else
        {
          [v43 appendFormat:@"N/A", v129, bytes4];
        }

        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v41];
        [v35 setObject:v43 forKey:v44];

LABEL_50:
        v36 = (v37 + v150 + 5);

        v34 = v149;
        v37 = v36;
      }

      while ([v149 length] > v36);
    }

    if ([v35 count])
    {
      *&__strerrbuf[16] = 20;
      *__strerrbuf = xmmword_1BAA4FA18;
      v108 = [v35 objectForKey:&unk_1F38BA610];
      v109 = v144;
      [v144 appendToStringAtColumnWithContent:__strerrbuf column:0 content:objc_msgSend(v108 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];

      v110 = [v35 objectForKey:&unk_1F38BA628];
      [v144 appendToStringAtColumnWithContent:__strerrbuf column:1 content:objc_msgSend(v110 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];

      v111 = [v35 objectForKey:&unk_1F38BA640];
      [v144 appendToStringAtColumnWithContent:__strerrbuf column:2 content:objc_msgSend(v111 appendAsNewLine:"UTF8String") addNewLine:{0, 0}];

      v112 = [v35 objectForKey:&unk_1F38BA5F8];
      v16 = v140;
      v113 = v145;
      if (v112 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v114 = [v112 count]) != 0)
      {
        v115 = v114;
        v116 = 0;
        v117 = v148;
        v27 = v141;
        do
        {
          v118 = [v112 objectAtIndex:v116];
          [v144 appendToStringAtColumnWithContent:__strerrbuf column:3 content:objc_msgSend(v118 appendAsNewLine:"UTF8String") addNewLine:{v116 != 0, --v115 != 0}];

          ++v116;
        }

        while (v115);
      }

      else
      {
        [v144 appendToStringAtColumnWithContent:__strerrbuf column:3 content:"--" appendAsNewLine:0 addNewLine:0];
        v117 = v148;
        v27 = v141;
      }

      v119 = v151;
      v120 = [v151 objectForKey:&unk_1F38BA658];
      [v144 appendToStringAtColumnWithContent:__strerrbuf column:4 content:objc_msgSend(v120 appendAsNewLine:"UTF8String") addNewLine:{0, 1}];

      v121 = v144;
      v34 = v149;
      v122 = v146;
    }

    else
    {
      v121 = @"NO DATA";
      v16 = v140;
      v27 = v141;
      v113 = v145;
      v122 = v146;
      v119 = v35;
      v117 = v148;
      v109 = v144;
    }

    v28 = &v113[v147 + 5];
    v26 = v117 + 1;

    if (v121)
    {
      v123 = v121;
    }

    else
    {
      v123 = @"nil";
    }

    [v16 appendString:v123];

    objc_autoreleasePoolPop(v122);
  }

  v128 = *v28;
  v124 = ne_log_obj();
  if (!os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
  {
    goto LABEL_220;
  }

  *__strerrbuf = 134218496;
  *&__strerrbuf[4] = &v28[-v143];
  *&__strerrbuf[12] = 1024;
  *&__strerrbuf[14] = v128;
  *&__strerrbuf[18] = 1024;
  *&__strerrbuf[20] = v30;
  v125 = "TLV buffer truncated: cursor - start: %zu, type: %d, length: %u";
  v126 = v124;
  v127 = 24;
LABEL_219:
  _os_log_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_INFO, v125, __strerrbuf, v127);
LABEL_220:

LABEL_221:
  if (&v28[-v143] != v142)
  {
    [v16 appendString:@"\nMISSING POLICY INFORMATION!\n"];
  }

  objc_autoreleasePoolPop(v29);

LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (uint64_t)copyTLVForBytes:(uint64_t)bytes messageLength:(uint64_t)length type:(unint64_t)type includeHeaderOffset:(int)offset n:(int)n hasFlags:(int)flags
{
  objc_opt_self();
  if (!length || !type)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = length + v12;
    if (*(length + v12) == offset)
    {
      break;
    }

LABEL_7:
    v12 += *(v13 + 1) + 5;
    if (v12 >= type)
    {
      return 0;
    }
  }

  if (v11 != n)
  {
    ++v11;
    goto LABEL_7;
  }

  if (flags)
  {
    v15 = 6;
  }

  else
  {
    v15 = 5;
  }

  v16 = objc_alloc(MEMORY[0x1E695DEF0]);
  v17 = *(v13 + 1);

  return [v16 initWithBytes:v13 + v15 length:v17];
}

+ (void)addTLVToMessage:(char)message type:(uint64_t)type length:(uint64_t)length value:
{
  messageCopy = message;
  v7 = a2;
  objc_opt_self();
  [v7 appendBytes:&messageCopy length:1];
  typeCopy = type;
  [v7 appendBytes:&typeCopy length:4];
  [v7 appendBytes:length length:type];
}

- (BOOL)removeAllDomainTries
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  v3 = necp_session_action();
  if (v3)
  {
    v4 = *__error();
    if (strerror_r(v4, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8[0] = 67109378;
      v8[1] = v4;
      v9 = 2080;
      v10 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Failed to remove all domain tries: [%d] %s", v8, 0x12u);
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *__strerrbuf = 0;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "Deleted all domain tries", __strerrbuf, 2u);
    }
  }

  result = v3 == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)removeDomainTrieWithID:(unint64_t)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  if (!necp_session_action())
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *__strerrbuf = 67109120;
      v17 = dCopy;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "Deleted domain trie - ID %u", __strerrbuf, 8u);
    }

    goto LABEL_13;
  }

  if (*__error() == 2)
  {
LABEL_13:
    result = 1;
    goto LABEL_14;
  }

  v4 = *__error();
  if (strerror_r(v4, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109634;
    v11 = dCopy;
    v12 = 1024;
    v13 = v4;
    v14 = 2080;
    v15 = __strerrbuf;
    _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Failed to remove domain trie %u: [%d] %s", buf, 0x18u);
  }

  result = 0;
LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)addDomainTrieWithData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (!data)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *__strerrbuf = 136315138;
    v22 = "[NEPolicySession addDomainTrieWithData:]";
    v13 = "%s called with null trieData";
    v14 = __strerrbuf;
    v15 = v9;
    v16 = 12;
LABEL_14:
    _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, v13, v14, v16);
LABEL_8:

    goto LABEL_12;
  }

  [dataCopy bytes];
  [v6 length];
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  if (necp_session_action())
  {
    v8 = *__error();
    if (strerror_r(v8, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *buf = 67109378;
    v18 = v8;
    v19 = 2080;
    v20 = __strerrbuf;
    v13 = "Failed to add domain trie: [%d] %s";
    v14 = buf;
    v15 = v9;
    v16 = 18;
    goto LABEL_14;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *__strerrbuf = 67109120;
    LODWORD(v22) = 0;
    _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "Added domain trie - ID %u", __strerrbuf, 8u);
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)removeAllDomainFilters
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  v3 = necp_session_action();
  if (v3)
  {
    v4 = *__error();
    if (strerror_r(v4, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8[0] = 67109378;
      v8[1] = v4;
      v9 = 2080;
      v10 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Failed to remove all domain filters: [%d] %s", v8, 0x12u);
    }
  }

  result = v3 == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)removeDomainFilterWithID:(unint64_t)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  v4 = necp_session_action();
  if (v4)
  {
    v5 = *__error();
    if (strerror_r(v5, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109634;
      v11 = dCopy;
      v12 = 1024;
      v13 = v5;
      v14 = 2080;
      v15 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Failed to remove domain filter %u: [%d] %s", buf, 0x18u);
    }
  }

  result = v4 == 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)addDomainFilterWithData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (data)
  {
    [dataCopy bytes];
    v7 = [v6 length];
    if (self)
    {
      sessionFD = self->_sessionFD;
    }

    if (necp_session_action())
    {
      v9 = *__error();
      if (strerror_r(v9, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109378;
        v17 = v9;
        v18 = 2080;
        v19 = __strerrbuf;
        _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "Failed to add domain filter: [%d] %s", buf, 0x12u);
      }

      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *__strerrbuf = 134217984;
        v21 = v7;
        _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "Failed to add domain filter of length %zu", __strerrbuf, 0xCu);
      }
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *__strerrbuf = 134217984;
        v21 = v7;
        _os_log_debug_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEBUG, "Added domain filter of length %zu", __strerrbuf, 0xCu);
      }
    }
  }

  else
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *__strerrbuf = 136315138;
      v21 = "[NEPolicySession addDomainFilterWithData:]";
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "%s called with null filterData", __strerrbuf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)lockSessionToCurrentProcess
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    sessionFD = self->_sessionFD;
  }

  v3 = necp_session_action();
  if (v3)
  {
    v4 = *__error();
    if (strerror_r(v4, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8[0] = 67109378;
      v8[1] = v4;
      v9 = 2080;
      v10 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Failed to lock session to process: [%d] %s", v8, 0x12u);
    }
  }

  result = v3 == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPriority:(int64_t)priority
{
  priorityCopy = priority;
  v17 = *MEMORY[0x1E69E9840];
  v5 = priority - 1;
  if ((priority - 1) <= 9)
  {
    if (priority <= 5)
    {
      if (priority > 2)
      {
        if (priority != 3)
        {
          if (priority == 4)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

LABEL_23:
        priorityCopy = 300;
        goto LABEL_40;
      }

      if (priority != 1)
      {
LABEL_29:
        priorityCopy = 200;
        goto LABEL_40;
      }

LABEL_34:
      priorityCopy = 100;
      goto LABEL_40;
    }

    if (priority > 7)
    {
      if (priority != 8)
      {
        if (priority != 9)
        {
          priorityCopy = 0xFFFFLL;
          goto LABEL_16;
        }

LABEL_27:
        priorityCopy = 500;
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    if (priority == 6)
    {
LABEL_31:
      priorityCopy = 303;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (priority > 300)
  {
    if (priority <= 303)
    {
      if (priority == 301)
      {
LABEL_38:
        priorityCopy = 301;
        goto LABEL_40;
      }

      if (priority == 302)
      {
LABEL_37:
        priorityCopy = 302;
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    if (priority != 304)
    {
      if (priority != 400)
      {
        if (priority != 500)
        {
          goto LABEL_16;
        }

        goto LABEL_27;
      }

LABEL_36:
      priorityCopy = 400;
      goto LABEL_40;
    }

LABEL_39:
    priorityCopy = 304;
    goto LABEL_40;
  }

  if (priority <= 100)
  {
    if (!priority)
    {
      goto LABEL_40;
    }

    if (priority == 100)
    {
      goto LABEL_34;
    }
  }

  else
  {
    switch(priority)
    {
      case 101:
        goto LABEL_40;
      case 200:
        goto LABEL_29;
      case 300:
        goto LABEL_23;
    }
  }

LABEL_16:
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *__strerrbuf = 67109120;
    v16 = priorityCopy;
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Unknown priority level %u", __strerrbuf, 8u);
  }

LABEL_40:
  if (self)
  {
    sessionFD = self->_sessionFD;
    if (!necp_session_action())
    {
      self->_internalPriority = priorityCopy;
      self->_convertToLegacyPriority = v5 < 0xA;
      goto LABEL_48;
    }
  }

  else if (!necp_session_action())
  {
    goto LABEL_48;
  }

  v8 = *__error();
  if (strerror_r(v8, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109378;
    v12 = v8;
    v13 = 2080;
    v14 = __strerrbuf;
    _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "Failed to set priority: [%d] %s", buf, 0x12u);
  }

LABEL_48:
  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)priority
{
  if (self)
  {
    v2 = *(self + 8);
    self = *(self + 24);
    if (v2)
    {
      if (self > 302)
      {
        if (self <= 399)
        {
          if (self == 303)
          {
            return 6;
          }

          else if (self == 304)
          {
            return 7;
          }
        }

        else
        {
          switch(self)
          {
            case 0x190:
              return 8;
            case 0x1F4:
              return 9;
            case 0xFFFFLL:
              return 10;
          }
        }
      }

      else if (self <= 299)
      {
        if (self == 100)
        {
          return 1;
        }

        else if (self == 200)
        {
          return 2;
        }
      }

      else if (self == 300)
      {
        return 3;
      }

      else if (self == 301)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }

  return self;
}

- (int)dupSocket
{
  if (self && (LODWORD(self) = self->_sessionFD, (self & 0x80000000) != 0))
  {
    return -1;
  }

  else
  {
    return dup(self);
  }
}

- (void)dealloc
{
  selfCopy = self;
  if (!self || (LODWORD(self) = self->_sessionFD, (self & 0x80000000) == 0))
  {
    close(self);
  }

  v3.receiver = selfCopy;
  v3.super_class = NEPolicySession;
  [(NEPolicySession *)&v3 dealloc];
}

- (NEPolicySession)initWithSessionName:(id)name
{
  nameCopy = name;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  v5 = +[NEFileHandleMaintainer sharedMaintainer];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__NEPolicySession_initWithSessionName___block_invoke;
  v16[3] = &unk_1E7F0A370;
  v6 = nameCopy;
  v17 = v6;
  v18 = &v19;
  [v5 iterateFileHandlesWithBlock:v16];

  v7 = [(NEPolicySession *)self initWithSocket:*(v20 + 6)];
  v8 = v7;
  if ((v20[3] & 0x80000000) != 0)
  {
    if (v7)
    {
      v9 = [[NEPolicySessionFileHandle alloc] initWithPolicySession:v7 name:v6];
      if (v9)
      {
        v10 = +[NEFileHandleMaintainer sharedMaintainer];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __39__NEPolicySession_initWithSessionName___block_invoke_2;
        v14[3] = &unk_1E7F0A398;
        v15 = v6;
        [v10 setFileHandle:v9 matchingPredicate:v14];

        v11 = +[NEFileHandleMaintainer sharedMaintainer];
        [v11 commit];
      }
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1BA83C000, &v9->super.super, OS_LOG_TYPE_ERROR, "Failed to allocate a NEPolicySession", v13, 2u);
      }
    }
  }

  else
  {
    [(NEPolicySession *)v7 removeAllPolicies];
  }

  _Block_object_dispose(&v19, 8);
  return v8;
}

uint64_t __39__NEPolicySession_initWithSessionName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 name], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *(a1 + 32)), v4, v5))
  {
    v6 = [v3 handle];
    *(*(*(a1 + 40) + 8) + 24) = dup([v6 fileDescriptor]);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __39__NEPolicySession_initWithSessionName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 name];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initFromPrivilegedProcess
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = necp_session_open();
  if ((v3 & 0x80000000) != 0)
  {
    v5 = *__error();
    if (strerror_r(v5, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9[0] = 67109378;
      v9[1] = v5;
      v10 = 2080;
      v11 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Failed to open NECP session fd: [%d] %s", v9, 0x12u);
    }

    selfCopy = 0;
  }

  else
  {
    self = [(NEPolicySession *)self initWithSocket:v3];
    selfCopy = self;
  }

  v7 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NEPolicySession)initWithSocket:(int)socket
{
  v23 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = NEPolicySession;
  v4 = [(NEPolicySession *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_internalPriority = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    policies = v5->_policies;
    v5->_policies = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("NEPolicy Control IO Queue", v8);
    ioQueue = v5->_ioQueue;
    v5->_ioQueue = v9;

    if ((socket & 0x80000000) == 0)
    {
      v5->_sessionFD = socket;
LABEL_11:
      v12 = v5;
      goto LABEL_12;
    }

    if (getuid())
    {
      NECPSessionFD = NEHelperGetNECPSessionFD();
    }

    else
    {
      NECPSessionFD = necp_session_open();
    }

    v5->_sessionFD = NECPSessionFD;
    if ((NECPSessionFD & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    v16 = *__error();
    if (strerror_r(v16, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      v19 = v16;
      v20 = 2080;
      v21 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "Failed to open NECP session fd: [%d] %s", buf, 0x12u);
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *__strerrbuf = 0;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Failed to init NEPolicySession", __strerrbuf, 2u);
    }
  }

  v12 = 0;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

@end