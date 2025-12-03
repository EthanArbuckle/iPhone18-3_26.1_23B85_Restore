@interface BSUIScreenshot
- (BSUIScreenshot)initWithDictionary:(id)dictionary;
- (CGSize)size;
@end

@implementation BSUIScreenshot

- (BSUIScreenshot)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(BSUIScreenshot *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"height"];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"width"];
    integerValue2 = 0.0;
    integerValue = 0.0;
    if (objc_opt_respondsToSelector())
    {
      integerValue = [v6 integerValue];
    }

    if (objc_opt_respondsToSelector())
    {
      integerValue2 = [v7 integerValue];
    }

    v5->_size.width = integerValue2;
    v5->_size.height = integerValue;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"artworkUrl"];
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