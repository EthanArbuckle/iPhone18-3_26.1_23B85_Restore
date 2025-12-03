@interface AMSMediaVideo
- (AMSMediaVideo)initWithDictionary:(id)dictionary;
- (NSURL)URL;
- (id)name;
@end

@implementation AMSMediaVideo

- (AMSMediaVideo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AMSMediaVideo;
  v6 = [(AMSMediaVideo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoDictionary, dictionary);
  }

  return v7;
}

- (id)name
{
  videoDictionary = [(AMSMediaVideo *)self videoDictionary];
  v3 = [videoDictionary objectForKeyedSubscript:@"name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)URL
{
  videoDictionary = [(AMSMediaVideo *)self videoDictionary];
  v3 = [videoDictionary objectForKeyedSubscript:@"video"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
      goto LABEL_6;
    }
  }

  else
  {

    v4 = 0;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

@end