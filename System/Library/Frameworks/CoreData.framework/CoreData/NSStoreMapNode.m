@interface NSStoreMapNode
- (BOOL)isEqual:(id)a3;
- (NSStoreMapNode)initWithCoder:(id)a3;
- (NSStoreMapNode)initWithObjectID:(id)a3;
- (void)_setMap:(uint64_t)a1;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSStoreMapNode

- (NSStoreMapNode)initWithObjectID:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSStoreMapNode;
  v4 = [(NSStoreMapNode *)&v6 init];
  if (v4)
  {
    v4->_objectID = a3;
    v4->_relatedNodes = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    v4->_map = 0;
    v4->_version = 1;
  }

  return v4;
}

- (NSStoreMapNode)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = NSStoreMapNode;
  v4 = [(NSStoreMapNode *)&v9 init];
  v4->_version = 1;
  v5 = [a3 decodeInt64ForKey:@"NSPrimaryKey64"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v5];
  }

  else
  {
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSKey"];
  }

  v4->_objectID = v6;
  if (!v6)
  {
    [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, &unk_1EF435710)}];
  }

  v7 = [a3 decodeObjectOfClasses:+[_PFRoutines attributeClassesForSecureCoding]() forKey:@"NSRelatedNodes"];
  v4->_relatedNodes = v7;
  if (!v7)
  {
    v4->_relatedNodes = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4->_entityName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSEntityName"];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSManagedObjectID *)self->_objectID _referenceData];
  if ([v5 isNSNumber])
  {
    [a3 encodeInt64:objc_msgSend(v5 forKey:{"unsignedLongLongValue"), @"NSPrimaryKey64"}];
  }

  else
  {
    [a3 encodeObject:v5 forKey:@"NSKey"];
  }

  [a3 encodeObject:-[NSEntityDescription name](-[NSManagedObjectID entity](self->_objectID forKey:{"entity"), "name"), @"NSEntityName"}];
  if ([(NSMutableDictionary *)self->_relatedNodes count])
  {
    relatedNodes = self->_relatedNodes;

    [a3 encodeObject:relatedNodes forKey:@"NSRelatedNodes"];
  }
}

- (void)dealloc
{
  self->_objectID = 0;
  self->_relatedNodes = 0;

  self->_entityName = 0;
  self->_map = 0;
  v3.receiver = self;
  v3.super_class = NSStoreMapNode;
  [(NSStoreMapNode *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || ![-[NSStoreMapNode objectID](self "objectID")])
  {
    return 0;
  }

  if (!self)
  {
    relatedNodes = 0;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_6;
  }

  relatedNodes = self->_relatedNodes;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = *(a3 + 3);
LABEL_6:

  return [(NSMutableDictionary *)relatedNodes isEqual:v7];
}

- (void)_setMap:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 8) = a2;
    if (*(a1 + 32))
    {
      if (a2)
      {
        v3 = *(a2 + 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = *(a1 + 16);
      v5 = [objc_msgSend(v3 "_persistentStoreCoordinator")];
      v6 = v5;
      if (!v5 || (v7 = [*(v5 + 32) objectForKey:*(a1 + 32)]) == 0)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find entity %@ in model %@", *(a1 + 32), v6];

        *(a1 + 32) = 0;
        v9 = [_NSCoreDataException exceptionWithName:134020 code:v8 reason:0 userInfo:?];
        objc_exception_throw(v9);
      }

      *(a1 + 16) = [objc_alloc(objc_msgSend(v3 objectIDFactoryForEntity:{v7)), "initWithObject:", v4}];

      *(a1 + 32) = 0;
    }
  }
}

@end