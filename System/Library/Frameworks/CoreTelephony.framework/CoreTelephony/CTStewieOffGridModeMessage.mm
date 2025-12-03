@interface CTStewieOffGridModeMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieOffGridModeMessage)initWithCoder:(id)coder;
- (CTStewieOffGridModeMessage)initWithOffGridModeKey:(id)key error:(id *)p_isa;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieOffGridModeMessage

- (CTStewieOffGridModeMessage)initWithOffGridModeKey:(id)key error:(id *)p_isa
{
  v20[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v8 = keyCopy;
  if (!keyCopy)
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

  if ([keyCopy length] && objc_msgSend(v8, "length") != 16)
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
    objc_storeStrong(&v9->_offGridModeKey, key);
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
  offGridModeKey = [(CTStewieOffGridModeMessage *)self offGridModeKey];
  [v3 appendFormat:@", offGridModeKey size=%lu", objc_msgSend(offGridModeKey, "length")];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)other
{
  otherCopy = other;
  offGridModeKey = [(CTStewieOffGridModeMessage *)self offGridModeKey];
  offGridModeKey2 = [otherCopy offGridModeKey];
  if (offGridModeKey == offGridModeKey2)
  {
    v9 = 1;
  }

  else
  {
    offGridModeKey3 = [(CTStewieOffGridModeMessage *)self offGridModeKey];
    offGridModeKey4 = [otherCopy offGridModeKey];
    v9 = [offGridModeKey3 isEqual:offGridModeKey4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieOffGridModeMessage *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  offGridModeKey = [(CTStewieOffGridModeMessage *)self offGridModeKey];
  v7 = [offGridModeKey copyWithZone:zone];
  [v5 setOffGridModeKey:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  offGridModeKey = [(CTStewieOffGridModeMessage *)self offGridModeKey];
  [coderCopy encodeObject:offGridModeKey forKey:@"offGridModeKey"];
}

- (CTStewieOffGridModeMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offGridModeKey"];
  v6 = [(CTStewieOffGridModeMessage *)self initWithOffGridModeKey:v5 error:0];

  return v6;
}

@end