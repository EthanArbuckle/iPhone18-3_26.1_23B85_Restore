@interface AAPSyncStatePersistence
- (id)_errWithCode:(int64_t)code desc:(id)desc err:(id)err;
- (id)_fileManager;
- (id)_generateURLIfNeededWithError:(id *)error;
- (id)load;
- (id)reset;
- (id)save:(id)save;
- (void)dealloc;
- (void)setURL:(id)l;
@end

@implementation AAPSyncStatePersistence

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AAPSyncStatePersistence;
  [(AAPSyncStatePersistence *)&v3 dealloc];
}

- (void)setURL:(id)l
{
  url = self->_url;
  if (url != l && ([(NSURL *)url isEqual:?]& 1) == 0)
  {

    self->_url = [l copy];
  }
}

- (id)load
{
  v14 = 0;
  v3 = [(AAPSyncStatePersistence *)self _generateURLIfNeededWithError:&v14];
  if (v14)
  {
    v4 = @"could not create saved state URL";
    selfCopy2 = self;
    v6 = 101;
LABEL_3:
    v7 = [(AAPSyncStatePersistence *)selfCopy2 _errWithCode:v6 desc:v4 err:?];
    goto LABEL_4;
  }

  v10 = v3;
  v11 = [NSData dataWithContentsOfURL:v3 options:2 error:&v14];
  if (!v11)
  {
    if (![-[AAPSyncStatePersistence _fileManager](self "_fileManager")])
    {
      v8 = 0;
      goto LABEL_5;
    }

    v4 = @"could not read saved state";
    selfCopy2 = self;
    v6 = 102;
    goto LABEL_3;
  }

  v13 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v13];
  if (v13)
  {
    v7 = [(AAPSyncStatePersistence *)self _errWithCode:105 desc:[NSString err:"stringWithFormat:" stringWithFormat:v13], 0];
  }

  else
  {
    v8 = v12;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_5;
      }

      v7 = [(AAPSyncStatePersistence *)self _errWithCode:104 desc:[NSString err:"stringWithFormat:" stringWithFormat:v8], 0];
    }

    else
    {
      v7 = [(AAPSyncStatePersistence *)self _errWithCode:103 desc:@"saved state was badly defined - tossing" err:0];
    }
  }

LABEL_4:
  v8 = 0;
  v14 = v7;
LABEL_5:

  self->_state = v8;
  return v14;
}

- (id)save:(id)save
{
  v13 = 0;
  if (save)
  {
    v5 = [(AAPSyncStatePersistence *)self _generateURLIfNeededWithError:&v13];
    if (v13)
    {
      save = @"could not create saved state URL";
      selfCopy3 = self;
      v8 = 202;
    }

    else
    {
      v10 = v5;
      if (([-[AAPSyncStatePersistence _fileManager](self "_fileManager")] & 1) == 0)
      {
        v13 = [(AAPSyncStatePersistence *)self _errWithCode:203 desc:@"could not create the saved state parent directory" err:v13];
      }

      v12 = 0;
      v11 = [NSKeyedArchiver archivedDataWithRootObject:save requiringSecureCoding:1 error:&v12];
      if (!v11 || v12)
      {
        save = [NSString stringWithFormat:@"could not archive state -> %@ -> error -> %@", save, v12];
        selfCopy3 = self;
        v8 = 204;
      }

      else
      {
        if ([(NSData *)v11 writeToURL:v10 options:1 error:&v13])
        {

          self->_state = [save copy];
          return v13;
        }

        save = [NSString stringWithFormat:@"could not save state -> %@", save];
        selfCopy3 = self;
        v8 = 205;
      }
    }

    return [(AAPSyncStatePersistence *)selfCopy3 _errWithCode:v8 desc:save err:?];
  }

  else
  {

    return [(AAPSyncStatePersistence *)self _errWithCode:201 desc:@"could not save nil state" err:0];
  }
}

- (id)reset
{
  v10 = 0;
  v3 = [(AAPSyncStatePersistence *)self _generateURLIfNeededWithError:&v10];
  if (v10)
  {
    v4 = @"could not create saved state URL";
    selfCopy2 = self;
    v6 = 301;
    return [(AAPSyncStatePersistence *)selfCopy2 _errWithCode:v6 desc:v4 err:?];
  }

  v7 = [-[AAPSyncStatePersistence _fileManager](self "_fileManager")];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    v4 = @"could not reset state";
    selfCopy2 = self;
    v6 = 302;
    return [(AAPSyncStatePersistence *)selfCopy2 _errWithCode:v6 desc:v4 err:?];
  }

  return v8;
}

- (id)_fileManager
{
  result = self->_fileManager;
  if (!result)
  {
    result = objc_alloc_init(NSFileManager);
    self->_fileManager = result;
    if (!result)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"AAPSyncStatePersistence.m" description:144, @"failed to create fileManager"];
      return self->_fileManager;
    }
  }

  return result;
}

- (id)_generateURLIfNeededWithError:(id *)error
{
  url = self->_url;
  if (!url)
  {
    -[AAPSyncStatePersistence setURL:](self, "setURL:", [objc_msgSend(-[AAPSyncStatePersistence _fileManager](self "_fileManager")]);
    url = self->_url;
  }

  v5 = url;

  return v5;
}

- (id)_errWithCode:(int64_t)code desc:(id)desc err:(id)err
{
  v8 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v9 = v8;
  if (desc)
  {
    [v8 setObject:desc forKey:NSLocalizedDescriptionKey];
  }

  if (err)
  {
    [v9 setObject:err forKey:NSUnderlyingErrorKey];
  }

  v10 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", [objc_opt_class() description], code, v9);

  return v10;
}

@end