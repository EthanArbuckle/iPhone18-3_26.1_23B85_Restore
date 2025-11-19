@interface _PFSQLiteSnapshotWrapper
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)mutableCopy;
- (uint64_t)data;
- (unint64_t)hash;
- (void)dealloc;
- (void)initWithData:(void *)a1;
@end

@implementation _PFSQLiteSnapshotWrapper

- (unint64_t)hash
{
  result = self->_s->hidden;
  if (result)
  {
    return MEMORY[0x1EEDB7080]();
  }

  return result;
}

- (void)dealloc
{
  if (self->_flags)
  {
    sqlite3_snapshot_free(self->_s);
  }

  else
  {
    v3 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v3 = malloc_default_zone();
    }

    malloc_zone_free(v3, self->_s);
  }

  self->_s = 0;
  v4.receiver = self;
  v4.super_class = _PFSQLiteSnapshotWrapper;
  [(_PFSQLiteSnapshotWrapper *)&v4 dealloc];
}

- (void)initWithData:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = _PFSQLiteSnapshotWrapper;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if (v3)
  {
    v4 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v4 = malloc_default_zone();
    }

    v5 = malloc_type_zone_calloc(v4, 1uLL, 0x30uLL, 0x1000040EED21634uLL);
    v3[1] = v5;
    [a2 getBytes:v5 length:48];
    *(v3 + 5) = 0;
  }

  return v3;
}

- (id)mutableCopy
{
  v3 = objc_alloc(objc_opt_class());
  if (self)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_s length:48];
  }

  else
  {
    v4 = 0;
  }

  return [(_PFSQLiteSnapshotWrapper *)v3 initWithData:v4];
}

- (uint64_t)data
{
  if (result)
  {
    return [MEMORY[0x1E695DEF0] dataWithBytes:*(result + 8) length:48];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [(_PFSQLiteSnapshotWrapper *)self compare:a3]== 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  ClassName = object_getClassName(v4);
  if (self)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_s length:48];
  }

  else
  {
    v6 = 0;
  }

  return [v3 stringWithFormat:@"%s (%p) : %@", ClassName, self, v6];
}

@end