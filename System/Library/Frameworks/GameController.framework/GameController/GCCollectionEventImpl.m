@interface GCCollectionEventImpl
@end

@implementation GCCollectionEventImpl

void __37___GCCollectionEventImpl_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 appendFormat:@"\t%#010llx -> %@\n", objc_msgSend(a2, "unsignedLongLongValue"), v5];
}

@end