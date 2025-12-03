@interface ATXSpotlightEventMetadata
- (ATXSpotlightEventMetadata)initWithCoder:(id)coder;
- (ATXSpotlightEventMetadata)initWithProto:(id)proto;
- (ATXSpotlightEventMetadata)initWithProtoData:(id)data;
- (ATXSpotlightEventMetadata)initWithQueryAtEngagement:(id)engagement engagedAppString:(id)string didSearchDuringSession:(id)session searchEngagedBundleId:(id)id searchEngagedActionType:(id)type;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXSpotlightEventMetadata:(id)metadata;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSpotlightEventMetadata

- (ATXSpotlightEventMetadata)initWithQueryAtEngagement:(id)engagement engagedAppString:(id)string didSearchDuringSession:(id)session searchEngagedBundleId:(id)id searchEngagedActionType:(id)type
{
  engagementCopy = engagement;
  stringCopy = string;
  sessionCopy = session;
  idCopy = id;
  typeCopy = type;
  v21.receiver = self;
  v21.super_class = ATXSpotlightEventMetadata;
  v17 = [(ATXSpotlightEventMetadata *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queryAtEngagement, engagement);
    objc_storeStrong(&v18->_engagedAppString, string);
    objc_storeStrong(&v18->_didSearchDuringSession, session);
    objc_storeStrong(&v18->_searchEngagedBundleId, id);
    objc_storeStrong(&v18->_searchEngagedActionType, type);
  }

  return v18;
}

- (ATXSpotlightEventMetadata)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBSpotlightEventMetadata alloc] initWithData:dataCopy];

    self = [(ATXSpotlightEventMetadata *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSpotlightEventMetadata)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ATXSpotlightEventMetadata *)self initWithProto:v7];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  if ([(ATXPBSpotlightEventMetadata *)v5 hasDidSearchDuringSession])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:-[ATXPBSpotlightEventMetadata didSearchDuringSession](v5)];
  }

  else
  {
    v6 = 0;
  }

  if ([(ATXPBSpotlightEventMetadata *)v5 hasSearchEngagedActionType])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-[ATXPBSpotlightEventMetadata searchEngagedActionType](v5)];
  }

  else
  {
    v9 = 0;
  }

  queryAtEngagement = [(ATXPBSpotlightEventMetadata *)v5 queryAtEngagement];
  engagedAppString = [(ATXPBSpotlightEventMetadata *)v5 engagedAppString];
  searchEngagedBundleId = [(ATXPBSpotlightEventMetadata *)v5 searchEngagedBundleId];
  self = [(ATXSpotlightEventMetadata *)self initWithQueryAtEngagement:queryAtEngagement engagedAppString:engagedAppString didSearchDuringSession:v6 searchEngagedBundleId:searchEngagedBundleId searchEngagedActionType:v9];

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBSpotlightEventMetadata *)v3 setQueryAtEngagement:?];
  [(ATXPBSpotlightEventMetadata *)v3 setEngagedAppString:?];
  didSearchDuringSession = self->_didSearchDuringSession;
  if (didSearchDuringSession)
  {
    [(ATXPBSpotlightEventMetadata *)v3 setDidSearchDuringSession:?];
  }

  [(ATXPBSpotlightEventMetadata *)v3 setSearchEngagedBundleId:?];
  searchEngagedActionType = self->_searchEngagedActionType;
  if (searchEngagedActionType)
  {
    [(ATXPBSpotlightEventMetadata *)v3 setSearchEngagedActionType:?];
  }

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXSpotlightEventMetadata *)self proto];
  data = [proto data];

  return data;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXSpotlightEventMetadata *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSpotlightEventMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSpotlightEventMetadata *)self initWithProtoData:v5];
  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightEventMetadata *)self isEqualToATXSpotlightEventMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightEventMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = self->_queryAtEngagement;
  v6 = v5;
  if (v5 == metadataCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = self->_engagedAppString;
  v9 = v8;
  if (v8 == metadataCopy[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v11 = self->_didSearchDuringSession;
  v12 = v11;
  if (v11 == metadataCopy[3])
  {
  }

  else
  {
    v13 = [(NSNumber *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v14 = self->_searchEngagedBundleId;
  v15 = v14;
  if (v14 == metadataCopy[4])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_21;
    }
  }

  v18 = self->_searchEngagedActionType;
  v19 = v18;
  if (v18 == metadataCopy[5])
  {
    v17 = 1;
  }

  else
  {
    v17 = [(NSNumber *)v18 isEqual:?];
  }

LABEL_21:
  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_queryAtEngagement hash];
  v4 = [(NSString *)self->_engagedAppString hash]- v3 + 32 * v3;
  v5 = [(NSNumber *)self->_didSearchDuringSession hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_searchEngagedBundleId hash]- v5 + 32 * v5;
  return [(NSNumber *)self->_searchEngagedActionType hash]- v6 + 32 * v6;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBSpotlightEventMetadata proto", &v5, 0xCu);
}

@end