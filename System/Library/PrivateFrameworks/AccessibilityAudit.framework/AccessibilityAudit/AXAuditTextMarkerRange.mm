@interface AXAuditTextMarkerRange
+ (void)registerTransportableObjectWithManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation AXAuditTextMarkerRange

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v7 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditTextMarkerRange_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v7 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"StartMarkerValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_5];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_9_0];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v7 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"EndMarkerValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_15_1];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_17_1];
  v6 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v7 addPropertyEntry:v6];
  [(AXAuditObjectTransportPropertyEntry *)v6 setTransportKey:@"MarkerRangeDescriptionValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v6 setLocalValueToTransportValue:&__block_literal_global_23];
  [(AXAuditObjectTransportPropertyEntry *)v6 setPopulateLocalObjectWithTransportValue:&__block_literal_global_25];
  [managerCopy registerTransportInfoPropertyBased:v7];
}

void __65__AXAuditTextMarkerRange_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setStartMarker:v4];
  }
}

void __65__AXAuditTextMarkerRange_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setEndMarker:v4];
  }
}

void __65__AXAuditTextMarkerRange_registerTransportableObjectWithManager___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setMarkerRangeDescription:v4];
  }
}

- (unint64_t)hash
{
  endMarker = [(AXAuditTextMarkerRange *)self endMarker];
  v4 = [endMarker hash];
  startMarker = [(AXAuditTextMarkerRange *)self startMarker];
  v6 = [startMarker hash] ^ v4;
  markerRangeDescription = [(AXAuditTextMarkerRange *)self markerRangeDescription];
  v8 = [markerRangeDescription hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      startMarker = [(AXAuditTextMarkerRange *)self startMarker];
      startMarker2 = [(AXAuditTextMarkerRange *)v5 startMarker];
      if (startMarker | startMarker2 && ![startMarker isEqual:startMarker2])
      {
        v12 = 0;
      }

      else
      {
        endMarker = [(AXAuditTextMarkerRange *)self endMarker];
        endMarker2 = [(AXAuditTextMarkerRange *)v5 endMarker];
        if (endMarker | endMarker2 && ![endMarker isEqual:endMarker2])
        {
          v12 = 0;
        }

        else
        {
          markerRangeDescription = [(AXAuditTextMarkerRange *)self markerRangeDescription];
          markerRangeDescription2 = [(AXAuditTextMarkerRange *)v5 markerRangeDescription];
          v12 = !(markerRangeDescription | markerRangeDescription2) || [markerRangeDescription isEqual:markerRangeDescription2];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  startMarker = [(AXAuditTextMarkerRange *)self startMarker];
  [v4 setStartMarker:startMarker];

  endMarker = [(AXAuditTextMarkerRange *)self endMarker];
  [v4 setEndMarker:endMarker];

  markerRangeDescription = [(AXAuditTextMarkerRange *)self markerRangeDescription];
  [v4 setMarkerRangeDescription:markerRangeDescription];

  return v4;
}

@end