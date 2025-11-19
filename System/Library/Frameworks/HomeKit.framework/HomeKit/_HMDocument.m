@interface _HMDocument
- (BOOL)isEqual:(id)a3;
- (_HMDocument)initWithData:(id)a3 error:(id *)a4;
- (_HMDocument)initWithString:(id)a3;
- (_HMDocument)initWithURL:(id)a3 error:(id *)a4;
- (_HMDocument)initWithURL:(id)a3 fileManager:(id)a4 error:(id *)a5;
- (unint64_t)hash;
@end

@implementation _HMDocument

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(_HMDocument *)self stringValue];
      v8 = [(_HMDocument *)v6 stringValue];
      v9 = [v7 isEqualToString:v8];
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
  v2 = [(_HMDocument *)self stringValue];
  v3 = [v2 hash];

  return v3;
}

- (_HMDocument)initWithURL:(id)a3 fileManager:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    goto LABEL_9;
  }

  v16 = 0;
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v16];

  if ((v11 & 1) == 0)
  {
    if (a5)
    {
      v12 = @" file does not exist.";
      goto LABEL_8;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (v16 == 1)
  {
    if (a5)
    {
      v12 = @"Invalid file type (directory).";
LABEL_8:
      *a5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Invalid parameter." reason:v12 suggestion:0];
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8];
  if (v15)
  {
    self = [(_HMDocument *)self initWithData:v15 error:a5];
    v13 = self;
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Not found." reason:@"The  data could not be read from the file." suggestion:0];
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_10:
  return v13;
}

- (_HMDocument)initWithURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696AC08];
  v7 = a3;
  v8 = [v6 defaultManager];
  v9 = [(_HMDocument *)self initWithURL:v7 fileManager:v8 error:a4];

  return v9;
}

- (_HMDocument)initWithData:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a3;
    v8 = [[v6 alloc] initWithData:v7 encoding:4];

    if (v8)
    {
      self = [(_HMDocument *)self initWithString:v8];
      v9 = self;
    }

    else if (a4)
    {
      [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Invalid parameter." reason:@" data is not UTF8 encoded" suggestion:0];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_HMDocument)initWithString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = _HMDocument;
    v5 = [(_HMDocument *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      stringValue = v5->_stringValue;
      v5->_stringValue = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end