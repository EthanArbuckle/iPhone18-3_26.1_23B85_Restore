@interface PHPropertyFetchingHelper
+ (id)fetchPropertiesForObjectIDs:(id)a3 propertyNamesByEntityName:(id)a4 photoLibrary:(id)a5;
- (BOOL)evaluateQuery:(id)a3 withObjectID:(id)a4 outMissingPropertyNames:(id *)a5;
- (PHPropertyFetchingHelper)init;
- (PHPropertyFetchingHelper)initWithObjectIDs:(id)a3 propertyNamesByEntityName:(id)a4 photoLibrary:(id)a5;
@end

@implementation PHPropertyFetchingHelper

- (BOOL)evaluateQuery:(id)a3 withObjectID:(id)a4 outMissingPropertyNames:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PHPropertyFetchingHelper *)self fetchedPropertiesForObjectID:v9];
  if (v10)
  {
    os_unfair_lock_lock(&self->_lock);
    [(_PHDictionaryKeyValueWrapper *)self->_lock_dictionaryWrapper setObjectID:v9 dictionary:v10];
    v11 = [v8 evaluateWithObject:self->_lock_dictionaryWrapper];
    v12 = [(_PHDictionaryKeyValueWrapper *)self->_lock_dictionaryWrapper missingPropertyNames];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    fetchedPropertyNamesByEntityName = self->_fetchedPropertyNamesByEntityName;
    v14 = [v9 entity];
    v15 = [v14 name];
    v12 = [(NSDictionary *)fetchedPropertyNamesByEntityName objectForKeyedSubscript:v15];

    v11 = 0;
  }

  v16 = v12;
  *a5 = v12;

  return v11;
}

- (PHPropertyFetchingHelper)init
{
  v2 = self;
  v3 = PLMethodNotImplementedException();
  objc_exception_throw(v3);
}

- (PHPropertyFetchingHelper)initWithObjectIDs:(id)a3 propertyNamesByEntityName:(id)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PHPropertyFetchingHelper;
  v11 = [(PHPropertyFetchingHelper *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, a5);
    v13 = [v9 copy];
    fetchedPropertyNamesByEntityName = v12->_fetchedPropertyNamesByEntityName;
    v12->_fetchedPropertyNamesByEntityName = v13;

    v15 = [v10 fetchPropertiesByOID:v8 propertyNamesByEntityName:v9];
    propertyValuesByOID = v12->_propertyValuesByOID;
    v12->_propertyValuesByOID = v15;

    v12->_lock._os_unfair_lock_opaque = 0;
    v17 = [[_PHDictionaryKeyValueWrapper alloc] initWithFetchedPropertyNamesByEntityName:v9];
    lock_dictionaryWrapper = v12->_lock_dictionaryWrapper;
    v12->_lock_dictionaryWrapper = v17;
  }

  return v12;
}

+ (id)fetchPropertiesForObjectIDs:(id)a3 propertyNamesByEntityName:(id)a4 photoLibrary:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PHPropertyFetchingHelper alloc] initWithObjectIDs:v9 propertyNamesByEntityName:v8 photoLibrary:v7];

  return v10;
}

@end