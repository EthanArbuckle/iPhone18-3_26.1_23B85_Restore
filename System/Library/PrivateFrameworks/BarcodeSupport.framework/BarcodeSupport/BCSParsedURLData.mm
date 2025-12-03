@interface BCSParsedURLData
- (BCSParsedURLData)initWithCoder:(id)coder;
- (BCSParsedURLData)initWithURL:(id)l type:(int64_t)type extraPreviewText:(id)text preferredBundleID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSParsedURLData

- (BCSParsedURLData)initWithURL:(id)l type:(int64_t)type extraPreviewText:(id)text preferredBundleID:(id)d
{
  lCopy = l;
  textCopy = text;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = BCSParsedURLData;
  v14 = [(BCSParsedURLData *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, l);
    v15->_type = type;
    v16 = [textCopy copy];
    extraPreviewText = v15->_extraPreviewText;
    v15->_extraPreviewText = v16;

    if (dCopy)
    {
      v18 = dCopy;
    }

    else
    {
      v18 = [BCSAppRanker bundleIdentifierOfLastUsedAppForURL:v15->_url];
    }

    preferredBundleID = v15->_preferredBundleID;
    v15->_preferredBundleID = v18;

    v20 = v15;
  }

  return v15;
}

- (BCSParsedURLData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"extraPreviewText"];
  v8 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"preferredBundleID"];

  v9 = -[BCSParsedURLData initWithURL:type:extraPreviewText:preferredBundleID:](self, "initWithURL:type:extraPreviewText:preferredBundleID:", v5, [v6 integerValue], v7, v8);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_extraPreviewText forKey:@"extraPreviewText"];
  [coderCopy encodeObject:self->_preferredBundleID forKey:@"preferredBundleID"];
}

@end