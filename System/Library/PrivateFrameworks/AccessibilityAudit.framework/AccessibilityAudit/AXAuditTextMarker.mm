@interface AXAuditTextMarker
+ (void)registerTransportableObjectWithManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation AXAuditTextMarker

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v6 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditTextMarker_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"PlatformMarkerValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_24];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_11_2];
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v4];
  [v3 registerTransportInfoPropertyBased:v6];

  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"MarkerDescriptionValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_17_4];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_20_0];
}

id __60__AXAuditTextMarker_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 platformMarker];
  if (v2 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __60__AXAuditTextMarker_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v5 setPlatformMarker:v4];
  }
}

void __60__AXAuditTextMarker_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setMarkerDescription:v4];
  }
}

- (unint64_t)hash
{
  v3 = [(AXAuditTextMarker *)self platformMarker];
  v4 = [v3 hash];
  v5 = [(AXAuditTextMarker *)self markerDescription];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXAuditTextMarker *)self platformMarker];
      v7 = [(AXAuditTextMarker *)v5 platformMarker];
      if (v6 | v7 && ![v6 isEqual:v7])
      {
        v10 = 0;
      }

      else
      {
        v8 = [(AXAuditTextMarker *)self markerDescription];
        v9 = [(AXAuditTextMarker *)v5 markerDescription];
        v10 = !(v8 | v9) || [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AXAuditTextMarker *)self platformMarker];
  [v4 setPlatformMarker:v5];

  v6 = [(AXAuditTextMarker *)self markerDescription];
  [v4 setMarkerDescription:v6];

  return v4;
}

@end