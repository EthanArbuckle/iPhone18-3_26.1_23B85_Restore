@interface AAOBModelHelper
+ (id)contactInfoForHandle:(id)handle;
@end

@implementation AAOBModelHelper

+ (id)contactInfoForHandle:(id)handle
{
  handleCopy = handle;
  v4 = objc_alloc_init(AAContactsManager);
  v5 = [(AAContactsManager *)v4 contactForHandle:handleCopy];
  v6 = [[AALocalContactInfo alloc] initWithHandle:handleCopy contact:v5];

  return v6;
}

@end