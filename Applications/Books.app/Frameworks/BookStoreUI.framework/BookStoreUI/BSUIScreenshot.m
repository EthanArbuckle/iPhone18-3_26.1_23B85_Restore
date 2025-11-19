@interface BSUIScreenshot
- (BSUIScreenshot)initWithDictionary:(id)a3;
- (CGSize)size;
@end

@implementation BSUIScreenshot

- (BSUIScreenshot)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(BSUIScreenshot *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"height"];
    v7 = [v4 objectForKeyedSubscript:@"width"];
    v8 = 0.0;
    v9 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 integerValue];
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 integerValue];
    }

    v5->_size.width = v8;
    v5->_size.height = v9;
    v10 = [v4 objectForKeyedSubscript:@"artworkUrl"];
    v11 = [v10 jsa_normalizedArtworkURLOfSize:@"jpg" withFormat:v5->_size.width, v5->_size.height];
    v12 = [NSURL URLWithString:v11];
    url = v5->_url;
    v5->_url = v12;
  }

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end