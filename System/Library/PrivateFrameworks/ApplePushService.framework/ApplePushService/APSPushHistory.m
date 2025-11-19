@interface APSPushHistory
- (APSPushHistory)initWithEnvironment:(id)a3;
- (BOOL)hasPayload:(id)a3 forTopic:(id)a4 tokens:(id)a5;
- (id)_keyForTopic:(id)a3 token:(id)a4;
- (id)timestampForTopic:(id)a3 token:(id)a4;
- (void)_pruneHistory;
- (void)receivedPushWithTopic:(id)a3 token:(id)a4 payload:(id)a5 timestamp:(id)a6;
@end

@implementation APSPushHistory

- (void)_pruneHistory
{
  v3 = [(NSMutableDictionary *)self->_history count];
  if (v3 < 0x12D)
  {
    goto LABEL_12;
  }

  v4 = fmax(v3 * 0.3, 5.0);
  v5 = [(NSMutableDictionary *)self->_history keysSortedByValueUsingComparator:&stru_100187C90];
  v6 = [v5 count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 objectAtIndex:i];
      [(NSMutableDictionary *)self->_history removeObjectForKey:v9];

      objc_autoreleasePoolPop(v8);
    }
  }

  v10 = +[APSLog shouldReduceLogging];
  v11 = +[APSLog pushHistory];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(NSMutableDictionary *)self->_history count];
      *v18 = 138412802;
      *&v18[4] = self;
      *&v18[12] = 2048;
      *&v18[14] = v6;
      *&v18[22] = 2048;
      v19 = v13;
      v14 = v12;
      v15 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, "%@ _pruneHistory from %lu to %lu.", v18, 0x20u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NSMutableDictionary *)self->_history count];
    *v18 = 138412802;
    *&v18[4] = self;
    *&v18[12] = 2048;
    *&v18[14] = v6;
    *&v18[22] = 2048;
    v19 = v16;
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

LABEL_12:
  if (![(NSMutableDictionary *)self->_history count:*v18])
  {
    history = self->_history;
    self->_history = 0;
  }
}

- (APSPushHistory)initWithEnvironment:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APSPushHistory;
  v6 = [(APSPushHistory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, a3);
  }

  return v7;
}

- (id)_keyForTopic:(id)a3 token:(id)a4
{
  v5 = a3;
  v6 = sub_10000560C(a4);
  v7 = [NSString stringWithFormat:@"%@, %@", v5, v6];

  return v7;
}

- (void)receivedPushWithTopic:(id)a3 token:(id)a4 payload:(id)a5 timestamp:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[APSLog shouldReduceLogging];
  v15 = +[APSLog pushHistory];
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138413314;
      v26 = self;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v17 = v16;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v17, v18, "%@ receivedPushWithTopic %@ token %@ payload %@ timestamp %@", &v25, 0x34u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138413314;
    v26 = self;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v17 = v16;
    v18 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  if ([v10 length])
  {
    if ([v11 length])
    {
      v19 = [v12 length];
      if (v13)
      {
        if (v19)
        {
          v20 = [(APSPushHistory *)self _keyForTopic:v10 token:v11];
          if (!self->_history)
          {
            v21 = [[NSMutableDictionary alloc] initWithCapacity:1];
            history = self->_history;
            self->_history = v21;
          }

          v23 = sub_100005710(v12);
          v24 = [[APSPushRecord alloc] initWithToken:v11 timestamp:v13 payloadHash:v23];
          [(NSMutableDictionary *)self->_history setObject:v24 forKey:v20];
          [(APSPushHistory *)self _pruneHistory];
        }
      }
    }
  }
}

- (id)timestampForTopic:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = [(APSPushHistory *)self _keyForTopic:v6 token:v7];
    v9 = [(NSMutableDictionary *)self->_history objectForKey:v8];
    v10 = [v9 timestamp];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasPayload:(id)a3 forTopic:(id)a4 tokens:(id)a5
{
  v28 = a3;
  v29 = a4;
  v8 = a5;
  v9 = +[APSLog shouldReduceLogging];
  v10 = +[APSLog pushHistory];
  v11 = v10;
  if (v9)
  {
    v12 = v28;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v36 = self;
      v37 = 2112;
      v38 = v28;
      v39 = 2112;
      v40 = v29;
      v41 = 2112;
      v42 = v8;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, v14, "%@ hasPayload? %@ forTopic %@ tokens %@", buf, 0x2Au);
    }
  }

  else
  {
    v12 = v28;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v36 = self;
      v37 = 2112;
      v38 = v28;
      v39 = 2112;
      v40 = v29;
      v41 = 2112;
      v42 = v8;
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }

  if ([v12 length] && objc_msgSend(v29, "length") && objc_msgSend(v8, "count"))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v8;
    v15 = v8;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v31;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [(APSPushHistory *)self _keyForTopic:v29 token:*(*(&v30 + 1) + 8 * i)];
          v22 = [(NSMutableDictionary *)self->_history objectForKey:v21];
          v23 = [v22 payloadHash];

          if (v23)
          {
            v24 = sub_100005710(v12);
            if (v18)
            {
              v18 = 1;
            }

            else
            {
              v25 = [v22 payloadHash];
              v18 = [v24 isEqualToData:v25];

              v12 = v28;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v8 = v27;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

@end