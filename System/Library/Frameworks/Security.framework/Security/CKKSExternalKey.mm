@interface CKKSExternalKey
+ (id)parseFromJSONDict:(id)dict error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CKKSExternalKey)initWithCoder:(id)coder;
- (CKKSExternalKey)initWithView:(id)view uuid:(id)uuid parentTLKUUID:(id)d keyData:(id)data;
- (id)description;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSExternalKey

- (id)jsonDictionary
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"view";
  view = [(CKKSExternalKey *)self view];
  v12[0] = view;
  v11[1] = @"uuid";
  uuid = [(CKKSExternalKey *)self uuid];
  v12[1] = uuid;
  v11[2] = @"parentKeyUUID";
  parentKeyUUID = [(CKKSExternalKey *)self parentKeyUUID];
  v12[2] = parentKeyUUID;
  v11[3] = @"keyData";
  keyData = [(CKKSExternalKey *)self keyData];
  v7 = [keyData base64EncodedStringWithOptions:0];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    view = [(CKKSExternalKey *)self view];
    view2 = [equalCopy view];
    if (![view isEqualToString:view2])
    {
      v12 = 0;
LABEL_20:

      goto LABEL_21;
    }

    uuid = [(CKKSExternalKey *)self uuid];
    uuid2 = [equalCopy uuid];
    if (![uuid isEqualToString:uuid2])
    {
      v12 = 0;
LABEL_19:

      goto LABEL_20;
    }

    parentKeyUUID = [(CKKSExternalKey *)self parentKeyUUID];
    if (parentKeyUUID || ([equalCopy parentKeyUUID], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      parentKeyUUID2 = [(CKKSExternalKey *)self parentKeyUUID];
      parentKeyUUID3 = [equalCopy parentKeyUUID];
      if (![parentKeyUUID2 isEqualToString:parentKeyUUID3])
      {
        v12 = 0;
        goto LABEL_15;
      }

      v16 = parentKeyUUID2;
      v18 = 1;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    keyData = [(CKKSExternalKey *)self keyData];
    keyData2 = [equalCopy keyData];
    v12 = [keyData isEqualToData:keyData2];

    if (!v18)
    {
LABEL_16:
      if (!parentKeyUUID)
      {
      }

      goto LABEL_19;
    }

    parentKeyUUID2 = v16;
LABEL_15:

    goto LABEL_16;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  view = [(CKKSExternalKey *)self view];
  [coderCopy encodeObject:view forKey:@"view"];

  uuid = [(CKKSExternalKey *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  parentKeyUUID = [(CKKSExternalKey *)self parentKeyUUID];
  [coderCopy encodeObject:parentKeyUUID forKey:@"parentKeyUUID"];

  keyData = [(CKKSExternalKey *)self keyData];
  [coderCopy encodeObject:keyData forKey:@"keyData"];
}

- (CKKSExternalKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CKKSExternalKey;
  v5 = [(CKKSExternalKey *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"view"];
    view = v5->_view;
    v5->_view = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentKeyUUID"];
    parentKeyUUID = v5->_parentKeyUUID;
    v5->_parentKeyUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyData"];
    keyData = v5->_keyData;
    v5->_keyData = v12;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uuid = [(CKKSExternalKey *)self uuid];
  parentKeyUUID = [(CKKSExternalKey *)self parentKeyUUID];
  v6 = [v3 stringWithFormat:@"<CKKSExternalKey: %@ (%@)>", uuid, parentKeyUUID];

  return v6;
}

- (CKKSExternalKey)initWithView:(id)view uuid:(id)uuid parentTLKUUID:(id)d keyData:(id)data
{
  viewCopy = view;
  uuidCopy = uuid;
  dCopy = d;
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = CKKSExternalKey;
  v15 = [(CKKSExternalKey *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_view, view);
    objc_storeStrong(&v16->_uuid, uuid);
    if (dCopy)
    {
      v17 = dCopy;
    }

    else
    {
      v17 = uuidCopy;
    }

    objc_storeStrong(&v16->_parentKeyUUID, v17);
    objc_storeStrong(&v16->_keyData, data);
  }

  return v16;
}

+ (id)parseFromJSONDict:(id)dict error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v6 = [dictCopy objectForKeyedSubscript:@"view"];
  v7 = [dictCopy objectForKeyedSubscript:@"uuid"];
  v8 = [dictCopy objectForKeyedSubscript:@"parentKeyUUID"];
  v9 = [dictCopy objectForKeyedSubscript:@"keyData"];

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

    if (!error)
    {
LABEL_15:
      v12 = 0;
      goto LABEL_16;
    }

    array = [MEMORY[0x1E695DF70] array];
    v16 = array;
    if (v6)
    {
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [array addObject:@"view"];
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
        *error = [v17 errorWithDomain:v18 code:-50 userInfo:v19];

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

  if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A768];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"No wrapped key to parse";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v13 errorWithDomain:v14 code:-50 userInfo:v11];
    *error = v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

@end