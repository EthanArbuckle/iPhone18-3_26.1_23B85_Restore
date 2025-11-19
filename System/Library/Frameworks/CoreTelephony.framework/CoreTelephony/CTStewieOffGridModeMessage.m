@interface CTStewieOffGridModeMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieOffGridModeMessage)initWithCoder:(id)a3;
- (CTStewieOffGridModeMessage)initWithOffGridModeKey:(id)a3 error:(id *)p_isa;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieOffGridModeMessage

- (CTStewieOffGridModeMessage)initWithOffGridModeKey:(id)a3 error:(id *)p_isa
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    if (!p_isa)
    {
      goto LABEL_12;
    }

    v10 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"offGridModeKey is missing";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *p_isa = [v10 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v11];

LABEL_10:
    p_isa = 0;
    goto LABEL_12;
  }

  if ([v7 length] && objc_msgSend(v8, "length") != 16)
  {
    if (!p_isa)
    {
      goto LABEL_12;
    }

    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18 = @"offGridModeKey size is incorrect.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *p_isa = [v12 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v13];

    goto LABEL_10;
  }

  v16.receiver = self;
  v16.super_class = CTStewieOffGridModeMessage;
  v9 = [(CTStewieOffGridModeMessage *)&v16 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_offGridModeKey, a3);
    self = p_isa;
    p_isa = &self->super.isa;
  }

  else
  {
    self = 0;
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTStewieOffGridModeMessage *)self offGridModeKey];
  [v3 appendFormat:@", offGridModeKey size=%lu", objc_msgSend(v4, "length")];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieOffGridModeMessage *)self offGridModeKey];
  v6 = [v4 offGridModeKey];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTStewieOffGridModeMessage *)self offGridModeKey];
    v8 = [v4 offGridModeKey];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieOffGridModeMessage *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTStewieOffGridModeMessage *)self offGridModeKey];
  v7 = [v6 copyWithZone:a3];
  [v5 setOffGridModeKey:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTStewieOffGridModeMessage *)self offGridModeKey];
  [v5 encodeObject:v4 forKey:@"offGridModeKey"];
}

- (CTStewieOffGridModeMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offGridModeKey"];
  v6 = [(CTStewieOffGridModeMessage *)self initWithOffGridModeKey:v5 error:0];

  return v6;
}

@end