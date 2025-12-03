@interface AKAppleIDAuthenticationUISurrogateContext
- (AKAppleIDAuthenticationUISurrogateContext)initWithSurrogateID:(id)d;
@end

@implementation AKAppleIDAuthenticationUISurrogateContext

- (AKAppleIDAuthenticationUISurrogateContext)initWithSurrogateID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v5 = selfCopy;
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v3 initWithUUIDString:location[0]];
  selfCopy = 0;
  selfCopy = [(AKAppleIDAuthenticationUISurrogateContext *)v5 _initWithIdentifier:?];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end