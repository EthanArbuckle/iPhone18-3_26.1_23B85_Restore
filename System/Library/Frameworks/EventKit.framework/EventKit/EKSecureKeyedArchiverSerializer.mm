@interface EKSecureKeyedArchiverSerializer
- (EKSecureKeyedArchiverSerializer)initWithEventStore:(id)a3 withVersion:(id)a4;
- (id)deserializeData:(id)a3 isNew:(id *)a4 error:(id *)a5;
- (id)serializeEvent:(id)a3 error:(id *)a4;
- (id)versionFromData:(id)a3 error:(id *)a4;
@end

@implementation EKSecureKeyedArchiverSerializer

- (EKSecureKeyedArchiverSerializer)initWithEventStore:(id)a3 withVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EKSecureKeyedArchiverSerializer;
  v9 = [(EKSecureKeyedArchiverSerializer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, a3);
    v11 = [v8 copy];
    version = v10->_version;
    v10->_version = v11;
  }

  return v10;
}

- (id)deserializeData:(id)a3 isNew:(id *)a4 error:(id *)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v27[0] = 0;
  v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v8 error:v27];
  v10 = v27[0];
  v11 = v10;
  if (!v9)
  {
    if (a5)
    {
      v19 = v10;
      v18 = 0;
      *a5 = v11;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
  v13 = [(EKSecureKeyedArchiverSerializer *)self version];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    if (a5)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [(EKSecureKeyedArchiverSerializer *)self version];
      v22 = [v20 stringWithFormat:@"Version mismatch. Archiver version: [%@]. Encoded Data Version: [%@].", v21, v12];

      v23 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29[0] = v22;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *a5 = [v23 errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:v24];
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v15 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v16 = v15;
  if (a4)
  {
    *a4 = [v15 isNew];
  }

  v17 = [(EKSecureKeyedArchiverSerializer *)self eventStore];
  v18 = [v16 createEventInEventStore:v17];

LABEL_12:
  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)serializeEvent:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[EKSerializableEvent alloc] initWithEvent:v5];
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v8 = [(EKSecureKeyedArchiverSerializer *)self version];
  [v7 encodeObject:v8 forKey:@"Version"];

  [v7 encodeObject:v6 forKey:@"Data"];
  v9 = [v7 encodedData];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)versionFromData:(id)a3 error:(id *)a4
{
  v13[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13[0] = 0;
  v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:v13];
  v7 = v13[0];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
  }

  else if (a4)
  {
    v10 = v7;
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

@end