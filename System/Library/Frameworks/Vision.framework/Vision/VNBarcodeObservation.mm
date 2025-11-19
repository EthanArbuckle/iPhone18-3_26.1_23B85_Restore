@interface VNBarcodeObservation
- (BOOL)_propertyAllowedForRevision;
- (BOOL)isColorInverted;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGS1DataCarrier;
- (NSData)supplementalPayloadData;
- (NSString)payloadStringValue;
- (NSString)supplementalPayloadString;
- (VNBarcodeCompositeType)supplementalCompositeType;
- (VNBarcodeObservation)initWithCoder:(id)a3;
- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)a3 symbology:(id)a4 descriptor:(id)a5 boundingBox:(CGRect)a6;
- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)a3 symbology:(id)a4 descriptor:(id)a5 mrcDescriptor:(__MRCDescriptor *)a6 topLeft:(CGPoint)a7 topRight:(CGPoint)a8 bottomRight:(CGPoint)a9 bottomLeft:(CGPoint)a10;
- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)a3 symbology:(id)a4 descriptor:(id)a5 topLeft:(CGPoint)a6 topRight:(CGPoint)a7 bottomRight:(CGPoint)a8 bottomLeft:(CGPoint)a9;
- (id)description;
- (id)getDataDetectorResults:(id *)a3;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)_cacheMRCDescriptorValues;
- (void)_cachePayloadAndSupplementalPayload;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setMrcDescriptor:(__MRCDescriptor *)a3;
@end

@implementation VNBarcodeObservation

- (id)getDataDetectorResults:(id *)a3
{
  kdebug_trace();
  v5 = [(VNBarcodeObservation *)self payloadStringValue];
  v6 = [(VNObservation *)self getDataDetectorResultsForString:v5 error:a3];

  kdebug_trace();

  return v6;
}

- (BOOL)isColorInverted
{
  if (![(VNBarcodeObservation *)self _propertyAllowedForRevision])
  {
    return 0;
  }

  cachedIsColorInverted = self->_cachedIsColorInverted;
  if (!cachedIsColorInverted)
  {
    return 0;
  }

  return [(NSNumber *)cachedIsColorInverted BOOLValue];
}

- (VNBarcodeCompositeType)supplementalCompositeType
{
  if (![(VNBarcodeObservation *)self _propertyAllowedForRevision])
  {
    return 0;
  }

  cachedSupplementalCompositeType = self->_cachedSupplementalCompositeType;
  if (!cachedSupplementalCompositeType)
  {
    return 0;
  }

  return [(NSNumber *)cachedSupplementalCompositeType integerValue];
}

- (NSData)supplementalPayloadData
{
  if ([(VNBarcodeObservation *)self _propertyAllowedForRevision])
  {
    v3 = self->_cachedSupplementalPayloadRawData;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)supplementalPayloadString
{
  if ([(VNBarcodeObservation *)self _propertyAllowedForRevision])
  {
    v3 = self->_cachedSupplementalPayload;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isGS1DataCarrier
{
  if (![(VNBarcodeObservation *)self _propertyAllowedForRevision])
  {
    return 0;
  }

  cachedIsGS1DataCarrier = self->_cachedIsGS1DataCarrier;
  if (!cachedIsGS1DataCarrier)
  {
    return 0;
  }

  return [(NSNumber *)cachedIsGS1DataCarrier BOOLValue];
}

- (BOOL)_propertyAllowedForRevision
{
  v2 = [(VNObservation *)self originatingRequestSpecifier];
  v3 = [v2 specifiesRequestClass:objc_opt_class() revision:4];

  return v3;
}

- (NSString)payloadStringValue
{
  if (!self->_cachedPayloadStringValue)
  {
    if (self->_acbsBarcodeInfo)
    {
      v3 = ACBSCreateSymbolDescriptorFromBasicDescriptor();
      v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C69A0]];
      v5 = [v4 copy];
      cachedPayloadStringValue = self->_cachedPayloadStringValue;
      self->_cachedPayloadStringValue = v5;
    }

    else if (self->_mrcDescriptor)
    {
      [(VNBarcodeObservation *)self _cachePayloadAndSupplementalPayload];
    }
  }

  v7 = self->_cachedPayloadStringValue;

  return v7;
}

- (void)_cachePayloadAndSupplementalPayload
{
  v3 = MRCDescriptorDecodePayloadAndSupplementalPayload();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 copy];
    cachedPayloadStringValue = self->_cachedPayloadStringValue;
    self->_cachedPayloadStringValue = v5;

    cachedSupplementalPayload = self->_cachedSupplementalPayload;
    self->_cachedSupplementalPayload = 0;
  }

  else
  {
    v8 = CFErrorCopyDescription(0);
    VNValidatedLog(4, @"Could not decode payload from MRCDescriptor %@", v9, v10, v11, v12, v13, v14, v8);
    CFRelease(v8);
  }
}

- (id)description
{
  v20.receiver = self;
  v20.super_class = VNBarcodeObservation;
  v3 = [(VNDetectedObjectObservation *)&v20 description];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_symbology];

  v5 = [(VNBarcodeObservation *)self barcodeDescriptor];
  v6 = v5;
  if (v5)
  {
    v7 = [v4 stringByAppendingFormat:@" %@", v5];

    v4 = v7;
  }

  v8 = [(VNBarcodeObservation *)self payloadStringValue];
  v9 = v8;
  if (v8)
  {
    v10 = [v4 stringByAppendingFormat:@" (%@)", v8];

    v4 = v10;
  }

  v11 = [(VNBarcodeObservation *)self payloadData];
  v12 = v11;
  if (v11)
  {
    v13 = [v4 stringByAppendingFormat:@" (%@)", v11];

    v4 = v13;
  }

  v14 = [(VNBarcodeObservation *)self supplementalPayloadString];
  v15 = v14;
  if (v14)
  {
    v16 = [v4 stringByAppendingFormat:@" (%@)", v14];

    v4 = v16;
  }

  v17 = [(VNBarcodeObservation *)self supplementalPayloadData];
  if (v12)
  {
    v18 = [v4 stringByAppendingFormat:@" (%@)", v12];

    v4 = v18;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VNBarcodeObservation;
    if ([(VNRectangleObservation *)&v18 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNBarcodeObservation *)self symbology];
      v7 = [(VNBarcodeObservation *)v5 symbology];
      v8 = VisionCoreEqualOrNilObjects();

      v16 = 0;
      if (v8)
      {
        v9 = [(VNBarcodeObservation *)self barcodeDescriptor];
        v10 = [(VNBarcodeObservation *)v5 barcodeDescriptor];
        v11 = VisionCoreEqualOrNilObjects();

        if (v11)
        {
          v12 = [(VNBarcodeObservation *)self acbsBarcodeInfo];
          v13 = [(VNBarcodeObservation *)v5 acbsBarcodeInfo];
          v14 = VisionCoreEqualOrNilObjects();

          if (v14)
          {
            v15 = [(VNBarcodeObservation *)self mrcDescriptor];
            if (v15 == [(VNBarcodeObservation *)v5 mrcDescriptor]|| CFEqual([(VNBarcodeObservation *)self mrcDescriptor], [(VNBarcodeObservation *)v5 mrcDescriptor]))
            {
              v16 = 1;
            }
          }
        }
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = VNBarcodeObservation;
  v3 = [(VNRectangleObservation *)&v12 hash];
  v4 = [(VNBarcodeObservation *)self symbology];
  v5 = [v4 hash] ^ __ROR8__(v3, 51);

  v6 = [(VNBarcodeObservation *)self barcodeDescriptor];
  v7 = [v6 hash] ^ __ROR8__(v5, 51);

  v8 = [(VNBarcodeObservation *)self acbsBarcodeInfo];
  v9 = [v8 hash] ^ __ROR8__(v7, 51);

  mrcDescriptor = self->_mrcDescriptor;
  if (mrcDescriptor)
  {
    return CFHash(mrcDescriptor) ^ __ROR8__(v9, 51);
  }

  return v9;
}

- (id)vn_cloneObject
{
  v23.receiver = self;
  v23.super_class = VNBarcodeObservation;
  v3 = [(VNRectangleObservation *)&v23 vn_cloneObject];
  if (v3)
  {
    v4 = [(NSString *)self->_symbology copy];
    v5 = *(v3 + 288);
    *(v3 + 288) = v4;

    objc_storeStrong((v3 + 296), self->_barcodeDescriptor);
    [v3 setACBSBarcodeInfo:self->_acbsBarcodeInfo];
    [v3 setMrcDescriptor:self->_mrcDescriptor];
    v6 = [(NSString *)self->_cachedPayloadStringValue copy];
    v7 = *(v3 + 224);
    *(v3 + 224) = v6;

    v8 = [(NSData *)self->_cachedPayloadData copy];
    v9 = *(v3 + 232);
    *(v3 + 232) = v8;

    v10 = [(NSNumber *)self->_cachedAppClipCodeMetadataValue copy];
    v11 = *(v3 + 240);
    *(v3 + 240) = v10;

    v12 = [(NSNumber *)self->_cachedIsColorInverted copy];
    v13 = *(v3 + 248);
    *(v3 + 248) = v12;

    v14 = [(NSNumber *)self->_cachedIsGS1DataCarrier copy];
    v15 = *(v3 + 256);
    *(v3 + 256) = v14;

    v16 = [(NSString *)self->_cachedSupplementalPayload copy];
    v17 = *(v3 + 264);
    *(v3 + 264) = v16;

    v18 = [(NSData *)self->_cachedSupplementalPayloadRawData copy];
    v19 = *(v3 + 280);
    *(v3 + 280) = v18;

    v20 = [(NSNumber *)self->_cachedSupplementalCompositeType copy];
    v21 = *(v3 + 272);
    *(v3 + 272) = v20;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VNBarcodeObservation;
  [(VNRectangleObservation *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_symbology forKey:@"symbology"];
  [v4 encodeObject:self->_barcodeDescriptor forKey:@"barcodeDescriptor"];
  [v4 encodeObject:self->_acbsBarcodeInfo forKey:@"ACBSBarcodeInfo"];
  if (self->_mrcDescriptor)
  {
    v5 = MRCDescriptorCopyAttributes();
    [v4 encodeObject:v5 forKey:@"MRCDescriptorAttributes"];
    CFRelease(v5);
  }
}

- (VNBarcodeObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = VNBarcodeObservation;
  v5 = [(VNRectangleObservation *)&v31 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbology"];
    v7 = [v6 copy];
    symbology = v5->_symbology;
    v5->_symbology = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcodeDescriptor"];
    barcodeDescriptor = v5->_barcodeDescriptor;
    v5->_barcodeDescriptor = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"ACBSBarcodeInfo"];
    acbsBarcodeInfo = v5->_acbsBarcodeInfo;
    v5->_acbsBarcodeInfo = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v20 setWithObjects:{v21, v22, v23, v24, v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"MRCDescriptorAttributes"];

    if (v27)
    {
      v28 = MRCDescriptorCreateWithAttributes();
      [(VNBarcodeObservation *)v5 setMrcDescriptor:v28];
      CFRelease(v28);
    }

    v29 = v5;
  }

  return v5;
}

- (void)_cacheMRCDescriptorValues
{
  if (self->_mrcDescriptor)
  {
    [(VNBarcodeObservation *)self _cachePayloadAndSupplementalPayload];
    v3 = MRCDescriptorCopyAttribute();
    cachedPayloadData = self->_cachedPayloadData;
    self->_cachedPayloadData = v3;

    v5 = MRCDescriptorCopyAttribute();
    cachedAppClipCodeMetadataValue = self->_cachedAppClipCodeMetadataValue;
    self->_cachedAppClipCodeMetadataValue = v5;

    v7 = MRCDescriptorCopyAttribute();
    cachedIsColorInverted = self->_cachedIsColorInverted;
    self->_cachedIsColorInverted = v7;

    v9 = MRCDescriptorCopyAttribute();
    cachedIsGS1DataCarrier = self->_cachedIsGS1DataCarrier;
    self->_cachedIsGS1DataCarrier = v9;

    v11 = MRCDescriptorCopyAttribute();
    cachedSupplementalPayloadRawData = self->_cachedSupplementalPayloadRawData;
    self->_cachedSupplementalPayloadRawData = v11;

    v18 = MRCDescriptorCopyAttribute();
    v13 = [v18 integerValue];
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    if ((v13 - 2) >= 4)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13 - 1;
    }

    v16 = [v14 initWithInteger:v15];
    cachedSupplementalCompositeType = self->_cachedSupplementalCompositeType;
    self->_cachedSupplementalCompositeType = v16;
  }
}

- (void)setMrcDescriptor:(__MRCDescriptor *)a3
{
  mrcDescriptor = self->_mrcDescriptor;
  if (mrcDescriptor != a3)
  {
    if (mrcDescriptor)
    {
      CFRelease(mrcDescriptor);
      self->_mrcDescriptor = 0;
    }

    if (a3)
    {
      self->_mrcDescriptor = CFRetain(a3);

      [(VNBarcodeObservation *)self _cacheMRCDescriptorValues];
    }
  }
}

- (void)dealloc
{
  mrcDescriptor = self->_mrcDescriptor;
  if (mrcDescriptor)
  {
    CFRelease(mrcDescriptor);
  }

  v4.receiver = self;
  v4.super_class = VNBarcodeObservation;
  [(VNBarcodeObservation *)&v4 dealloc];
}

- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)a3 symbology:(id)a4 descriptor:(id)a5 boundingBox:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a5;
  v21 = _validatedVNBarcodeSymbology(a4);
  if (!v21)
  {
    VNValidatedLog(4, @"invalid barcode symbology", v15, v16, v17, v18, v19, v20, v27.receiver);
    v22 = 0;
    goto LABEL_5;
  }

  v27.receiver = self;
  v27.super_class = VNBarcodeObservation;
  v22 = [(VNRectangleObservation *)&v27 initWithOriginatingRequestSpecifier:v13 boundingBox:x, y, width, height];
  if (v22)
  {
    v23 = [v21 copy];
    v24 = *(v22 + 36);
    *(v22 + 36) = v23;

    v25 = v14;
    self = *(v22 + 37);
    *(v22 + 37) = v25;
LABEL_5:
  }

  return v22;
}

- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)a3 symbology:(id)a4 descriptor:(id)a5 mrcDescriptor:(__MRCDescriptor *)a6 topLeft:(CGPoint)a7 topRight:(CGPoint)a8 bottomRight:(CGPoint)a9 bottomLeft:(CGPoint)a10
{
  y = a10.y;
  x = a10.x;
  v12 = a9.y;
  v13 = a9.x;
  v14 = a8.y;
  v15 = a8.x;
  v16 = a7.y;
  v17 = a7.x;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  if (a6)
  {
    self = [(VNBarcodeObservation *)self initWithOriginatingRequestSpecifier:v22 symbology:v23 descriptor:v24 topLeft:v17 topRight:v16 bottomRight:v15 bottomLeft:v14, v13, v12, x, y];
    if (self)
    {
      self->_mrcDescriptor = CFRetain(a6);
      [(VNBarcodeObservation *)self _cacheMRCDescriptorValues];
      self = self;
      a6 = self;
    }

    else
    {
      a6 = 0;
    }
  }

  return a6;
}

- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)a3 symbology:(id)a4 descriptor:(id)a5 topLeft:(CGPoint)a6 topRight:(CGPoint)a7 bottomRight:(CGPoint)a8 bottomLeft:(CGPoint)a9
{
  y = a9.y;
  x = a9.x;
  v11 = a8.y;
  v12 = a8.x;
  v13 = a7.y;
  v14 = a7.x;
  v15 = a6.y;
  v16 = a6.x;
  v20 = a3;
  v21 = a5;
  v28 = _validatedVNBarcodeSymbology(a4);
  if (!v28)
  {
    VNValidatedLog(4, @"invalid barcode symbology", v22, v23, v24, v25, v26, v27, v34.receiver);
    v29 = 0;
    goto LABEL_5;
  }

  v34.receiver = self;
  v34.super_class = VNBarcodeObservation;
  v29 = [(VNRectangleObservation *)&v34 initWithOriginatingRequestSpecifier:v20 topLeft:v16 topRight:v15 bottomRight:v14 bottomLeft:v13, v12, v11, x, y];
  if (v29)
  {
    v30 = [v28 copy];
    v31 = *(v29 + 36);
    *(v29 + 36) = v30;

    v32 = v21;
    self = *(v29 + 37);
    *(v29 + 37) = v32;
LABEL_5:
  }

  return v29;
}

@end