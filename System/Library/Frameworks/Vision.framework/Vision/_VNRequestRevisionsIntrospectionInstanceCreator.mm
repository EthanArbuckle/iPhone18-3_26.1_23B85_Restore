@interface _VNRequestRevisionsIntrospectionInstanceCreator
- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)a3 withCompletionHandler:(id)a4 revision:(unint64_t)a5 error:(id *)a6;
@end

@implementation _VNRequestRevisionsIntrospectionInstanceCreator

- (id)_newVNTargetedImageRequestInstanceOfClass:(Class)a3 withCompletionHandler:(id)a4 revision:(unint64_t)a5 error:(id *)a6
{
  v6 = [a3 alloc];
  v7 = [MEMORY[0x1E695F658] blackImage];
  v8 = [v6 initWithTargetedCIImage:v7 options:MEMORY[0x1E695E0F8]];

  return v8;
}

@end