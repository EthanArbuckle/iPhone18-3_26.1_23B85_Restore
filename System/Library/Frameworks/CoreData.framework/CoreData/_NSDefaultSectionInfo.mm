@interface _NSDefaultSectionInfo
- (NSArray)objects;
- (id)sectionId;
- (uint64_t)sectionNumber;
- (void)dealloc;
- (void)initWithController:(void *)controller name:(void *)name sectionId:(void *)id indexTitle:(uint64_t)title sectionOffset:;
@end

@implementation _NSDefaultSectionInfo

- (NSArray)objects
{
  result = self->_controller;
  if (!result)
  {
    return result;
  }

  sectionObjects = self->_sectionObjects;
  if (!sectionObjects)
  {
    _fetchedObjects = [(NSArray *)result _fetchedObjects];
    v7 = _fetchedObjects;
    sectionOffset = self->_sectionOffset;
    if (sectionOffset)
    {
      numberOfObjects = self->_numberOfObjects;
    }

    else
    {
      v10 = [_fetchedObjects count];
      numberOfObjects = self->_numberOfObjects;
      if (v10 == numberOfObjects)
      {
        fetchedObjects = [(NSFetchedResultsController *)self->_controller fetchedObjects];
LABEL_11:
        v12 = fetchedObjects;
        self->_sectionObjects = v12;
        v5 = v12;
        goto LABEL_12;
      }

      sectionOffset = self->_sectionOffset;
    }

    fetchedObjects = [v7 subarrayWithRange:{sectionOffset, numberOfObjects}];
    goto LABEL_11;
  }

  v5 = sectionObjects;
LABEL_12:

  return v5;
}

- (uint64_t)sectionNumber
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (!v2 || (v3 = *(v2 + 104)) == 0 || (result = [v3 indexOfObject:v1], result == 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v5 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v5)
        {
          if (v7)
          {
            goto LABEL_12;
          }
        }

        else if (v7)
        {
LABEL_12:
          *buf = 138412290;
          name = [v1 name];
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (NSFetchedResultsController) section '%@' not found in controller\n", buf, 0xCu);
        }
      }

      _NSCoreDataLog_console(1, "(NSFetchedResultsController) section '%@' not found in controller", [v1 name]);
      objc_autoreleasePoolPop(v4);
      result = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)initWithController:(void *)controller name:(void *)name sectionId:(void *)id indexTitle:(uint64_t)title sectionOffset:
{
  if (!self)
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = _NSDefaultSectionInfo;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = v11;
  if (v11)
  {
    v11[1] = a2;
    v11[2] = [controller copy];
    v12[3] = [id copy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12[8] = name;
    }

    v12[7] = 0;
    v12[4] = title;
    v12[5] = 0;
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSDefaultSectionInfo;
  [(_NSDefaultSectionInfo *)&v3 dealloc];
}

- (id)sectionId
{
  if (!self->_controller)
  {
    return 0;
  }

  result = self->_sectionId;
  if (!result)
  {
    result = [-[NSArray firstObject](-[_NSDefaultSectionInfo objects](self "objects")];
    self->_sectionId = result;
  }

  return result;
}

@end