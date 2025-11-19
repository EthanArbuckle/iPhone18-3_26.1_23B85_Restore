@interface NEIKEv2IntermediatePacket
- (BOOL)constructAuthenticatedDataWithPayloads:(int)a3 payloadsLength:(void *)a4 authenticatedHeaders:;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2IntermediatePacket

- (void)filloutPayloads
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (self)
  {
    rawPayloads = self->super._rawPayloads;
  }

  else
  {
    rawPayloads = 0;
  }

  v4 = rawPayloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v37;
    v9 = 0x1E695D000uLL;
    v10 = &OBJC_IVAR___NEFilterFlow__direction;
    v11 = 0x1E7F04000uLL;
    *&v6 = 138412546;
    v34 = v6;
    v35 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [v13 type];
        if (v14 == 41)
        {
          v17 = v13;
          if (self && objc_getProperty(self, v16, 64, 1))
          {
            v20 = [objc_getProperty(self v18];
            goto LABEL_23;
          }

          v45 = v17;
          v20 = [*(v9 + 3784) arrayWithObjects:&v45 count:1];
          if (self)
          {
LABEL_23:
            v30 = self;
            v31 = v20;
            v32 = 64;
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        if (v14 == 34)
        {
          if (self)
          {
            objc_setProperty_atomic(self, v15, v13, v10[612]);
          }
        }

        else
        {
          v21 = *(v11 + 2416);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v13;
            if (self && objc_getProperty(self, v22, 56, 1))
            {
              v20 = [objc_getProperty(self v23];
            }

            else
            {
              v44 = v17;
              v20 = [*(v9 + 3784) arrayWithObjects:&v44 count:1];
              if (!self)
              {
                goto LABEL_27;
              }
            }

            v30 = self;
            v31 = v20;
            v32 = 56;
LABEL_26:
            objc_setProperty_atomic(v30, v19, v31, v32);
LABEL_27:

            continue;
          }

          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v11;
            v26 = v10;
            v27 = v9;
            v28 = [(NEIKEv2Packet *)self copyShortDescription];
            v29 = [v13 typeDescription];
            *buf = v34;
            v41 = v28;
            v42 = 2112;
            v43 = v29;
            _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);

            v9 = v27;
            v10 = v26;
            v11 = v25;
            v4 = v35;
          }
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v7);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)gatherPayloads
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self)
  {
    if (objc_getProperty(self, v3, 96, 1))
    {
      [v7 addObject:{objc_getProperty(self, v4, 96, 1)}];
    }

    [v7 addObjectsFromArray:{objc_getProperty(self, v4, 64, 1)}];
    Property = objc_getProperty(self, v5, 56, 1);
  }

  else
  {
    [v7 addObjectsFromArray:0];
    Property = 0;
  }

  [v7 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)self setRawPayloads:v7];
}

- (BOOL)constructAuthenticatedDataWithPayloads:(int)a3 payloadsLength:(void *)a4 authenticatedHeaders:
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_11:

      v11 = 0;
      goto LABEL_7;
    }

    *v26 = 136315138;
    *&v26[4] = "[NEIKEv2IntermediatePacket constructAuthenticatedDataWithPayloads:payloadsLength:authenticatedHeaders:]";
    v18 = "%s called with null payloads";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, v18, v26, 0xCu);
    goto LABEL_11;
  }

  if (!v8)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *v26 = 136315138;
    *&v26[4] = "[NEIKEv2IntermediatePacket constructAuthenticatedDataWithPayloads:payloadsLength:authenticatedHeaders:]";
    v18 = "%s called with null authenticatedHeaders";
    goto LABEL_15;
  }

  *v26 = 0u;
  v27 = 0u;
  v10 = [v8 length];
  v11 = v10 > 0x1F;
  if (v10 > 0x1F)
  {
    [v9 getBytes:v26 length:32];
    HIWORD(v27) = bswap32(a3 + 4) >> 16;
    DWORD2(v27) = bswap32((a3 + 4) + 28);
    LOBYTE(v27) = 46;
    v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v26 length:32];
    v21 = v19;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v13 = [v12 arrayByAddingObjectsFromArray:v7];
    v14 = *(a1 + 88);
    *(a1 + 88) = v13;
  }

  else
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v23 = [v9 length];
      v24 = 2048;
      v25 = 32;
      _os_log_fault_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_FAULT, "Authenticated header length %zu < minimum length %zu", buf, 0x16u);
    }
  }

LABEL_7:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

@end