@interface AKAppleIDAuthenticationUISurrogateContext
- (AKAppleIDAuthenticationUISurrogateContext)initWithSurrogateID:(id)a3;
@end

@implementation AKAppleIDAuthenticationUISurrogateContext

- (AKAppleIDAuthenticationUISurrogateContext)initWithSurrogateID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v3 initWithUUIDString:location[0]];
  v9 = 0;
  v9 = [(AKAppleIDAuthenticationUISurrogateContext *)v5 _initWithIdentifier:?];
  v7 = MEMORY[0x277D82BE0](v9);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

@end