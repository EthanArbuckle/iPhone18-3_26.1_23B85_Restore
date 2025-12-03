@interface CKSQLiteContainerAttributedTableGroup
+ (id)attributionNameForSpecialContainerType:(int64_t)type;
+ (unint64_t)tableGroupOptionsForContainerType:(int64_t)type;
+ (void)attributionFunctionForAttributionName:(id)name;
+ (void)attributionFunctionForSpecialContainerType:(int64_t)type;
- (CKSQLiteContainerAttributedTableGroup)init;
- (id)finishInitializing;
- (void)createTables;
@end

@implementation CKSQLiteContainerAttributedTableGroup

- (id)finishInitializing
{
  v17.receiver = self;
  v17.super_class = CKSQLiteContainerAttributedTableGroup;
  finishInitializing = [(CKSQLiteTableGroup *)&v17 finishInitializing];
  if (finishInitializing)
  {
    goto LABEL_2;
  }

  if (self)
  {
    v7 = objc_msgSend_options(self, v3, v4);
    if (objc_msgSend_isNew(self, v8, v9))
    {
      if (v7)
      {
        v11 = objc_msgSend_attributionNameForSpecialContainerType_(CKSQLiteContainerAttributedTableGroup, v10, v7);
        finishInitializing = objc_msgSend_setStringValue_forKey_(self, v12, v11, @"ContainerAttribution");
        self->_attributionFunc = objc_msgSend_attributionFunctionForSpecialContainerType_(CKSQLiteContainerAttributedTableGroup, v13, v7);

        goto LABEL_2;
      }

      goto LABEL_12;
    }

    if (v7)
    {
      finishInitializing = 0;
      self->_attributionFunc = objc_msgSend_attributionFunctionForSpecialContainerType_(CKSQLiteContainerAttributedTableGroup, v10, v7);
      goto LABEL_2;
    }
  }

  else if (objc_msgSend_isNew(0, v3, v4))
  {
LABEL_12:
    finishInitializing = 0;
    goto LABEL_2;
  }

  v16 = 0;
  v14 = objc_msgSend_stringValueForKey_error_(self, v10, @"ContainerAttribution", &v16);
  finishInitializing = v16;
  if (v14)
  {
    self->_attributionFunc = objc_msgSend_attributionFunctionForAttributionName_(CKSQLiteContainerAttributedTableGroup, v15, v14);
  }

LABEL_2:

  return finishInitializing;
}

- (CKSQLiteContainerAttributedTableGroup)init
{
  v5.receiver = self;
  v5.super_class = CKSQLiteContainerAttributedTableGroup;
  v2 = [(CKSQLiteTableGroup *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_attributionFunc = CKSQLiteContainerAttribution_None;
    v2->_sup.receiver = v2;
    v2->_sup.super_class = objc_opt_class();
  }

  return v3;
}

- (void)createTables
{
  v4.receiver = self;
  v4.super_class = CKSQLiteContainerAttributedTableGroup;
  [(CKSQLiteTableGroup *)&v4 createTables];
  objc_msgSend_addSingletonInstanceToGroup_(CKSQLiteKeyValueStore, v3, self);
}

+ (id)attributionNameForSpecialContainerType:(int64_t)type
{
  if (type > 0x25)
  {
    return @"ATTRIBUTION_FUNCTION_NAME(None)";
  }

  else
  {
    return off_1E70C0B18[type];
  }
}

+ (void)attributionFunctionForAttributionName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  v8 = dlsym(0xFFFFFFFFFFFFFFFDLL, v7);
  if (!v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188672464;
    block[3] = &unk_1E70BC388;
    v11 = nameCopy;
    if (qword_1EA919B78 != -1)
    {
      dispatch_once(&qword_1EA919B78, block);
    }

    v8 = CKSQLiteContainerAttribution_None;
  }

  return v8;
}

+ (void)attributionFunctionForSpecialContainerType:(int64_t)type
{
  if ((type - 1) > 0x24)
  {
    return CKSQLiteContainerAttribution_None;
  }

  else
  {
    return off_1EFA2FEC8[type - 1];
  }
}

+ (unint64_t)tableGroupOptionsForContainerType:(int64_t)type
{
  if (type >= 0x10000)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKSQLiteContainerAttributedTableGroup.m", 91, @"container type value out of range");
  }

  return type;
}

@end