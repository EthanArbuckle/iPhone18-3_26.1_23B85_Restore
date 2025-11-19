@interface SLFacebookGraphUtils
+ (id)_likeQueryStringForURL:(id)a3 flags:(unint64_t)a4;
+ (id)_parseServerResponse:(id)a3 error:(id *)a4;
+ (void)_likeURL:(id)a3 requestMethod:(int64_t)a4 account:(id)a5 completion:(id)a6;
+ (void)fetchLikeStatusForURL:(id)a3 flags:(id)a4 account:(id)a5 completion:(id)a6;
@end

@implementation SLFacebookGraphUtils

+ (void)_likeURL:(id)a3 requestMethod:(int64_t)a4 account:(id)a5 completion:(id)a6
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E6959978];
  v9 = a6;
  v10 = [v7 errorWithDomain:v8 code:3 userInfo:0];
  (*(a6 + 2))(v9, v10);
}

+ (void)fetchLikeStatusForURL:(id)a3 flags:(id)a4 account:(id)a5 completion:(id)a6
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E6959978];
  v9 = a6;
  v10 = [v7 errorWithDomain:v8 code:3 userInfo:0];
  (*(a6 + 2))(v9, 0, v10);
}

+ (id)_parseServerResponse:(id)a3 error:(id *)a4
{
  v4 = a4;
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:4 error:a4];
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_22;
  }

  if (*v4)
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
      if (v4)
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
            v13 = [v9 integerValue];
            v20 = *MEMORY[0x1E696A578];
            v21[0] = v11;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
            v15 = v12;
            v16 = v13;
          }

          else
          {
            v18 = @"json";
            v19 = v8;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
            v15 = v12;
            v16 = 1;
          }

          *v4 = [v15 errorWithDomain:@"com.apple.sociald.facebook" code:v16 userInfo:v14];
        }

        v4 = 0;
      }
    }

    else
    {
      v4 = v6;
    }
  }

  else
  {
    v4 = v6;
  }

LABEL_22:

  return v4;
}

+ (id)_likeQueryStringForURL:(id)a3 flags:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT like_count FROM link_stat where url=%@", v5];
    [v6 setObject:v10 forKeyedSubscript:@"globalCount"];

    if ((v4 & 8) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = @"friends";
    v8 = @"SELECT name, uid FROM user WHERE uid IN (SELECT user_id FROM url_like WHERE user_id IN (SELECT uid2 FROM friend WHERE uid1=me()) AND url=%@)";
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT user_id FROM url_like WHERE user_id = me() and url=%@", v5];
  [v6 setObject:v9 forKeyedSubscript:@"me"];

  if ((v4 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    goto LABEL_10;
  }

  v7 = @"friendCount";
  v8 = @"SELECT user_id FROM url_like WHERE user_id IN (Select uid2 from friend where uid1 = me()) and url=%@";
LABEL_9:
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v5];
  [v6 setObject:v11 forKeyedSubscript:v7];

LABEL_10:
  v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:0];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];

  return v13;
}

@end