@interface NSItemProvider
@end

@implementation NSItemProvider

uint64_t __93__NSItemProvider_UTType__loadFileRepresentationForContentType_openInPlace_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, a3);
  }

  return result;
}

@end