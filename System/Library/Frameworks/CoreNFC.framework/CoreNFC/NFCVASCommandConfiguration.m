@interface NFCVASCommandConfiguration
- (NFCVASCommandConfiguration)init;
- (NFCVASCommandConfiguration)initWithVASMode:(NFCVASMode)mode passTypeIdentifier:(NSString *)passTypeIdentifier url:(NSURL *)url;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NFCVASCommandConfiguration

- (NFCVASCommandConfiguration)init
{
  v3 = objc_opt_new();
  v4 = [(NFCVASCommandConfiguration *)self initWithVASMode:1 passTypeIdentifier:&stru_284A4F850 url:v3];

  return v4;
}

- (NFCVASCommandConfiguration)initWithVASMode:(NFCVASMode)mode passTypeIdentifier:(NSString *)passTypeIdentifier url:(NSURL *)url
{
  v8 = passTypeIdentifier;
  v9 = url;
  v13.receiver = self;
  v13.super_class = NFCVASCommandConfiguration;
  v10 = [(NFCVASCommandConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NFCVASCommandConfiguration *)v10 setMode:mode];
    [(NFCVASCommandConfiguration *)v11 setPassTypeIdentifier:v8];
    [(NFCVASCommandConfiguration *)v11 setUrl:v9];
  }

  return v11;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{Mode=%ld, passId=%@, url=%@}", self->_mode, self->_passTypeIdentifier, self->_url];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end