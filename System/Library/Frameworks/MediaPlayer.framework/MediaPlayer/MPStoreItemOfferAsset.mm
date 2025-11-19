@interface MPStoreItemOfferAsset
- (MPStoreItemOfferAsset)initWithLookupDictionary:(id)a3;
- (NSString)flavor;
- (NSURL)previewURL;
- (double)duration;
- (double)previewDuration;
- (int64_t)size;
@end

@implementation MPStoreItemOfferAsset

- (int64_t)size
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"size"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)previewURL
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"preview"];
  if (!_NSIsNSDictionary())
  {
    goto LABEL_5;
  }

  v3 = [v2 objectForKey:@"url"];
  if (!_NSIsNSString())
  {
    v4 = 0;
    goto LABEL_7;
  }

  if (!v3)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
LABEL_7:

LABEL_8:

  return v4;
}

- (double)previewDuration
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"preview"];
  if (_NSIsNSDictionary())
  {
    v3 = [v2 objectForKey:@"duration"];
  }

  else
  {
    v3 = 0;
  }

  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (NSString)flavor
{
  v2 = [(NSDictionary *)self->_lookupDictionary objectForKey:@"flavor"];
  if ((_NSIsNSString() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
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

- (MPStoreItemOfferAsset)initWithLookupDictionary:(id)a3
{
  v4 = a3;
  v5 = [(MPStoreItemOfferAsset *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    lookupDictionary = v5->_lookupDictionary;
    v5->_lookupDictionary = v6;
  }

  return v5;
}

@end