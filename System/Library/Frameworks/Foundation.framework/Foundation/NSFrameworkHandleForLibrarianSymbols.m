@interface NSFrameworkHandleForLibrarianSymbols
@end

@implementation NSFrameworkHandleForLibrarianSymbols

void *___NSFrameworkHandleForLibrarianSymbols_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 256);
  qword_1ED43F300 = result;
  return result;
}

@end