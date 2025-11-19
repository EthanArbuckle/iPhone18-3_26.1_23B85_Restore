@interface CTLazuliSuggestedActionOpenUrlInWebView
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionOpenUrlInWebView:(id)a3;
- (CTLazuliSuggestedActionOpenUrlInWebView)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionOpenUrlInWebView)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliSuggestedActionOpenUrlInWebView

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self mode];
  v8 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self mode];
  [v3 appendFormat:@", mode = [%ld - %s]", v4, print_CTLazuliViewModeType(&v8)];
  v5 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self url];
  [v3 appendFormat:@", url = %@", v5];

  v6 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self parameters];
  [v3 appendFormat:@", parameters = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionOpenUrlInWebView:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self mode];
  if (v7 == [v6 mode])
  {
    v8 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self url];
    v9 = [v6 url];
    if (v8 == v9 || (-[CTLazuliSuggestedActionOpenUrlInWebView url](self, "url"), v3 = objc_claimAutoreleasedReturnValue(), [v6 url], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self parameters];
      v12 = [v6 parameters];
      v13 = v12;
      if (v11 == v12)
      {

        v10 = 1;
      }

      else
      {
        v14 = [(CTLazuliSuggestedActionOpenUrlInWebView *)self parameters];
        v15 = [v6 parameters];
        v10 = [v14 isEqualToString:v15];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionOpenUrlInWebView *)self isEqualToCTLazuliSuggestedActionOpenUrlInWebView:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliSuggestedActionOpenUrlInWebView allocWithZone:?];
  [(CTLazuliSuggestedActionOpenUrlInWebView *)v5 setMode:self->_mode];
  v6 = [(NSURL *)self->_url copyWithZone:a3];
  [(CTLazuliSuggestedActionOpenUrlInWebView *)v5 setUrl:v6];

  v7 = [(NSString *)self->_parameters copyWithZone:a3];
  [(CTLazuliSuggestedActionOpenUrlInWebView *)v5 setParameters:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_mode];
  [v5 encodeObject:v4 forKey:@"kModeKey"];

  [v5 encodeObject:self->_url forKey:@"kUrlKey"];
  [v5 encodeObject:self->_parameters forKey:@"kParametersKey"];
}

- (CTLazuliSuggestedActionOpenUrlInWebView)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTLazuliSuggestedActionOpenUrlInWebView;
  v5 = [(CTLazuliSuggestedActionOpenUrlInWebView *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kModeKey"];
    v5->_mode = [v6 longValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUrlKey"];
    url = v5->_url;
    v5->_url = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kParametersKey"];
    parameters = v5->_parameters;
    v5->_parameters = v9;
  }

  return v5;
}

- (CTLazuliSuggestedActionOpenUrlInWebView)initWithReflection:(const void *)a3
{
  v21.receiver = self;
  v21.super_class = CTLazuliSuggestedActionOpenUrlInWebView;
  v4 = [(CTLazuliSuggestedActionOpenUrlInWebView *)&v21 init];
  if (v4)
  {
    v4->_mode = encode_CTLazuliChatBotCardMediaHeightType(a3);
    v5 = MEMORY[0x1E695DFF8];
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a3 + 1);
    v8 = *(a3 + 31);
    v9 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v8 >= 0)
    {
      v10 = a3 + 8;
    }

    else
    {
      v10 = v7;
    }

    v11 = [v6 stringWithCString:v10 encoding:v9];
    v12 = [v5 URLWithString:v11];
    url = v4->_url;
    v4->_url = v12;

    v16 = *(a3 + 4);
    v15 = a3 + 32;
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