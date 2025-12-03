@interface _MKPinAnnotationViewImageCache
- (_MKPinAnnotationViewImageCache)init;
- (id).cxx_construct;
- (id)pinsWithMapType:(unint64_t)type pinColor:(id)color traits:(id)traits;
- (void)flush;
- (void)setPins:(id)pins forMapType:(unint64_t)type pinColor:(id)color traits:(id)traits;
@end

@implementation _MKPinAnnotationViewImageCache

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 9) = self + 72;
  *(self + 10) = self + 72;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = 0;
  *(self + 32) = 1065353216;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 21) = 850045863;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 28) = 0;
  *(self + 29) = self + 232;
  *(self + 30) = self + 232;
  *(self + 35) = 0;
  *(self + 72) = 1065353216;
  *(self + 37) = 64;
  *(self + 38) = 0x200000;
  *(self + 248) = 0u;
  *(self + 264) = 0u;
  return self;
}

- (void)flush
{
  std::mutex::lock((self + 168));
  std::__list_imp<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>>::clear(self + 29);
  if (*(self + 35))
  {
    std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__deallocate_node(*(self + 34));
    *(self + 34) = 0;
    v3 = *(self + 33);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(self + 32) + 8 * i) = 0;
      }
    }

    *(self + 35) = 0;
  }

  *(self + 39) = 0;
  *(self + 40) = 0;
  std::mutex::unlock((self + 168));
  std::mutex::lock((self + 8));
  std::__list_imp<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>>::clear(self + 9);
  if (*(self + 15))
  {
    std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__deallocate_node(*(self + 14));
    *(self + 14) = 0;
    v5 = *(self + 13);
    if (v5)
    {
      for (j = 0; j != v5; ++j)
      {
        *(*(self + 12) + 8 * j) = 0;
      }
    }

    *(self + 15) = 0;
  }

  *(self + 19) = 0;
  *(self + 20) = 0;

  std::mutex::unlock((self + 8));
}

- (void)setPins:(id)pins forMapType:(unint64_t)type pinColor:(id)color traits:(id)traits
{
  v32[3] = *MEMORY[0x1E69E9840];
  pinsCopy = pins;
  colorCopy = color;
  traitsCopy = traits;
  v13 = [[_MKPinAnnotationViewImageCacheKey alloc] initWithMapType:type pinColor:colorCopy traits:traitsCopy];
  geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v32, v13);
  v14 = pinsCopy;
  v30 = &unk_1F15B2100;
  v31 = v14;
  std::mutex::lock((self + 168));
  v15 = std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::find<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>( self + 32,  v32);
  if (!v15)
  {
    operator new();
  }

  v16 = v15[5];
  *(self + 39) -= v16[6];
  GEOMachAbsoluteTimeGetCurrent();
  v16[5] = v17;
  geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=((v16 + 7), v31);
  v16[6] = 0;
  v18 = *(self + 30);
  if (v16 != v18)
  {
    v19 = v16[1];
    if (v19 != v18)
    {
      v20 = *v16;
      *(v20 + 8) = v19;
      *v19 = v20;
      v21 = *v18;
      *(v21 + 8) = v16;
      *v16 = v21;
      *v18 = v16;
      v16[1] = v18;
      v18 = *(self + 30);
    }
  }

  v29 = v32;
  std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__emplace_unique_key_args<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::piecewise_construct_t const&,std::tuple<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&>,std::tuple<>>( self + 32,  v32)[5] = v18;
  std::mutex::unlock((self + 168));
  v30 = &unk_1F15B2100;

  objc_initWeak(&v29, v14);
  std::mutex::lock((self + 8));
  v22 = std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::find<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>( self + 12,  v32);
  if (!v22)
  {
    operator new();
  }

  v23 = v22[5];
  *(self + 19) -= v23[6];
  GEOMachAbsoluteTimeGetCurrent();
  v23[5] = v24;
  geo::_geo_weak_ptr<NSDictionary * {__strong}>::operator=(v23 + 7, &v29);
  v23[6] = 0;
  v25 = *(self + 10);
  if (v23 != v25)
  {
    v26 = v23[1];
    if (v26 != v25)
    {
      v27 = *v23;
      *(v27 + 8) = v26;
      *v26 = v27;
      v28 = *v25;
      *(v28 + 8) = v23;
      *v23 = v28;
      *v25 = v23;
      v23[1] = v25;
      v25 = *(self + 10);
    }
  }

  v30 = v32;
  std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__emplace_unique_key_args<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::piecewise_construct_t const&,std::tuple<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&>,std::tuple<>>( self + 12,  v32)[5] = v25;
  std::mutex::unlock((self + 8));
  objc_storeWeak(&v29, 0);
  objc_destroyWeak(&v29);
  v32[0] = &unk_1F15B20D0;
}

- (id)pinsWithMapType:(unint64_t)type pinColor:(id)color traits:(id)traits
{
  v28[3] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  traitsCopy = traits;
  v10 = [[_MKPinAnnotationViewImageCacheKey alloc] initWithMapType:type pinColor:colorCopy traits:traitsCopy];
  geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v28, v10);
  std::mutex::lock((self + 168));
  v11 = std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::find<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>( self + 32,  v28);
  if (v11)
  {
    v12 = v11[5];
    v13 = *(self + 30);
    if (v12 != v13)
    {
      v14 = v12[1];
      if (v14 != v13)
      {
        v15 = *v12;
        *(v15 + 8) = v14;
        *v14 = v15;
        v16 = *v13;
        *(v16 + 8) = v12;
        *v12 = v16;
        *v13 = v12;
        v12[1] = v13;
        v13 = *(self + 30);
      }
    }

    to = &unk_1F15B2100;
    v27 = 0;
    v27 = *(v13 + 64);
  }

  else
  {
    to = &unk_1F15B2100;
    v27 = 0;
  }

  std::mutex::unlock((self + 168));
  v17 = v27;
  to = &unk_1F15B2100;

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    std::mutex::lock((self + 8));
    v19 = std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::find<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>( self + 12,  v28);
    if (v19)
    {
      v20 = v19[5];
      v21 = *(self + 10);
      if (v20 != v21)
      {
        v22 = v20[1];
        if (v22 != v21)
        {
          v23 = *v20;
          *(v23 + 8) = v22;
          *v22 = v23;
          v24 = *v21;
          *(v24 + 8) = v20;
          *v20 = v24;
          *v21 = v20;
          v20[1] = v21;
          v21 = *(self + 10);
        }
      }

      objc_copyWeak(&to, (v21 + 56));
    }

    else
    {
      to = 0;
    }

    std::mutex::unlock((self + 8));
    v18 = objc_loadWeakRetained(&to);
    objc_storeWeak(&to, 0);
    objc_destroyWeak(&to);
  }

  v28[0] = &unk_1F15B20D0;

  return v18;
}

- (_MKPinAnnotationViewImageCache)init
{
  v18.receiver = self;
  v18.super_class = _MKPinAnnotationViewImageCache;
  v2 = [(_MKPinAnnotationViewImageCache *)&v18 init];
  v3 = v2;
  if (v2)
  {
    std::mutex::lock((v2 + 168));
    v4 = 5;
    *(v3 + 37) = 5;
    v5 = v3 + 232;
    v6 = *(v3 + 30);
    if (v6 != v3 + 232)
    {
      do
      {
        if (*(v6 + 8))
        {
          v6 = *(v6 + 1);
        }

        else
        {
          std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__erase_unique<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>( v3 + 32,  (v6 + 16));
          v7 = *v6;
          v8 = *(v6 + 1);
          *(v7 + 8) = v8;
          *v8 = v7;
          --*(v3 + 31);
          std::__destroy_at[abi:ne200100]<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,0>((v6 + 16));
          operator delete(v6);
          v6 = v8;
        }
      }

      while (v6 != v5);
      v4 = *(v3 + 37);
    }

    v9 = *(v3 + 38);
    if (v9)
    {
      v10 = v4 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      while (*(v3 + 31) && (*(v3 + 39) > v9 || *(v3 + 40) > v4))
      {
        v13 = *v5;
        std::__hash_table<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__list_iterator<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__erase_unique<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>( v3 + 32,  *v5 + 16);
        v14 = *(v3 + 40);
        *(v3 + 39) -= *(v13 + 48);
        *(v3 + 40) = v14 - 1;
        v15 = *(v3 + 29);
        v17 = *v15;
        v16 = v15[1];
        *(v17 + 8) = v16;
        *v16 = v17;
        --*(v3 + 31);
        std::__destroy_at[abi:ne200100]<geo::detail::_CacheItem<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},geo::detail::_GEOGenericContainer<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,NSDictionary * {__strong},std::hash<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<_MKPinAnnotationViewImageCacheKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::GEOGenericContainerStrongReferenceTag,64ul,2097152ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,0>((v15 + 2));
        operator delete(v15);
      }
    }

    std::mutex::unlock((v3 + 168));
    v11 = v3;
  }

  return v3;
}

@end