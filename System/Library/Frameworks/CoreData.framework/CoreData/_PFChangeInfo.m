@interface _PFChangeInfo
- (BOOL)isEqual:(id)a3;
- (_PFChangeInfo)initWithObject:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _PFChangeInfo

- (unint64_t)hash
{
  v2 = [(NSManagedObject *)[(_PFChangeInfo *)self object] objectID];

  return [(NSManagedObjectID *)v2 hash];
}

- (void)dealloc
{
  self->_startIndexPath = 0;

  self->_finalIndexPath = 0;
  self->_startSectionInfo = 0;

  self->_finalSectionInfo = 0;
  self->_object = 0;
  v3.receiver = self;
  v3.super_class = _PFChangeInfo;
  [(_PFChangeInfo *)&v3 dealloc];
}

- (_PFChangeInfo)initWithObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = _PFChangeInfo;
  v4 = [(_PFChangeInfo *)&v6 init];
  if (v4)
  {
    v4->_object = a3;
    v4->_changeType = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSManagedObject *)[(_PFChangeInfo *)self object] objectID];
  v6 = [objc_msgSend(a3 "object")];

  return [(NSManagedObjectID *)v5 isEqual:v6];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = self->_changeType - 1;
  if (v4 > 3)
  {
    v5 = @"Unset";
  }

  else
  {
    v5 = off_1E6EC5910[v4];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  object = self->_object;
  if (self->_startIndexPath)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@", startIndex: %@", self->_startIndexPath];
  }

  else
  {
    v10 = &stru_1EF3F1768;
  }

  if (self->_finalIndexPath)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@", finalIndex: %@", self->_finalIndexPath];
  }

  else
  {
    v11 = &stru_1EF3F1768;
  }

  v12 = [v6 stringWithFormat:@"<%@: %p> { object: %p, type: %@%@%@ }", v8, self, object, v5, v10, v11];
  objc_autoreleasePoolPop(v3);

  return v12;
}

@end