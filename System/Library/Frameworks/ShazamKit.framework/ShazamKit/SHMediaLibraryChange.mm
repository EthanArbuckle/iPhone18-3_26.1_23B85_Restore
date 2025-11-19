@interface SHMediaLibraryChange
- (BOOL)isConflictingChange:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualChange:(id)a3;
- (SHMediaLibraryChange)initWithCoder:(id)a3;
- (id)_initWithLibraryItem:(id)a3 changeType:(int64_t)a4 indexPath:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHMediaLibraryChange

- (id)_initWithLibraryItem:(id)a3 changeType:(int64_t)a4 indexPath:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SHMediaLibraryChange;
  v11 = [(SHMediaLibraryChange *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_libraryItem, a3);
    v12->_changeType = a4;
    objc_storeStrong(&v12->_indexPath, a5);
  }

  return v12;
}

- (BOOL)isConflictingChange:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryChange *)self libraryItem];
  v6 = [v4 libraryItem];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(SHMediaLibraryChange *)self indexPath];

    if (v8)
    {
      v9 = [(SHMediaLibraryChange *)self indexPath];
      v10 = [v4 indexPath];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v14 = 1;
        goto LABEL_11;
      }
    }

    v12 = [(SHMediaLibraryChange *)self changeType];
    if (v12 == 1)
    {
      v13 = 3;
      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v13 = 1;
LABEL_10:
      v14 = [v4 changeType] == v13;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (SHMediaLibraryChange)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SHMediaLibraryChange;
  v5 = [(SHMediaLibraryChange *)&v15 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SHLibraryChangeCodingLibraryItem"];
    libraryItem = v5->_libraryItem;
    v5->_libraryItem = v10;

    v5->_changeType = [v4 decodeIntegerForKey:@"SHLibraryChangeCodingChangeType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryChangeCodingIndexPath"];
    indexPath = v5->_indexPath;
    v5->_indexPath = v12;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeObject:self->_libraryItem forKey:@"SHLibraryChangeCodingLibraryItem"];
  [v5 encodeInteger:self->_changeType forKey:@"SHLibraryChangeCodingChangeType"];
  [v5 encodeObject:self->_indexPath forKey:@"SHLibraryChangeCodingIndexPath"];
  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHMediaLibraryChange allocWithZone:?];
  v6 = [(SHMediaLibraryChange *)self libraryItem];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SHMediaLibraryChange *)self changeType];
  v9 = [(SHMediaLibraryChange *)self indexPath];
  v10 = [v9 copyWithZone:a3];
  v11 = [(SHMediaLibraryChange *)v5 initWithLibraryItem:v7 changeType:v8 indexPath:v10];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SHMediaLibraryChange *)self indexPath];

  v4 = [(SHMediaLibraryChange *)self libraryItem];
  v5 = [v4 identifier];
  v6 = [v5 hash];
  v7 = [(SHMediaLibraryChange *)self changeType]^ v6;
  if (v3)
  {
    v8 = [(SHMediaLibraryChange *)self indexPath];
    v7 ^= [v8 hash];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaLibraryChange *)self isEqualChange:v4];
  }

  return v5;
}

- (BOOL)isEqualChange:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryChange *)self indexPath];

  v6 = [(SHMediaLibraryChange *)self libraryItem];
  v7 = [v4 libraryItem];
  v8 = [v6 isEqual:v7];
  if (!v5)
  {
    if (v8)
    {
      v13 = [(SHMediaLibraryChange *)self changeType];
      v12 = v13 == [v4 changeType];
      goto LABEL_8;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [(SHMediaLibraryChange *)self changeType];
  if (v9 != [v4 changeType])
  {
    goto LABEL_7;
  }

  v10 = [(SHMediaLibraryChange *)self indexPath];
  v11 = [v4 indexPath];
  v12 = [v10 isEqual:v11];

LABEL_8:
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SHMediaLibraryChange *)self changeType];
  v5 = [(SHMediaLibraryChange *)self libraryItem];
  v6 = [v5 identifier];
  v7 = [(SHMediaLibraryChange *)self indexPath];
  v8 = [v3 stringWithFormat:@"(%lu) %@ at index %@", v4, v6, v7];

  return v8;
}

@end