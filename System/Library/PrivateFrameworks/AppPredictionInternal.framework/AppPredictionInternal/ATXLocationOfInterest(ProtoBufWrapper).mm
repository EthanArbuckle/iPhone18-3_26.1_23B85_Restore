@interface ATXLocationOfInterest(ProtoBufWrapper)
- (id)encodeAsProto;
- (id)initWithProto:()ProtoBufWrapper;
- (id)initWithProtoData:()ProtoBufWrapper;
- (id)proto;
- (uint64_t)_protoLOITypeFromRoutineLOIType:()ProtoBufWrapper;
- (uint64_t)_routineLOITypeFromProtoLOIType:()ProtoBufWrapper;
@end

@implementation ATXLocationOfInterest(ProtoBufWrapper)

- (id)initWithProtoData:()ProtoBufWrapper
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBPredictionLocationOfInterest alloc] initWithData:v4];

    a1 = [a1 initWithProto:v5];
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v1 = [a1 proto];
  v2 = [v1 data];

  return v2;
}

- (id)initWithProto:()ProtoBufWrapper
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(ATXLocationOfInterest(ProtoBufWrapper) *)a1 initWithProto:v16];
    }

    goto LABEL_7;
  }

  v5 = MEMORY[0x277CCAD78];
  v6 = v4;
  v7 = [v5 alloc];
  v8 = [v6 uuid];
  v9 = [v7 initWithUUIDString:v8];

  [v6 latitude];
  v11 = v10;
  [v6 longitude];
  v13 = CLLocationCoordinate2DMake(v11, v12);
  v14 = [v6 type];

  a1 = [a1 initWithUUID:v9 visits:0 coordinate:objc_msgSend(a1 type:{"_routineLOITypeFromProtoLOIType:", v14), v13.latitude, v13.longitude}];
  v15 = a1;
LABEL_8:

  return v15;
}

- (id)proto
{
  v2 = objc_opt_new();
  v3 = [a1 uuid];
  v4 = [v3 UUIDString];
  [v2 setUuid:v4];

  [a1 coordinate];
  [v2 setLatitude:?];
  [a1 coordinate];
  [v2 setLongitude:v5];
  [v2 setType:{objc_msgSend(a1, "_protoLOITypeFromRoutineLOIType:", objc_msgSend(a1, "type"))}];

  return v2;
}

- (uint64_t)_routineLOITypeFromProtoLOIType:()ProtoBufWrapper
{
  if (a3 < 5)
  {
    return a3 - 1;
  }

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(ATXLocationOfInterest(ProtoBufWrapper) *)a1 _routineLOITypeFromProtoLOIType:a3, v6];
  }

  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a3];
  [v7 raise:v8 format:{@"%@ - _routineLOITypeFromProtoLOIType got unhandled LOI type of %@", v10, v11}];

  return -1;
}

- (uint64_t)_protoLOITypeFromRoutineLOIType:()ProtoBufWrapper
{
  if (a3 < 4)
  {
    return (a3 + 1);
  }

  else
  {
    return 0;
  }
}

- (void)initWithProto:()ProtoBufWrapper .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBPredictionLocationOfInterest proto", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_routineLOITypeFromProtoLOIType:()ProtoBufWrapper .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];
  *buf = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - _routineLOITypeFromProtoLOIType got unhandled LOI type of %@", buf, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end