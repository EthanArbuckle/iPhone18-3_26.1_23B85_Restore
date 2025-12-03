@interface UIAlertController
+ (id)controllerForDeletingStation:(id)station fromLibrary:(id)library deletionCompletion:(id)completion;
@end

@implementation UIAlertController

+ (id)controllerForDeletingStation:(id)station fromLibrary:(id)library deletionCompletion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  stationCopy = station;
  libraryCopy = library;
  v11 = sub_100226384(stationCopy, libraryCopy, sub_10019C604, v8);

  return v11;
}

@end