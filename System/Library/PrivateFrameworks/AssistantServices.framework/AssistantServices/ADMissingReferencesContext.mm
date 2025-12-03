@interface ADMissingReferencesContext
- (ADMissingReferencesContext)initWithMissingReferences:(id)references forRequestId:(id)id;
@end

@implementation ADMissingReferencesContext

- (ADMissingReferencesContext)initWithMissingReferences:(id)references forRequestId:(id)id
{
  referencesCopy = references;
  idCopy = id;
  v16.receiver = self;
  v16.super_class = ADMissingReferencesContext;
  v8 = [(ADMissingReferencesContext *)&v16 init];
  if (v8)
  {
    v9 = [referencesCopy copy];
    missingReferences = v8->_missingReferences;
    v8->_missingReferences = v9;

    v11 = [idCopy copy];
    requestId = v8->_requestId;
    v8->_requestId = v11;

    v13 = objc_alloc_init(NSMutableSet);
    mutableResolvedIds = v8->_mutableResolvedIds;
    v8->_mutableResolvedIds = v13;
  }

  return v8;
}

@end