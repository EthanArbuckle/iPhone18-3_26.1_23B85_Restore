@interface EKParticipantForSorting
+ (id)_cache;
+ (id)participantForSortingWithEKParticipant:(id)participant;
+ (id)participantsForSortingWithEKParticipants:(id)participants;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)participant;
- (int64_t)compare:(id)compare;
- (int64_t)compareByContactNames:(id)names;
- (int64_t)compareByEmailThenByContactName:(id)name;
@end

@implementation EKParticipantForSorting

+ (id)_cache
{
  if (_cache_onceToken != -1)
  {
    +[EKParticipantForSorting _cache];
  }

  v3 = _cache_s_participantCache;

  return v3;
}

void __33__EKParticipantForSorting__cache__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _cache_s_participantCache;
  _cache_s_participantCache = v0;

  [_cache_s_participantCache setCountLimit:1000];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:*MEMORY[0x1E695C3D8] object:0 queue:0 usingBlock:&__block_literal_global_5];
}

+ (id)participantForSortingWithEKParticipant:(id)participant
{
  v12 = *MEMORY[0x1E69E9840];
  if (participant)
  {
    participantCopy = participant;
    v4 = MEMORY[0x1E695DEC8];
    participantCopy2 = participant;
    v6 = [v4 arrayWithObjects:&participantCopy count:1];

    v7 = [self participantsForSortingWithEKParticipants:{v6, participantCopy, v12}];
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)participantsForSortingWithEKParticipants:(id)participants
{
  v71[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  participantsCopy = participants;
  v6 = [v4 dictionaryWithCapacity:{objc_msgSend(participantsCopy, "count")}];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(participantsCopy, "count")}];
  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __68__EKParticipantForSorting_participantsForSortingWithEKParticipants___block_invoke;
  v65[3] = &unk_1E77FDA30;
  selfCopy = self;
  selfCopy2 = self;
  v9 = v7;
  v66 = v9;
  v10 = v8;
  v67 = v10;
  v11 = v6;
  v68 = v11;
  [participantsCopy enumerateObjectsUsingBlock:v65];
  v12 = [participantsCopy mutableCopy];

  v55 = v10;
  [v12 removeObjectsAtIndexes:v10];
  v54 = v12;
  v13 = [v12 copy];
  v14 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v71[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  v60 = v11;
  allValues = [v11 allValues];
  v53 = v15;
  v58 = [defaultProvider unifiedContactsDictionaryForHandleStrings:allValues keysToFetch:v15];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v13;
  v18 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v62;
    v59 = v9;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v61 + 1) + 8 * i);
        v23 = [v60 objectForKeyedSubscript:v22];
        if (v23)
        {
          v24 = [v58 objectForKeyedSubscript:v23];
          firstObject = [v24 firstObject];
        }

        else
        {
          firstObject = 0;
        }

        name = [v22 name];
        cal_isPhoneNumber = [name cal_isPhoneNumber];

        if (!firstObject && (cal_isPhoneNumber & 1) == 0)
        {
          firstObject = objc_opt_new();
          v28 = MEMORY[0x1E6993018];
          name2 = [v22 name];
          v30 = [v28 personNameComponentsFromString:name2];

          nickname = [v30 nickname];
          if (nickname)
          {
            [firstObject setNickname:nickname];
          }

          familyName = [v30 familyName];

          if (familyName)
          {
            [firstObject setFamilyName:familyName];
          }

          givenName = [v30 givenName];

          if (givenName)
          {
            [firstObject setGivenName:givenName];
          }

          namePrefix = [v30 namePrefix];

          if (namePrefix)
          {
            [firstObject setNamePrefix:namePrefix];
          }

          nameSuffix = [v30 nameSuffix];

          if (nameSuffix)
          {
            [firstObject setNameSuffix:nameSuffix];
          }

          middleName = [v30 middleName];

          if (middleName)
          {
            [firstObject setMiddleName:middleName];
          }

          v9 = v59;
        }

        if (firstObject)
        {
          [MEMORY[0x1E695CD80] stringFromContact:firstObject style:0];
        }

        else
        {
          [v22 name];
        }
        v37 = ;
        v38 = objc_alloc_init(EKParticipantForSorting);
        p_isa = &v38->super.isa;
        if (v37)
        {
          [(EKParticipantForSorting *)v38 setCachedDisplayName:v37];
          if (cal_isPhoneNumber)
          {
            goto LABEL_40;
          }
        }

        else
        {
          name3 = [v22 name];

          if (name3)
          {
            name4 = [v22 name];
            [p_isa setCachedDisplayName:name4];
          }

          else
          {
            emailAddress = [v22 emailAddress];

            if (emailAddress)
            {
              emailAddress2 = [v22 emailAddress];
              [p_isa setCachedDisplayName:emailAddress2];

              [p_isa setIsEmail:1];
            }

            else
            {
              phoneNumber = [v22 phoneNumber];
              [p_isa setCachedDisplayName:phoneNumber];

              [p_isa setIsPhone:1];
            }
          }

          v9 = v59;
          if (cal_isPhoneNumber)
          {
            goto LABEL_40;
          }
        }

        givenName2 = [firstObject givenName];

        if (givenName2)
        {
          givenName3 = [firstObject givenName];
          [p_isa setFirstName:givenName3];
        }

        familyName2 = [firstObject familyName];

        if (familyName2)
        {
          familyName3 = [firstObject familyName];
          [p_isa setLastName:familyName3];
        }

LABEL_40:
        objc_storeWeak(p_isa + 1, v22);
        [v9 addObject:p_isa];
        if (v23)
        {
          _cache = [selfCopy _cache];
          [_cache setObject:p_isa forKey:v23];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v19);
  }

  v50 = v9;
  v51 = *MEMORY[0x1E69E9840];
  return v9;
}

void __68__EKParticipantForSorting_participantsForSortingWithEKParticipants___block_invoke(id *a1, void *a2, uint64_t a3)
{
  obj = a2;
  v5 = [obj emailAddress];

  if (v5)
  {
    v6 = [obj emailAddress];
  }

  else
  {
    v7 = [obj phoneNumber];

    if (!v7)
    {
      goto LABEL_10;
    }

    v6 = [obj phoneNumber];
  }

  v8 = v6;
  if (v6)
  {
    v9 = [a1[7] _cache];
    objc_sync_enter(v9);
    v10 = [a1[7] _cache];
    v11 = [v10 objectForKey:v8];

    if (v11)
    {
      objc_storeWeak(v11 + 1, obj);
      objc_sync_exit(v9);

      [a1[4] addObject:v11];
      [a1[5] addIndex:a3];
    }

    else
    {
      objc_sync_exit(v9);

      [a1[6] setObject:v8 forKeyedSubscript:obj];
    }
  }

LABEL_10:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = EKParticipantForSorting;
  v4 = [(EKParticipantForSorting *)&v10 description];
  cachedDisplayName = self->_cachedDisplayName;
  isEmail = self->_isEmail;
  v7 = CalBooleanAsString();
  v8 = [v3 stringWithFormat:@"[%@] Display name: [%@], isEmail: [%@]", v4, cachedDisplayName, v7];

  return v8;
}

- (id)participant
{
  _cache = [objc_opt_class() _cache];
  objc_sync_enter(_cache);
  WeakRetained = objc_loadWeakRetained(&self->_participant);
  objc_sync_exit(_cache);

  return WeakRetained;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  WeakRetained = objc_loadWeakRetained(&self->_participant);
  v6 = [(EKParticipantForSorting *)self participantIsOptional:WeakRetained];

  participant = [compareCopy participant];
  v8 = [(EKParticipantForSorting *)self participantIsOptional:participant];

  if (!v6 || v8)
  {
    if (v6 || !v8)
    {
      v9 = [(EKParticipantForSorting *)self compareByEmailThenByContactName:compareCopy];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (int64_t)compareByEmailThenByContactName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_isEmail)
  {
    if (![nameCopy isEmail])
    {
      v6 = 1;
      goto LABEL_11;
    }

    if (self->_isEmail)
    {
LABEL_7:
      if ([v5 isEmail])
      {
        displayName = [(EKParticipantForSorting *)self displayName];
        displayName2 = [v5 displayName];
        v6 = [displayName compare:displayName2 options:1];

        goto LABEL_11;
      }

LABEL_9:
      v6 = [(EKParticipantForSorting *)self compareByContactNames:v5];
      goto LABEL_11;
    }
  }

  if (([v5 isEmail] & 1) == 0)
  {
    if (!self->_isEmail)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = -1;
LABEL_11:

  return v6;
}

- (int64_t)compareByContactNames:(id)names
{
  v4 = MEMORY[0x1E695CE40];
  namesCopy = names;
  sharedDefaults = [v4 sharedDefaults];
  sortOrder = [sharedDefaults sortOrder];

  if (sortOrder == 2)
  {
    v8 = self->_firstName;
    v9 = self->_lastName;
    firstName = [namesCopy firstName];
    [namesCopy lastName];
  }

  else
  {
    v8 = self->_lastName;
    v9 = self->_firstName;
    firstName = [namesCopy lastName];
    [namesCopy firstName];
  }
  v11 = ;

  if (!v8 && firstName)
  {
    goto LABEL_6;
  }

  if (v8 && !firstName)
  {
    goto LABEL_9;
  }

  if (!v8 || !firstName || (v12 = [(NSString *)v8 compare:firstName options:1]) == NSOrderedSame)
  {
    if (!v9 && v11)
    {
LABEL_6:
      v12 = 1;
      goto LABEL_20;
    }

    if (v9 && !v11)
    {
LABEL_9:
      v12 = -1;
      goto LABEL_20;
    }

    v12 = 0;
    if (v9 && v11)
    {
      v12 = [(NSString *)v9 compare:v11 options:1];
    }
  }

LABEL_20:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[EKParticipantForSorting allocWithZone:?]];
  [(EKParticipantForSorting *)v4 setFirstName:self->_firstName];
  [(EKParticipantForSorting *)v4 setLastName:self->_lastName];
  [(EKParticipantForSorting *)v4 setCachedDisplayName:self->_cachedDisplayName];
  [(EKParticipantForSorting *)v4 setIsEmail:self->_isEmail];
  [(EKParticipantForSorting *)v4 setIsPhone:self->_isPhone];
  return v4;
}

@end