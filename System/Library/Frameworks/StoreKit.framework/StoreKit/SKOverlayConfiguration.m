@interface SKOverlayConfiguration
- (SKOverlayConfiguration)initWithBacking:(id)a3;
- (id)_init;
@end

@implementation SKOverlayConfiguration

- (SKOverlayConfiguration)initWithBacking:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKOverlayConfiguration;
  v6 = [(SKOverlayConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__backing, a3);
  }

  return v7;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SKOverlayConfiguration;
  return [(SKOverlayConfiguration *)&v3 init];
}

@end