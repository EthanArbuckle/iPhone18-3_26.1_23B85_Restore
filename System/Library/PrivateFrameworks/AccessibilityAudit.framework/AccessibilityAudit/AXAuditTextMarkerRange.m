@interface AXAuditTextMarkerRange
+ (void)registerTransportableObjectWithManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation AXAuditTextMarkerRange

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
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
  [v3 registerTransportInfoPropertyBased:v7];
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
  v3 = [(AXAuditTextMarkerRange *)self endMarker];
  v4 = [v3 hash];
  v5 = [(AXAuditTextMarkerRange *)self startMarker];
  v6 = [v5 hash] ^ v4;
  v7 = [(AXAuditTextMarkerRange *)self markerRangeDescription];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXAuditTextMarkerRange *)self startMarker];
      v7 = [(AXAuditTextMarkerRange *)v5 startMarker];
      if (v6 | v7 && ![v6 isEqual:v7])
      {
        v12 = 0;
      }

      else
      {
        v8 = [(AXAuditTextMarkerRange *)self endMarker];
        v9 = [(AXAuditTextMarkerRange *)v5 endMarker];
        if (v8 | v9 && ![v8 isEqual:v9])
        {
          v12 = 0;
        }

        else
        {
          v10 = [(AXAuditTextMarkerRange *)self markerRangeDescription];
          v11 = [(AXAuditTextMarkerRange *)v5 markerRangeDescription];
          v12 = !(v10 | v11) || [v10 isEqual:v11];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AXAuditTextMarkerRange *)self startMarker];
  [v4 setStartMarker:v5];

  v6 = [(AXAuditTextMarkerRange *)self endMarker];
  [v4 setEndMarker:v6];

  v7 = [(AXAuditTextMarkerRange *)self markerRangeDescription];
  [v4 setMarkerRangeDescription:v7];

  return v4;
}

@end