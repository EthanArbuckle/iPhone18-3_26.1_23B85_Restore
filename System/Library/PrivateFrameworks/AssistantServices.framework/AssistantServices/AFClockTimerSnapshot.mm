@interface AFClockTimerSnapshot
+ (id)newWithBuilder:(id)builder;
- (AFClockTimerSnapshot)initWithBuilder:(id)builder;
- (AFClockTimerSnapshot)initWithCoder:(id)coder;
- (AFClockTimerSnapshot)initWithDictionaryRepresentation:(id)representation;
- (AFClockTimerSnapshot)initWithGeneration:(unint64_t)generation date:(id)date timersByID:(id)d notifiedFiringTimerIDs:(id)ds;
- (AFClockTimerSnapshot)initWithSerializedBackingStore:(id)store;
- (BOOL)hasFiringTimers;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)firingTimers;
- (id)mostRecentFiringTimer;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFClockTimerSnapshot

- (id)ad_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AFClockTimerSnapshot generation](self, "generation")}];
  date = [(AFClockTimerSnapshot *)self date];
  v6 = [date description];
  notifiedFiringTimerIDs = [(AFClockTimerSnapshot *)self notifiedFiringTimerIDs];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFClockTimerSnapshot hasFiringTimers](self, "hasFiringTimers")}];
  v9 = [v3 stringWithFormat:@"(gen: %@, date: %@, notifiedFiringTimerIDs: %@, isFiring: %@)", v4, v6, notifiedFiringTimerIDs, v8];

  return v9;
}

- (BOOL)hasFiringTimers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  timersByID = [(AFClockTimerSnapshot *)self timersByID];
  allValues = [timersByID allValues];

  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isFiring] && AFClockIsFiringTimerValid(v7))
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)buildDictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  [v3 setObject:v4 forKey:@"generation"];

  date = self->_date;
  if (date)
  {
    [v3 setObject:date forKey:@"date"];
  }

  if (self->_timersByID)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_timersByID, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = self->_timersByID;
    v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [(NSDictionary *)self->_timersByID objectForKey:v12];
          buildDictionaryRepresentation = [v13 buildDictionaryRepresentation];
          [v6 setObject:buildDictionaryRepresentation forKey:v12];
        }

        v9 = [(NSDictionary *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    v15 = [v6 copy];
    [v3 setObject:v15 forKey:@"timersByID"];
  }

  if (self->_notifiedFiringTimerIDs)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSOrderedSet count](self->_notifiedFiringTimerIDs, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = self->_notifiedFiringTimerIDs;
    v18 = [(NSOrderedSet *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v16 addObject:{*(*(&v26 + 1) + 8 * j), v26}];
        }

        v19 = [(NSOrderedSet *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }

    v22 = [v16 copy];
    [v3 setObject:v22 forKey:@"notifiedFiringTimerIDs"];
  }

  v23 = [v3 copy];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (AFClockTimerSnapshot)initWithDictionaryRepresentation:(id)representation
{
  v49 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"generation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    unsignedLongLongValue = [v7 unsignedLongLongValue];
    v10 = [v5 objectForKey:@"date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v10;
    }

    else
    {
      v36 = 0;
    }

    v11 = [v5 objectForKey:@"timersByID"];
    objc_opt_class();
    v37 = unsignedLongLongValue;
    selfCopy = self;
    if (objc_opt_isKindOfClass())
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v35 = v11;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v44;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v13 objectForKey:v18];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = [[AFClockTimer alloc] initWithDictionaryRepresentation:v19];
                if (v20)
                {
                  [v12 setObject:v20 forKey:v18];
                }
              }

              else
              {
                v20 = 0;
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v15);
      }

      v21 = [v12 copy];
      v11 = v35;
      unsignedLongLongValue = v37;
      self = selfCopy;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v5 objectForKey:@"notifiedFiringTimerIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
      v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v25 = v22;
      v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v39 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = v30;

              if (v31)
              {
                [v24 addObject:v31];
              }
            }

            else
            {

              v31 = 0;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v27);
      }

      v32 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v24];
      v5 = v23;
      unsignedLongLongValue = v37;
      self = selfCopy;
    }

    else
    {
      v32 = 0;
    }

    self = [(AFClockTimerSnapshot *)self initWithGeneration:unsignedLongLongValue date:v36 timersByID:v21 notifiedFiringTimerIDs:v32];
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  generation = self->_generation;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:generation];
  [coderCopy encodeObject:v6 forKey:@"AFClockTimerSnapshot::generation"];

  [coderCopy encodeObject:self->_date forKey:@"AFClockTimerSnapshot::date"];
  [coderCopy encodeObject:self->_timersByID forKey:@"AFClockTimerSnapshot::timersByID"];
  [coderCopy encodeObject:self->_notifiedFiringTimerIDs forKey:@"AFClockTimerSnapshot::notifiedFiringTimerIDs"];
}

- (AFClockTimerSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClockTimerSnapshot::generation"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFClockTimerSnapshot::date"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"AFClockTimerSnapshot::timersByID"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"AFClockTimerSnapshot::notifiedFiringTimerIDs"];

  v17 = [(AFClockTimerSnapshot *)self initWithGeneration:unsignedLongLongValue date:v7 timersByID:v12 notifiedFiringTimerIDs:v16];
  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      generation = self->_generation;
      if (generation == [(AFClockTimerSnapshot *)v5 generation])
      {
        date = [(AFClockTimerSnapshot *)v5 date];
        date = self->_date;
        if (date == date || [(NSDate *)date isEqual:date])
        {
          timersByID = [(AFClockTimerSnapshot *)v5 timersByID];
          timersByID = self->_timersByID;
          if (timersByID == timersByID || [(NSDictionary *)timersByID isEqual:timersByID])
          {
            notifiedFiringTimerIDs = [(AFClockTimerSnapshot *)v5 notifiedFiringTimerIDs];
            notifiedFiringTimerIDs = self->_notifiedFiringTimerIDs;
            v13 = notifiedFiringTimerIDs == notifiedFiringTimerIDs || [(NSOrderedSet *)notifiedFiringTimerIDs isEqual:notifiedFiringTimerIDs];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  v4 = [v3 hash];
  v5 = [(NSDate *)self->_date hash];
  v6 = v5 ^ [(NSDictionary *)self->_timersByID hash];
  v7 = v6 ^ [(NSOrderedSet *)self->_notifiedFiringTimerIDs hash];

  return v7 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFClockTimerSnapshot;
  v5 = [(AFClockTimerSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, date = %@, timersByID = %@, notifiedFiringTimerIDs = %@}", v5, self->_generation, self->_date, self->_timersByID, self->_notifiedFiringTimerIDs];

  return v6;
}

- (AFClockTimerSnapshot)initWithGeneration:(unint64_t)generation date:(id)date timersByID:(id)d notifiedFiringTimerIDs:(id)ds
{
  dateCopy = date;
  dCopy = d;
  dsCopy = ds;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__AFClockTimerSnapshot_initWithGeneration_date_timersByID_notifiedFiringTimerIDs___block_invoke;
  v18[3] = &unk_1E7346098;
  v19 = dateCopy;
  v20 = dCopy;
  v21 = dsCopy;
  generationCopy = generation;
  v13 = dsCopy;
  v14 = dCopy;
  v15 = dateCopy;
  v16 = [(AFClockTimerSnapshot *)self initWithBuilder:v18];

  return v16;
}

void __82__AFClockTimerSnapshot_initWithGeneration_date_timersByID_notifiedFiringTimerIDs___block_invoke(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a2;
  [v4 setGeneration:v3];
  [v4 setDate:a1[4]];
  [v4 setTimersByID:a1[5]];
  [v4 setNotifiedFiringTimerIDs:a1[6]];
}

- (AFClockTimerSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = AFClockTimerSnapshot;
  v5 = [(AFClockTimerSnapshot *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFClockTimerSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFClockTimerSnapshotMutation *)v7 isDirty])
    {
      v6->_generation = [(_AFClockTimerSnapshotMutation *)v7 getGeneration];
      getDate = [(_AFClockTimerSnapshotMutation *)v7 getDate];
      v9 = [getDate copy];
      date = v6->_date;
      v6->_date = v9;

      getTimersByID = [(_AFClockTimerSnapshotMutation *)v7 getTimersByID];
      v12 = [getTimersByID copy];
      timersByID = v6->_timersByID;
      v6->_timersByID = v12;

      getNotifiedFiringTimerIDs = [(_AFClockTimerSnapshotMutation *)v7 getNotifiedFiringTimerIDs];
      v15 = [getNotifiedFiringTimerIDs copy];
      notifiedFiringTimerIDs = v6->_notifiedFiringTimerIDs;
      v6->_notifiedFiringTimerIDs = v15;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFClockTimerSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFClockTimerSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFClockTimerSnapshot);
      v6->_generation = [(_AFClockTimerSnapshotMutation *)v5 getGeneration];
      getDate = [(_AFClockTimerSnapshotMutation *)v5 getDate];
      v8 = [getDate copy];
      date = v6->_date;
      v6->_date = v8;

      getTimersByID = [(_AFClockTimerSnapshotMutation *)v5 getTimersByID];
      v11 = [getTimersByID copy];
      timersByID = v6->_timersByID;
      v6->_timersByID = v11;

      getNotifiedFiringTimerIDs = [(_AFClockTimerSnapshotMutation *)v5 getNotifiedFiringTimerIDs];
      v14 = [getNotifiedFiringTimerIDs copy];
      notifiedFiringTimerIDs = v6->_notifiedFiringTimerIDs;
      v6->_notifiedFiringTimerIDs = v14;
    }

    else
    {
      v6 = [(AFClockTimerSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFClockTimerSnapshot *)self copy];
  }

  return v6;
}

- (AFClockTimerSnapshot)initWithSerializedBackingStore:(id)store
{
  storeCopy = store;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:storeCopy error:0];
    generation = [v5 generation];
    date = [v5 date];
    timersByID = [v5 timersByID];
    notifiedFiringTimerIDs = [v5 notifiedFiringTimerIDs];
    self = [(AFClockTimerSnapshot *)self initWithGeneration:generation date:date timersByID:timersByID notifiedFiringTimerIDs:notifiedFiringTimerIDs];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)firingTimers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  notifiedFiringTimerIDs = [(AFClockTimerSnapshot *)self notifiedFiringTimerIDs];
  timersByID = [(AFClockTimerSnapshot *)self timersByID];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __45__AFClockTimerSnapshot_Utility__firingTimers__block_invoke;
  v13 = &unk_1E7347F70;
  v14 = notifiedFiringTimerIDs;
  v15 = v3;
  v6 = v3;
  v7 = notifiedFiringTimerIDs;
  [timersByID enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v6 copy];

  return v8;
}

void __45__AFClockTimerSnapshot_Utility__firingTimers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 isFiring] && AFClockIsFiringTimerValid(v6))
  {
    if ([*(a1 + 32) containsObject:v5])
    {
      goto LABEL_8;
    }

    v7 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *v10 = 136315394;
    *&v10[4] = "[AFClockTimerSnapshot(Utility) firingTimers]_block_invoke";
    *&v10[12] = 2112;
    *&v10[14] = v6;
    v8 = "%s Timer %@ is not in notifiedFiringTimerIDs, but isFiring is YES.";
    goto LABEL_11;
  }

  if ([*(a1 + 32) containsObject:v5])
  {
    v7 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      [*(a1 + 40) addObject:{v6, *v10, *&v10[16], v11}];
      goto LABEL_9;
    }

    *v10 = 136315394;
    *&v10[4] = "[AFClockTimerSnapshot(Utility) firingTimers]_block_invoke";
    *&v10[12] = 2112;
    *&v10[14] = v6;
    v8 = "%s Timer %@ is in notifiedFiringTimerIDs, but isFiring is NO.";
LABEL_11:
    _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, v8, v10, 0x16u);
    goto LABEL_8;
  }

LABEL_9:

  v9 = *MEMORY[0x1E69E9840];
}

- (id)mostRecentFiringTimer
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  timersByID = [(AFClockTimerSnapshot *)self timersByID];
  allValues = [timersByID allValues];

  v4 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 isFiring] && AFClockIsFiringTimerValid(v9))
        {
          if (v6)
          {
            firedDate = [v6 firedDate];
            firedDate2 = [v9 firedDate];
            if ([firedDate compare:firedDate2] == -1)
            {
              v12 = v9;
            }

            else
            {
              v12 = v6;
            }

            v13 = v12;

            v6 = v13;
          }

          else
          {
            v6 = v9;
          }
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

@end