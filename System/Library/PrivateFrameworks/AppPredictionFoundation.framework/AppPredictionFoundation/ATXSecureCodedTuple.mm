@interface ATXSecureCodedTuple
+ (id)allowedClassNames;
- (ATXSecureCodedTuple)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSecureCodedTuple

+ (id)allowedClassNames
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"INSendMessageIntent", @"ATXProactiveSuggestionUIFeedbackSession", @"ATXUIFeedbackSessionContext", @"ATXPartialIntentHandlingContext", @"ATXUnifiedInferredActivityTransition", @"ATXUserNotificationLoggingEvent", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(_PASTuple2 *)self first];
  [v14 encodeObject:v4 forKey:@"first"];

  v5 = [(_PASTuple2 *)self first];

  if (v5)
  {
    v6 = [(_PASTuple2 *)self first];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);

    [v14 encodeObject:v8 forKey:@"firstCls"];
  }

  v9 = [(_PASTuple2 *)self second];
  [v14 encodeObject:v9 forKey:@"second"];

  v10 = [(_PASTuple2 *)self second];

  if (v10)
  {
    v11 = [(_PASTuple2 *)self second];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);

    [v14 encodeObject:v13 forKey:@"secondCls"];
  }
}

- (ATXSecureCodedTuple)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"firstCls" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXSecureCodedTuple" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (!v9)
  {
    if (v8 && ([objc_opt_class() allowedClassNames], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v8), v11, v12))
    {
      v13 = NSClassFromString(v8);
      if (v13)
      {
        v14 = MEMORY[0x277D42620];
        v15 = __atxlog_handle_default();
        v13 = [v14 robustDecodeObjectOfClass:v13 forKey:@"first" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXSecureCodedTuple" errorCode:-1 logHandle:v15];

        if (!v13 || ([v4 error], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
        {
          v10 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = MEMORY[0x277D42620];
    v18 = objc_opt_class();
    v19 = __atxlog_handle_default();
    v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"secondCls" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXSecureCodedTuple" errorCode:-1 logHandle:v19];

    v21 = [v4 error];

    if (v21)
    {
      v10 = 0;
LABEL_21:

      goto LABEL_22;
    }

    if (v20 && ([objc_opt_class() allowedClassNames], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v20), v22, v23))
    {
      v24 = NSClassFromString(v20);
      if (v24)
      {
        v25 = MEMORY[0x277D42620];
        v26 = __atxlog_handle_default();
        v24 = [v25 robustDecodeObjectOfClass:v24 forKey:@"second" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXSecureCodedTuple" errorCode:-1 logHandle:v26];

        if (!v24 || ([v4 error], v27 = objc_claimAutoreleasedReturnValue(), v27, v27))
        {
          v10 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    else
    {
      v24 = 0;
    }

    self = [(_PASTuple2 *)self initWithFirst:v13 second:v24];
    v10 = self;
    goto LABEL_20;
  }

  v10 = 0;
LABEL_23:

  return v10;
}

@end