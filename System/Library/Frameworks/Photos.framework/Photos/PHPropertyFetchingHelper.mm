@interface PHPropertyFetchingHelper
+ (id)fetchPropertiesForObjectIDs:(id)ds propertyNamesByEntityName:(id)name photoLibrary:(id)library;
- (BOOL)evaluateQuery:(id)query withObjectID:(id)d outMissingPropertyNames:(id *)names;
- (PHPropertyFetchingHelper)init;
- (PHPropertyFetchingHelper)initWithObjectIDs:(id)ds propertyNamesByEntityName:(id)name photoLibrary:(id)library;
@end

@implementation PHPropertyFetchingHelper

- (BOOL)evaluateQuery:(id)query withObjectID:(id)d outMissingPropertyNames:(id *)names
{
  queryCopy = query;
  dCopy = d;
  v10 = [(PHPropertyFetchingHelper *)self fetchedPropertiesForObjectID:dCopy];
  if (v10)
  {
    os_unfair_lock_lock(&self->_lock);
    [(_PHDictionaryKeyValueWrapper *)self->_lock_dictionaryWrapper setObjectID:dCopy dictionary:v10];
    v11 = [queryCopy evaluateWithObject:self->_lock_dictionaryWrapper];
    missingPropertyNames = [(_PHDictionaryKeyValueWrapper *)self->_lock_dictionaryWrapper missingPropertyNames];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    fetchedPropertyNamesByEntityName = self->_fetchedPropertyNamesByEntityName;
    entity = [dCopy entity];
    name = [entity name];
    missingPropertyNames = [(NSDictionary *)fetchedPropertyNamesByEntityName objectForKeyedSubscript:name];

    v11 = 0;
  }

  v16 = missingPropertyNames;
  *names = missingPropertyNames;

  return v11;
}

- (PHPropertyFetchingHelper)init
{
  selfCopy = self;
  v3 = PLMethodNotImplementedException();
  objc_exception_throw(v3);
}

- (PHPropertyFetchingHelper)initWithObjectIDs:(id)ds propertyNamesByEntityName:(id)name photoLibrary:(id)library
{
  dsCopy = ds;
  nameCopy = name;
  libraryCopy = library;
  v20.receiver = self;
  v20.super_class = PHPropertyFetchingHelper;
  v11 = [(PHPropertyFetchingHelper *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, library);
    v13 = [nameCopy copy];
    fetchedPropertyNamesByEntityName = v12->_fetchedPropertyNamesByEntityName;
    v12->_fetchedPropertyNamesByEntityName = v13;

    v15 = [libraryCopy fetchPropertiesByOID:dsCopy propertyNamesByEntityName:nameCopy];
    propertyValuesByOID = v12->_propertyValuesByOID;
    v12->_propertyValuesByOID = v15;

    v12->_lock._os_unfair_lock_opaque = 0;
    v17 = [[_PHDictionaryKeyValueWrapper alloc] initWithFetchedPropertyNamesByEntityName:nameCopy];
    lock_dictionaryWrapper = v12->_lock_dictionaryWrapper;
    v12->_lock_dictionaryWrapper = v17;
  }

  return v12;
}

+ (id)fetchPropertiesForObjectIDs:(id)ds propertyNamesByEntityName:(id)name photoLibrary:(id)library
{
  libraryCopy = library;
  nameCopy = name;
  dsCopy = ds;
  v10 = [[PHPropertyFetchingHelper alloc] initWithObjectIDs:dsCopy propertyNamesByEntityName:nameCopy photoLibrary:libraryCopy];

  return v10;
}

@end