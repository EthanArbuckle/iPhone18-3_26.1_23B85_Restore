@interface _CloudBookmarkSyncMigrationPositionGeneratorEnumerator
- (_CloudBookmarkSyncMigrationPositionGeneratorEnumerator)initWithParentPositionGenerator:(id)generator;
- (id)nextObject;
@end

@implementation _CloudBookmarkSyncMigrationPositionGeneratorEnumerator

- (_CloudBookmarkSyncMigrationPositionGeneratorEnumerator)initWithParentPositionGenerator:(id)generator
{
  generatorCopy = generator;
  v12.receiver = self;
  v12.super_class = _CloudBookmarkSyncMigrationPositionGeneratorEnumerator;
  v6 = [(_CloudBookmarkSyncMigrationPositionGeneratorEnumerator *)&v12 init];
  if (v6)
  {
    rootRecordName = [generatorCopy rootRecordName];
    if ([rootRecordName length])
    {
      objc_storeStrong(&v6->_parentGenerator, generator);
      objc_storeStrong(&v6->_rootRecordName, rootRecordName);
      v8 = [NSMutableArray arrayWithObject:v6->_rootRecordName];
      folderRecordQueue = v6->_folderRecordQueue;
      v6->_folderRecordQueue = v8;
    }

    v10 = v6;
  }

  return v6;
}

- (id)nextObject
{
  if (!self->_rootRecordName)
  {
    rootRecordName = 0;
LABEL_7:
    firstObject2 = 0;
    self->_rootRecordName = 0;
    goto LABEL_8;
  }

  rootRecordName = [(CloudBookmarkSyncMigrationPositionGenerator *)self->_parentGenerator rootRecordName];
  v4 = [rootRecordName isEqualToString:self->_rootRecordName];

  if ((v4 & 1) == 0)
  {
    rootRecordName = self->_rootRecordName;
    goto LABEL_7;
  }

  firstObject = [(NSMutableArray *)self->_currentChildRecordNames firstObject];
  if (firstObject)
  {
    v6 = firstObject;
    [(NSMutableArray *)self->_currentChildRecordNames removeObjectAtIndex:0];
    rootRecordName = v6;
    firstObject2 = rootRecordName;
  }

  else
  {
    firstObject2 = [(NSMutableArray *)self->_folderRecordQueue firstObject];
    if (firstObject2)
    {
      while (1)
      {
        [(NSMutableArray *)self->_folderRecordQueue removeObjectAtIndex:0];
        folderRecordQueue = self->_folderRecordQueue;
        v11 = [(CloudBookmarkSyncMigrationPositionGenerator *)self->_parentGenerator childFolderRecordNamesForRecordName:firstObject2];
        [(NSMutableArray *)folderRecordQueue addObjectsFromArray:v11];

        v12 = [(CloudBookmarkSyncMigrationPositionGenerator *)self->_parentGenerator childRecordNamesForRecordName:firstObject2];
        firstObject3 = [v12 firstObject];
        if (firstObject3)
        {
          break;
        }

        rootRecordName = [(NSMutableArray *)self->_folderRecordQueue firstObject];

        firstObject2 = rootRecordName;
        if (!rootRecordName)
        {
          goto LABEL_8;
        }
      }

      v14 = firstObject3;
      v15 = [v12 mutableCopy];
      currentChildRecordNames = self->_currentChildRecordNames;
      self->_currentChildRecordNames = v15;

      [(NSMutableArray *)self->_currentChildRecordNames removeObjectAtIndex:0];
      rootRecordName = v14;

      firstObject2 = rootRecordName;
    }

    else
    {
      rootRecordName = 0;
    }
  }

LABEL_8:

  return firstObject2;
}

@end