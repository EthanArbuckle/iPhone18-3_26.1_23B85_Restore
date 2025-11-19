@interface CKKSExternalKey
+ (id)parseFromJSONDict:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (CKKSExternalKey)initWithCoder:(id)a3;
- (CKKSExternalKey)initWithView:(id)a3 uuid:(id)a4 parentTLKUUID:(id)a5 keyData:(id)a6;
- (id)description;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSExternalKey

- (id)jsonDictionary
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"view";
  v3 = [(CKKSExternalKey *)self view];
  v12[0] = v3;
  v11[1] = @"uuid";
  v4 = [(CKKSExternalKey *)self uuid];
  v12[1] = v4;
  v11[2] = @"parentKeyUUID";
  v5 = [(CKKSExternalKey *)self parentKeyUUID];
  v12[2] = v5;
  v11[3] = @"keyData";
  v6 = [(CKKSExternalKey *)self keyData];
  v7 = [v6 base64EncodedStringWithOptions:0];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(CKKSExternalKey *)self view];
    v7 = [v5 view];
    if (![v6 isEqualToString:v7])
    {
      v12 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v8 = [(CKKSExternalKey *)self uuid];
    v9 = [v5 uuid];
    if (![v8 isEqualToString:v9])
    {
      v12 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v10 = [(CKKSExternalKey *)self parentKeyUUID];
    if (v10 || ([v5 parentKeyUUID], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [(CKKSExternalKey *)self parentKeyUUID];
      v3 = [v5 parentKeyUUID];
      if (![v11 isEqualToString:v3])
      {
        v12 = 0;
        goto LABEL_15;
      }

      v16 = v11;
      v18 = 1;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v13 = [(CKKSExternalKey *)self keyData];
    v14 = [v5 keyData];
    v12 = [v13 isEqualToData:v14];

    if (!v18)
    {
LABEL_16:
      if (!v10)
      {
      }

      goto LABEL_19;
    }

    v11 = v16;
LABEL_15:

    goto LABEL_16;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSExternalKey *)self view];
  [v4 encodeObject:v5 forKey:@"view"];

  v6 = [(CKKSExternalKey *)self uuid];
  [v4 encodeObject:v6 forKey:@"uuid"];

  v7 = [(CKKSExternalKey *)self parentKeyUUID];
  [v4 encodeObject:v7 forKey:@"parentKeyUUID"];

  v8 = [(CKKSExternalKey *)self keyData];
  [v4 encodeObject:v8 forKey:@"keyData"];
}

- (CKKSExternalKey)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKKSExternalKey;
  v5 = [(CKKSExternalKey *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"view"];
    view = v5->_view;
    v5->_view = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentKeyUUID"];
    parentKeyUUID = v5->_parentKeyUUID;
    v5->_parentKeyUUID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyData"];
    keyData = v5->_keyData;
    v5->_keyData = v12;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKKSExternalKey *)self uuid];
  v5 = [(CKKSExternalKey *)self parentKeyUUID];
  v6 = [v3 stringWithFormat:@"<CKKSExternalKey: %@ (%@)>", v4, v5];

  return v6;
}

- (CKKSExternalKey)initWithView:(id)a3 uuid:(id)a4 parentTLKUUID:(id)a5 keyData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CKKSExternalKey;
  v15 = [(CKKSExternalKey *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_view, a3);
    objc_storeStrong(&v16->_uuid, a4);
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v12;
    }

    objc_storeStrong(&v16->_parentKeyUUID, v17);
    objc_storeStrong(&v16->_keyData, a6);
  }

  return v16;
}

+ (id)parseFromJSONDict:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"view"];
  v7 = [v5 objectForKeyedSubscript:@"uuid"];
  v8 = [v5 objectForKeyedSubscript:@"parentKeyUUID"];
  v9 = [v5 objectForKeyedSubscript:@"keyData"];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
    v11 = v10;
    if (v6 && v7 && v8 && v10)
    {
      v12 = [[CKKSExternalKey alloc] initWithView:v6 uuid:v7 parentTLKUUID:v8 keyData:v10];
LABEL_16:

      goto LABEL_17;
    }

    if (!a4)
    {
LABEL_15:
      v12 = 0;
      goto LABEL_16;
    }

    v15 = [MEMORY[0x1E695DF70] array];
    v16 = v15;
    if (v6)
    {
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [v15 addObject:@"view"];
      if (v7)
      {
LABEL_12:
        if (v8)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

    [v16 addObject:@"uuid"];
    if (v8)
    {
LABEL_13:
      if (v11)
      {
LABEL_14:
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A768];
        v22[0] = *MEMORY[0x1E696A578];
        v22[1] = @"missingkeys";
        v23[0] = @"Missing some required field";
        v23[1] = v16;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
        *a4 = [v17 errorWithDomain:v18 code:-50 userInfo:v19];

        goto LABEL_15;
      }

LABEL_24:
      [v16 addObject:@"keyData"];
      goto LABEL_14;
    }

LABEL_23:
    [v16 addObject:@"parentKeyUUID"];
    if (v11)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  if (a4)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A768];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"No wrapped key to parse";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v13 errorWithDomain:v14 code:-50 userInfo:v11];
    *a4 = v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

@end