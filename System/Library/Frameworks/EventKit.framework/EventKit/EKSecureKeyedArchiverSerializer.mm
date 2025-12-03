@interface EKSecureKeyedArchiverSerializer
- (EKSecureKeyedArchiverSerializer)initWithEventStore:(id)store withVersion:(id)version;
- (id)deserializeData:(id)data isNew:(id *)new error:(id *)error;
- (id)serializeEvent:(id)event error:(id *)error;
- (id)versionFromData:(id)data error:(id *)error;
@end

@implementation EKSecureKeyedArchiverSerializer

- (EKSecureKeyedArchiverSerializer)initWithEventStore:(id)store withVersion:(id)version
{
  storeCopy = store;
  versionCopy = version;
  v14.receiver = self;
  v14.super_class = EKSecureKeyedArchiverSerializer;
  v9 = [(EKSecureKeyedArchiverSerializer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStore, store);
    v11 = [versionCopy copy];
    version = v10->_version;
    v10->_version = v11;
  }

  return v10;
}

- (id)deserializeData:(id)data isNew:(id *)new error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v27[0] = 0;
  v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:v27];
  v10 = v27[0];
  v11 = v10;
  if (!v9)
  {
    if (error)
    {
      v19 = v10;
      v18 = 0;
      *error = v11;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
  version = [(EKSecureKeyedArchiverSerializer *)self version];
  v14 = [v12 isEqual:version];

  if ((v14 & 1) == 0)
  {
    if (error)
    {
      v20 = MEMORY[0x1E696AEC0];
      version2 = [(EKSecureKeyedArchiverSerializer *)self version];
      v22 = [v20 stringWithFormat:@"Version mismatch. Archiver version: [%@]. Encoded Data Version: [%@].", version2, v12];

      v23 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29[0] = v22;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *error = [v23 errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:v24];
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v15 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v16 = v15;
  if (new)
  {
    *new = [v15 isNew];
  }

  eventStore = [(EKSecureKeyedArchiverSerializer *)self eventStore];
  v18 = [v16 createEventInEventStore:eventStore];

LABEL_12:
  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)serializeEvent:(id)event error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = [[EKSerializableEvent alloc] initWithEvent:eventCopy];
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  version = [(EKSecureKeyedArchiverSerializer *)self version];
  [v7 encodeObject:version forKey:@"Version"];

  [v7 encodeObject:v6 forKey:@"Data"];
  encodedData = [v7 encodedData];

  v10 = *MEMORY[0x1E69E9840];

  return encodedData;
}

- (id)versionFromData:(id)data error:(id *)error
{
  v13[5] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v13[0] = 0;
  v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:v13];
  v7 = v13[0];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
  }

  else if (error)
  {
    v10 = v7;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

@end