@interface _PFResultObject
- (__CFString)stringFromPtr:(void *)a1;
- (__CFString)taggedStringFromPtr:(__CFString *)result withLength:(char *)__s;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (id)valueAtIndex:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation _PFResultObject

- (id)valueAtIndex:(unint64_t)a3
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  parent_buffer = self->_parent_buffer;
  resultSet = parent_buffer->_resultSet;
  var7 = resultSet->var7;
  if ((*&var7 & 0x10) != 0)
  {
    if ((*&var7 & 0x40) != 0)
    {
      v38 = @"%@: backing buffer has been purged";
    }

    else
    {
      if ((*&var7 & 0x20) == 0)
      {
        goto LABEL_2;
      }

      v38 = @"%@: backing buffer can be purged";
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{v38, _NSMethodExceptionProem()}];
    goto LABEL_36;
  }

LABEL_2:
  metadata = parent_buffer->_metadata;
  v10 = [(NSKnownKeysDictionary *)metadata mapping];
  if ([(NSKnownKeysMappingStrategy *)v10 length]<= a3)
  {
    goto LABEL_36;
  }

  v11 = self + 1;
  v12 = *(&self[1].super.super.isa + a3);
  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = 0;
  if (a3)
  {
    v14 = self + 1;
    v15 = a3;
    do
    {
      isa = v14->super.super.isa;
      v14 = (v14 + 8);
      v13 += isa;
      --v15;
    }

    while (v15);
  }

  v100 = [(NSKnownKeysMappingStrategy *)v10 length];
  v17 = [(NSKnownKeysDictionary *)metadata valueAtIndex:a3];
  if (a3 >= 6 && self->_sql_entity_id == 16001)
  {
    if (self[1]._primary_key)
    {
      v18 = vaddvq_s64(vaddq_s64(*&self[1]._cd_rc, *&self[1].super.super.isa));
      v19 = *((&v11->super.super.isa + 8 * [(NSKnownKeysMappingStrategy *)v10 length]+ v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v20 = self->_parent_buffer;
      v98 = v12;
      v99 = v5;
      if (v20 && (weakRequestStore = v20->_weakRequestStore) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&weakRequestStore->_object);
      }

      else
      {
        WeakRetained = 0;
      }

      v23 = [objc_msgSend(WeakRetained "model")];
      v24 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v23];
      v25 = [objc_msgSend(objc_msgSend(v17 "name")];
      if (v25 < [v24 count])
      {
        v26 = [v24 objectAtIndexedSubscript:v25];
        if (v23)
        {
          v27 = [*(v23 + 40) objectForKey:v26];
        }

        else
        {
          v27 = 0;
        }

        v17 = [v27 propertyDescription];
      }

      v12 = v98;
      v5 = v99;
      goto LABEL_18;
    }

LABEL_36:
    objc_autoreleasePoolPop(v5);
    result = 0;
    goto LABEL_37;
  }

LABEL_18:
  v28 = ((&v11->super.super.isa + 8 * v100 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v29 = [v17 _propertyType];
  if (v29 > 4)
  {
    if (v29 == 5)
    {
      v41 = [v17 expressionResultType];
      if (!v41)
      {
        [v17 expression];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_21;
        }

        goto LABEL_113;
      }

LABEL_46:
      if (v41 > 799)
      {
        if (v41 <= 1199)
        {
          if (v41 <= 999)
          {
            if (v41 != 800)
            {
              if (v41 != 900)
              {
                goto LABEL_114;
              }

              v46 = CFDateCreate(0, *v28);
LABEL_147:
              v72 = v46;
              goto LABEL_152;
            }

            goto LABEL_65;
          }

          if (v41 != 1000 && v41 != 1100)
          {
LABEL_114:
            v68 = objc_autoreleasePoolPush();
            _pflogInitialize(1);
            if (_pflogging_enable_oslog >= 1)
            {
              v69 = _pflogging_catastrophic_mode;
              LogStream = _PFLogGetLogStream(1);
              v71 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
              if (v69)
              {
                if (v71)
                {
                  *buf = 134217984;
                  *&buf[4] = v41;
LABEL_164:
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unsupported type for buffer allocated dictionary: %lu\n", buf, 0xCu);
                }
              }

              else if (v71)
              {
                *buf = 134217984;
                *&buf[4] = v41;
                goto LABEL_164;
              }
            }

            _NSCoreDataLog_console(1, "Unsupported type for buffer allocated dictionary: %lu", v41);
            objc_autoreleasePoolPop(v68);
            goto LABEL_120;
          }

LABEL_77:
          if (!*v28)
          {
            v48 = objc_opt_class();
            object_setClass(v28, v48);
          }

          [v28 setParentObject:self];
          if (v41 > 1799)
          {
            if (v41 == 1800)
            {
              v46 = [_PFRoutines retainedDecodeValue:v28 forTransformableAttribute:v17];
              goto LABEL_147;
            }

            *buf = 0;
            v64 = self->_parent_buffer;
            if (v64 && (v65 = v64->_weakRequestStore) != 0)
            {
              v66 = objc_loadWeakRetained(&v65->_object);
            }

            else
            {
              v66 = 0;
            }

            v67 = [v17 decode:v28 withRegistry:objc_msgSend(objc_msgSend(v66 error:{"persistentStoreCoordinator"), "codableAdapterRegistry"), buf}];
          }

          else
          {
            if (v41 != 1000)
            {
              if ([v28 length] != 16)
              {
LABEL_120:
                v72 = 0;
                goto LABEL_152;
              }

              v46 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v28, "bytes")}];
              goto LABEL_147;
            }

            if (([v17 _isFileBackedFuture] & 1) == 0 && (!objc_msgSend(v17, "_storeBinaryDataExternally") || (*&resultSet->var7 & 2) != 0))
            {
              v46 = v28;
              goto LABEL_147;
            }

            v76 = self->_parent_buffer;
            if (v76 && (v77 = v76->_weakRequestStore) != 0)
            {
              v66 = objc_loadWeakRetained(&v77->_object);
            }

            else
            {
              v66 = 0;
            }

            if (*[v28 bytes] == 1)
            {
              v78 = [_PFExternalReferenceData alloc];
              v79 = [v28 bytes];
              v80 = [v28 length];
              if (v66)
              {
                v81 = (*(v66 + 50) >> 2) & 7;
              }

              else
              {
                v81 = 0;
              }

              v82 = v78;
              v83 = v79;
              v84 = 0;
              v85 = 0;
            }

            else
            {
              if (*[v28 bytes] == 3)
              {
                v89 = [_NSDataFileBackedFuture alloc];
                v67 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v89, "initWithStoreMetadata:directory:", v28, [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(v66 isDirectory:{"fileBackedFuturesDirectory"), 1}]);
                goto LABEL_168;
              }

              v90 = [v28 bytes];
              v91 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
              v92 = [objc_msgSend(v66 "externalDataReferencesDirectory")];
              if (v66)
              {
                if (!atomic_load(v66 + 21))
                {
                  [v66 externalDataReferencesDirectory];
                }

                v94 = atomic_load(v66 + 22);
              }

              else
              {
                v94 = 0;
              }

              v95 = [v94 stringByAppendingPathComponent:v91];
              if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
              {
                v67 = v28;
                goto LABEL_168;
              }

              v96 = [_PFExternalReferenceData alloc];
              v97 = [v28 bytes];
              v80 = [v28 length];
              if (v66)
              {
                v81 = (*(v66 + 50) >> 2) & 7;
              }

              else
              {
                v81 = 0;
              }

              v82 = v96;
              v83 = v97;
              v84 = v92;
              v85 = v95;
            }

            v67 = [(_PFExternalReferenceData *)v82 initWithStoreBytes:v83 length:v80 externalLocation:v84 safeguardLocation:v85 protectionLevel:v81];
          }

LABEL_168:
          v72 = v67;

          goto LABEL_152;
        }

        if (v41 > 1999)
        {
          if (v41 == 2000)
          {
            goto LABEL_21;
          }

          if (v41 != 2200)
          {
            goto LABEL_114;
          }

          goto LABEL_77;
        }

        if (v41 != 1200)
        {
          if (v41 != 1800)
          {
            goto LABEL_114;
          }

          goto LABEL_77;
        }

        if (v12 > 0x1F)
        {
          v75 = [(_PFResultObject *)self stringFromPtr:v28];
        }

        else
        {
          v75 = [_PFResultObject taggedStringFromPtr:v28 withLength:?];
        }

        v86 = v75;
        v87 = MEMORY[0x1E695DFF8];
LABEL_143:
        v46 = [[v87 alloc] initWithString:v86];
        goto LABEL_147;
      }

      if (v41 <= 399)
      {
        if (v41 == 100 || v41 == 200)
        {
LABEL_65:
          v47 = [MEMORY[0x1E696AD98] numberWithInt:*v28];
          goto LABEL_123;
        }

        if (v41 != 300)
        {
          goto LABEL_114;
        }

        v47 = [MEMORY[0x1E696AD98] numberWithLongLong:*v28];
      }

      else
      {
        if (v41 <= 599)
        {
          if (v41 == 400)
          {
            if (v12 > 0x1F)
            {
              v74 = [(_PFResultObject *)self stringFromPtr:v28];
            }

            else
            {
              v74 = [_PFResultObject taggedStringFromPtr:v28 withLength:?];
            }

            v86 = v74;
            v87 = MEMORY[0x1E696AB90];
            goto LABEL_143;
          }

          if (v41 != 500)
          {
            goto LABEL_114;
          }

LABEL_105:
          v47 = [MEMORY[0x1E696AD98] numberWithDouble:*v28];
          goto LABEL_123;
        }

        if (v41 == 600)
        {
          goto LABEL_105;
        }

        if (v41 != 700)
        {
          goto LABEL_114;
        }

        if (v12 > 0x1F)
        {
          v47 = [(_PFResultObject *)self stringFromPtr:v28];
        }

        else
        {
          v47 = [_PFResultObject taggedStringFromPtr:v28 withLength:?];
        }
      }

LABEL_123:
      v72 = v47;
      goto LABEL_151;
    }

    if (v29 != 6)
    {
LABEL_41:
      v42 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v43 = _pflogging_catastrophic_mode;
        v44 = _PFLogGetLogStream(1);
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
        if (v43)
        {
          if (v45)
          {
            *buf = 138412290;
            *&buf[4] = v17;
LABEL_166:
            _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: error: Unsupported property type: %@\n", buf, 0xCu);
          }
        }

        else if (v45)
        {
          *buf = 138412290;
          *&buf[4] = v17;
          goto LABEL_166;
        }
      }

      _NSCoreDataLog_console(1, "Unsupported property type: %@", v17);
      objc_autoreleasePoolPop(v42);
LABEL_113:
      v41 = 0;
      goto LABEL_114;
    }

LABEL_40:
    v41 = [v17 attributeType];
    goto LABEL_46;
  }

  if (v29 == 2)
  {
    goto LABEL_40;
  }

  if (v29 != 4)
  {
    goto LABEL_41;
  }

LABEL_21:
  v30 = *v28;
  v31 = *(v28 + 1);
  if (*v28)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    goto LABEL_150;
  }

  v33 = self->_parent_buffer;
  if (v33 && (v34 = v33->_weakRequestStore) != 0)
  {
    v35 = objc_loadWeakRetained(&v34->_object);
  }

  else
  {
    v35 = 0;
  }

  if (v30 < 16000)
  {
    v36 = [objc_msgSend(v35 "model")];
    if (!v36)
    {
      goto LABEL_101;
    }

    v37 = v36;
LABEL_122:
    v73 = [v35 objectIDFactoryForSQLEntity:v37];

    v47 = [[v73 alloc] initWithPK64:v31];
    goto LABEL_123;
  }

  v49 = [v35 ancillarySQLModels];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v50 = [v49 countByEnumeratingWithState:&v101 objects:buf count:16];
  if (!v50)
  {
    goto LABEL_97;
  }

  v51 = v50;
  v52 = *v102;
  do
  {
    v53 = 0;
    do
    {
      if (*v102 != v52)
      {
        objc_enumerationMutation(v49);
      }

      v54 = [v49 objectForKey:*(*(&v101 + 1) + 8 * v53)];
      if (v54)
      {
        if (v30 <= v54[15])
        {
          goto LABEL_93;
        }

        v55 = v54[16];
      }

      else
      {
        v55 = 0;
      }

      if (v30 <= v55)
      {
        v56 = [v54 entityForID:v30];
        if (v56)
        {
          v37 = v56;
          goto LABEL_122;
        }
      }

LABEL_93:
      ++v53;
    }

    while (v51 != v53);
    v57 = [v49 countByEnumeratingWithState:&v101 objects:buf count:16];
    v51 = v57;
  }

  while (v57);
LABEL_97:
  v58 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    *v105 = 134217984;
    v106 = v30;
    _os_log_error_impl(&dword_18565F000, v58, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown ancillary entityID - %lld\n", v105, 0xCu);
  }

  v59 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
  {
    *v105 = 134217984;
    v106 = v30;
    _os_log_fault_impl(&dword_18565F000, v59, OS_LOG_TYPE_FAULT, "CoreData: Unknown ancillary entityID - %lld", v105, 0xCu);
  }

LABEL_101:

  v60 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v61 = _pflogging_catastrophic_mode;
    v62 = _PFLogGetLogStream(1);
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (v61)
    {
      if (v63)
      {
        *v105 = 0;
        goto LABEL_170;
      }
    }

    else if (v63)
    {
      *v105 = 0;
LABEL_170:
      _os_log_error_impl(&dword_18565F000, v62, OS_LOG_TYPE_ERROR, "CoreData: error: BufferAllocations Result Object has an invalid Object ID\n", v105, 2u);
    }
  }

  _NSCoreDataLog_console(1, "BufferAllocations Result Object has an invalid Object ID");
  objc_autoreleasePoolPop(v60);
LABEL_150:
  v72 = 0;
LABEL_151:
  v88 = v72;
LABEL_152:
  objc_autoreleasePoolPop(v5);
  result = v72;
LABEL_37:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

- (__CFString)taggedStringFromPtr:(__CFString *)result withLength:(char *)__s
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  result = *__s;
  if (*__s == -1)
  {
    result = [(_PFResultObject *)v2 stringFromPtr:?];
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(*(v2->info + 24) + 40) & 2) != 0)
  {
    v3 = strlen(__s);
    if (v3 > 7)
    {
      v5 = 0;
    }

    else
    {
      v4 = v3;
      v11 = 0;
      __memmove_chk();
      v5 = (8 * v4) | (v11 << 7) | 0x8000000000000002;
      v8 = *MEMORY[0x1E69E5910] ^ v5;
      if ((~v8 & 0xC000000000000007) != 0)
      {
        v5 = v8 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v8 & 7));
      }
    }

    result = v5;
  }

  if (!result)
  {
LABEL_11:
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected tagged string result\n", buf, 2u);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Unexpected tagged string result", v9, 2u);
    }

    return 0;
  }

  return result;
}

- (__CFString)stringFromPtr:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (*a2 != -1)
  {
    if (!*a2)
    {
      v4 = objc_opt_class();
      object_setClass(v2, v4);
    }

    v2[1] = a1;
    return v2;
  }

  v6 = +[_PFResultUniString bufferOffset];
  v7 = *(v2 + 4);
  v2[1] = a1;
  v8 = a1;
  v9 = CFStringCreateWithBytesNoCopy(0, v2 + v6, v7, 0x8000100u, 0, +[_PFResultUniString cfDeallocator]);

  return v9;
}

- (id)objectForKey:(id)a3
{
  parent_buffer = self->_parent_buffer;
  if (parent_buffer)
  {
    metadata = parent_buffer->_metadata;
  }

  else
  {
    metadata = 0;
  }

  v6 = [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)metadata mapping] indexForKey:a3];

  return [(_PFResultObject *)self valueAtIndex:v6];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (self)
  {
    v8 = self;
    if (!a3->var0)
    {
      a3->var2 = self;
    }

    a3->var1 = a4;
    v9 = *(self + 8);
    if (v9)
    {
      v10 = *(v9 + 40);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 mapping];
    v12 = [v11 length];
    v13 = [v11 keys];
    self = 0;
    var0 = a3->var0;
    if (a5 && var0 < v12)
    {
      self = 0;
      do
      {
        if (*(v8 + 40 + 8 * var0))
        {
          a4[self++] = *(v13 + 8 * var0);
        }

        ++var0;
      }

      while (var0 < v12 && self < a5);
    }

    a3->var0 = var0;
  }

  return self;
}

- (id)keyEnumerator
{
  v3 = [_PFResultObjectKeyEnumerator alloc];
  parent_buffer = self->_parent_buffer;
  if (parent_buffer)
  {
    metadata = parent_buffer->_metadata;
  }

  else
  {
    metadata = 0;
  }

  v6 = [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)metadata mapping] keys];
  v7 = self->_parent_buffer;
  if (v7)
  {
    v8 = v7->_metadata;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_PFResultObjectKeyEnumerator *)v3 initWithArray:v6 forTarget:self withReferenceValues:&self[1] andRange:0, [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)v8 mapping] length]];

  return v9;
}

@end