@interface NSBatchInsertRequestEncodingToken
- (NSBatchInsertRequestEncodingToken)initWithCoder:(id)coder;
- (id)initForRequest:(id)request;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSBatchInsertRequestEncodingToken

- (id)initForRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = NSBatchInsertRequestEncodingToken;
  v4 = [(NSBatchInsertRequestEncodingToken *)&v6 init];
  if (v4)
  {
    v4->_entityName = [objc_msgSend(request "entityName")];
    v4->_objectsToInsert = [objc_msgSend(request "objectsToInsert")];
    v4->_resultType = [request resultType];
    v4->_secure = [request _secureOperation];
  }

  return v4;
}

- (void)dealloc
{
  self->_entityName = 0;

  self->_objectsToInsert = 0;
  self->_inputStream = 0;
  v3.receiver = self;
  v3.super_class = NSBatchInsertRequestEncodingToken;
  [(NSBatchInsertRequestEncodingToken *)&v3 dealloc];
}

- (NSBatchInsertRequestEncodingToken)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NSBatchInsertRequestEncodingToken;
  v4 = [(NSBatchInsertRequestEncodingToken *)&v7 init];
  if (v4)
  {
    v4->_entityName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
    v5 = +[_NSXPCStoreUtilities classesForSaveArchive];
    if ([objc_msgSend(coder "allowedClasses")])
    {
      v5 = [v5 setByAddingObjectsFromSet:{objc_msgSend(coder, "allowedClasses")}];
    }

    v4->_objectsToInsert = [coder decodeObjectOfClasses:v5 forKey:@"objectsToInsert"];
    v4->_inputStream = [coder decodeObjectOfClass:objc_opt_class() forKey:@"inputStream"];
    v4->_resultType = [coder decodeIntegerForKey:@"resultType"];
    v4->_secure = [coder decodeBoolForKey:@"secure"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_entityName forKey:@"entityName"];
  [coder encodeObject:self->_objectsToInsert forKey:@"objectsToInsert"];
  [coder encodeObject:self->_inputStream forKey:@"inputStream"];
  [coder encodeInteger:self->_resultType forKey:@"resultType"];
  secure = self->_secure;

  [coder encodeBool:secure forKey:@"secure"];
}

@end