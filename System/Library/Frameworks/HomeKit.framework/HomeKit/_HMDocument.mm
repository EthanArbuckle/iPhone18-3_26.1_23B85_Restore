@interface _HMDocument
- (BOOL)isEqual:(id)equal;
- (_HMDocument)initWithData:(id)data error:(id *)error;
- (_HMDocument)initWithString:(id)string;
- (_HMDocument)initWithURL:(id)l error:(id *)error;
- (_HMDocument)initWithURL:(id)l fileManager:(id)manager error:(id *)error;
- (unint64_t)hash;
@end

@implementation _HMDocument

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      stringValue = [(_HMDocument *)self stringValue];
      stringValue2 = [(_HMDocument *)v6 stringValue];
      v9 = [stringValue isEqualToString:stringValue2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  stringValue = [(_HMDocument *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (_HMDocument)initWithURL:(id)l fileManager:(id)manager error:(id *)error
{
  lCopy = l;
  managerCopy = manager;
  if (!lCopy)
  {
    goto LABEL_9;
  }

  v16 = 0;
  path = [lCopy path];
  v11 = [managerCopy fileExistsAtPath:path isDirectory:&v16];

  if ((v11 & 1) == 0)
  {
    if (error)
    {
      v12 = @" file does not exist.";
      goto LABEL_8;
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  if (v16 == 1)
  {
    if (error)
    {
      v12 = @"Invalid file type (directory).";
LABEL_8:
      *error = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Invalid parameter." reason:v12 suggestion:0];
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy];
  if (v15)
  {
    self = [(_HMDocument *)self initWithData:v15 error:error];
    selfCopy = self;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Not found." reason:@"The  data could not be read from the file." suggestion:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_10:
  return selfCopy;
}

- (_HMDocument)initWithURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x1E696AC08];
  lCopy = l;
  defaultManager = [v6 defaultManager];
  v9 = [(_HMDocument *)self initWithURL:lCopy fileManager:defaultManager error:error];

  return v9;
}

- (_HMDocument)initWithData:(id)data error:(id *)error
{
  if (data)
  {
    v6 = MEMORY[0x1E696AEC0];
    dataCopy = data;
    v8 = [[v6 alloc] initWithData:dataCopy encoding:4];

    if (v8)
    {
      self = [(_HMDocument *)self initWithString:v8];
      selfCopy = self;
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Invalid parameter." reason:@" data is not UTF8 encoded" suggestion:0];
      *error = selfCopy = 0;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_HMDocument)initWithString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v10.receiver = self;
    v10.super_class = _HMDocument;
    v5 = [(_HMDocument *)&v10 init];
    if (v5)
    {
      v6 = [stringCopy copy];
      stringValue = v5->_stringValue;
      v5->_stringValue = v6;
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

@end