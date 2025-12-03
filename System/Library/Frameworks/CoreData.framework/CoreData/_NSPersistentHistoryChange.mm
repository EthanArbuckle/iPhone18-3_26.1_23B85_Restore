@interface _NSPersistentHistoryChange
+ (CFMutableSetRef)_updatedPropertiesForEntity:(void *)entity andData:;
+ (id)_mergeOldMask:(void *)mask andNewMask:;
+ (void)_dataMaskForEntity:(const __CFBitVector *)entity andDeltaMask:;
+ (void)_propertyDataForEntity:(void *)entity withSetOfPropertyNames:;
- (_NSPersistentHistoryChange)initWithCoder:(id)coder;
- (_NSPersistentHistoryChange)initWithDictionary:(id)dictionary andChangeObjectID:(id)d;
- (_NSPersistentHistoryChange)initWithManagedObject:(id)object;
- (id)updatedProperties;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSPersistentHistoryChange

- (id)updatedProperties
{
  columns = self->_columns;
  if (!columns)
  {
    return 0;
  }

  sqlEntity = self->_sqlEntity;
  if (!sqlEntity)
  {
    return 0;
  }

  v4 = [_NSPersistentHistoryChange _updatedPropertiesForEntity:columns andData:?];

  return v4;
}

- (void)dealloc
{
  self->_changedObjectID = 0;

  self->_tombstone = 0;
  self->_columns = 0;

  self->_sqlEntity = 0;
  self->_backingObjectID = 0;
  v3.receiver = self;
  v3.super_class = _NSPersistentHistoryChange;
  [(_NSPersistentHistoryChange *)&v3 dealloc];
}

- (_NSPersistentHistoryChange)initWithManagedObject:(id)object
{
  v20 = *MEMORY[0x1E69E9840];
  if (object && (v5 = *(object + 6)) != 0)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  if (![v6 valueForKey:@"CHANGETYPE"] || !objc_msgSend(object, "objectID"))
  {
    v17.receiver = self;
    v17.super_class = _NSPersistentHistoryChange;
    v11 = [(_NSPersistentHistoryChange *)&v17 init];
    if (!v11)
    {
LABEL_17:
      v16 = *MEMORY[0x1E69E9840];
      return v11;
    }

    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v13 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (v15)
        {
          *buf = 138412290;
          objectCopy2 = object;
LABEL_19:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: _NSPersistentHistoryChange was created with an empty MO - %@\n", buf, 0xCu);
        }
      }

      else if (v15)
      {
        *buf = 138412290;
        objectCopy2 = object;
        goto LABEL_19;
      }
    }

    _NSCoreDataLog_console(1, "_NSPersistentHistoryChange was created with an empty MO - %@", object);
    objc_autoreleasePoolPop(v12);
    goto LABEL_17;
  }

  v7 = [_NSPersistentHistoryChange alloc];
  objectID = [object objectID];
  v9 = *MEMORY[0x1E69E9840];

  return [(_NSPersistentHistoryChange *)v7 initWithDictionary:v6 andChangeObjectID:objectID];
}

- (_NSPersistentHistoryChange)initWithDictionary:(id)dictionary andChangeObjectID:(id)d
{
  dictionaryCopy = dictionary;
  v135 = *MEMORY[0x1E69E9840];
  v7 = [dictionary count];
  if (!d || !v7)
  {
    v122.receiver = self;
    v122.super_class = _NSPersistentHistoryChange;
    v39 = [(_NSPersistentHistoryChange *)&v122 init];
    if (!v39)
    {
      goto LABEL_73;
    }

    v40 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v41 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v43 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (v43)
        {
          *buf = 0;
LABEL_138:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: _NSPersistentHistoryChange was created with an empty changeDictionary or changeObjectID\n", buf, 2u);
        }
      }

      else if (v43)
      {
        *buf = 0;
        goto LABEL_138;
      }
    }

    _NSCoreDataLog_console(1, "_NSPersistentHistoryChange was created with an empty changeDictionary or changeObjectID");
    objc_autoreleasePoolPop(v40);
    goto LABEL_73;
  }

  _referenceData64 = [d _referenceData64];
  v9 = [objc_msgSend(dictionaryCopy valueForKey:{@"CHANGETYPE", "unsignedIntegerValue"}];
  v10 = [dictionaryCopy valueForKey:@"COLUMNS"];
  v11 = [objc_msgSend(dictionaryCopy valueForKey:{@"ENTITY", "unsignedLongValue"}];
  v12 = [objc_msgSend(dictionaryCopy valueForKey:{@"ENTITYPK", "longLongValue"}];
  persistentStore = [d persistentStore];
  v116 = persistentStore;
  if (!persistentStore || (v11 ? (v14 = v12 < 1) : (v14 = 1), v14))
  {
    v44 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      model = [(__CFString *)v116 model];
      if (model)
      {
        model = model[4];
      }

      v63 = [model valueForKey:@"name"];
      if (v63)
      {
        v64 = v63;
      }

      else
      {
        v64 = @"<null>";
      }

      model2 = [(__CFString *)v116 model];
      if (model2)
      {
        model2 = model2[4];
      }

      v66 = [model2 valueForKey:@"entityID"];
      *buf = 138413570;
      if (v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = @"<null>";
      }

      v68 = v116;
      v124 = 0;
      if (!v116)
      {
        v68 = @"<null>";
      }

      v125 = 2048;
      v126 = v11;
      v127 = 2048;
      v128 = v12;
      v129 = 2112;
      v130 = v64;
      v131 = 2112;
      v132 = v67;
      v133 = 2112;
      v134 = v68;
      _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpectedly nil entry in: entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@\n", buf, 0x3Eu);
    }

    v45 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      model3 = [(__CFString *)v116 model];
      if (model3)
      {
        model3 = model3[4];
      }

      v47 = [model3 valueForKey:@"name"];
      if (v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = @"<null>";
      }

      model4 = [(__CFString *)v116 model];
      if (model4)
      {
        model4 = model4[4];
      }

      v50 = [model4 valueForKey:@"entityID"];
      *buf = 138413570;
      if (v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = @"<null>";
      }

      v52 = v116;
      v124 = 0;
      if (!v116)
      {
        v52 = @"<null>";
      }

      v125 = 2048;
      v126 = v11;
      v127 = 2048;
      v128 = v12;
      v129 = 2112;
      v130 = v48;
      v131 = 2112;
      v132 = v51;
      v133 = 2112;
      v134 = v52;
      _os_log_fault_impl(&dword_18565F000, v45, OS_LOG_TYPE_FAULT, "CoreData: Unexpectedly nil entry in: entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@", buf, 0x3Eu);
    }
  }

  else
  {
    v15 = persistentStore;
    v16 = [-[__CFString model](persistentStore "model")];
    if (v16)
    {
      v117 = v16;
      v115 = [(__CFString *)v15 newObjectIDForEntity:v16 pk:v12];
      if (!v115)
      {
        v17 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          model5 = [(__CFString *)v15 model];
          if (model5)
          {
            model5 = model5[4];
          }

          v96 = [model5 valueForKey:@"name"];
          if (v96)
          {
            v97 = v96;
          }

          else
          {
            v97 = @"<null>";
          }

          model6 = [(__CFString *)v116 model];
          if (model6)
          {
            model6 = model6[4];
          }

          v99 = [model6 valueForKey:@"entityID"];
          *buf = 138413570;
          if (v99)
          {
            v100 = v99;
          }

          else
          {
            v100 = @"<null>";
          }

          v124 = v117;
          v125 = 2048;
          v126 = v11;
          v127 = 2048;
          v128 = v12;
          v129 = 2112;
          v130 = v97;
          v131 = 2112;
          v132 = v100;
          v133 = 2112;
          v15 = v116;
          v134 = v116;
          _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected change - objectID failed for entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@\n", buf, 0x3Eu);
        }

        v18 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          model7 = [(__CFString *)v15 model];
          if (model7)
          {
            model7 = model7[4];
          }

          v102 = [model7 valueForKey:@"name"];
          if (v102)
          {
            v103 = v102;
          }

          else
          {
            v103 = @"<null>";
          }

          model8 = [(__CFString *)v116 model];
          if (model8)
          {
            model8 = model8[4];
          }

          v105 = [model8 valueForKey:@"entityID"];
          *buf = 138413570;
          if (v105)
          {
            v106 = v105;
          }

          else
          {
            v106 = @"<null>";
          }

          v124 = v117;
          v125 = 2048;
          v126 = v11;
          v127 = 2048;
          v128 = v12;
          v129 = 2112;
          v130 = v103;
          v131 = 2112;
          v132 = v106;
          v133 = 2112;
          v134 = v116;
          _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Unexpected change - objectID failed for entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@", buf, 0x3Eu);
        }
      }

      if (v9 == 2)
      {
        v19 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v117];
        if ([v19 count])
        {
          v111 = v11;
          v112 = v12;
          v107 = _referenceData64;
          selfCopy = self;
          v109 = v10;
          dCopy = d;
          v118 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v19, "count")}];
          if ([v19 count])
          {
            v20 = 0;
            v21 = @"TOMBSTONE";
            v22 = 0x1E696A000uLL;
            do
            {
              context = objc_autoreleasePoolPush();
              v23 = [*(v22 + 3776) stringWithFormat:@"%@%lu", v21, v20];
              v24 = [dictionaryCopy objectForKey:v23];
              if (v24 != NSKeyValueCoding_NullValue)
              {
                v119 = [dictionaryCopy objectForKey:v23];
                if (v119)
                {
                  v25 = byte_1ED4BEECF;
                  v26 = [v19 objectAtIndexedSubscript:v20];
                  v27 = v26;
                  if (v25 == 1 && (v28 = [v26 containsString:@"."], v29 = objc_msgSend(v19, "objectAtIndexedSubscript:", v20), v27 = v29, v28))
                  {
                    v30 = [v29 componentsSeparatedByString:@"."];
                    if ([v30 count])
                    {
                      v31 = 0;
                      v32 = v118;
                      do
                      {
                        v33 = objc_autoreleasePoolPush();
                        v34 = [v30 objectAtIndex:v31];
                        if (v31 == [v30 count] - 1)
                        {
                          [v32 setObject:v119 forKey:v34];
                        }

                        else
                        {
                          if (![v32 objectForKey:v34])
                          {
                            v35 = v21;
                            v36 = dictionaryCopy;
                            v37 = v19;
                            v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
                            [v32 setObject:v38 forKey:v34];

                            v19 = v37;
                            dictionaryCopy = v36;
                            v21 = v35;
                            v22 = 0x1E696A000;
                          }

                          v32 = [v32 objectForKey:v34];
                        }

                        objc_autoreleasePoolPop(v33);
                        ++v31;
                      }

                      while ([v30 count] > v31);
                    }
                  }

                  else
                  {
                    [v118 setObject:v119 forKey:v27];
                  }
                }
              }

              objc_autoreleasePoolPop(context);
              ++v20;
            }

            while (v20 < [v19 count]);
          }

          if (![v118 count])
          {

            v118 = 0;
          }

          v10 = v109;
          d = dCopy;
          _referenceData64 = v107;
          self = selfCopy;
          v9 = 2;
          v11 = v111;
          v12 = v112;
        }

        else
        {
          v118 = 0;
        }

        v56 = v115;

        v55 = 1;
      }

      else
      {
        v118 = 0;
        v55 = 1;
        v56 = v115;
      }

      goto LABEL_58;
    }

    v53 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      model9 = [(__CFString *)v15 model];
      if (model9)
      {
        model9 = model9[4];
      }

      v84 = [model9 valueForKey:@"name"];
      if (v84)
      {
        v85 = v84;
      }

      else
      {
        v85 = @"<null>";
      }

      model10 = [(__CFString *)v116 model];
      if (model10)
      {
        model10 = model10[4];
      }

      v87 = [model10 valueForKey:@"entityID"];
      *buf = 134218754;
      if (v87)
      {
        v88 = v87;
      }

      else
      {
        v88 = @"<null>";
      }

      v124 = v11;
      v125 = 2112;
      v126 = v85;
      v127 = 2112;
      v128 = v88;
      v129 = 2112;
      v15 = v116;
      v130 = v116;
      _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected change - entity ID (%ld) not found in model - %@ - %@, store - %@\n", buf, 0x2Au);
    }

    v54 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      model11 = [(__CFString *)v15 model];
      if (model11)
      {
        model11 = model11[4];
      }

      v90 = [model11 valueForKey:@"name"];
      if (v90)
      {
        v91 = v90;
      }

      else
      {
        v91 = @"<null>";
      }

      model12 = [(__CFString *)v116 model];
      if (model12)
      {
        model12 = model12[4];
      }

      v93 = [model12 valueForKey:@"entityID"];
      *buf = 134218754;
      if (v93)
      {
        v94 = v93;
      }

      else
      {
        v94 = @"<null>";
      }

      v124 = v11;
      v125 = 2112;
      v126 = v91;
      v127 = 2112;
      v128 = v94;
      v129 = 2112;
      v130 = v116;
      _os_log_fault_impl(&dword_18565F000, v54, OS_LOG_TYPE_FAULT, "CoreData: Unexpected change - entity ID (%ld) not found in model - %@ - %@, store - %@", buf, 0x2Au);
      v55 = 0;
      v117 = 0;
      v118 = 0;
      goto LABEL_57;
    }
  }

  v55 = 0;
  v117 = 0;
  v118 = 0;
LABEL_57:
  v56 = 0;
LABEL_58:
  if (!objc_opt_class())
  {
    v57 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      model13 = [(__CFString *)v116 model];
      v113 = v12;
      if (model13)
      {
        model13 = model13[4];
      }

      v70 = [model13 valueForKey:@"name"];
      if (v70)
      {
        v71 = v70;
      }

      else
      {
        v71 = @"<null>";
      }

      model14 = [(__CFString *)v116 model];
      if (model14)
      {
        model14 = model14[4];
      }

      v73 = [model14 valueForKey:@"entityID"];
      *buf = 138413570;
      if (v73)
      {
        v74 = v73;
      }

      else
      {
        v74 = @"<null>";
      }

      v75 = v116;
      v124 = v117;
      if (!v116)
      {
        v75 = @"<null>";
      }

      v125 = 2048;
      v126 = v11;
      v127 = 2048;
      v128 = v113;
      v129 = 2112;
      v130 = v71;
      v12 = v113;
      v131 = 2112;
      v132 = v74;
      v133 = 2112;
      v134 = v75;
      _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpectedly corrupt changedObjectID failed for entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@\n", buf, 0x3Eu);
    }

    v58 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      model15 = [(__CFString *)v116 model];
      v114 = v12;
      if (model15)
      {
        model15 = model15[4];
      }

      v77 = [model15 valueForKey:@"name"];
      if (v77)
      {
        v78 = v77;
      }

      else
      {
        v78 = @"<null>";
      }

      model16 = [(__CFString *)v116 model];
      if (model16)
      {
        model16 = model16[4];
      }

      v80 = [model16 valueForKey:@"entityID"];
      *buf = 138413570;
      if (v80)
      {
        v81 = v80;
      }

      else
      {
        v81 = @"<null>";
      }

      v82 = v116;
      v124 = v117;
      if (!v116)
      {
        v82 = @"<null>";
      }

      v125 = 2048;
      v126 = v11;
      v127 = 2048;
      v128 = v114;
      v129 = 2112;
      v130 = v78;
      v131 = 2112;
      v132 = v81;
      v133 = 2112;
      v134 = v82;
      _os_log_fault_impl(&dword_18565F000, v58, OS_LOG_TYPE_FAULT, "CoreData: Unexpectedly corrupt changedObjectID failed for entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@", buf, 0x3Eu);
    }
  }

  v121.receiver = self;
  v121.super_class = _NSPersistentHistoryChange;
  v59 = [(_NSPersistentHistoryChange *)&v121 init];
  v39 = v59;
  if (v59)
  {
    v59->_changeID = _referenceData64;
    v59->_changedObjectID = v56;
    v39->_changeType = v9;
    if (v118)
    {
      v39->_tombstone = v118;
    }

    if (v10)
    {
      v39->_columns = v10;
    }

    if (v55)
    {
      v39->_sqlEntity = v117;
    }

    v39->_backingObjectID = d;
  }

LABEL_73:
  v60 = *MEMORY[0x1E69E9840];
  return v39;
}

- (_NSPersistentHistoryChange)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _NSPersistentHistoryChange;
  v4 = [(_NSPersistentHistoryChange *)&v8 init];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v4->_changedObjectID = [coder decodeObjectOfClasses:+[_PFRoutines xpcStoreArchiverObjectIDClassesForSecureCoding]() forKey:@"NSPersistentHistoryChangeObjectID"];
    v4->_changeID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSPersistentHistoryChangeID", "longLongValue"}];
    v4->_changeType = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSPersistentHistoryChangeType", "integerValue"}];
    v4->_tombstone = [coder decodeObjectOfClasses:+[_PFRoutines attributeClassesForSecureCoding]() forKey:@"NSPersistentHistoryChangeTombstone"];
    v4->_columns = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPersistentHistoryChangeColumn"];
    changedObjectID = v4->_changedObjectID;
    if (changedObjectID)
    {
      v4->_sqlEntity = _sqlEntityForEntityDescription([(NSPersistentStore *)[(NSManagedObjectID *)changedObjectID persistentStore] model], [(NSManagedObjectID *)v4->_changedObjectID entity]);
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_autoreleasePoolPush();
  [coder encodeObject:self->_changedObjectID forKey:@"NSPersistentHistoryChangeObjectID"];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_changeID), @"NSPersistentHistoryChangeID"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", self->_changeType), @"NSPersistentHistoryChangeType"}];
  [coder encodeObject:self->_tombstone forKey:@"NSPersistentHistoryChangeTombstone"];
  [coder encodeObject:self->_transaction forKey:@"NSPersistentHistoryChangeTransaction"];
  [coder encodeObject:self->_columns forKey:@"NSPersistentHistoryChangeColumn"];

  objc_autoreleasePoolPop(v5);
}

+ (CFMutableSetRef)_updatedPropertiesForEntity:(void *)entity andData:
{
  v98 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  foreignKeyColumns = [a2 foreignKeyColumns];
  foreignEntityKeyColumns = [a2 foreignEntityKeyColumns];
  foreignOrderKeyColumns = [a2 foreignOrderKeyColumns];
  attributeColumns = [a2 attributeColumns];
  toManyRelationships = [a2 toManyRelationships];
  manyToManyRelationships = [a2 manyToManyRelationships];
  v65 = attributeColumns;
  v11 = [attributeColumns count];
  v12 = [foreignOrderKeyColumns count];
  v13 = [foreignEntityKeyColumns count];
  v14 = [foreignKeyColumns count];
  v66 = toManyRelationships;
  v15 = [toManyRelationships count];
  v67 = manyToManyRelationships;
  v16 = v12 + v11 + v13 + v14 + v15 + [manyToManyRelationships count];
  if (v16 <= 8 * [entity length])
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v18 = CFBitVectorCreate(0, [entity bytes], v16);
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v19 = [foreignKeyColumns countByEnumeratingWithState:&v88 objects:v97 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v89;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v89 != v22)
          {
            objc_enumerationMutation(foreignKeyColumns);
          }

          v24 = *(*(&v88 + 1) + 8 * i);
          if (CFBitVectorGetBitAtIndex(v18, v21))
          {
            toOneRelationship = [v24 toOneRelationship];
            if (toOneRelationship)
            {
              propertyDescription = [toOneRelationship propertyDescription];
              if (propertyDescription)
              {
                [(__CFSet *)Mutable addObject:propertyDescription];
              }
            }
          }

          ++v21;
        }

        v20 = [foreignKeyColumns countByEnumeratingWithState:&v88 objects:v97 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v27 = [foreignEntityKeyColumns countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v85;
      v30 = v65;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v85 != v29)
          {
            objc_enumerationMutation(foreignEntityKeyColumns);
          }

          v32 = *(*(&v84 + 1) + 8 * j);
          if (CFBitVectorGetBitAtIndex(v18, v21))
          {
            toOneRelationship2 = [v32 toOneRelationship];
            if (toOneRelationship2)
            {
              propertyDescription2 = [toOneRelationship2 propertyDescription];
              if (propertyDescription2)
              {
                [(__CFSet *)Mutable addObject:propertyDescription2];
              }
            }
          }

          ++v21;
        }

        v28 = [foreignEntityKeyColumns countByEnumeratingWithState:&v84 objects:v96 count:16];
      }

      while (v28);
    }

    else
    {
      v30 = v65;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v35 = [foreignOrderKeyColumns countByEnumeratingWithState:&v80 objects:v95 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v81;
      v38 = v66;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v81 != v37)
          {
            objc_enumerationMutation(foreignOrderKeyColumns);
          }

          v40 = *(*(&v80 + 1) + 8 * k);
          if (CFBitVectorGetBitAtIndex(v18, v21))
          {
            toOneRelationship3 = [v40 toOneRelationship];
            if (toOneRelationship3)
            {
              propertyDescription3 = [toOneRelationship3 propertyDescription];
              if (propertyDescription3)
              {
                [(__CFSet *)Mutable addObject:propertyDescription3];
              }
            }
          }

          ++v21;
        }

        v36 = [foreignOrderKeyColumns countByEnumeratingWithState:&v80 objects:v95 count:16];
      }

      while (v36);
    }

    else
    {
      v38 = v66;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v43 = [v30 countByEnumeratingWithState:&v76 objects:v94 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v77;
      v46 = v67;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v77 != v45)
          {
            objc_enumerationMutation(v30);
          }

          v48 = *(*(&v76 + 1) + 8 * m);
          if (CFBitVectorGetBitAtIndex(v18, v21))
          {
            -[__CFSet addObject:](Mutable, "addObject:", [v48 attributeDescription]);
          }

          ++v21;
        }

        v44 = [v30 countByEnumeratingWithState:&v76 objects:v94 count:16];
      }

      while (v44);
    }

    else
    {
      v46 = v67;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v49 = [v38 countByEnumeratingWithState:&v72 objects:v93 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v73;
      do
      {
        v52 = 0;
        do
        {
          if (*v73 != v51)
          {
            objc_enumerationMutation(v38);
          }

          v53 = *(*(&v72 + 1) + 8 * v52);
          if (CFBitVectorGetBitAtIndex(v18, v21))
          {
            if (v53)
            {
              propertyDescription4 = [v53 propertyDescription];
            }

            else
            {
              propertyDescription4 = 0;
            }

            [(__CFSet *)Mutable addObject:propertyDescription4];
          }

          ++v21;
          ++v52;
        }

        while (v50 != v52);
        v55 = [v38 countByEnumeratingWithState:&v72 objects:v93 count:16];
        v50 = v55;
      }

      while (v55);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v56 = [v46 countByEnumeratingWithState:&v68 objects:v92 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v69;
      do
      {
        v59 = 0;
        do
        {
          if (*v69 != v58)
          {
            objc_enumerationMutation(v46);
          }

          v60 = *(*(&v68 + 1) + 8 * v59);
          if (CFBitVectorGetBitAtIndex(v18, v21))
          {
            if (v60)
            {
              propertyDescription5 = [v60 propertyDescription];
            }

            else
            {
              propertyDescription5 = 0;
            }

            [(__CFSet *)Mutable addObject:propertyDescription5];
          }

          ++v21;
          ++v59;
        }

        while (v57 != v59);
        v62 = [v46 countByEnumeratingWithState:&v68 objects:v92 count:16];
        v57 = v62;
      }

      while (v62);
    }

    CFRelease(v18);
  }

  else
  {
    Mutable = 0;
  }

  v63 = *MEMORY[0x1E69E9840];
  return Mutable;
}

+ (void)_propertyDataForEntity:(void *)entity withSetOfPropertyNames:
{
  v88 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  foreignKeyColumns = [a2 foreignKeyColumns];
  foreignEntityKeyColumns = [a2 foreignEntityKeyColumns];
  foreignOrderKeyColumns = [a2 foreignOrderKeyColumns];
  attributeColumns = [a2 attributeColumns];
  toManyRelationships = [a2 toManyRelationships];
  manyToManyRelationships = [a2 manyToManyRelationships];
  v56 = attributeColumns;
  v11 = [attributeColumns count];
  v55 = foreignOrderKeyColumns;
  v12 = [foreignOrderKeyColumns count] + v11;
  v54 = foreignEntityKeyColumns;
  v13 = [foreignEntityKeyColumns count];
  v14 = v12 + v13 + [foreignKeyColumns count];
  v57 = toManyRelationships;
  v15 = [toManyRelationships count];
  v53 = manyToManyRelationships;
  v16 = [manyToManyRelationships count];
  v52 = v14 + v15 + v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  bzero(&v52 - v17, v19);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v20 = [foreignKeyColumns countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v79;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v79 != v23)
        {
          objc_enumerationMutation(foreignKeyColumns);
        }

        if ([entity containsObject:{objc_msgSend(objc_msgSend(*(*(&v78 + 1) + 8 * i), "toOneRelationship", v52), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v21 = [foreignKeyColumns countByEnumeratingWithState:&v78 objects:v87 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v25 = [v54 countByEnumeratingWithState:&v74 objects:v86 count:{16, v52}];
  if (v25)
  {
    v26 = v25;
    v27 = *v75;
    v28 = v53;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v75 != v27)
        {
          objc_enumerationMutation(v54);
        }

        if ([entity containsObject:{objc_msgSend(objc_msgSend(*(*(&v74 + 1) + 8 * j), "toOneRelationship"), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v26 = [v54 countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v26);
  }

  else
  {
    v28 = v53;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v30 = [v55 countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v71;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v71 != v32)
        {
          objc_enumerationMutation(v55);
        }

        if ([entity containsObject:{objc_msgSend(objc_msgSend(*(*(&v70 + 1) + 8 * k), "toOneRelationship"), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v31 = [v55 countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v31);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v34 = [v56 countByEnumeratingWithState:&v66 objects:v84 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v67;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v67 != v36)
        {
          objc_enumerationMutation(v56);
        }

        if ([entity containsObject:{objc_msgSend(*(*(&v66 + 1) + 8 * m), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v35 = [v56 countByEnumeratingWithState:&v66 objects:v84 count:16];
    }

    while (v35);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v38 = [v57 countByEnumeratingWithState:&v62 objects:v83 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v63;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v63 != v40)
        {
          objc_enumerationMutation(v57);
        }

        if ([entity containsObject:{objc_msgSend(*(*(&v62 + 1) + 8 * n), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v39 = [v57 countByEnumeratingWithState:&v62 objects:v83 count:16];
    }

    while (v39);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v42 = [v28 countByEnumeratingWithState:&v58 objects:v82 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v59;
    do
    {
      for (ii = 0; ii != v43; ++ii)
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v28);
        }

        if ([entity containsObject:{objc_msgSend(*(*(&v58 + 1) + 8 * ii), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v43 = [v28 countByEnumeratingWithState:&v58 objects:v82 count:16];
    }

    while (v43);
  }

  v46 = v52;
  v47 = CFBitVectorCreate(0, v18, v52);
  v48 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(v46 + 7) >> 3];
  mutableBytes = [v48 mutableBytes];
  v89.location = 0;
  v89.length = v46;
  CFBitVectorGetBits(v47, v89, mutableBytes);
  CFRelease(v47);
  v50 = *MEMORY[0x1E69E9840];
  return v48;
}

+ (void)_dataMaskForEntity:(const __CFBitVector *)entity andDeltaMask:
{
  v32[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  foreignKeyColumns = [a2 foreignKeyColumns];
  foreignEntityKeyColumns = [a2 foreignEntityKeyColumns];
  foreignOrderKeyColumns = [a2 foreignOrderKeyColumns];
  attributeColumns = [a2 attributeColumns];
  toManyRelationships = [a2 toManyRelationships];
  manyToManyRelationships = [a2 manyToManyRelationships];
  v11 = [attributeColumns count];
  v12 = [foreignOrderKeyColumns count] + v11;
  v13 = [foreignEntityKeyColumns count];
  v14 = v12 + v13 + [foreignKeyColumns count];
  v15 = [toManyRelationships count];
  v16 = [manyToManyRelationships count];
  v17 = v14 + v15 + v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v32 - v18;
  bzero(v32 - v18, v20);
  Count = CFBitVectorGetCount(entity);
  v22 = Count - 1;
  if (Count < 1)
  {
LABEL_11:
    v28 = 0;
  }

  else
  {
    v23 = Count;
    v24 = 0;
    v25 = 0;
    do
    {
      while (CFBitVectorGetBitAtIndex(entity, v24))
      {
        v25 = 1;
        v19[v24 >> 3] |= 1 << (~v24 & 7);
        if (v22 == v24++)
        {
          goto LABEL_10;
        }
      }

      ++v24;
    }

    while (v23 != v24);
    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v27 = CFBitVectorCreate(0, v19, v17);
    v28 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(v17 + 7) >> 3];
    mutableBytes = [v28 mutableBytes];
    v33.location = 0;
    v33.length = v17;
    CFBitVectorGetBits(v27, v33, mutableBytes);
    CFRelease(v27);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (id)_mergeOldMask:(void *)mask andNewMask:
{
  objc_opt_self();
  bytes = [a2 bytes];
  bytes2 = [mask bytes];
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if ([a2 length])
  {
    v8 = 0;
    v9 = 1;
    do
    {
      if ([mask length] <= v8)
      {
        break;
      }

      v12 = *(bytes2 + v8) | *(bytes + v8);
      [v7 appendBytes:&v12 length:1];
      v8 = v9;
    }

    while ([a2 length] > v9++);
  }

  return v7;
}

@end