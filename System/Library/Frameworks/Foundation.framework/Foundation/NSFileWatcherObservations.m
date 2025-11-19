@interface NSFileWatcherObservations
- (NSFileWatcherObservations)initWithPath:(id)a3;
- (id)description;
- (void)addAnnouncedMoveToPath:(id)a3;
- (void)addAttributeChange;
- (void)addContentsChange;
- (void)addDeletion;
- (void)addDetectedMoveToPath:(id)a3;
- (void)dealloc;
- (void)notifyObserver:(id)a3;
@end

@implementation NSFileWatcherObservations

- (NSFileWatcherObservations)initWithPath:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileWatcherObservations;
  v4 = [(NSFileWatcherObservations *)&v6 init];
  if (v4)
  {
    v4->_path = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileWatcherObservations;
  [(NSFileWatcherObservations *)&v3 dealloc];
}

- (void)addAttributeChange
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    v5 = 138477827;
    v6 = path;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Detected attribute change to %{private}@", &v5, 0xCu);
  }

  self->_attributesChanged = 1;
}

- (void)addContentsChange
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    v5 = 138477827;
    v6 = path;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Detected content change to %{private}@", &v5, 0xCu);
  }

  self->_contentsChanged = 1;
}

- (void)addDeletion
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    v5 = 138477827;
    v6 = path;
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Detected deletion of %{private}@", &v5, 0xCu);
  }

  self->_deleted = 1;
}

- (void)addDetectedMoveToPath:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    v8 = 138478083;
    v9 = path;
    v10 = 2113;
    v11 = a3;
    _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "Detected move of %{private}@ to %{private}@", &v8, 0x16u);
  }

  self->_moved = 1;
  lastObservedPath = self->_lastObservedPath;
  if (lastObservedPath != a3)
  {

    self->_lastObservedPath = [a3 copy];
  }
}

- (void)addAnnouncedMoveToPath:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = _NSFCFSEventsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    path = self->_path;
    v7 = 138478083;
    v8 = path;
    v9 = 2113;
    v10 = a3;
    _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "Announced move of %{private}@ to %{private}@", &v7, 0x16u);
  }

  self->_didResetPath = 1;

  self->_path = [a3 copy];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSFileWatcherObservations;
  return [NSString stringWithFormat:@"%@ attrib: %d cont: %d del: %d mov: %d last-path: %@ res: %d path: %@", [(NSFileWatcherObservations *)&v3 description], self->_attributesChanged, self->_contentsChanged, self->_deleted, self->_moved, self->_lastObservedPath, self->_didResetPath, self->_path];
}

- (void)notifyObserver:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_deleted && !self->_moved && !self->_didResetPath)
  {
    if (self->_contentsChanged)
    {
      v12 = 0;
      v11 = 2;
    }

    else
    {
      v12 = 0;
      if (self->_attributesChanged)
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }
    }

    goto LABEL_31;
  }

  v5 = [(NSString *)self->_path fileSystemRepresentation];
  v6 = open(v5, 2129920);
  if (v6 == -1)
  {
    if (self->_deleted || !self->_moved || self->_didResetPath)
    {
      v12 = 0;
      if (self->_didResetPath)
      {
        v11 = 24;
      }

      else
      {
        v11 = 8;
      }
    }

    else
    {
      v15 = _NSFCFSEventsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        lastObservedPath = self->_lastObservedPath;
        v21.st_dev = 138477827;
        *&v21.st_mode = lastObservedPath;
        _os_log_debug_impl(&dword_18075C000, v15, OS_LOG_TYPE_DEBUG, "Reporting non-coordinated move to %{private}@", &v21, 0xCu);
      }

      v16 = self->_lastObservedPath;
      v12 = 0;
      self->_path = v16;
      v11 = 16;
    }
  }

  else
  {
    v7 = v6;
    if (!self->_didResetPath || !self->_moved || self->_deleted || (memset(&v21, 0, sizeof(v21)), fstat(v6, &v21)) || (memset(&v20, 0, sizeof(v20)), lstat(v5, &v20)) || v21.st_dev != v20.st_dev)
    {
      close(v7);
    }

    else
    {
      st_ino = v21.st_ino;
      v9 = v20.st_ino;
      close(v7);
      if (st_ino == v9)
      {
        v10 = _NSFCFSEventsLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          path = self->_path;
          v21.st_dev = 138477827;
          *&v21.st_mode = path;
          _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "URL %{private}@ reset unnecessarily", &v21, 0xCu);
        }

        v11 = 0;
        v12 = 0;
        goto LABEL_31;
      }
    }

    if (self->_contentsChanged || self->_deleted || self->_moved)
    {
      v13 = _NSFCFSEventsLog();
      v14 = 2;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = self->_path;
        v21.st_dev = 138477827;
        *&v21.st_mode = v17;
        _os_log_debug_impl(&dword_18075C000, v13, OS_LOG_TYPE_DEBUG, "Change, deletion, or movement of %{private}@ interpreted as change", &v21, 0xCu);
      }
    }

    else if (self->_attributesChanged)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    if (self->_didResetPath)
    {
      v11 = v14 | 0x10;
    }

    else
    {
      v11 = v14;
    }

    v12 = 1;
  }

LABEL_31:
  (*(a3 + 2))(a3, v12, v11, self->_path);
}

@end