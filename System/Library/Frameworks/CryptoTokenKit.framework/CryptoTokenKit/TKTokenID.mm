@interface TKTokenID
+ (id)encodedCertificateID:(id)d;
+ (id)encodedKeyID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)classID;
- (NSString)instanceID;
- (TKTokenID)initWithClassID:(id)d instanceID:(id)iD;
- (TKTokenID)initWithCoder:(id)coder;
- (TKTokenID)initWithTokenID:(id)d;
- (id)decodedCertificateID:(id)d error:(id *)error;
- (id)decodedKeyID:(id)d error:(id *)error;
- (id)decodedObjectID:(id)d isCertificate:(BOOL *)certificate error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TKTokenID

- (NSString)classID
{
  stringRepresentation = [(TKTokenID *)self stringRepresentation];
  v3 = [stringRepresentation componentsSeparatedByString:@":"];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (TKTokenID)initWithTokenID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = TKTokenID;
    v5 = [(TKTokenID *)&v10 init];
    if (v5)
    {
      if ([dCopy hasSuffix:@":"])
      {
        v6 = [dCopy substringToIndex:{objc_msgSend(dCopy, "length") - 1}];
      }

      else
      {
        v6 = dCopy;
      }

      stringRepresentation = v5->_stringRepresentation;
      v5->_stringRepresentation = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TKTokenID)initWithClassID:(id)d instanceID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([iDCopy length])
  {
    iDCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", dCopy, iDCopy];
  }

  else
  {
    iDCopy = dCopy;
  }

  v9 = iDCopy;
  v10 = [(TKTokenID *)self initWithTokenID:iDCopy];

  return v10;
}

- (TKTokenID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenID"];

  v6 = [(TKTokenID *)self initWithTokenID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringRepresentation = [(TKTokenID *)self stringRepresentation];
  [coderCopy encodeObject:stringRepresentation forKey:@"tokenID"];
}

- (unint64_t)hash
{
  stringRepresentation = [(TKTokenID *)self stringRepresentation];
  v3 = [stringRepresentation hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringRepresentation = [(TKTokenID *)self stringRepresentation];
    stringRepresentation2 = [equalCopy stringRepresentation];
    v7 = [stringRepresentation isEqualToString:stringRepresentation2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)instanceID
{
  stringRepresentation = [(TKTokenID *)self stringRepresentation];
  v3 = [stringRepresentation componentsSeparatedByString:@":"];

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

+ (id)encodedKeyID:(id)d
{
  dCopy = d;
  v4 = [[TKBERTLVRecord alloc] initWithPropertyList:dCopy];
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"failed to serialize objectID '%@'", dCopy}];
  }

  data = [(TKTLVRecord *)v4 data];

  return data;
}

+ (id)encodedCertificateID:(id)d
{
  v3 = [self encodedKeyID:d];
  v4 = [[TKBERTLVRecord alloc] initWithTag:0x5FC8C6BFE112 value:v3];
  data = [(TKTLVRecord *)v4 data];

  return data;
}

- (id)decodedObjectID:(id)d isCertificate:(BOOL *)certificate error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:dCopy];
  if ([v9 tag] != 0x5FC8C6BFE112)
  {
    propertyList = [v9 propertyList];
    if (propertyList)
    {
      v11 = propertyList;
      v12 = 0;
    }

    else
    {
      stringRepresentation = [(TKTokenID *)self stringRepresentation];
      v15 = [stringRepresentation isEqualToString:*MEMORY[0x1E697AEE0]];

      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dCopy error:0];
        v11 = [v16 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      if (error && !v11)
      {
        v17 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v23[0] = @"corrupted objectID detected";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        *error = [v17 errorWithDomain:@"CryptoTokenKit" code:-3 userInfo:v18];

        v12 = 0;
        v11 = 0;
      }
    }

    goto LABEL_12;
  }

  value = [v9 value];
  v11 = [(TKTokenID *)self decodedObjectID:value isCertificate:certificate error:error];

  if (v11)
  {
    v12 = 1;
LABEL_12:
    *certificate = v12;
  }

  v19 = v11;

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)decodedKeyID:(id)d error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v5 = [(TKTokenID *)self decodedObjectID:d isCertificate:&v10 error:error];
  if (v5 && v10 == 1)
  {

    if (error)
    {
      v6 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A278];
      v12[0] = @"Expecting key, but provided certificate objectID";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      *error = [v6 errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:v7];
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)decodedCertificateID:(id)d error:(id *)error
{
  v6 = 0;
  v4 = [(TKTokenID *)self decodedObjectID:d isCertificate:&v6 error:error];

  return v4;
}

@end