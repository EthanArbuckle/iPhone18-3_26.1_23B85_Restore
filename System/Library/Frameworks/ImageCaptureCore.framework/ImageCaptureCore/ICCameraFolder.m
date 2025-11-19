@interface ICCameraFolder
- (ICCameraFolder)initWithName:(id)a3 parentFolder:(id)a4 device:(id)a5;
- (ICCameraFolder)initWithProxy:(id)a3 parentFolder:(id)a4 device:(id)a5;
- (NSArray)contents;
- (NSMutableArray)files;
- (NSMutableArray)folders;
- (id)description;
- (id)getFileWithID:(unint64_t)a3;
- (id)getFolderWithID:(unint64_t)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)addFile:(id)a3;
- (void)addFolder:(id)a3;
- (void)dealloc;
- (void)deleteFile:(id)a3;
- (void)deleteFileWithID:(unint64_t)a3;
- (void)deleteFolder:(id)a3;
- (void)deleteFolderWithID:(unint64_t)a3;
- (void)deleteItem:(id)a3;
- (void)setFiles:(id)a3;
- (void)setFolders:(id)a3;
@end

@implementation ICCameraFolder

- (ICCameraFolder)initWithName:(id)a3 parentFolder:(id)a4 device:(id)a5
{
  v11.receiver = self;
  v11.super_class = ICCameraFolder;
  v5 = [(ICCameraItem *)&v11 initWithName:a3 parentFolder:a4 device:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(ICCameraFolder *)v5 setFiles:v6];

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(ICCameraFolder *)v5 setFolders:v7];

    v8 = [*MEMORY[0x1E6982DC8] identifier];
    [(ICCameraItem *)v5 setUTI:v8];

    [(ICCameraItem *)v5 setThumbnailState:8];
    [(ICCameraItem *)v5 setMetadataState:8];
    [(ICCameraFolder *)v5 setFolderMediaLock:0];
    v9 = v5;
  }

  return v5;
}

- (ICCameraFolder)initWithProxy:(id)a3 parentFolder:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 name];
  v20.receiver = self;
  v20.super_class = ICCameraFolder;
  v12 = [(ICCameraItem *)&v20 initWithName:v11 parentFolder:v10 device:v9];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(ICCameraFolder *)v12 setFiles:v13];

    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(ICCameraFolder *)v12 setFolders:v14];

    v15 = [*MEMORY[0x1E6982DC8] identifier];
    [(ICCameraItem *)v12 setUTI:v15];

    [(ICCameraItem *)v12 setThumbnailState:8];
    [(ICCameraItem *)v12 setMetadataState:8];
    [(ICCameraFolder *)v12 setFolderMediaLock:0];
    -[ICCameraItem setObjectHandle:](v12, "setObjectHandle:", [v8 objectHandle]);
    -[ICCameraItem setObjectID:](v12, "setObjectID:", [v8 objectHandle]);
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v8, "captureDate")}];
    [(ICCameraItem *)v12 setCreationDate:v16];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v8, "modificationDate")}];
    [(ICCameraItem *)v12 setModificationDate:v17];
    v18 = v12;
  }

  return v12;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_folderMediaLock);
  files = self->_files;
  self->_files = 0;

  folders = self->_folders;
  self->_folders = 0;

  os_unfair_lock_unlock(&self->_folderMediaLock);
  v5.receiver = self;
  v5.super_class = ICCameraFolder;
  [(ICCameraFolder *)&v5 dealloc];
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(ICCameraFolder *)self files];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) sidecarFiles];
        v6 += [v9 count] + 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(ICCameraItem *)self name];
  v13 = [v12 UTF8String];
  v14 = [(ICCameraItem *)self objectID];
  v15 = [(ICCameraFolder *)self folders];
  v16 = [v11 stringWithFormat:@"🔶 [%10s ID:%6lu]➡[%8s:%6u][%8s:%6lu]", v13, v14, "Files", v10, "Folders", objc_msgSend(v15, "count")];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)addFile:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_folderMediaLock);
  [(NSMutableArray *)self->_files addObject:v4];

  os_unfair_lock_unlock(&self->_folderMediaLock);
}

- (void)addFolder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_folderMediaLock);
  [(NSMutableArray *)self->_folders addObject:v4];

  os_unfair_lock_unlock(&self->_folderMediaLock);
}

- (void)deleteItem:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_folderMediaLock);
  v5 = [v4 UTI];
  v6 = [*MEMORY[0x1E6982DC8] identifier];
  v7 = [v5 isEqualToString:v6];

  v8 = &OBJC_IVAR___ICCameraFolder__files;
  if (v7)
  {
    v8 = &OBJC_IVAR___ICCameraFolder__folders;
  }

  [*(&self->super.super.isa + *v8) removeObject:v4];

  os_unfair_lock_unlock(&self->_folderMediaLock);
}

- (void)deleteFile:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_folderMediaLock);
  [(NSMutableArray *)self->_files removeObject:v4];

  os_unfair_lock_unlock(&self->_folderMediaLock);
}

- (void)deleteFolder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_folderMediaLock);
  [(NSMutableArray *)self->_folders removeObject:v4];

  os_unfair_lock_unlock(&self->_folderMediaLock);
}

- (NSArray)contents
{
  os_unfair_lock_lock(&self->_folderMediaLock);
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:self->_folders];
  [v3 addObjectsFromArray:self->_files];
  os_unfair_lock_unlock(&self->_folderMediaLock);

  return v3;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"children"])
  {
    v5 = [(ICCameraFolder *)self contents];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ICCameraFolder;
    v5 = [(ICCameraItem *)&v8 valueForUndefinedKey:v4];
  }

  v6 = v5;

  return v6;
}

- (NSMutableArray)files
{
  os_unfair_lock_lock(&self->_folderMediaLock);
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_files];
  os_unfair_lock_unlock(&self->_folderMediaLock);

  return v3;
}

- (void)setFiles:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_folderMediaLock);
  files = self->_files;
  self->_files = v4;

  os_unfair_lock_unlock(&self->_folderMediaLock);
}

- (NSMutableArray)folders
{
  os_unfair_lock_lock(&self->_folderMediaLock);
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_folders];
  os_unfair_lock_unlock(&self->_folderMediaLock);

  return v3;
}

- (void)setFolders:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_folderMediaLock);
  folders = self->_folders;
  self->_folders = v4;

  os_unfair_lock_unlock(&self->_folderMediaLock);
}

- (void)deleteFolderWithID:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_folderMediaLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_folders;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v13 + 1) + 8 * v10);

      if ([(NSMutableArray *)v8 objectID]== a3)
      {
        break;
      }

      ++v10;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (!v8)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)self->_folders removeObject:v8];
    v5 = v8;
  }

LABEL_12:

LABEL_13:
  os_unfair_lock_unlock(&self->_folderMediaLock);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)deleteFileWithID:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_folderMediaLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_files;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v13 + 1) + 8 * v10);

      if ([(NSMutableArray *)v8 objectID]== a3)
      {
        break;
      }

      ++v10;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (!v8)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)self->_files removeObject:v8];
    v5 = v8;
  }

LABEL_12:

LABEL_13:
  os_unfair_lock_unlock(&self->_folderMediaLock);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)getFolderWithID:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(ICCameraItem *)self objectID]!= a3 || (v5 = self) == 0)
  {
    [(ICCameraFolder *)self folders];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) getFolderWithID:{a3, v14}];
          if (v11)
          {
            v5 = v11;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)getFileWithID:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  [(ICCameraFolder *)self files];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      if ([v10 objectID] == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  [(ICCameraFolder *)self folders];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * i) getFileWithID:{a3, v20}];
        if (v17)
        {
          v11 = v17;
          goto LABEL_21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_21:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

@end