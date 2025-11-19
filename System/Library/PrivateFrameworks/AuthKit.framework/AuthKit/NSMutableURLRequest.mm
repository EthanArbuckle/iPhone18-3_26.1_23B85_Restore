@interface NSMutableURLRequest
@end

@implementation NSMutableURLRequest

void __64__NSMutableURLRequest_AuthKit__ak_addProxiedAttestationHeaders___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setValue:v5 forHTTPHeaderField:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end