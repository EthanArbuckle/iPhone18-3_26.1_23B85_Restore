@interface CAEvent
+ (id)eventWithName:(id)a3 fields:(id)a4;
- (BOOL)isValidPayload:(id)a3;
- (BOOL)sendPayload:(id)a3;
- (CAEvent)initWithName:(id)a3 fields:(id)a4;
- (id)createPayloadFromDictionary:(id)a3;
@end

@implementation CAEvent

- (CAEvent)initWithName:(id)a3 fields:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CAEvent;
  v9 = [(CAEvent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v11 = [v8 copy];
    fields = v10->_fields;
    v10->_fields = v11;
  }

  return v10;
}

+ (id)eventWithName:(id)a3 fields:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 fields:v6];

  return v8;
}

- (id)createPayloadFromDictionary:(id)a3
{
  PayloadFromDictionary = createPayloadFromDictionary(self->_fields, a3);

  return PayloadFromDictionary;
}

- (BOOL)isValidPayload:(id)a3
{
  v4 = a3;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = self;
  v5 = self->_fields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (!v6)
  {
    v9 = 1;
    goto LABEL_22;
  }

  v7 = v6;
  v8 = *v49;
  v9 = 1;
  do
  {
    v10 = 0;
    do
    {
      if (*v49 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v48 + 1) + 8 * v10);
      v12 = [v11 name];
      v13 = [v4 objectForKeyedSubscript:v12];

      if (!v13)
      {
        v14 = LogIOAnalytics();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          name = v39->_name;
          v16 = [v11 name];
          *buf = 138412546;
          v55 = name;
          v56 = 2112;
          v57 = v16;
          v17 = v14;
          v18 = "[%@] missing field. (%@)";
          v19 = 22;
          goto LABEL_18;
        }

LABEL_13:

        goto LABEL_14;
      }

      if (v9)
      {
        if ([v11 isValidValue:v13])
        {
          v9 = 1;
          goto LABEL_15;
        }

        v14 = LogIOAnalytics();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v20 = v39->_name;
          v16 = [v11 name];
          *buf = 138412802;
          v55 = v20;
          v56 = 2112;
          v57 = v16;
          v58 = 2112;
          v59 = v13;
          v17 = v14;
          v18 = "[%@] invalid value for field. (%@, %@)";
          v19 = 32;
LABEL_18:
          _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
        }

        goto LABEL_13;
      }

LABEL_14:
      v9 = 0;
LABEL_15:

      v10 = v10 + 1;
    }

    while (v7 != v10);
    v21 = [(NSArray *)v5 countByEnumeratingWithState:&v48 objects:v60 count:16];
    v7 = v21;
  }

  while (v21);
LABEL_22:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v22 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v22)
  {
    v24 = v22;
    v38 = *v45;
    *&v23 = 138412546;
    v36 = v23;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v27 = v39->_fields;
        v28 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v41;
LABEL_29:
          v31 = 0;
          while (1)
          {
            if (*v41 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [*(*(&v40 + 1) + 8 * v31) name];
            v33 = [v26 isEqual:v32];

            if (v33)
            {
              break;
            }

            if (v29 == ++v31)
            {
              v29 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
              if (v29)
              {
                goto LABEL_29;
              }

              goto LABEL_35;
            }
          }
        }

        else
        {
LABEL_35:

          v27 = LogIOAnalytics();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v34 = v39->_name;
            *buf = v36;
            v55 = v34;
            v56 = 2112;
            v57 = v26;
            _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "[%@] extra field found! (%@)", buf, 0x16u);
          }

          v9 = 0;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v24);
  }

  return v9 & 1;
}

- (BOOL)sendPayload:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = LogIOAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CAEvent sendPayload:?];
    }

    goto LABEL_10;
  }

  v5 = [(CAEvent *)self isValidPayload:v4];
  v6 = LogIOAnalytics();
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAEvent sendPayload:?];
    }

LABEL_10:

    v9 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CAEvent sendPayload:?];
  }

  name = self->_name;
  AnalyticsSendEvent();
  v9 = 1;
LABEL_11:

  return v9;
}

- (void)sendPayload:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_0_5();
  v5 = v2;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "[%@] dropping invalid payload: %@", v4, 0x16u);
}

- (void)sendPayload:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_0_5();
  v5 = v2;
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "[%@] sending event: %@", v4, 0x16u);
}

- (void)sendPayload:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_0_5();
  v4 = 0;
  _os_log_debug_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "[%@] dropping invalid payload: (%@)", v3, 0x16u);
}

@end