@interface NSStoreMapNode
- (BOOL)isEqual:(id)equal;
- (NSStoreMapNode)initWithCoder:(id)coder;
- (NSStoreMapNode)initWithObjectID:(id)d;
- (void)_setMap:(uint64_t)map;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSStoreMapNode

- (NSStoreMapNode)initWithObjectID:(id)d
{
  v6.receiver = self;
  v6.super_class = NSStoreMapNode;
  v4 = [(NSStoreMapNode *)&v6 init];
  if (v4)
  {
    v4->_objectID = d;
    v4->_relatedNodes = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    v4->_map = 0;
    v4->_version = 1;
  }

  return v4;
}

- (NSStoreMapNode)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = NSStoreMapNode;
  v4 = [(NSStoreMapNode *)&v9 init];
  v4->_version = 1;
  v5 = [coder decodeInt64ForKey:@"NSPrimaryKey64"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v5];
  }

  else
  {
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSKey"];
  }

  v4->_objectID = v6;
  if (!v6)
  {
    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, &unk_1EF435710)}];
  }

  v7 = [coder decodeObjectOfClasses:+[_PFRoutines attributeClassesForSecureCoding]() forKey:@"NSRelatedNodes"];
  v4->_relatedNodes = v7;
  if (!v7)
  {
    v4->_relatedNodes = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4->_entityName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSEntityName"];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  _referenceData = [(NSManagedObjectID *)self->_objectID _referenceData];
  if ([_referenceData isNSNumber])
  {
    [coder encodeInt64:objc_msgSend(_referenceData forKey:{"unsignedLongLongValue"), @"NSPrimaryKey64"}];
  }

  else
  {
    [coder encodeObject:_referenceData forKey:@"NSKey"];
  }

  [coder encodeObject:-[NSEntityDescription name](-[NSManagedObjectID entity](self->_objectID forKey:{"entity"), "name"), @"NSEntityName"}];
  if ([(NSMutableDictionary *)self->_relatedNodes count])
  {
    relatedNodes = self->_relatedNodes;

    [coder encodeObject:relatedNodes forKey:@"NSRelatedNodes"];
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

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || ![-[NSStoreMapNode objectID](self "objectID")])
  {
    return 0;
  }

  if (!self)
  {
    relatedNodes = 0;
    if (equal)
    {
      goto LABEL_5;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_6;
  }

  relatedNodes = self->_relatedNodes;
  if (!equal)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = *(equal + 3);
LABEL_6:

  return [(NSMutableDictionary *)relatedNodes isEqual:v7];
}

- (void)_setMap:(uint64_t)map
{
  if (map)
  {
    *(map + 8) = a2;
    if (*(map + 32))
    {
      if (a2)
      {
        v3 = *(a2 + 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = *(map + 16);
      v5 = [objc_msgSend(v3 "_persistentStoreCoordinator")];
      v6 = v5;
      if (!v5 || (v7 = [*(v5 + 32) objectForKey:*(map + 32)]) == 0)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find entity %@ in model %@", *(map + 32), v6];

        *(map + 32) = 0;
        v9 = [_NSCoreDataException exceptionWithName:134020 code:v8 reason:0 userInfo:?];
        objc_exception_throw(v9);
      }

      *(map + 16) = [objc_alloc(objc_msgSend(v3 objectIDFactoryForEntity:{v7)), "initWithObject:", v4}];

      *(map + 32) = 0;
    }
  }
}

@end