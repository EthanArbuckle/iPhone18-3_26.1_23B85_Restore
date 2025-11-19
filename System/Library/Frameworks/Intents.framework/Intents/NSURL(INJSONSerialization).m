@interface NSURL(INJSONSerialization)
+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:;
- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:;
@end

@implementation NSURL(INJSONSerialization)

- (id)_intents_encodeWithJSONEncoder:()INJSONSerialization codableDescription:
{
  v4 = a3;
  if ([a1 isFileURL] && (v5 = MEMORY[0x193AD70C0](a1)) != 0)
  {
    v6 = v5;
    v7 = [a1 absoluteString];
    v8 = [v4 encodeObject:v6];
    v9 = [v7 stringByAppendingFormat:@"?%@=%@", @"scope", v8];
  }

  else
  {
    v9 = [a1 absoluteString];
  }

  return v9;
}

+ (id)_intents_decodeWithJSONDecoder:()INJSONSerialization codableDescription:from:
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v9];
    v11 = [v10 URL];
    v12 = [v11 isFileURL];

    v13 = MEMORY[0x1E695DFF8];
    if (v12)
    {
      v29 = v8;
      v14 = [v9 componentsSeparatedByString:@"?"];
      v15 = [v14 objectAtIndexedSubscript:0];
      v30 = [v13 URLWithString:v15];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v10;
      v16 = [v10 queryItems];
      v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v32;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v31 + 1) + 8 * i);
            v22 = [v21 name];
            v23 = [v22 isEqualToString:@"scope"];

            if (v23)
            {
              v24 = [v21 value];
              v25 = [v7 decodeObjectOfClass:objc_opt_class() from:v24];
              if (v25)
              {
                MEMORY[0x193AD70B0](v30, v25);
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v18);
      }

      v8 = v29;
      v10 = v28;
    }

    else
    {
      v30 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    }
  }

  else
  {

    v30 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v30;
}

@end