@interface BCSParsedURLData
- (BCSParsedURLData)initWithCoder:(id)a3;
- (BCSParsedURLData)initWithURL:(id)a3 type:(int64_t)a4 extraPreviewText:(id)a5 preferredBundleID:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSParsedURLData

- (BCSParsedURLData)initWithURL:(id)a3 type:(int64_t)a4 extraPreviewText:(id)a5 preferredBundleID:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = BCSParsedURLData;
  v14 = [(BCSParsedURLData *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, a3);
    v15->_type = a4;
    v16 = [v12 copy];
    extraPreviewText = v15->_extraPreviewText;
    v15->_extraPreviewText = v16;

    if (v13)
    {
      v18 = v13;
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

- (BCSParsedURLData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"extraPreviewText"];
  v8 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"preferredBundleID"];

  v9 = -[BCSParsedURLData initWithURL:type:extraPreviewText:preferredBundleID:](self, "initWithURL:type:extraPreviewText:preferredBundleID:", v5, [v6 integerValue], v7, v8);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_extraPreviewText forKey:@"extraPreviewText"];
  [v5 encodeObject:self->_preferredBundleID forKey:@"preferredBundleID"];
}

@end