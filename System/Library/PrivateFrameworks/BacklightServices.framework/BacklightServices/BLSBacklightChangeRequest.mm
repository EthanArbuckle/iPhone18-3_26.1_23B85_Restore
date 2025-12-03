@interface BLSBacklightChangeRequest
+ (id)validMetadataClasses;
- (BLSBacklightChangeRequest)initWithCoder:(id)coder;
- (BLSBacklightChangeRequest)initWithRequestedActivityState:(int64_t)state explanation:(id)explanation timestamp:(unint64_t)timestamp sourceEvent:(int64_t)event sourceEventMetadata:(id)metadata;
- (BLSBacklightChangeRequest)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSBacklightChangeRequest

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  requestedActivityState = self->_requestedActivityState;
  v6 = @"Off/Inactive";
  if (requestedActivityState == 1)
  {
    v6 = @"On/Active";
  }

  if (requestedActivityState == 2)
  {
    v7 = @"Dimmed";
  }

  else
  {
    v7 = v6;
  }

  [v3 appendString:v7 withName:@"requestedState"];
  [v4 appendString:self->_explanation withName:@"explanation"];
  v8 = [v4 appendUInt64:self->_timestamp withName:@"timestamp"];
  v9 = NSStringFromBLSBacklightChangeSourceEvent(self->_sourceEvent);
  [v4 appendString:v9 withName:@"source"];

  v10 = [v4 appendObject:self->_sourceEventMetadata withName:@"metadata" skipIfNil:1];
  build = [v4 build];

  return build;
}

- (BLSBacklightChangeRequest)initWithRequestedActivityState:(int64_t)state explanation:(id)explanation timestamp:(unint64_t)timestamp sourceEvent:(int64_t)event sourceEventMetadata:(id)metadata
{
  explanationCopy = explanation;
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = BLSBacklightChangeRequest;
  v14 = [(BLSBacklightChangeRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_requestedActivityState = state;
    v14->_timestamp = timestamp;
    v16 = [explanationCopy copy];
    explanation = v15->_explanation;
    v15->_explanation = v16;

    v15->_sourceEvent = event;
    objc_storeStrong(&v15->_sourceEventMetadata, metadata);
  }

  return v15;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_requestedActivityState];
  v5 = [builder appendString:self->_explanation];
  v6 = [builder appendUnsignedInteger:self->_timestamp];
  v7 = [builder appendUnsignedInteger:HIDWORD(self->_timestamp)];
  v8 = [builder appendInteger:self->_sourceEvent];
  v9 = [builder appendObject:self->_sourceEventMetadata];
  v10 = [builder hash];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestedActivityState = self->_requestedActivityState;
      if (requestedActivityState != [(BLSBacklightChangeRequest *)v5 requestedActivityState]|| (timestamp = self->_timestamp, timestamp != [(BLSBacklightChangeRequest *)v5 timestamp]) || (sourceEvent = self->_sourceEvent, sourceEvent != [(BLSBacklightChangeRequest *)v5 sourceEvent]))
      {
        v14 = 0;
LABEL_15:

        goto LABEL_16;
      }

      explanation = self->_explanation;
      explanation = [(BLSBacklightChangeRequest *)v5 explanation];
      if ([explanation isEqual:explanation])
      {
        sourceEventMetadata = self->_sourceEventMetadata;
        v12 = sourceEventMetadata;
        if (!sourceEventMetadata)
        {
          explanation = [(BLSBacklightChangeRequest *)v5 sourceEventMetadata];
          if (!explanation)
          {
            v14 = 1;
LABEL_19:

            goto LABEL_20;
          }

          v12 = self->_sourceEventMetadata;
        }

        sourceEventMetadata = [(BLSBacklightChangeRequest *)v5 sourceEventMetadata];
        v14 = [(BLSBacklightChangeSourceEventMetadata *)v12 isEqual:sourceEventMetadata];

        if (!sourceEventMetadata)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_20:

      goto LABEL_15;
    }

    v14 = 0;
  }

LABEL_16:

  return v14;
}

- (BLSBacklightChangeRequest)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"requestedState" UTF8String];
  uTF8String2 = [@"explanation" UTF8String];
  uTF8String3 = [@"timestamp" UTF8String];
  uTF8String4 = [@"source" UTF8String];
  uTF8String5 = [@"metadata" UTF8String];
  int64 = xpc_dictionary_get_int64(dictionaryCopy, uTF8String);
  string = xpc_dictionary_get_string(dictionaryCopy, uTF8String2);
  if (string)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  }

  else
  {
    v13 = bls_backlight_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(BLSBacklightChangeRequest *)dictionaryCopy initWithXPCDictionary:v13];
    }

    v12 = @"<NULL>";
  }

  v14 = xpc_dictionary_get_int64(dictionaryCopy, uTF8String3);
  v15 = xpc_dictionary_get_int64(dictionaryCopy, uTF8String4);
  v16 = xpc_dictionary_get_string(dictionaryCopy, "metadataClass");
  if (v16)
  {
    v17 = v16;
    v18 = xpc_dictionary_get_dictionary(dictionaryCopy, uTF8String5);
    if (v18)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
      v20 = NSClassFromString(v19);
      if (!v20)
      {
        goto LABEL_12;
      }

      v21 = v20;
      +[BLSBacklightChangeRequest validMetadataClasses];
      v32 = v15;
      v22 = v14;
      v23 = v19;
      v24 = int64;
      v26 = v25 = self;
      v27 = [v26 containsObject:v21];

      self = v25;
      int64 = v24;
      v19 = v23;
      v14 = v22;
      v15 = v32;
      if (v27)
      {
        v28 = [[v21 alloc] initWithXPCDictionary:v18];
      }

      else
      {
LABEL_12:
        v29 = bls_backlight_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          [(BLSBacklightChangeRequest *)v19 initWithXPCDictionary:v18, v29];
        }

        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = [(BLSBacklightChangeRequest *)self initWithRequestedActivityState:int64 explanation:v12 timestamp:v14 sourceEvent:v15 sourceEventMetadata:v28];

  return v30;
}

+ (id)validMetadataClasses
{
  objc_opt_self();
  if (validMetadataClasses_onceToken != -1)
  {
    +[BLSBacklightChangeRequest validMetadataClasses];
  }

  v0 = validMetadataClasses_metaDataClasses;

  return v0;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"requestedState" UTF8String];
  uTF8String2 = [@"explanation" UTF8String];
  uTF8String3 = [@"timestamp" UTF8String];
  uTF8String4 = [@"source" UTF8String];
  uTF8String5 = [@"metadata" UTF8String];
  xpc_dictionary_set_int64(dictionaryCopy, uTF8String, self->_requestedActivityState);
  xpc_dictionary_set_string(dictionaryCopy, uTF8String2, [(NSString *)self->_explanation UTF8String]);
  xpc_dictionary_set_int64(dictionaryCopy, uTF8String3, self->_timestamp);
  xpc_dictionary_set_int64(dictionaryCopy, uTF8String4, self->_sourceEvent);
  p_sourceEventMetadata = &self->_sourceEventMetadata;
  if (self->_sourceEventMetadata)
  {
    v11 = +[BLSBacklightChangeRequest validMetadataClasses];
    v12 = *p_sourceEventMetadata;
    v13 = [v11 containsObject:objc_opt_class()];

    if (v13)
    {
      v14 = *p_sourceEventMetadata;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      xpc_dictionary_set_string(dictionaryCopy, "metadataClass", [v16 UTF8String]);
      v17 = xpc_dictionary_create(0, 0, 0);
      [*p_sourceEventMetadata encodeWithXPCDictionary:v17];
      xpc_dictionary_set_value(dictionaryCopy, uTF8String5, v17);
    }

    else
    {
      v18 = bls_backlight_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(BLSBacklightChangeRequest *)self encodeWithXPCDictionary:v18];
      }
    }
  }
}

void __49__BLSBacklightChangeRequest_validMetadataClasses__block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = validMetadataClasses_metaDataClasses;
  validMetadataClasses_metaDataClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BLSBacklightChangeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"requestedState"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"explanation"];
  v7 = [coderCopy decodeInt64ForKey:@"timestamp"];
  v8 = [coderCopy decodeIntegerForKey:@"source"];
  v9 = +[BLSBacklightChangeRequest validMetadataClasses];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"metadata"];

  v11 = [(BLSBacklightChangeRequest *)self initWithRequestedActivityState:v5 explanation:v6 timestamp:v7 sourceEvent:v8 sourceEventMetadata:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_requestedActivityState forKey:@"requestedState"];
  [coderCopy encodeObject:self->_explanation forKey:@"explanation"];
  [coderCopy encodeInt64:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeInteger:self->_sourceEvent forKey:@"source"];
  v4 = +[BLSBacklightChangeRequest validMetadataClasses];
  sourceEventMetadata = self->_sourceEventMetadata;
  v6 = [v4 containsObject:objc_opt_class()];

  if (v6)
  {
    [coderCopy encodeObject:self->_sourceEventMetadata forKey:@"metadata"];
  }
}

- (void)initWithXPCDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_21FE25000, a2, OS_LOG_TYPE_FAULT, "failed to decode explanation from %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_21FE25000, log, OS_LOG_TYPE_FAULT, "unknown %@ class cannot init with %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithXPCDictionary:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *a2;
  v11 = 134218498;
  v12 = a1;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = v9;
  _os_log_fault_impl(&dword_21FE25000, a3, OS_LOG_TYPE_FAULT, "%p unknown class:%{public}@ cannot encode %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end