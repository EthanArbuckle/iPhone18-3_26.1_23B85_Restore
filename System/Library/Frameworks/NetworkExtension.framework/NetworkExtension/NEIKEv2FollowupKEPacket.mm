@interface NEIKEv2FollowupKEPacket
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2FollowupKEPacket

- (void)filloutPayloads
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  if (self)
  {
    rawPayloads = self->super._rawPayloads;
  }

  else
  {
    rawPayloads = 0;
  }

  v4 = rawPayloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v33;
    v9 = 0x1E695D000uLL;
    v10 = &OBJC_IVAR___NEFilterFlow__direction;
    *&v6 = 138412546;
    v31 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 type];
        if (v13 == 41)
        {
          v16 = v12;
          if (self && objc_getProperty(self, v15, 64, 1))
          {
            v19 = [objc_getProperty(self v17];
            goto LABEL_23;
          }

          v41 = v16;
          v19 = [*(v9 + 3784) arrayWithObjects:&v41 count:1];
          if (self)
          {
LABEL_23:
            objc_setProperty_atomic(self, v18, v19, 64);
          }

          if (v16 && self && *&v16[v10[558]] == 16441)
          {
            objc_setProperty_atomic(self, v29, v16, 96);
          }

LABEL_31:

          continue;
        }

        if (v13 == 34)
        {
          if (self)
          {
            objc_setProperty_atomic(self, v14, v12, 88);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v12;
            if (self && objc_getProperty(self, v20, 56, 1))
            {
              v23 = [objc_getProperty(self v21];
              goto LABEL_29;
            }

            v40 = v16;
            v23 = [*(v9 + 3784) arrayWithObjects:&v40 count:1];
            if (self)
            {
LABEL_29:
              objc_setProperty_atomic(self, v22, v23, 56);
            }

            goto LABEL_31;
          }

          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v10;
            v26 = v9;
            v27 = [(NEIKEv2Packet *)self copyShortDescription];
            v28 = [v12 typeDescription];
            *buf = v31;
            v37 = v27;
            v38 = 2112;
            v39 = v28;
            _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);

            v9 = v26;
            v10 = v25;
          }
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v7);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)gatherPayloads
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self)
  {
    if (objc_getProperty(self, v3, 88, 1))
    {
      [v8 addObject:{objc_getProperty(self, v4, 88, 1)}];
    }

    if (objc_getProperty(self, v4, 96, 1))
    {
      [v8 addObject:{objc_getProperty(self, v5, 96, 1)}];
    }

    [v8 addObjectsFromArray:{objc_getProperty(self, v5, 64, 1)}];
    Property = objc_getProperty(self, v6, 56, 1);
  }

  else
  {
    [v8 addObjectsFromArray:0];
    Property = 0;
  }

  [v8 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)self setRawPayloads:v8];
}

@end