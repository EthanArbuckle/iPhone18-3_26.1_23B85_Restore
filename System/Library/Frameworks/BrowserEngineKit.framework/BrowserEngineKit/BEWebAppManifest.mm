@interface BEWebAppManifest
- (BEWebAppManifest)initWithJSONData:(id)data manifestURL:(id)l;
@end

@implementation BEWebAppManifest

- (BEWebAppManifest)initWithJSONData:(id)data manifestURL:(id)l
{
  dataCopy = data;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = BEWebAppManifest;
  v9 = [(BEWebAppManifest *)&v13 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:0];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_storeStrong(&v9->_jsonData, data);
      objc_storeStrong(&v9->_manifestURL, l);
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end