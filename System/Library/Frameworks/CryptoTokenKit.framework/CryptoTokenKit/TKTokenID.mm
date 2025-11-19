@interface TKTokenID
+ (id)encodedCertificateID:(id)a3;
+ (id)encodedKeyID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)classID;
- (NSString)instanceID;
- (TKTokenID)initWithClassID:(id)a3 instanceID:(id)a4;
- (TKTokenID)initWithCoder:(id)a3;
- (TKTokenID)initWithTokenID:(id)a3;
- (id)decodedCertificateID:(id)a3 error:(id *)a4;
- (id)decodedKeyID:(id)a3 error:(id *)a4;
- (id)decodedObjectID:(id)a3 isCertificate:(BOOL *)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TKTokenID

- (NSString)classID
{
  v2 = [(TKTokenID *)self stringRepresentation];
  v3 = [v2 componentsSeparatedByString:@":"];
  v4 = [v3 firstObject];

  return v4;
}

- (TKTokenID)initWithTokenID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = TKTokenID;
    v5 = [(TKTokenID *)&v10 init];
    if (v5)
    {
      if ([v4 hasSuffix:@":"])
      {
        v6 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];
      }

      else
      {
        v6 = v4;
      }

      stringRepresentation = v5->_stringRepresentation;
      v5->_stringRepresentation = v6;
    }

    self = v5;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TKTokenID)initWithClassID:(id)a3 instanceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v6, v7];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [(TKTokenID *)self initWithTokenID:v8];

  return v10;
}

- (TKTokenID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenID"];

  v6 = [(TKTokenID *)self initWithTokenID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TKTokenID *)self stringRepresentation];
  [v4 encodeObject:v5 forKey:@"tokenID"];
}

- (unint64_t)hash
{
  v2 = [(TKTokenID *)self stringRepresentation];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TKTokenID *)self stringRepresentation];
    v6 = [v4 stringRepresentation];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)instanceID
{
  v2 = [(TKTokenID *)self stringRepresentation];
  v3 = [v2 componentsSeparatedByString:@":"];

  if ([v3 count] < 2)
  {
    v4 = &stru_1F5A7A8A8;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:1];
  }

  return v4;
}

+ (id)encodedKeyID:(id)a3
{
  v3 = a3;
  v4 = [[TKBERTLVRecord alloc] initWithPropertyList:v3];
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"failed to serialize objectID '%@'", v3}];
  }

  v5 = [(TKTLVRecord *)v4 data];

  return v5;
}

+ (id)encodedCertificateID:(id)a3
{
  v3 = [a1 encodedKeyID:a3];
  v4 = [[TKBERTLVRecord alloc] initWithTag:0x5FC8C6BFE112 value:v3];
  v5 = [(TKTLVRecord *)v4 data];

  return v5;
}

- (id)decodedObjectID:(id)a3 isCertificate:(BOOL *)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:v8];
  if ([v9 tag] != 0x5FC8C6BFE112)
  {
    v13 = [v9 propertyList];
    if (v13)
    {
      v11 = v13;
      v12 = 0;
    }

    else
    {
      v14 = [(TKTokenID *)self stringRepresentation];
      v15 = [v14 isEqualToString:*MEMORY[0x1E697AEE0]];

      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v8 error:0];
        v11 = [v16 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      if (a5 && !v11)
      {
        v17 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v23[0] = @"corrupted objectID detected";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        *a5 = [v17 errorWithDomain:@"CryptoTokenKit" code:-3 userInfo:v18];

        v12 = 0;
        v11 = 0;
      }
    }

    goto LABEL_12;
  }

  v10 = [v9 value];
  v11 = [(TKTokenID *)self decodedObjectID:v10 isCertificate:a4 error:a5];

  if (v11)
  {
    v12 = 1;
LABEL_12:
    *a4 = v12;
  }

  v19 = v11;

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)decodedKeyID:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v5 = [(TKTokenID *)self decodedObjectID:a3 isCertificate:&v10 error:a4];
  if (v5 && v10 == 1)
  {

    if (a4)
    {
      v6 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A278];
      v12[0] = @"Expecting key, but provided certificate objectID";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      *a4 = [v6 errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:v7];
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)decodedCertificateID:(id)a3 error:(id *)a4
{
  v6 = 0;
  v4 = [(TKTokenID *)self decodedObjectID:a3 isCertificate:&v6 error:a4];

  return v4;
}

@end