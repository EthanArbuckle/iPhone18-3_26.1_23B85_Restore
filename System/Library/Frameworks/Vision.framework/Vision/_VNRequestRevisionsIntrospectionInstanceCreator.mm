@interface _VNRequestRevisionsIntrospectionInstanceCreator
- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error;
@end

@implementation _VNRequestRevisionsIntrospectionInstanceCreator

- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)class withCompletionHandler:(id)handler revision:(unint64_t)revision error:(id *)error
{
  v6 = [class alloc];
  blackImage = [MEMORY[0x1E695F658] blackImage];
  v8 = [v6 initWithTargetedCIImage:blackImage options:MEMORY[0x1E695E0F8]];

  return v8;
}

@end