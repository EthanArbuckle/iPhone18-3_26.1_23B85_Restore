@interface BEWebAppManifest
- (BEWebAppManifest)initWithJSONData:(id)a3 manifestURL:(id)a4;
@end

@implementation BEWebAppManifest

- (BEWebAppManifest)initWithJSONData:(id)a3 manifestURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = BEWebAppManifest;
  v9 = [(BEWebAppManifest *)&v13 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_storeStrong(&v9->_jsonData, a3);
      objc_storeStrong(&v9->_manifestURL, a4);
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