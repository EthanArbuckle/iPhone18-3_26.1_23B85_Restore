@interface AXAuditTextMarker
+ (void)registerTransportableObjectWithManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation AXAuditTextMarker

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v6 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditTextMarker_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"PlatformMarkerValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_24];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_11_2];
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v4];
  [managerCopy registerTransportInfoPropertyBased:v6];

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
  platformMarker = [(AXAuditTextMarker *)self platformMarker];
  v4 = [platformMarker hash];
  markerDescription = [(AXAuditTextMarker *)self markerDescription];
  v6 = [markerDescription hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      platformMarker = [(AXAuditTextMarker *)self platformMarker];
      platformMarker2 = [(AXAuditTextMarker *)v5 platformMarker];
      if (platformMarker | platformMarker2 && ![platformMarker isEqual:platformMarker2])
      {
        v10 = 0;
      }

      else
      {
        markerDescription = [(AXAuditTextMarker *)self markerDescription];
        markerDescription2 = [(AXAuditTextMarker *)v5 markerDescription];
        v10 = !(markerDescription | markerDescription2) || [markerDescription isEqual:markerDescription2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  platformMarker = [(AXAuditTextMarker *)self platformMarker];
  [v4 setPlatformMarker:platformMarker];

  markerDescription = [(AXAuditTextMarker *)self markerDescription];
  [v4 setMarkerDescription:markerDescription];

  return v4;
}

@end