@interface NSBatchInsertRequestEncodingToken
- (NSBatchInsertRequestEncodingToken)initWithCoder:(id)a3;
- (id)initForRequest:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSBatchInsertRequestEncodingToken

- (id)initForRequest:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSBatchInsertRequestEncodingToken;
  v4 = [(NSBatchInsertRequestEncodingToken *)&v6 init];
  if (v4)
  {
    v4->_entityName = [objc_msgSend(a3 "entityName")];
    v4->_objectsToInsert = [objc_msgSend(a3 "objectsToInsert")];
    v4->_resultType = [a3 resultType];
    v4->_secure = [a3 _secureOperation];
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

- (NSBatchInsertRequestEncodingToken)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSBatchInsertRequestEncodingToken;
  v4 = [(NSBatchInsertRequestEncodingToken *)&v7 init];
  if (v4)
  {
    v4->_entityName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
    v5 = +[_NSXPCStoreUtilities classesForSaveArchive];
    if ([objc_msgSend(a3 "allowedClasses")])
    {
      v5 = [v5 setByAddingObjectsFromSet:{objc_msgSend(a3, "allowedClasses")}];
    }

    v4->_objectsToInsert = [a3 decodeObjectOfClasses:v5 forKey:@"objectsToInsert"];
    v4->_inputStream = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"inputStream"];
    v4->_resultType = [a3 decodeIntegerForKey:@"resultType"];
    v4->_secure = [a3 decodeBoolForKey:@"secure"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_entityName forKey:@"entityName"];
  [a3 encodeObject:self->_objectsToInsert forKey:@"objectsToInsert"];
  [a3 encodeObject:self->_inputStream forKey:@"inputStream"];
  [a3 encodeInteger:self->_resultType forKey:@"resultType"];
  secure = self->_secure;

  [a3 encodeBool:secure forKey:@"secure"];
}

@end