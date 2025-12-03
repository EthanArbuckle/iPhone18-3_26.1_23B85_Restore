@interface ATXMinimalAction
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXMinimalAction)initWithBundleId:(id)id actionType:(id)type paramHash:(int64_t)hash;
- (ATXMinimalAction)initWithProto:(id)proto;
- (ATXMinimalAction)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXMinimalAction:(id)action;
- (id)actionFromDatastoreLookup;
- (id)actionFromDatastoreLookupForDatastore:(id)datastore;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXMinimalAction

- (ATXMinimalAction)initWithBundleId:(id)id actionType:(id)type paramHash:(int64_t)hash
{
  idCopy = id;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = ATXMinimalAction;
  v10 = [(ATXMinimalAction *)&v16 init];
  if (v10)
  {
    v11 = [idCopy copy];
    bundleId = v10->_bundleId;
    v10->_bundleId = v11;

    v13 = [typeCopy copy];
    actionType = v10->_actionType;
    v10->_actionType = v13;

    v10->_paramHash = hash;
  }

  return v10;
}

- (id)actionFromDatastoreLookup
{
  datastore = [objc_opt_class() datastore];
  v4 = [(ATXMinimalAction *)self actionFromDatastoreLookupForDatastore:datastore];

  return v4;
}

- (id)actionFromDatastoreLookupForDatastore:(id)datastore
{
  datastoreCopy = datastore;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__35;
  v16 = __Block_byref_object_dispose__35;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke;
  v8[3] = &unk_2785987E0;
  v5 = datastoreCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [v5 _doSync:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke_2;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  v3[4] = v6;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke_3;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke_4;
  v3[3] = &unk_2785987B8;
  [v2 prepAndRunQuery:@"SELECT slotSetKey.uuid onPrep:alog.slots FROM alog onRow:slotSetKey onError:{alogBundleId, alogAction WHERE alog.id = slotSetKey.alogId AND alog.bundleId = alogBundleId.id AND alog.actionType = alogAction.id AND alogBundleId.bundleId=? AND alogAction.actionType=? AND slotSetKey.paramHash=? ORDER BY date DESC LIMIT 1", v5, v4, v3}];
}

void __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  [v4 bindParam:1 toNSString:v3];
  [v4 bindParam:2 toNSString:*(*(a1 + 32) + 16)];
  [v4 bindParam:3 toInt64:*(*(a1 + 32) + 24)];
}

uint64_t __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke_3(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
  }

  else
  {
    v5 = 0;
  }

  v34 = 0;
  v6 = [v3 getNSDataForColumn:1];
  if (v6)
  {
    v7 = ATXSlotSetsDeserialize();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 first];
  v29 = a1;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [v7 second];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v33 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
  v13 = v11;
  if (v12)
  {
    v14 = v12;
    v27 = v4;
    v28 = v3;
    v15 = *v31;
LABEL_9:
    v16 = 0;
    while (1)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v30 + 1) + 8 * v16);
      v18 = [v17 uuid];
      v19 = [v18 isEqual:v5];

      if (v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v14)
        {
          goto LABEL_9;
        }

        v13 = v11;
        v4 = v27;
        v3 = v28;
        goto LABEL_18;
      }
    }

    v13 = v17;

    v4 = v27;
    v3 = v28;
    if (!v13)
    {
      goto LABEL_19;
    }

    v20 = *(*(*(v29 + 32) + 8) + 40);
    v21 = [v13 parameters];
    v22 = [v20 copyWithParameterWhitelist:v21];
    v23 = *(*(v29 + 32) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

LABEL_18:

LABEL_19:
  v25 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

uint64_t __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke_4_cold_1(a1, v3, v4);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    dataCopy = data;
    v6 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)jsonDict
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"bundleId";
  v7[1] = @"actionType";
  actionType = self->_actionType;
  v8[0] = self->_bundleId;
  v8[1] = actionType;
  v7[2] = @"paramHash";
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_paramHash];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  jsonDict = [(ATXMinimalAction *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMinimalAction *)self isEqualToATXMinimalAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMinimalAction:(id)action
{
  actionCopy = action;
  v5 = self->_bundleId;
  v6 = v5;
  if (v5 == actionCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_actionType;
  v9 = v8;
  if (v8 == actionCopy[2])
  {

    goto LABEL_9;
  }

  v10 = [(NSString *)v8 isEqual:?];

  if (v10)
  {
LABEL_9:
    v11 = self->_paramHash == actionCopy[3];
    goto LABEL_10;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  return v11;
}

- (ATXMinimalAction)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBMinimalAction alloc] initWithData:dataCopy];

    self = [(ATXMinimalAction *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXMinimalAction *)self proto];
  data = [proto data];

  return data;
}

- (ATXMinimalAction)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXMinimalAction *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  bundleId = [v5 bundleId];
  actionType = [v5 actionType];
  paramHash = [v5 paramHash];

  self = [(ATXMinimalAction *)self initWithBundleId:bundleId actionType:actionType paramHash:paramHash];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setBundleId:self->_bundleId];
  [v3 setActionType:self->_actionType];
  [v3 setParamHash:self->_paramHash];

  return v3;
}

void __58__ATXMinimalAction_actionFromDatastoreLookupForDatastore___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Unable to fetch action corresponding to minimalAction %@. Error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unable to construct class %@ from ProtoBuf object", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end