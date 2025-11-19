@interface _CloudBookmarkSyncMigrationPositionGeneratorEnumerator
- (_CloudBookmarkSyncMigrationPositionGeneratorEnumerator)initWithParentPositionGenerator:(id)a3;
- (id)nextObject;
@end

@implementation _CloudBookmarkSyncMigrationPositionGeneratorEnumerator

- (_CloudBookmarkSyncMigrationPositionGeneratorEnumerator)initWithParentPositionGenerator:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _CloudBookmarkSyncMigrationPositionGeneratorEnumerator;
  v6 = [(_CloudBookmarkSyncMigrationPositionGeneratorEnumerator *)&v12 init];
  if (v6)
  {
    v7 = [v5 rootRecordName];
    if ([v7 length])
    {
      objc_storeStrong(&v6->_parentGenerator, a3);
      objc_storeStrong(&v6->_rootRecordName, v7);
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
    v8 = 0;
    self->_rootRecordName = 0;
    goto LABEL_8;
  }

  v3 = [(CloudBookmarkSyncMigrationPositionGenerator *)self->_parentGenerator rootRecordName];
  v4 = [v3 isEqualToString:self->_rootRecordName];

  if ((v4 & 1) == 0)
  {
    rootRecordName = self->_rootRecordName;
    goto LABEL_7;
  }

  v5 = [(NSMutableArray *)self->_currentChildRecordNames firstObject];
  if (v5)
  {
    v6 = v5;
    [(NSMutableArray *)self->_currentChildRecordNames removeObjectAtIndex:0];
    rootRecordName = v6;
    v8 = rootRecordName;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_folderRecordQueue firstObject];
    if (v8)
    {
      while (1)
      {
        [(NSMutableArray *)self->_folderRecordQueue removeObjectAtIndex:0];
        folderRecordQueue = self->_folderRecordQueue;
        v11 = [(CloudBookmarkSyncMigrationPositionGenerator *)self->_parentGenerator childFolderRecordNamesForRecordName:v8];
        [(NSMutableArray *)folderRecordQueue addObjectsFromArray:v11];

        v12 = [(CloudBookmarkSyncMigrationPositionGenerator *)self->_parentGenerator childRecordNamesForRecordName:v8];
        v13 = [v12 firstObject];
        if (v13)
        {
          break;
        }

        rootRecordName = [(NSMutableArray *)self->_folderRecordQueue firstObject];

        v8 = rootRecordName;
        if (!rootRecordName)
        {
          goto LABEL_8;
        }
      }

      v14 = v13;
      v15 = [v12 mutableCopy];
      currentChildRecordNames = self->_currentChildRecordNames;
      self->_currentChildRecordNames = v15;

      [(NSMutableArray *)self->_currentChildRecordNames removeObjectAtIndex:0];
      rootRecordName = v14;

      v8 = rootRecordName;
    }

    else
    {
      rootRecordName = 0;
    }
  }

LABEL_8:

  return v8;
}

@end