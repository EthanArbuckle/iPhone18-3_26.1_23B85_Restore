@interface NSBundle(SafariServicesExtras)
+ (id)_sf_safariServicesBundle;
@end

@implementation NSBundle(SafariServicesExtras)

+ (id)_sf_safariServicesBundle
{
  if (_sf_safariServicesBundle_onceToken != -1)
  {
    +[NSBundle(SafariServicesExtras) _sf_safariServicesBundle];
  }

  v1 = _sf_safariServicesBundle_bundle;

  return v1;
}

@end