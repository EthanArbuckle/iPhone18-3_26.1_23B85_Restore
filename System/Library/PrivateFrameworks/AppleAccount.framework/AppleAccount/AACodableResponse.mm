@interface AACodableResponse
- (AACodableResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACodableResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  httpResponse = [(AAResponse *)self httpResponse];

  if (httpResponse)
  {
    v5 = MEMORY[0x1E696ACC8];
    httpResponse2 = [(AAResponse *)self httpResponse];
    v7 = [v5 archivedDataWithRootObject:httpResponse2 requiringSecureCoding:1 error:0];

    if (v7)
    {
      [coderCopy encodeObject:v7 forKey:@"_httpResponse"];
    }
  }

  data = [(AAResponse *)self data];

  if (data)
  {
    data2 = [(AAResponse *)self data];
    [coderCopy encodeObject:data2 forKey:@"_data"];
  }

  mediaType = [(AAResponse *)self mediaType];

  v11 = coderCopy;
  if (mediaType)
  {
    mediaType2 = [(AAResponse *)self mediaType];
    [coderCopy encodeObject:mediaType2 forKey:@"_mediaType"];

    v11 = coderCopy;
  }
}

- (AACodableResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mediaType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_data"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_httpResponse"];
  if (!v7)
  {
    v8 = 0;
LABEL_11:
    v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0];
    [coderCopy failWithError:v12];

    selfCopy = 0;
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v5 == 0)
  {
    goto LABEL_11;
  }

  self = [(AAResponse *)self initWithHTTPResponse:v8 data:v6 mediaType:v5];
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

@end