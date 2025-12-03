@interface SFAnalytics
+ (BOOL)parseEventFilter:(id)filter format:(id)format error:(id *)error;
+ (BOOL)parseRules:(id)rules format:(id)format error:(id *)error;
+ (BOOL)validateSFACollection:(id)collection error:(id *)error;
+ (id)defaultAnalyticsDatabasePath:(id)path;
+ (id)defaultProtectedAnalyticsDatabasePath:(id)path;
+ (id)defaultProtectedAnalyticsDatabasePath:(id)path uuid:(id)uuid;
+ (id)encodeSFACollection:(id)collection error:(id *)error;
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code description:(id)description underlying:(id)underlying;
+ (id)formatSFACollection:(id)collection error:(id *)error;
+ (id)fuzzyNumber:(id)number;
+ (id)hwModelID;
+ (id)logger;
+ (id)parseAction:(id)action error:(id *)error;
+ (id)parseVersions:(id)versions error:(id *)error;
+ (id)treeOfUnderlyingErrors:(id)errors depth:(int64_t)depth;
+ (id)underlyingErrors:(id)errors;
+ (int64_t)fuzzyDaysSinceDate:(id)date;
+ (int64_t)fuzzyInteger:(int64_t)integer;
+ (void)addOSVersionToEvent:(id)event;
+ (void)logConsumerProcessInfo;
+ (void)removeLegacyDefaultAnalyticsDatabasePath:(id)path usingDispatchToken:(int64_t *)token;
- (SFAnalytics)init;
- (id)AddMultiSamplerForName:(id)name withTimeInterval:(double)interval block:(id)block;
- (id)addMetricSamplerForName:(id)name withTimeInterval:(double)interval block:(id)block;
- (id)coreAnalyticsKeyFilter:(id)filter;
- (id)dailyMetrics;
- (id)dataPropertyForKey:(id)key;
- (id)database;
- (id)datePropertyForKey:(id)key;
- (id)eventDictForEventName:(id)name withAttributes:(id)attributes eventClass:(int64_t)class timestampBucket:(double)bucket;
- (id)existingMetricSamplerForName:(id)name;
- (id)existingMultiSamplerForName:(id)name;
- (id)logSystemMetricsForActivityNamed:(id)named withAction:(id)action;
- (id)metricsAccountID;
- (id)numberPropertyForKey:(id)key;
- (id)startLogSystemMetricsForActivityNamed:(id)named;
- (void)addMetricsHook:(id)hook;
- (void)dailyCoreAnalyticsMetrics:(id)metrics;
- (void)incrementIntegerPropertyForKey:(id)key;
- (void)loadCollectionConfiguration;
- (void)logEventNamed:(id)named class:(int64_t)class attributes:(id)attributes timestampBucket:(unsigned int)bucket;
- (void)logMetric:(id)metric withName:(id)name oncePerReport:(BOOL)report;
- (void)logResultForEvent:(id)event hardFailure:(BOOL)failure result:(id)result withAttributes:(id)attributes timestampBucket:(unsigned int)bucket;
- (void)noteLaunchSequence:(id)sequence;
- (void)removeMetricSamplerForName:(id)name;
- (void)removeMetricsHook:(id)hook;
- (void)removeMultiSamplerForName:(id)name;
- (void)removeStateAndUnlinkFile:(BOOL)file;
- (void)setDataProperty:(id)property forKey:(id)key;
- (void)setDateProperty:(id)property forKey:(id)key;
- (void)setMetricsAccountID:(id)d;
- (void)setNumberProperty:(id)property forKey:(id)key;
- (void)updateCollectionConfigurationWithData:(id)data;
@end

@implementation SFAnalytics

+ (id)logger
{
  if (objc_opt_class() == self)
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "attempt to instatiate abstract class SFAnalytics", v8, 2u);
    }

    v4 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v4 = objc_getAssociatedObject(selfCopy, "SFAnalyticsInstance");
    if (!v4)
    {
      v4 = objc_alloc_init(selfCopy);
      objc_setAssociatedObject(selfCopy, "SFAnalyticsInstance", v4, 0x301);
    }

    objc_sync_exit(selfCopy);

    database = [v4 database];
  }

  return v4;
}

- (id)database
{
  v14 = *MEMORY[0x1E69E9840];
  database = self->_database;
  if (!database)
  {
    databasePath = [objc_opt_class() databasePath];
    v5 = [SFAnalyticsSQLiteStore storeWithPath:databasePath schema:@"CREATE TABLE IF NOT EXISTS hard_failures (\nid INTEGER PRIMARY KEY AUTOINCREMENT, \ntimestamp REAL, data BLOB\n)\nDROP TRIGGER IF EXISTS maintain_ring_buffer_hard_failures;\nCREATE TRIGGER IF NOT EXISTS maintain_ring_buffer_hard_failures_v2 AFTER INSERT ON hard_failures\nBEGIN\nDELETE FROM hard_failures WHERE id <= NEW.id - 1000;\nEND;\nCREATE TABLE IF NOT EXISTS soft_failures (\nid INTEGER PRIMARY KEY AUTOINCREMENT, \ntimestamp REAL, data BLOB\n);\nDROP TRIGGER IF EXISTS maintain_ring_buffer_soft_failures;\nCREATE TRIGGER IF NOT EXISTS maintain_ring_buffer_soft_failures_v2 AFTER INSERT ON soft_failures\nBEGIN\nDELETE FROM soft_failures WHERE id <= NEW.id - 1000;\nEND;\nCREATE TABLE IF NOT EXISTS notes (\nid INTEGER PRIMARY KEY AUTOINCREMENT, \ntimestamp REAL, data BLOB\n);\nDROP TRIGGER IF EXISTS maintain_ring_buffer_notes;\nCREATE TRIGGER IF NOT EXISTS maintain_ring_buffer_notes_v2 AFTER INSERT ON notes\nBEGIN\nDELETE FROM notes WHERE id <= NEW.id - 1000;\nEND;\nCREATE TABLE IF NOT EXISTS samples (\nid INTEGER PRIMARY KEY AUTOINCREMENT, \ntimestamp REAL, \nname STRING, \nvalue REAL\n);\nDROP TRIGGER IF EXISTS maintain_ring_buffer_samples;\nCREATE TRIGGER IF NOT EXISTS maintain_ring_buffer_samples_v2 AFTER INSERT ON samples\nBEGIN\nDELETE FROM samples WHERE id <= NEW.id - 1000;\nEND;\nCREATE TABLE IF NOT EXISTS success_count (\nevent_type STRING PRIMARY KEY, \nsuccess_count INTEGER, \nhard_failure_count INTEGER, \nsoft_failure_count INTEGER\n);\nCREATE TABLE IF NOT EXISTS rockwell (\nevent_type STRING PRIMARY KEY, \ntimestamp REAL, data BLOB\n);\nCREATE TABLE IF NOT EXISTS upload_file (\nfile STRING PRIMARY KEY, \nstore STRING, \ntimestamp REAL\n);\nDROP TABLE IF EXISTS all_events;\n"];;
    v6 = self->_database;
    self->_database = v5;

    database = self->_database;
    if (!database)
    {
      v7 = secLogObjForScope("SecCritical");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Did not get a database! (Client %@)", &v12, 0xCu);
      }

      database = self->_database;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return database;
}

+ (id)formatSFACollection:(id)collection error:(id *)error
{
  v4 = [collection decompressedDataUsingAlgorithm:0 error:error];
  if (v4)
  {
    v5 = [[SECSFARules alloc] initWithData:v4];
    v6 = v5;
    if (v5)
    {
      formattedText = [(SECSFARules *)v5 formattedText];
    }

    else
    {
      formattedText = 0;
    }
  }

  else
  {
    formattedText = 0;
  }

  return formattedText;
}

+ (BOOL)validateSFACollection:(id)collection error:(id *)error
{
  v5 = [collection decompressedDataUsingAlgorithm:0 error:?];
  if (v5)
  {
    v6 = [[SECSFARules alloc] initWithData:v5];
    v7 = v6;
    v8 = v6 != 0;
    if (error && !v6)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)encodeSFACollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v7 = objc_alloc_init(SECSFARules);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:collectionCopy options:0 error:error];
  objc_opt_class();
  v9 = 0;
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 objectForKeyedSubscript:@"configVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v10 intValue] < 3)
      {
        -[SECSFARules setConfigVersion:](v7, "setConfigVersion:", [v10 intValue]);
        if (![self requiredVersion:1 rules:v7 reason:@"base version" error:error])
        {
          v9 = 0;
          goto LABEL_22;
        }

        v11 = [v8 objectForKeyedSubscript:@"rules"];
        if (!v11 || [self parseRules:v11 format:v7 error:error])
        {
          v15 = [v8 objectForKeyedSubscript:@"versions"];
          if (!v15 || ([self parseVersions:v15 error:error], v16 = objc_claimAutoreleasedReturnValue(), -[SECSFARules setAllowedBuilds:](v7, "setAllowedBuilds:", v16), v16, -[SECSFARules allowedBuilds](v7, "allowedBuilds"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
          {
            v17 = [v8 objectForKeyedSubscript:@"eventFilter"];
            if (v17 && ![self parseEventFilter:v17 format:v7 error:error])
            {
              v9 = 0;
            }

            else
            {
              data = [(SECSFARules *)v7 data];
              v19 = data;
              if (data)
              {
                v9 = [data compressedDataUsingAlgorithm:0 error:error];
              }

              else
              {
                v9 = 0;
              }
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configVersion not understood %@, this tool knows about %d", v10, 2];
        v12 = [self errorWithCode:15 description:v11];
        if (error)
        {
          v12 = v12;
          *error = v12;
        }
      }
    }

    else
    {
      v13 = [self errorWithCode:16 description:@"configVersion missing"];
      v11 = v13;
      if (error)
      {
        v14 = v13;
        v9 = 0;
        *error = v11;
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }
    }

    v9 = 0;
    goto LABEL_21;
  }

LABEL_23:

LABEL_24:

  return v9;
}

+ (BOOL)parseEventFilter:(id)filter format:(id)format error:(id *)error
{
  filterCopy = filter;
  formatCopy = format;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__994;
    v22 = __Block_byref_object_dispose__995;
    v23 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__SFAnalytics_SFACollection__parseEventFilter_format_error___block_invoke;
    v14[3] = &unk_1E70D4978;
    v16 = &v18;
    selfCopy = self;
    v15 = formatCopy;
    [filterCopy enumerateKeysAndObjectsUsingBlock:v14];
    v10 = v19[5];
    v11 = v10 == 0;
    if (error && v10)
    {
      *error = v10;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    if (error)
    {
      v12 = [self errorWithCode:1 description:@"events key missing"];
      *error = v12;
    }

    v11 = 0;
  }

  return v11;
}

void __60__SFAnalytics_SFACollection__parseEventFilter_format_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = objc_alloc_init(SECSFAEventFilter);
    [(SECSFAEventFilter *)v8 setEvent:v15];
    v9 = [v7 integerValue];
    v10 = 100 - v9;
    if (v9 > 0x63)
    {
      v10 = 0;
    }

    if (v9 >= 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = 100;
    }

    [(SECSFAEventFilter *)v8 setDropRate:v11];
    [*(a1 + 32) addEventFilter:v8];
  }

  else
  {
    v12 = [*(a1 + 48) errorWithCode:3 description:@"events type invalid"];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }
}

+ (id)parseVersions:(id)versions error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy = error;
    v7 = objc_alloc_init(SECSFAVersionMatch);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = versionsCopy;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      selfCopy = self;
      v28 = versionsCopy;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = [selfCopy errorWithCode:3 description:@"versions type invalid"];
            v14 = v20;
            if (errorCopy)
            {
              v21 = v20;
              *errorCopy = v14;
            }

            goto LABEL_24;
          }

          v14 = [v13 objectForKeyedSubscript:@"version"];
          v15 = [v13 objectForKeyedSubscript:@"platform"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"versions is string: %@", v13];
            goto LABEL_21;
          }

          v16 = [SFAnalyticsCollection parseVersion:v14 platform:v15];
          if (!v16)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"versions not parsing: %@", v13];
            v22 = LABEL_21:;
            v23 = [selfCopy errorWithCode:3 description:v22];

            if (errorCopy)
            {
              v24 = v23;
              *errorCopy = v23;
            }

LABEL_24:
            versionsCopy = v28;

            v18 = 0;
            goto LABEL_25;
          }

          v17 = v16;
          [(SECSFAVersionMatch *)v7 addVersions:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
        versionsCopy = v28;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = v7;
LABEL_25:
  }

  else
  {
    if (error)
    {
      v19 = [self errorWithCode:1 description:@"versions key missing"];
      *error = v19;
    }

    v18 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (BOOL)parseRules:(id)rules format:(id)format error:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  formatCopy = format;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = rulesCopy;
    v57 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (!v57)
    {
      v41 = 1;
      goto LABEL_84;
    }

    v60 = formatCopy;
    errorCopy = error;
    v10 = 0x1E695D000uLL;
    v58 = *v69;
    v11 = 0x1E696A000uLL;
    selfCopy = self;
    v56 = rulesCopy;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v69 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v68 + 1) + 8 * v12);
        v14 = *(v10 + 3872);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v43 = [self errorWithCode:3 description:@"rules type invalid"];
          v15 = v43;
          rulesCopy = v56;
          if (errorCopy)
          {
            v44 = v43;
            *errorCopy = v15;
          }

          goto LABEL_74;
        }

        v15 = [v13 objectForKeyedSubscript:@"eventType"];
        v16 = *(v11 + 3776);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v45 = [self errorWithCode:2 description:@"eventType missing"];
            *errorCopy = v45;
          }

          goto LABEL_73;
        }

        v17 = [v13 objectForKeyedSubscript:@"eventClass"];
        if (!v17)
        {
          goto LABEL_14;
        }

        v18 = *(v11 + 3776);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          rulesCopy = v56;
          formatCopy = v60;
          v47 = errorCopy;
          if (errorCopy)
          {
            v48 = [selfCopy errorWithCode:2 description:@"eventType not a string"];
            goto LABEL_64;
          }

LABEL_65:

          goto LABEL_83;
        }

        if ([v17 isEqual:@"all"])
        {
          v19 = 0;
          v20 = 1;
          goto LABEL_15;
        }

        if (([v17 isEqual:@"errors"] & 1) == 0)
        {
          if ([v17 isEqual:@"success"])
          {
            v19 = 0;
            v20 = 10;
          }

          else if ([v17 isEqual:@"hardfail"])
          {
            v19 = 0;
            v20 = 11;
          }

          else if ([v17 isEqual:@"softfail"])
          {
            v19 = 0;
            v20 = 12;
          }

          else if ([v17 isEqual:@"note"])
          {
            v19 = 0;
            v20 = 13;
          }

          else
          {
            if (([v17 isEqual:@"rockwell"] & 1) == 0)
            {
              rulesCopy = v56;
              formatCopy = v60;
              v47 = errorCopy;
              if (errorCopy)
              {
                v55 = [*(v11 + 3776) stringWithFormat:@"unknown eventclass: %@", v17];
                v48 = [selfCopy errorWithCode:2 description:v55];

LABEL_64:
                v49 = v48;
                *v47 = v48;
              }

              goto LABEL_65;
            }

            v19 = 0;
            v20 = 14;
          }
        }

        else
        {
LABEL_14:
          v20 = 0;
          v19 = 1;
        }

LABEL_15:
        v21 = [v13 objectForKeyedSubscript:@"match"];
        v22 = *(v10 + 3872);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v46 = [self errorWithCode:4 description:@"match missing"];
          if (errorCopy)
          {
            v46 = v46;
            *errorCopy = v46;
          }

          goto LABEL_72;
        }

        v23 = [v13 objectForKeyedSubscript:@"repeatAfterSeconds"];
        if (v23)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy)
            {
              v50 = [self errorWithCode:5 description:@"repeatAfterSeconds not number"];
              *errorCopy = v50;
            }

            goto LABEL_72;
          }
        }

        v65 = v23;
        v24 = [v13 objectForKeyedSubscript:@"processName"];
        if (v24)
        {
          v25 = *(v11 + 3776);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy)
            {
              v51 = [self errorWithCode:5 description:@"processName not string"];
              *errorCopy = v51;
            }

LABEL_72:
LABEL_73:
            rulesCopy = v56;
LABEL_74:
            formatCopy = v60;
            goto LABEL_83;
          }
        }

        v64 = v15;
        v26 = v24;
        v27 = [v13 objectForKeyedSubscript:@"matchOnFirstFailure"];
        if (v27)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy)
            {
              v52 = [self errorWithCode:5 description:@"matchOnFirstFailure not number"];
              *errorCopy = v52;
            }

            goto LABEL_81;
          }
        }

        v28 = [v13 objectForKeyedSubscript:@"versions"];
        objc_opt_class();
        v62 = v17;
        if (objc_opt_isKindOfClass())
        {
          if (![self requiredVersion:2 rules:v60 reason:@"versions on rule" error:errorCopy])
          {
            goto LABEL_80;
          }

          v29 = objc_opt_class();
          v67 = 0;
          v30 = [v29 parseVersions:v28 error:&v67];
          v31 = v67;
          if (!v30)
          {
            if (errorCopy)
            {
              v31 = v31;
              *errorCopy = v31;
            }

            v17 = v62;
LABEL_80:

LABEL_81:
LABEL_82:
            rulesCopy = v56;
            formatCopy = v60;
            v15 = v64;
LABEL_83:

            v41 = 0;
            goto LABEL_84;
          }
        }

        else
        {
          v30 = 0;
        }

        v32 = objc_alloc_init(SECSFAEventRule);
        [(SECSFAEventRule *)v32 setEventType:v64];
        if ((v19 & 1) == 0)
        {
          [(SECSFAEventRule *)v32 setEventClass:v20];
        }

        v33 = v26;
        [(SECSFAEventRule *)v32 setProcessName:v26];
        -[SECSFAEventRule setRepeatAfterSeconds:](v32, "setRepeatAfterSeconds:", [v65 intValue]);
        -[SECSFAEventRule setMatchOnFirstFailure:](v32, "setMatchOnFirstFailure:", [v27 intValue] != 0);
        [(SECSFAEventRule *)v32 setVersions:v30];
        v66 = 0;
        v34 = [MEMORY[0x1E696AE40] dataWithPropertyList:v21 format:200 options:0 error:&v66];
        v35 = v66;
        [(SECSFAEventRule *)v32 setMatch:v34];

        match = [(SECSFAEventRule *)v32 match];

        if (!match)
        {
          if (errorCopy)
          {
            *errorCopy = [selfCopy errorWithCode:12 description:@"plist encode failed" underlying:v35];
          }

          goto LABEL_82;
        }

        v37 = [v13 objectForKeyedSubscript:@"action"];
        v38 = [selfCopy parseAction:v37 error:errorCopy];
        [(SECSFAEventRule *)v32 setAction:v38];

        action = [(SECSFAEventRule *)v32 action];

        if (action)
        {
          [v60 addEventRules:v32];
        }

        if (!action)
        {
          v41 = 0;
          rulesCopy = v56;
          formatCopy = v60;
          goto LABEL_84;
        }

        ++v12;
        self = selfCopy;
        v10 = 0x1E695D000;
        v11 = 0x1E696A000;
      }

      while (v57 != v12);
      v40 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
      v41 = 1;
      rulesCopy = v56;
      formatCopy = v60;
      v57 = v40;
      if (!v40)
      {
LABEL_84:

        goto LABEL_85;
      }
    }
  }

  if (error)
  {
    v42 = [self errorWithCode:1 description:@"rules key missing"];
    *error = v42;
  }

  v41 = 0;
LABEL_85:

  v53 = *MEMORY[0x1E69E9840];
  return v41;
}

+ (id)parseAction:(id)action error:(id *)error
{
  actionCopy = action;
  v7 = objc_alloc_init(SECSFAAction);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [actionCopy objectForKeyedSubscript:@"radarNumber"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [(SECSFAAction *)v7 setRadarnumber:v8];
      v9 = [actionCopy objectForKeyedSubscript:@"actionType"];
      if (![v9 isEqual:@"ttr"])
      {
        if ([v9 isEqual:@"abc"])
        {
          v10 = objc_alloc_init(SECSFAActionAutomaticBugCapture);
          if (v8)
          {
            v14 = [actionCopy objectForKeyedSubscript:@"domain"];
            v26 = [actionCopy objectForKeyedSubscript:@"type"];
            v15 = [actionCopy objectForKeyedSubscript:@"subtype"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v13 = v14;
                  [(SECSFAActionAutomaticBugCapture *)v10 setDomain:v14];
                  [(SECSFAActionAutomaticBugCapture *)v10 setType:v26];
                  [(SECSFAActionAutomaticBugCapture *)v10 setSubtype:v15];
                  [(SECSFAAction *)v7 setAbc:v10];

                  goto LABEL_22;
                }
              }
            }

            if (error)
            {
              v20 = [self errorWithCode:10 description:@"abc invalid type"];
              *error = v20;
            }

            v17 = v14;
            goto LABEL_35;
          }
        }

        else
        {
          if ([v9 isEqual:@"drop"])
          {
            v10 = objc_alloc_init(SECSFAActionDropEvent);
            v18 = [actionCopy objectForKeyedSubscript:@"event"];
            -[SECSFAActionAutomaticBugCapture setExcludeEvent:](v10, "setExcludeEvent:", [v18 BOOLValue]);

            v19 = [actionCopy objectForKeyedSubscript:@"count"];
            -[SECSFAActionAutomaticBugCapture setExcludeCount:](v10, "setExcludeCount:", [v19 BOOLValue]);

            [(SECSFAAction *)v7 setDrop:v10];
            goto LABEL_30;
          }

          if (!error)
          {
LABEL_37:
            v10 = 0;
            goto LABEL_38;
          }

          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"action unknown: %@", v9];
          v22 = [self errorWithCode:11 description:v10];
          *error = v22;
        }

LABEL_36:

        goto LABEL_37;
      }

      v10 = objc_alloc_init(SECSFAActionTapToRadar);
      if (v10)
      {
        v11 = [actionCopy objectForKeyedSubscript:@"alert"];
        v12 = [actionCopy objectForKeyedSubscript:@"componentID"];
        v25 = [actionCopy objectForKeyedSubscript:@"componentName"];
        v24 = [actionCopy objectForKeyedSubscript:@"componentVersion"];
        v23 = [actionCopy objectForKeyedSubscript:@"radarDescription"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v13 = v11;
                  [(SECSFAActionAutomaticBugCapture *)v10 setAlert:v11];
                  [(SECSFAActionAutomaticBugCapture *)v10 setComponentID:v12];
                  [(SECSFAActionAutomaticBugCapture *)v10 setComponentName:v25];
                  [(SECSFAActionAutomaticBugCapture *)v10 setComponentVersion:v24];
                  [(SECSFAActionAutomaticBugCapture *)v10 setRadarDescription:v23];
                  [(SECSFAAction *)v7 setTtr:v10];

LABEL_22:
LABEL_30:

                  v10 = v7;
                  goto LABEL_38;
                }
              }
            }
          }
        }

        if (error)
        {
          v16 = [self errorWithCode:9 description:@"attribute invalid type"];
          *error = v16;
        }

        v17 = v11;
LABEL_35:

        goto LABEL_36;
      }

LABEL_38:

      goto LABEL_39;
    }

    if (error)
    {
      v9 = [self errorWithCode:8 description:@"radarNumber invalid"];
      v10 = 0;
      *error = v9;
      goto LABEL_38;
    }

    v10 = 0;
  }

  else
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_40;
    }

    v8 = [self errorWithCode:6 description:@"action invalid type"];
    v10 = 0;
    *error = v8;
  }

LABEL_39:

LABEL_40:

  return v10;
}

+ (id)errorWithCode:(int64_t)code description:(id)description underlying:(id)underlying
{
  v7 = MEMORY[0x1E695DF90];
  underlyingCopy = underlying;
  descriptionCopy = description;
  dictionary = [v7 dictionary];
  [dictionary setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A578]];

  [dictionary setObject:underlyingCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:kSecSFAErrorDomain code:code userInfo:dictionary];

  return v11;
}

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = kSecSFAErrorDomain;
  v13 = *MEMORY[0x1E696A578];
  v14[0] = description;
  v7 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v5 errorWithDomain:v6 code:code userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)noteLaunchSequence:(id)sequence
{
  sequenceCopy = sequence;
  metricsReport = [sequenceCopy metricsReport];
  if (metricsReport)
  {
    v5 = MEMORY[0x1E696AEC0];
    name = [sequenceCopy name];
    v7 = [v5 stringWithFormat:@"Launch-%@", name];
    [(SFAnalytics *)self logEventNamed:v7 class:4 attributes:metricsReport timestampBucket:0];
  }
}

- (void)logMetric:(id)metric withName:(id)name oncePerReport:(BOOL)report
{
  metricCopy = metric;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__SFAnalytics_logMetric_withName_oncePerReport___block_invoke;
    v12[3] = &unk_1E70D4F18;
    objc_copyWeak(&v15, location);
    reportCopy = report;
    v13 = nameCopy;
    v14 = metricCopy;
    dispatch_async(queue, v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "SFAnalytics: Need a valid result and name to log result", location, 2u);
    }
  }
}

void __48__SFAnalytics_logMetric_withName_oncePerReport___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained && (WeakRetained[40] & 1) == 0)
  {
    if (*(a1 + 56) == 1)
    {
      v4 = [WeakRetained database];
      [v4 removeAllSamplesForName:*(a1 + 32)];
    }

    v5 = [v6 database];
    [v5 addSample:*(a1 + 40) forName:*(a1 + 32)];
  }
}

- (id)startLogSystemMetricsForActivityNamed:(id)named
{
  namedCopy = named;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SFAnalyticsActivityTracker alloc] initWithName:namedCopy clientClass:objc_opt_class()];
    [(SFAnalyticsActivityTracker *)v4 start];
  }

  else
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Cannot log system metrics without name", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)logSystemMetricsForActivityNamed:(id)named withAction:(id)action
{
  namedCopy = named;
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[SFAnalyticsActivityTracker alloc] initWithName:namedCopy clientClass:objc_opt_class()];
    v8 = v7;
    if (actionCopy)
    {
      [(SFAnalyticsActivityTracker *)v7 performAction:actionCopy];
    }
  }

  else
  {
    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "Cannot log system metrics without name", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)removeMultiSamplerForName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__SFAnalytics_removeMultiSamplerForName___block_invoke;
    v7[3] = &unk_1E70D4DB0;
    objc_copyWeak(&v9, location);
    v8 = nameCopy;
    dispatch_async(queue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Attempt to remove multisampler without specifying samplerName", location, 2u);
    }
  }
}

void __41__SFAnalytics_removeMultiSamplerForName___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [WeakRetained[4] objectForKeyedSubscript:*(a1 + 32)];
    [v3 pauseSampling];

    [WeakRetained[4] removeObjectForKey:*(a1 + 32)];
  }
}

- (void)removeMetricSamplerForName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__SFAnalytics_removeMetricSamplerForName___block_invoke;
    v7[3] = &unk_1E70D4DB0;
    objc_copyWeak(&v9, location);
    v8 = nameCopy;
    dispatch_async(queue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Attempt to remove sampler without specifying samplerName", location, 2u);
    }
  }
}

void __42__SFAnalytics_removeMetricSamplerForName___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [WeakRetained[3] objectForKeyedSubscript:*(a1 + 32)];
    [v3 pauseSampling];

    [WeakRetained[3] removeObjectForKey:*(a1 + 32)];
  }
}

- (id)existingMultiSamplerForName:(id)name
{
  nameCopy = name;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2486;
  v18 = __Block_byref_object_dispose__2487;
  v19 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SFAnalytics_existingMultiSamplerForName___block_invoke;
  v9[3] = &unk_1E70D4DD8;
  objc_copyWeak(&v12, &location);
  v10 = nameCopy;
  v11 = &v14;
  v6 = nameCopy;
  dispatch_sync(queue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __43__SFAnalytics_existingMultiSamplerForName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[4] objectForKeyedSubscript:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    WeakRetained = v6;
  }
}

- (id)existingMetricSamplerForName:(id)name
{
  nameCopy = name;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2486;
  v18 = __Block_byref_object_dispose__2487;
  v19 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SFAnalytics_existingMetricSamplerForName___block_invoke;
  v9[3] = &unk_1E70D4DD8;
  objc_copyWeak(&v12, &location);
  v10 = nameCopy;
  v11 = &v14;
  v6 = nameCopy;
  dispatch_sync(queue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __44__SFAnalytics_existingMetricSamplerForName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[3] objectForKeyedSubscript:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    WeakRetained = v6;
  }
}

- (id)AddMultiSamplerForName:(id)name withTimeInterval:(double)interval block:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  blockCopy = block;
  v10 = blockCopy;
  if (nameCopy)
  {
    if (interval < 1.0 && interval != -1.0)
    {
      v15 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      LODWORD(buf) = 134217984;
      *(&buf + 4) = interval;
      v14 = "SFAnalytics: cannot add sampler with interval %f";
      v17 = v15;
      v18 = 12;
      goto LABEL_16;
    }

    if (blockCopy)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__2486;
      v31 = __Block_byref_object_dispose__2487;
      v32 = 0;
      objc_initWeak(&location, self);
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__SFAnalytics_AddMultiSamplerForName_withTimeInterval_block___block_invoke;
      block[3] = &unk_1E70D4EF0;
      objc_copyWeak(v26, &location);
      v22 = nameCopy;
      p_buf = &buf;
      v26[1] = *&interval;
      selfCopy = self;
      v24 = v10;
      dispatch_sync(queue, block);
      v13 = *(*(&buf + 1) + 40);

      objc_destroyWeak(v26);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);

      goto LABEL_18;
    }

    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v14 = "SFAnalytics: cannot add sampler without block";
      goto LABEL_15;
    }
  }

  else
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v14 = "SFAnalytics: cannot add sampler without name";
LABEL_15:
      v17 = v15;
      v18 = 2;
LABEL_16:
      _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, v14, &buf, v18);
    }
  }

LABEL_17:

  v13 = 0;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

void __61__SFAnalytics_AddMultiSamplerForName_withTimeInterval_block___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained[4] objectForKeyedSubscript:*(a1 + 32)];

  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "SFAnalytics: multisampler %@ already exists", &v12, 0xCu);
    }
  }

  else
  {
    v6 = [SFAnalyticsMultiSampler alloc];
    v7 = *(a1 + 40);
    v8 = [(SFAnalyticsMultiSampler *)v6 initWithName:*(a1 + 32) interval:*(a1 + 48) block:objc_opt_class() clientClass:*(a1 + 72)];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [WeakRetained[4] setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)addMetricSamplerForName:(id)name withTimeInterval:(double)interval block:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  blockCopy = block;
  v10 = blockCopy;
  if (nameCopy)
  {
    if (interval < 1.0 && interval != -1.0)
    {
      v15 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      LODWORD(buf) = 134217984;
      *(&buf + 4) = interval;
      v14 = "SFAnalytics: cannot add sampler with interval %f";
      v17 = v15;
      v18 = 12;
      goto LABEL_16;
    }

    if (blockCopy)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__2486;
      v31 = __Block_byref_object_dispose__2487;
      v32 = 0;
      objc_initWeak(&location, self);
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__SFAnalytics_addMetricSamplerForName_withTimeInterval_block___block_invoke;
      block[3] = &unk_1E70D4EF0;
      objc_copyWeak(v26, &location);
      v22 = nameCopy;
      p_buf = &buf;
      v26[1] = *&interval;
      selfCopy = self;
      v24 = v10;
      dispatch_sync(queue, block);
      v13 = *(*(&buf + 1) + 40);

      objc_destroyWeak(v26);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);

      goto LABEL_18;
    }

    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v14 = "SFAnalytics: cannot add sampler without block";
      goto LABEL_15;
    }
  }

  else
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v14 = "SFAnalytics: cannot add sampler without name";
LABEL_15:
      v17 = v15;
      v18 = 2;
LABEL_16:
      _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, v14, &buf, v18);
    }
  }

LABEL_17:

  v13 = 0;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

void __62__SFAnalytics_addMetricSamplerForName_withTimeInterval_block___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained[3] objectForKeyedSubscript:*(a1 + 32)];

  if (v3)
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "SFAnalytics: sampler %@ already exists", &v12, 0xCu);
    }
  }

  else
  {
    v6 = [SFAnalyticsSampler alloc];
    v7 = *(a1 + 40);
    v8 = [(SFAnalyticsSampler *)v6 initWithName:*(a1 + 32) interval:*(a1 + 48) block:objc_opt_class() clientClass:*(a1 + 72)];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [WeakRetained[3] setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)eventDictForEventName:(id)name withAttributes:(id)attributes eventClass:(int64_t)class timestampBucket:(double)bucket
{
  if (attributes)
  {
    nameCopy = name;
    dictionary = [attributes mutableCopy];
  }

  else
  {
    v12 = MEMORY[0x1E695DF90];
    nameCopy2 = name;
    dictionary = [v12 dictionary];
  }

  v14 = dictionary;
  [dictionary setObject:name forKeyedSubscript:@"eventType"];

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970WithBucket:bucket];
  v17 = v16;

  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v17 * 1000.0];
  [v14 setObject:v18 forKeyedSubscript:@"eventTime"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:class];
  [v14 setObject:v19 forKeyedSubscript:@"eventClass"];

  [SFAnalytics addOSVersionToEvent:v14];

  return v14;
}

- (void)logEventNamed:(id)named class:(int64_t)class attributes:(id)attributes timestampBucket:(unsigned int)bucket
{
  v40 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  attributesCopy = attributes;
  if (namedCopy)
  {
    *buf = 0;
    v34 = buf;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2486;
    v37 = __Block_byref_object_dispose__2487;
    v38 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SFAnalytics_logEventNamed_class_attributes_timestampBucket___block_invoke;
    block[3] = &unk_1E70E41D0;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(queue, block);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = *(v34 + 5);
    v14 = 0;
    v15 = [v13 countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v15)
    {
      v16 = *v29;
      do
      {
        v17 = 0;
        do
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v14 |= (*(*(*(&v28 + 1) + 8 * v17++) + 16))();
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v28 objects:v39 count:16];
      }

      while (v15);
    }

    objc_initWeak(&location, self);
    v18 = self->_queue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__SFAnalytics_logEventNamed_class_attributes_timestampBucket___block_invoke_2;
    v21[3] = &unk_1E70D4EC8;
    objc_copyWeak(v24, &location);
    v21[4] = self;
    v22 = namedCopy;
    v23 = attributesCopy;
    v24[1] = class;
    bucketCopy = bucket;
    v26 = v14;
    dispatch_sync(v18, v21);

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "SFAnalytics: attempt to log an event with no name", buf, 2u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __62__SFAnalytics_logEventNamed_class_attributes_timestampBucket___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) metricsHooks];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __62__SFAnalytics_logEventNamed_class_attributes_timestampBucket___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && (WeakRetained[40] & 1) == 0)
  {
    v18 = WeakRetained;
    v3 = [WeakRetained database];
    [v3 begin];

    LODWORD(v4) = *(a1 + 72);
    v5 = [*(a1 + 32) eventDictForEventName:*(a1 + 40) withAttributes:*(a1 + 48) eventClass:*(a1 + 64) timestampBucket:v4];
    v6 = *(a1 + 64);
    if (v6 <= 1)
    {
      if (v6)
      {
        v9 = v18;
        if (v6 != 1)
        {
          goto LABEL_26;
        }

        v10 = *(a1 + 76);
        if ((v10 & 1) == 0)
        {
          v11 = [v18 database];
          [v11 addEventDict:v5 toTable:@"hard_failures" timestampBucket:*(a1 + 72)];

          v9 = v18;
          v10 = *(a1 + 76);
        }

        if ((v10 & 2) != 0)
        {
          goto LABEL_26;
        }

        v8 = [v9 database];
        [v8 incrementHardFailureCountForEventType:*(a1 + 40)];
        goto LABEL_25;
      }

      v7 = v18;
      if ((*(a1 + 76) & 2) != 0)
      {
LABEL_26:
        v17 = [v18 database];
        [v17 end];

        WeakRetained = v18;
        goto LABEL_27;
      }
    }

    else
    {
      if (v6 == 2)
      {
        v12 = *(a1 + 76);
        v13 = v18;
        if ((v12 & 1) == 0)
        {
          v14 = [v18 database];
          [v14 addEventDict:v5 toTable:@"soft_failures" timestampBucket:*(a1 + 72)];

          v13 = v18;
          v12 = *(a1 + 76);
        }

        if ((v12 & 2) != 0)
        {
          goto LABEL_26;
        }

        v8 = [v13 database];
        [v8 incrementSoftFailureCountForEventType:*(a1 + 40)];
        goto LABEL_25;
      }

      v7 = v18;
      if (v6 != 3)
      {
        if (v6 != 4 || (*(a1 + 76) & 1) != 0)
        {
          goto LABEL_26;
        }

        v8 = [v18 database];
        [v8 addRockwellDict:*(a1 + 40) userinfo:v5 toTable:@"rockwell" timestampBucket:*(a1 + 72)];
        goto LABEL_25;
      }

      v15 = *(a1 + 76);
      if ((v15 & 1) == 0)
      {
        v16 = [v18 database];
        [v16 addEventDict:v5 toTable:@"notes" timestampBucket:*(a1 + 72)];

        v7 = v18;
        v15 = *(a1 + 76);
      }

      if ((v15 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    v8 = [v7 database];
    [v8 incrementSuccessCountForEventType:*(a1 + 40)];
LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
}

- (void)logResultForEvent:(id)event hardFailure:(BOOL)failure result:(id)result withAttributes:(id)attributes timestampBucket:(unsigned int)bucket
{
  failureCopy = failure;
  eventCopy = event;
  resultCopy = result;
  attributesCopy = attributes;
  v13 = attributesCopy;
  if (resultCopy)
  {
    if (attributesCopy)
    {
      dictionary = [attributesCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = dictionary;
    v16 = [dictionary objectForKeyedSubscript:@"errorChain"];

    if (!v16)
    {
      v17 = [objc_opt_class() underlyingErrors:resultCopy];
      [v15 setObject:v17 forKeyedSubscript:@"errorChain"];
    }

    domain = [resultCopy domain];
    [v15 setObject:domain forKeyedSubscript:@"errorDomain"];

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(resultCopy, "code")}];
    [v15 setObject:v19 forKeyedSubscript:@"errorCode"];

    if (failureCopy)
    {
      [(SFAnalytics *)self logHardFailureForEventNamed:eventCopy withAttributes:v15];
    }

    else
    {
      [(SFAnalytics *)self logSoftFailureForEventNamed:eventCopy withAttributes:v15];
    }
  }

  else
  {
    [(SFAnalytics *)self logSuccessForEventNamed:eventCopy];
  }
}

- (void)dailyCoreAnalyticsMetrics:(id)metrics
{
  metricsCopy = metrics;
  dailyMetrics = [(SFAnalytics *)self dailyMetrics];
  v5 = [(SFAnalytics *)self coreAnalyticsKeyFilter:dailyMetrics];
  [SecCoreAnalytics sendEvent:metricsCopy event:v5];
}

- (id)coreAnalyticsKeyFilter:(id)filter
{
  v3 = MEMORY[0x1E695DF90];
  filterCopy = filter;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SFAnalytics_coreAnalyticsKeyFilter___block_invoke;
  v8[3] = &unk_1E70D4EA0;
  v6 = dictionary;
  v9 = v6;
  [filterCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __38__SFAnalytics_coreAnalyticsKeyFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

- (id)dailyMetrics
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2486;
  v27 = __Block_byref_object_dispose__2487;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2486;
  v21 = __Block_byref_object_dispose__2487;
  v22 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFAnalytics_dailyMetrics__block_invoke;
  block[3] = &unk_1E70D6D78;
  block[4] = self;
  block[5] = &v23;
  block[6] = &v17;
  dispatch_sync(queue, block);
  v5 = v24[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__SFAnalytics_dailyMetrics__block_invoke_2;
  v14[3] = &unk_1E70D4E50;
  v6 = dictionary;
  v15 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v14];
  v7 = v18[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __27__SFAnalytics_dailyMetrics__block_invoke_3;
  v12[3] = &unk_1E70D4E78;
  v8 = v6;
  v13 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v13;
  v10 = v8;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

uint64_t __27__SFAnalytics_dailyMetrics__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 24) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __27__SFAnalytics_dailyMetrics__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 oncePerReport])
  {
    v4 = [v6 sampleNow];
    if (v4)
    {
      [*(a1 + 32) addEntriesFromDictionary:v4];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __27__SFAnalytics_dailyMetrics__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 oncePerReport])
  {
    v6 = [v5 sampleNow];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

- (SFAnalytics)init
{
  v14.receiver = self;
  v14.super_class = SFAnalytics;
  v2 = [(SFAnalytics *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SFAnalytics data access queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    samplers = v2->_samplers;
    v2->_samplers = v6;

    v8 = objc_opt_new();
    multisamplers = v2->_multisamplers;
    v2->_multisamplers = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    metricsHooks = v2->_metricsHooks;
    v2->_metricsHooks = v10;

    database = [(SFAnalytics *)v2 database];
  }

  return v2;
}

- (void)setMetricsAccountID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFAnalytics_setMetricsAccountID___block_invoke;
  block[3] = &unk_1E70D4DB0;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__SFAnalytics_setMetricsAccountID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained database];
    [v3 setMetricsAccountID:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (id)metricsAccountID
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2486;
  v13 = __Block_byref_object_dispose__2487;
  v14 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SFAnalytics_metricsAccountID__block_invoke;
  block[3] = &unk_1E70D4E28;
  objc_copyWeak(&v7, &location);
  block[4] = &v9;
  dispatch_sync(queue, block);
  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void __31__SFAnalytics_metricsAccountID__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained database];
    v4 = [v3 metricsAccountID];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    WeakRetained = v7;
  }
}

- (id)dataPropertyForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2486;
  v16 = __Block_byref_object_dispose__2487;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFAnalytics_dataPropertyForKey___block_invoke;
  block[3] = &unk_1E70D6AC0;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __34__SFAnalytics_dataPropertyForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) database];
  v2 = [v5 dataPropertyForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setDataProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SFAnalytics_setDataProperty_forKey___block_invoke;
  block[3] = &unk_1E70D4E00;
  block[4] = self;
  v12 = propertyCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = propertyCopy;
  dispatch_sync(queue, block);
}

void __38__SFAnalytics_setDataProperty_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  [v2 setDataProperty:*(a1 + 40) forKey:*(a1 + 48)];
}

- (id)numberPropertyForKey:(id)key
{
  keyCopy = key;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2486;
  v18 = __Block_byref_object_dispose__2487;
  v19 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__SFAnalytics_numberPropertyForKey___block_invoke;
  v9[3] = &unk_1E70D4DD8;
  objc_copyWeak(&v12, &location);
  v10 = keyCopy;
  v11 = &v14;
  v6 = keyCopy;
  dispatch_sync(queue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __36__SFAnalytics_numberPropertyForKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained database];
    v4 = [v3 propertyForKey:*(a1 + 32)];

    if (v4)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    WeakRetained = v8;
  }
}

- (void)setNumberProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SFAnalytics_setNumberProperty_forKey___block_invoke;
  v11[3] = &unk_1E70D4D88;
  objc_copyWeak(&v14, &location);
  v12 = propertyCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = propertyCopy;
  dispatch_sync(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __40__SFAnalytics_setNumberProperty_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained database];
    v4 = [*(a1 + 32) stringValue];
    [v3 setProperty:v4 forKey:*(a1 + 40)];

    WeakRetained = v5;
  }
}

- (void)incrementIntegerPropertyForKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFAnalytics_incrementIntegerPropertyForKey___block_invoke;
  block[3] = &unk_1E70D4DB0;
  objc_copyWeak(&v9, &location);
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__SFAnalytics_incrementIntegerPropertyForKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained database];
    v4 = [v3 propertyForKey:*(a1 + 32)];
    v5 = [v4 integerValue];

    v6 = [v8 database];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v5 + 1];
    [v6 setProperty:v7 forKey:*(a1 + 32)];

    WeakRetained = v8;
  }
}

- (id)datePropertyForKey:(id)key
{
  keyCopy = key;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2486;
  v18 = __Block_byref_object_dispose__2487;
  v19 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__SFAnalytics_datePropertyForKey___block_invoke;
  v9[3] = &unk_1E70D4DD8;
  objc_copyWeak(&v12, &location);
  v10 = keyCopy;
  v11 = &v14;
  v6 = keyCopy;
  dispatch_sync(queue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __34__SFAnalytics_datePropertyForKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained database];
    v4 = [v3 datePropertyForKey:*(a1 + 32)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    WeakRetained = v7;
  }
}

- (void)setDateProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__SFAnalytics_setDateProperty_forKey___block_invoke;
  v11[3] = &unk_1E70D4D88;
  objc_copyWeak(&v14, &location);
  v12 = propertyCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = propertyCopy;
  dispatch_sync(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __38__SFAnalytics_setDateProperty_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained database];
    [v3 setDateProperty:*(a1 + 32) forKey:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)removeStateAndUnlinkFile:(BOOL)file
{
  [(NSMutableDictionary *)self->_samplers removeAllObjects];
  [(NSMutableDictionary *)self->_multisamplers removeAllObjects];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SFAnalytics_removeStateAndUnlinkFile___block_invoke;
  block[3] = &unk_1E70D4D60;
  objc_copyWeak(&v7, &location);
  fileCopy = file;
  dispatch_sync(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __40__SFAnalytics_removeStateAndUnlinkFile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [WeakRetained database];
    [v2 close];

    if (*(a1 + 40) == 1)
    {
      v3 = [WeakRetained database];
      [v3 remove];
    }

    v4 = WeakRetained[1];
    WeakRetained[1] = 0;

    [WeakRetained[6] removeAllObjects];
  }
}

- (void)updateCollectionConfigurationWithData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  collection = [(SFAnalytics *)selfCopy collection];

  if (!collection)
  {
    v6 = objc_alloc_init(SFAnalyticsCollection);
    [(SFAnalytics *)selfCopy setCollection:v6];
  }

  collection2 = [(SFAnalytics *)selfCopy collection];
  [collection2 storeCollection:dataCopy logger:selfCopy];

  objc_sync_exit(selfCopy);
}

- (void)loadCollectionConfiguration
{
  obj = self;
  objc_sync_enter(obj);
  v2 = objc_alloc_init(SFAnalyticsCollection);
  v3 = v2;
  if (v2)
  {
    [(SFAnalyticsCollection *)v2 loadCollection:obj];
    [(SFAnalytics *)obj setCollection:v3];
  }

  objc_sync_exit(obj);
}

- (void)removeMetricsHook:(id)hook
{
  hookCopy = hook;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SFAnalytics_removeMetricsHook___block_invoke;
  v7[3] = &unk_1E70D4D38;
  v7[4] = self;
  v8 = hookCopy;
  v6 = hookCopy;
  dispatch_sync(queue, v7);
}

void __33__SFAnalytics_removeMetricsHook___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) metricsHooks];
  v2 = _Block_copy(*(a1 + 40));
  [v3 removeObject:v2];
}

- (void)addMetricsHook:(id)hook
{
  hookCopy = hook;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__SFAnalytics_addMetricsHook___block_invoke;
  v7[3] = &unk_1E70D4D38;
  v7[4] = self;
  v8 = hookCopy;
  v6 = hookCopy;
  dispatch_sync(queue, v7);
}

void __30__SFAnalytics_addMetricsHook___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) metricsHooks];
  v2 = _Block_copy(*(a1 + 40));
  [v3 addObject:v2];
}

+ (id)underlyingErrors:(id)errors
{
  v16 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v4 = [objc_opt_class() treeOfUnderlyingErrors:errorsCopy depth:0];
  if (v4)
  {
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v4])
    {
      v11 = 0;
      v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:2 error:&v11];
      v6 = v11;
      if (v5)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
      }

      else
      {
        v8 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v13 = errorsCopy;
          v14 = 2114;
          v15 = v6;
          _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "SFA: underlyingErrors failed to encode %{public}@ with failure: %{public}@", buf, 0x16u);
        }

        v7 = 0;
      }
    }

    else
    {
      v6 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v13 = errorsCopy;
        _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "SFA: underlyingErrors encoded to not json %{public}@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)treeOfUnderlyingErrors:(id)errors depth:(int64_t)depth
{
  v34 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if (depth > 5)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = errorsCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (depth)
    {
      domain = [v8 domain];
      [dictionary setObject:domain forKeyedSubscript:@"d"];

      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
      [dictionary setObject:v11 forKeyedSubscript:@"c"];
    }

    userInfo = [v8 userInfo];
    v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v14 = [self treeOfUnderlyingErrors:v13 depth:depth + 1];

    [dictionary setObject:v14 forKeyedSubscript:@"u"];
    userInfo2 = [v8 userInfo];
    v16 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A750]];
    v17 = [self treeOfUnderlyingErrors:v16 depth:depth + 1];

    [dictionary setObject:v17 forKeyedSubscript:@"m"];
    if ([dictionary count])
    {
      v7 = dictionary;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v7 = 0;
      goto LABEL_26;
    }

    v18 = errorsCopy;
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [self treeOfUnderlyingErrors:v25 depth:{depth + 1, v29}];
            if (v26)
            {
              [array addObject:v26];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v22);
    }

    if ([array count])
    {
      v7 = array;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_26:

  v27 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)addOSVersionToEvent:(id)event
{
  eventCopy = event;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFAnalytics_addOSVersionToEvent___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (addOSVersionToEvent__onceToken != -1)
  {
    dispatch_once(&addOSVersionToEvent__onceToken, block);
  }

  if (addOSVersionToEvent__build)
  {
    [eventCopy setObject:addOSVersionToEvent__build forKeyedSubscript:@"build"];
  }

  if (addOSVersionToEvent__productName)
  {
    [eventCopy setObject:addOSVersionToEvent__productName forKeyedSubscript:@"product"];
  }

  if (addOSVersionToEvent__productVersion)
  {
    [eventCopy setObject:addOSVersionToEvent__productVersion forKeyedSubscript:@"version"];
  }

  if (addOSVersionToEvent__modelID)
  {
    [eventCopy setObject:addOSVersionToEvent__modelID forKeyedSubscript:@"modelid"];
  }

  if (addOSVersionToEvent__internal == 1)
  {
    [eventCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"internal"];
  }
}

void __35__SFAnalytics_addOSVersionToEvent___block_invoke(uint64_t a1)
{
  v2 = _CFCopySystemVersionDictionary();
  if (v2)
  {
    v11 = v2;
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
    v4 = addOSVersionToEvent__build;
    addOSVersionToEvent__build = v3;

    v5 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695E1F0]];
    v6 = addOSVersionToEvent__productName;
    addOSVersionToEvent__productName = v5;

    v7 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695E208]];
    v8 = addOSVersionToEvent__productVersion;
    addOSVersionToEvent__productVersion = v7;

    addOSVersionToEvent__internal = os_variant_has_internal_diagnostics();
    v9 = [*(a1 + 32) hwModelID];
    v10 = addOSVersionToEvent__modelID;
    addOSVersionToEvent__modelID = v9;

    v2 = v11;
  }
}

+ (id)hwModelID
{
  if (hwModelID_onceToken != -1)
  {
    dispatch_once(&hwModelID_onceToken, &__block_literal_global_180);
  }

  v3 = hwModelID_hwModel;

  return v3;
}

void __24__SFAnalytics_hwModelID__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  memset(&__b, 170, sizeof(__b));
  uname(&__b);
  v0 = [MEMORY[0x1E696AEC0] stringWithCString:__b.machine encoding:4];
  v1 = hwModelID_hwModel;
  hwModelID_hwModel = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)fuzzyNumber:(id)number
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [self fuzzyInteger:{objc_msgSend(number, "integerValue")}];

  return [v3 numberWithInteger:v4];
}

+ (int64_t)fuzzyInteger:(int64_t)integer
{
  if (integer >= 0)
  {
    integerCopy = integer;
  }

  else
  {
    integerCopy = -integer;
  }

  if (!integer)
  {
    return 0;
  }

  v4 = (integer >> 63) | 1;
  if (integerCopy <= 5)
  {
    return 5 * v4;
  }

  if (integerCopy % 5 >= 3)
  {
    v6 = 5 * (integerCopy / 5) + 5;
  }

  else
  {
    v6 = 5 * (integerCopy / 5);
  }

  return v6 * v4;
}

+ (int64_t)fuzzyDaysSinceDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:1483228800.0];
    v5 = [dateCopy compare:v4];

    if (v5 == -1)
    {
      v9 = 1000;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:dateCopy];
      v8 = v7;

      if (v8 >= 86400.0)
      {
        if (v8 >= 604800.0)
        {
          if (v8 >= 2592000.0)
          {
            if (v8 >= 31536000.0)
            {
              v9 = 365;
            }

            else
            {
              v9 = 30;
            }
          }

          else
          {
            v9 = 7;
          }
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

+ (id)defaultProtectedAnalyticsDatabasePath:(id)path
{
  pathCopy = path;
  [self removeLegacyDefaultAnalyticsDatabasePath:pathCopy usingDispatchToken:&defaultProtectedAnalyticsDatabasePath__onceToken];
  [self logConsumerProcessInfo];
  v5 = [SFAnalytics defaultProtectedAnalyticsDatabasePath:pathCopy uuid:0];

  return v5;
}

+ (void)logConsumerProcessInfo
{
  if (logConsumerProcessInfo_onceToken != -1)
  {
    dispatch_once(&logConsumerProcessInfo_onceToken, &__block_literal_global_154);
  }
}

void __37__SFAnalytics_logConsumerProcessInfo__block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v0 = [MEMORY[0x1E696AE30] processInfo];
    v1 = [v0 processName];
    v2 = [v0 environment];
    v3 = [v2 objectForKey:@"XPC_SERVICE_NAME"];

    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v4 setObject:v1 forKeyedSubscript:@"process"];
    [v4 setObject:v3 forKeyedSubscript:@"xpcService"];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SFAnalyticsConsumer-%@", v1];
    v6 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__SFAnalytics_logConsumerProcessInfo__block_invoke_2;
    block[3] = &unk_1E70D6A98;
    v10 = v5;
    v11 = v4;
    v7 = v4;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __37__SFAnalytics_logConsumerProcessInfo__block_invoke_2(uint64_t a1)
{
  v2 = +[(SFAnalytics *)LocalKeychainAnalytics];
  [v2 logRockwellFailureForEventNamed:*(a1 + 32) withAttributes:*(a1 + 40)];
}

+ (id)defaultProtectedAnalyticsDatabasePath:(id)path uuid:(id)uuid
{
  pathCopy = path;
  uuidCopy = uuid;
  [self logConsumerProcessInfo];
  v8 = [MEMORY[0x1E696AD60] stringWithString:@"sfanalytics"];
  v9 = SecCopyURLForFileInBaseDirectory(@"private/var/protected/", v8);
  WithPathInDirectory(v9, &__block_literal_global_143);
  if (uuidCopy)
  {
    [v8 appendString:@"/"];
    uUIDString = [uuidCopy UUIDString];
    [v8 appendString:uUIDString];

    v11 = SecCopyURLForFileInBaseDirectory(@"private/var/protected/", v8);
    WithPathInDirectory(v11, &__block_literal_global_149);
  }

  pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@.db", v8, pathCopy];
  v13 = SecCopyURLForFileInBaseDirectory(@"private/var/protected/", pathCopy);
  path = [(__CFURL *)v13 path];

  return path;
}

uint64_t __58__SFAnalytics_defaultProtectedAnalyticsDatabasePath_uuid___block_invoke_147(int a1, char *path)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = mkpath_np(path, 0x1FFu);
  if (v3)
  {
    v4 = v3;
    if (v3 != 17)
    {
      v5 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = path;
        v10 = 2080;
        v11 = strerror(v4);
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "could not create path: %s (%s)", &v8, 0x16u);
      }
    }
  }

  result = chmod(path, 0x1FFu);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __58__SFAnalytics_defaultProtectedAnalyticsDatabasePath_uuid___block_invoke(int a1, char *path)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = mkpath_np(path, 0x1FFu);
  if (v3)
  {
    v4 = v3;
    if (v3 != 17)
    {
      v5 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = path;
        v10 = 2080;
        v11 = strerror(v4);
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "could not create path: %s (%s)", &v8, 0x16u);
      }
    }
  }

  result = chmod(path, 0x1FFu);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)removeLegacyDefaultAnalyticsDatabasePath:(id)path usingDispatchToken:(int64_t *)token
{
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SFAnalytics_removeLegacyDefaultAnalyticsDatabasePath_usingDispatchToken___block_invoke;
  block[3] = &unk_1E70E4300;
  v9 = pathCopy;
  v6 = *token;
  v7 = pathCopy;
  if (v6 != -1)
  {
    dispatch_once(token, block);
  }
}

void __75__SFAnalytics_removeLegacyDefaultAnalyticsDatabasePath_usingDispatchToken___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Analytics/%@.db", *(a1 + 32)];
  WithPathInKeychainDirectory(v2, &__block_literal_global_124);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Analytics/%@.db-shm", *(a1 + 32)];

  WithPathInKeychainDirectory(v3, &__block_literal_global_129);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Analytics/%@.db-wal", *(a1 + 32)];

  WithPathInKeychainDirectory(v4, &__block_literal_global_134);
  WithPathInKeychainDirectory(@"Analytics", &__block_literal_global_136);
}

+ (id)defaultAnalyticsDatabasePath:(id)path
{
  pathCopy = path;
  [self logConsumerProcessInfo];
  WithPathInKeychainDirectory(@"Analytics", &__block_literal_global_2553);
  pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Analytics/%@.db", pathCopy];

  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v6 = SecCopyURLForFileInBaseDirectory(@"Library/Keychains", pathCopy);
  path = [(__CFURL *)v6 path];

  return path;
}

uint64_t __44__SFAnalytics_defaultAnalyticsDatabasePath___block_invoke(int a1, char *path)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = mkpath_np(path, 0x1FFu);
  if (v3)
  {
    v4 = v3;
    if (v3 != 17)
    {
      v5 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = path;
        v10 = 2080;
        v11 = strerror(v4);
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "could not create path: %s (%s)", &v8, 0x16u);
      }
    }
  }

  result = chmod(path, 0x1FFu);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end