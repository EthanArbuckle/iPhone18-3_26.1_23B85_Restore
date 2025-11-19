@interface LSApplicationProxiesOfTypeQuery
@end

@implementation LSApplicationProxiesOfTypeQuery

uint64_t __70___LSApplicationProxiesOfTypeQuery__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a4 + 352);
  [(_LSDatabase *)v6 store];
  v8 = _CSStringCopyCFString();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 isEqual:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end