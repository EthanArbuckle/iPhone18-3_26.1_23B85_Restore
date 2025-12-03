@interface SHMediaLibraryChange
- (BOOL)isConflictingChange:(id)change;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualChange:(id)change;
- (SHMediaLibraryChange)initWithCoder:(id)coder;
- (id)_initWithLibraryItem:(id)item changeType:(int64_t)type indexPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMediaLibraryChange

- (id)_initWithLibraryItem:(id)item changeType:(int64_t)type indexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = SHMediaLibraryChange;
  v11 = [(SHMediaLibraryChange *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_libraryItem, item);
    v12->_changeType = type;
    objc_storeStrong(&v12->_indexPath, path);
  }

  return v12;
}

- (BOOL)isConflictingChange:(id)change
{
  changeCopy = change;
  libraryItem = [(SHMediaLibraryChange *)self libraryItem];
  libraryItem2 = [changeCopy libraryItem];
  v7 = [libraryItem isEqual:libraryItem2];

  if (v7)
  {
    indexPath = [(SHMediaLibraryChange *)self indexPath];

    if (indexPath)
    {
      indexPath2 = [(SHMediaLibraryChange *)self indexPath];
      indexPath3 = [changeCopy indexPath];
      v11 = [indexPath2 isEqual:indexPath3];

      if (!v11)
      {
        v14 = 1;
        goto LABEL_11;
      }
    }

    changeType = [(SHMediaLibraryChange *)self changeType];
    if (changeType == 1)
    {
      v13 = 3;
      goto LABEL_10;
    }

    if (changeType == 3)
    {
      v13 = 1;
LABEL_10:
      v14 = [changeCopy changeType] == v13;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (SHMediaLibraryChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SHMediaLibraryChange;
  v5 = [(SHMediaLibraryChange *)&v15 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SHLibraryChangeCodingLibraryItem"];
    libraryItem = v5->_libraryItem;
    v5->_libraryItem = v10;

    v5->_changeType = [coderCopy decodeIntegerForKey:@"SHLibraryChangeCodingChangeType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLibraryChangeCodingIndexPath"];
    indexPath = v5->_indexPath;
    v5->_indexPath = v12;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_libraryItem forKey:@"SHLibraryChangeCodingLibraryItem"];
  [coderCopy encodeInteger:self->_changeType forKey:@"SHLibraryChangeCodingChangeType"];
  [coderCopy encodeObject:self->_indexPath forKey:@"SHLibraryChangeCodingIndexPath"];
  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMediaLibraryChange allocWithZone:?];
  libraryItem = [(SHMediaLibraryChange *)self libraryItem];
  v7 = [libraryItem copyWithZone:zone];
  changeType = [(SHMediaLibraryChange *)self changeType];
  indexPath = [(SHMediaLibraryChange *)self indexPath];
  v10 = [indexPath copyWithZone:zone];
  v11 = [(SHMediaLibraryChange *)v5 initWithLibraryItem:v7 changeType:changeType indexPath:v10];

  return v11;
}

- (unint64_t)hash
{
  indexPath = [(SHMediaLibraryChange *)self indexPath];

  libraryItem = [(SHMediaLibraryChange *)self libraryItem];
  identifier = [libraryItem identifier];
  v6 = [identifier hash];
  v7 = [(SHMediaLibraryChange *)self changeType]^ v6;
  if (indexPath)
  {
    indexPath2 = [(SHMediaLibraryChange *)self indexPath];
    v7 ^= [indexPath2 hash];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SHMediaLibraryChange *)self isEqualChange:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualChange:(id)change
{
  changeCopy = change;
  indexPath = [(SHMediaLibraryChange *)self indexPath];

  libraryItem = [(SHMediaLibraryChange *)self libraryItem];
  libraryItem2 = [changeCopy libraryItem];
  v8 = [libraryItem isEqual:libraryItem2];
  if (!indexPath)
  {
    if (v8)
    {
      changeType = [(SHMediaLibraryChange *)self changeType];
      v12 = changeType == [changeCopy changeType];
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

  changeType2 = [(SHMediaLibraryChange *)self changeType];
  if (changeType2 != [changeCopy changeType])
  {
    goto LABEL_7;
  }

  indexPath2 = [(SHMediaLibraryChange *)self indexPath];
  indexPath3 = [changeCopy indexPath];
  v12 = [indexPath2 isEqual:indexPath3];

LABEL_8:
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  changeType = [(SHMediaLibraryChange *)self changeType];
  libraryItem = [(SHMediaLibraryChange *)self libraryItem];
  identifier = [libraryItem identifier];
  indexPath = [(SHMediaLibraryChange *)self indexPath];
  v8 = [v3 stringWithFormat:@"(%lu) %@ at index %@", changeType, identifier, indexPath];

  return v8;
}

@end