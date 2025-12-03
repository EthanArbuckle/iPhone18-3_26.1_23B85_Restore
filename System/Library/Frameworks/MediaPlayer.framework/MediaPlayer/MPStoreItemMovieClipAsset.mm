@interface MPStoreItemMovieClipAsset
- (MPStoreItemMovieClipAsset)initWithLookupDictionary:(id)dictionary;
- (NSString)flavor;
- (NSURL)hlsURL;
- (NSURL)url;
- (double)duration;
@end

@implementation MPStoreItemMovieClipAsset

- (NSURL)url
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"url"];
  if (_NSIsNSString())
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)hlsURL
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"hlsUrl"];
  if (_NSIsNSString())
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)flavor
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"flavor"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)duration
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"duration"];
  v3 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v2 doubleValue];
    v3 = v4;
  }

  return v3;
}

- (MPStoreItemMovieClipAsset)initWithLookupDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [(MPStoreItemMovieClipAsset *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lookupDictionary, dictionary);
  }

  return v7;
}

@end