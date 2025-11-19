@interface ATXSpotlightEventMetadata
- (ATXSpotlightEventMetadata)initWithCoder:(id)a3;
- (ATXSpotlightEventMetadata)initWithProto:(id)a3;
- (ATXSpotlightEventMetadata)initWithProtoData:(id)a3;
- (ATXSpotlightEventMetadata)initWithQueryAtEngagement:(id)a3 engagedAppString:(id)a4 didSearchDuringSession:(id)a5 searchEngagedBundleId:(id)a6 searchEngagedActionType:(id)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSpotlightEventMetadata:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSpotlightEventMetadata

- (ATXSpotlightEventMetadata)initWithQueryAtEngagement:(id)a3 engagedAppString:(id)a4 didSearchDuringSession:(id)a5 searchEngagedBundleId:(id)a6 searchEngagedActionType:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ATXSpotlightEventMetadata;
  v17 = [(ATXSpotlightEventMetadata *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queryAtEngagement, a3);
    objc_storeStrong(&v18->_engagedAppString, a4);
    objc_storeStrong(&v18->_didSearchDuringSession, a5);
    objc_storeStrong(&v18->_searchEngagedBundleId, a6);
    objc_storeStrong(&v18->_searchEngagedActionType, a7);
  }

  return v18;
}

- (ATXSpotlightEventMetadata)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBSpotlightEventMetadata alloc] initWithData:v4];

    self = [(ATXSpotlightEventMetadata *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXSpotlightEventMetadata)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_8:
    v8 = 0;
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

  v5 = v4;
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

  v10 = [(ATXPBSpotlightEventMetadata *)v5 queryAtEngagement];
  v11 = [(ATXPBSpotlightEventMetadata *)v5 engagedAppString];
  v12 = [(ATXPBSpotlightEventMetadata *)v5 searchEngagedBundleId];
  self = [(ATXSpotlightEventMetadata *)self initWithQueryAtEngagement:v10 engagedAppString:v11 didSearchDuringSession:v6 searchEngagedBundleId:v12 searchEngagedActionType:v9];

  v8 = self;
LABEL_14:

  return v8;
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
  v2 = [(ATXSpotlightEventMetadata *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXSpotlightEventMetadata *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXSpotlightEventMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSpotlightEventMetadata *)self initWithProtoData:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightEventMetadata *)self isEqualToATXSpotlightEventMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightEventMetadata:(id)a3
{
  v4 = a3;
  v5 = self->_queryAtEngagement;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v8 == v4[2])
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
  if (v11 == v4[3])
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
  if (v14 == v4[4])
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
  if (v18 == v4[5])
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