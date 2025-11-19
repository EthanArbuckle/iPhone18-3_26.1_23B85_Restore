@interface ADMissingReferencesContext
- (ADMissingReferencesContext)initWithMissingReferences:(id)a3 forRequestId:(id)a4;
@end

@implementation ADMissingReferencesContext

- (ADMissingReferencesContext)initWithMissingReferences:(id)a3 forRequestId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = ADMissingReferencesContext;
  v8 = [(ADMissingReferencesContext *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    missingReferences = v8->_missingReferences;
    v8->_missingReferences = v9;

    v11 = [v7 copy];
    requestId = v8->_requestId;
    v8->_requestId = v11;

    v13 = objc_alloc_init(NSMutableSet);
    mutableResolvedIds = v8->_mutableResolvedIds;
    v8->_mutableResolvedIds = v13;
  }

  return v8;
}

@end