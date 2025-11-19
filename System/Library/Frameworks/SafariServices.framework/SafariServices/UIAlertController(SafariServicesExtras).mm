@interface UIAlertController(SafariServicesExtras)
+ (id)alertControllerWithTitle:()SafariServicesExtras message:imageNamed:preferredStyle:;
@end

@implementation UIAlertController(SafariServicesExtras)

+ (id)alertControllerWithTitle:()SafariServicesExtras message:imageNamed:preferredStyle:
{
  v9 = MEMORY[0x1E69DC650];
  v10 = a5;
  v11 = [v9 alertControllerWithTitle:a3 message:a4 preferredStyle:a6];
  [v11 setImageIfNecessaryWithName:v10];

  return v11;
}

@end