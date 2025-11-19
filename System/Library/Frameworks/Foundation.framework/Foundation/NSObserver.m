@interface NSObserver
@end

@implementation NSObserver

CFMutableSetRef __35____NSObserver_observerWithCenter___block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  memset(&v1, 0, sizeof(v1));
  *&v1.retain = *(MEMORY[0x1E695E9F8] + 8);
  result = CFSetCreateMutable(*MEMORY[0x1E695E4A8], 0, &v1);
  qword_1ED43F2D0 = result;
  return result;
}

@end