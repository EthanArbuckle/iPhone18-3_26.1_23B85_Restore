@interface CRLMPSImageConversionStorage
- (CRLMPSImageConversionStorage)init;
- (void)removeAllObjects;
@end

@implementation CRLMPSImageConversionStorage

- (CRLMPSImageConversionStorage)init
{
  v6.receiver = self;
  v6.super_class = CRLMPSImageConversionStorage;
  v2 = [(CRLMPSImageConversionStorage *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (void)removeAllObjects
{
  v2 = [(CRLMPSImageConversionStorage *)self storage];
  [v2 removeAllObjects];
}

@end