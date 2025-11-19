@interface UIAlertController
+ (id)controllerForDeletingStation:(id)a3 fromLibrary:(id)a4 deletionCompletion:(id)a5;
@end

@implementation UIAlertController

+ (id)controllerForDeletingStation:(id)a3 fromLibrary:(id)a4 deletionCompletion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = a4;
  v11 = sub_100226384(v9, v10, sub_10019C604, v8);

  return v11;
}

@end