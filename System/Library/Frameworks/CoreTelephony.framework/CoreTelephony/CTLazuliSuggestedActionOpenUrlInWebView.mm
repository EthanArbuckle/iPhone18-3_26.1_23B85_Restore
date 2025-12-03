@interface CTLazuliSuggestedActionOpenUrlInWebView
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionOpenUrlInWebView:(id)view;
- (CTLazuliSuggestedActionOpenUrlInWebView)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionOpenUrlInWebView)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliSuggestedActionOpenUrlInWebView

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  mode = [(CTLazuliSuggestedActionOpenUrlInWebView *)self mode];
  mode2 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self mode];
  [v3 appendFormat:@", mode = [%ld - %s]", mode, print_CTLazuliViewModeType(&mode2)];
  v5 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self url];
  [v3 appendFormat:@", url = %@", v5];

  parameters = [(CTLazuliSuggestedActionOpenUrlInWebView *)self parameters];
  [v3 appendFormat:@", parameters = %@", parameters];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionOpenUrlInWebView:(id)view
{
  viewCopy = view;
  mode = [(CTLazuliSuggestedActionOpenUrlInWebView *)self mode];
  if (mode == [viewCopy mode])
  {
    v8 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self url];
    v9 = [viewCopy url];
    if (v8 == v9 || (-[CTLazuliSuggestedActionOpenUrlInWebView url](self, "url"), v3 = objc_claimAutoreleasedReturnValue(), [viewCopy url], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      parameters = [(CTLazuliSuggestedActionOpenUrlInWebView *)self parameters];
      parameters2 = [viewCopy parameters];
      v13 = parameters2;
      if (parameters == parameters2)
      {

        v10 = 1;
      }

      else
      {
        parameters3 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self parameters];
        parameters4 = [viewCopy parameters];
        v10 = [parameters3 isEqualToString:parameters4];
      }

      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionOpenUrlInWebView *)self isEqualToCTLazuliSuggestedActionOpenUrlInWebView:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliSuggestedActionOpenUrlInWebView allocWithZone:?];
  [(CTLazuliSuggestedActionOpenUrlInWebView *)v5 setMode:self->_mode];
  v6 = [(NSURL *)self->_url copyWithZone:zone];
  [(CTLazuliSuggestedActionOpenUrlInWebView *)v5 setUrl:v6];

  v7 = [(NSString *)self->_parameters copyWithZone:zone];
  [(CTLazuliSuggestedActionOpenUrlInWebView *)v5 setParameters:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_mode];
  [coderCopy encodeObject:v4 forKey:@"kModeKey"];

  [coderCopy encodeObject:self->_url forKey:@"kUrlKey"];
  [coderCopy encodeObject:self->_parameters forKey:@"kParametersKey"];
}

- (CTLazuliSuggestedActionOpenUrlInWebView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTLazuliSuggestedActionOpenUrlInWebView;
  v5 = [(CTLazuliSuggestedActionOpenUrlInWebView *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kModeKey"];
    v5->_mode = [v6 longValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUrlKey"];
    url = v5->_url;
    v5->_url = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kParametersKey"];
    parameters = v5->_parameters;
    v5->_parameters = v9;
  }

  return v5;
}

- (CTLazuliSuggestedActionOpenUrlInWebView)initWithReflection:(const void *)reflection
{
  v21.receiver = self;
  v21.super_class = CTLazuliSuggestedActionOpenUrlInWebView;
  v4 = [(CTLazuliSuggestedActionOpenUrlInWebView *)&v21 init];
  if (v4)
  {
    v4->_mode = encode_CTLazuliChatBotCardMediaHeightType(reflection);
    v5 = MEMORY[0x1E695DFF8];
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(reflection + 1);
    v8 = *(reflection + 31);
    defaultCStringEncoding = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v8 >= 0)
    {
      v10 = reflection + 8;
    }

    else
    {
      v10 = v7;
    }

    v11 = [v6 stringWithCString:v10 encoding:defaultCStringEncoding];
    v12 = [v5 URLWithString:v11];
    url = v4->_url;
    v4->_url = v12;

    v16 = *(reflection + 4);
    v15 = reflection + 32;
    v14 = v16;
    if (v15[23] >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    parameters = v4->_parameters;
    v4->_parameters = v18;
  }

  return v4;
}

@end