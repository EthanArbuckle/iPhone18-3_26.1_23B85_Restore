@interface UIImage(ASImageExtras)
+ (id)as_imageNamed:()ASImageExtras;
@end

@implementation UIImage(ASImageExtras)

+ (id)as_imageNamed:()ASImageExtras
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  as_authenticationServicesBundle = [v4 as_authenticationServicesBundle];
  v7 = [v3 imageNamed:v5 inBundle:as_authenticationServicesBundle withConfiguration:0];

  return v7;
}

@end