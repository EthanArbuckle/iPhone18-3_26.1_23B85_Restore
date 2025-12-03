@interface SLFacebookGraphUtils
+ (id)_likeQueryStringForURL:(id)l flags:(unint64_t)flags;
+ (id)_parseServerResponse:(id)response error:(id *)error;
+ (void)_likeURL:(id)l requestMethod:(int64_t)method account:(id)account completion:(id)completion;
+ (void)fetchLikeStatusForURL:(id)l flags:(id)flags account:(id)account completion:(id)completion;
@end

@implementation SLFacebookGraphUtils

+ (void)_likeURL:(id)l requestMethod:(int64_t)method account:(id)account completion:(id)completion
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E6959978];
  completionCopy = completion;
  v10 = [v7 errorWithDomain:v8 code:3 userInfo:0];
  (*(completion + 2))(completionCopy, v10);
}

+ (void)fetchLikeStatusForURL:(id)l flags:(id)flags account:(id)account completion:(id)completion
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E6959978];
  completionCopy = completion;
  v10 = [v7 errorWithDomain:v8 code:3 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v10);
}

+ (id)_parseServerResponse:(id)response error:(id *)error
{
  errorCopy = error;
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:response options:4 error:error];
  v6 = v5;
  if (!errorCopy)
  {
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    errorCopy = 0;
    goto LABEL_22;
  }

  if (*errorCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 objectForKey:@"error"];
    if (v8)
    {
      if (errorCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKey:@"code"];
          v10 = [v8 objectForKey:@"message"];
          v11 = v10;
          v12 = MEMORY[0x1E696ABC0];
          if (v9 && v10)
          {
            integerValue = [v9 integerValue];
            v20 = *MEMORY[0x1E696A578];
            v21[0] = v11;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
            v15 = v12;
            v16 = integerValue;
          }

          else
          {
            v18 = @"json";
            v19 = v8;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
            v15 = v12;
            v16 = 1;
          }

          *errorCopy = [v15 errorWithDomain:@"com.apple.sociald.facebook" code:v16 userInfo:v14];
        }

        errorCopy = 0;
      }
    }

    else
    {
      errorCopy = v6;
    }
  }

  else
  {
    errorCopy = v6;
  }

LABEL_22:

  return errorCopy;
}

+ (id)_likeQueryStringForURL:(id)l flags:(unint64_t)flags
{
  flagsCopy = flags;
  lCopy = l;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  if ((flagsCopy & 1) == 0)
  {
    if ((flagsCopy & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT like_count FROM link_stat where url=%@", lCopy];
    [v6 setObject:lCopy forKeyedSubscript:@"globalCount"];

    if ((flagsCopy & 8) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = @"friends";
    v8 = @"SELECT name, uid FROM user WHERE uid IN (SELECT user_id FROM url_like WHERE user_id IN (SELECT uid2 FROM friend WHERE uid1=me()) AND url=%@)";
    goto LABEL_9;
  }

  lCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT user_id FROM url_like WHERE user_id = me() and url=%@", lCopy];
  [v6 setObject:lCopy2 forKeyedSubscript:@"me"];

  if ((flagsCopy & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((flagsCopy & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((flagsCopy & 4) == 0)
  {
    goto LABEL_10;
  }

  v7 = @"friendCount";
  v8 = @"SELECT user_id FROM url_like WHERE user_id IN (Select uid2 from friend where uid1 = me()) and url=%@";
LABEL_9:
  lCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, lCopy];
  [v6 setObject:lCopy3 forKeyedSubscript:v7];

LABEL_10:
  v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:0];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];

  return v13;
}

@end