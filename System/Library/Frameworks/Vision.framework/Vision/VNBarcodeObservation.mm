@interface VNBarcodeObservation
- (BOOL)_propertyAllowedForRevision;
- (BOOL)isColorInverted;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGS1DataCarrier;
- (NSData)supplementalPayloadData;
- (NSString)payloadStringValue;
- (NSString)supplementalPayloadString;
- (VNBarcodeCompositeType)supplementalCompositeType;
- (VNBarcodeObservation)initWithCoder:(id)coder;
- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)specifier symbology:(id)symbology descriptor:(id)descriptor boundingBox:(CGRect)box;
- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)specifier symbology:(id)symbology descriptor:(id)descriptor mrcDescriptor:(__MRCDescriptor *)mrcDescriptor topLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)self0;
- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)specifier symbology:(id)symbology descriptor:(id)descriptor topLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft;
- (id)description;
- (id)getDataDetectorResults:(id *)results;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)_cacheMRCDescriptorValues;
- (void)_cachePayloadAndSupplementalPayload;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setMrcDescriptor:(__MRCDescriptor *)descriptor;
@end

@implementation VNBarcodeObservation

- (id)getDataDetectorResults:(id *)results
{
  kdebug_trace();
  payloadStringValue = [(VNBarcodeObservation *)self payloadStringValue];
  v6 = [(VNObservation *)self getDataDetectorResultsForString:payloadStringValue error:results];

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
  originatingRequestSpecifier = [(VNObservation *)self originatingRequestSpecifier];
  v3 = [originatingRequestSpecifier specifiesRequestClass:objc_opt_class() revision:4];

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

  barcodeDescriptor = [(VNBarcodeObservation *)self barcodeDescriptor];
  v6 = barcodeDescriptor;
  if (barcodeDescriptor)
  {
    v7 = [v4 stringByAppendingFormat:@" %@", barcodeDescriptor];

    v4 = v7;
  }

  payloadStringValue = [(VNBarcodeObservation *)self payloadStringValue];
  v9 = payloadStringValue;
  if (payloadStringValue)
  {
    v10 = [v4 stringByAppendingFormat:@" (%@)", payloadStringValue];

    v4 = v10;
  }

  payloadData = [(VNBarcodeObservation *)self payloadData];
  v12 = payloadData;
  if (payloadData)
  {
    v13 = [v4 stringByAppendingFormat:@" (%@)", payloadData];

    v4 = v13;
  }

  supplementalPayloadString = [(VNBarcodeObservation *)self supplementalPayloadString];
  v15 = supplementalPayloadString;
  if (supplementalPayloadString)
  {
    v16 = [v4 stringByAppendingFormat:@" (%@)", supplementalPayloadString];

    v4 = v16;
  }

  supplementalPayloadData = [(VNBarcodeObservation *)self supplementalPayloadData];
  if (v12)
  {
    v18 = [v4 stringByAppendingFormat:@" (%@)", v12];

    v4 = v18;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VNBarcodeObservation;
    if ([(VNRectangleObservation *)&v18 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      symbology = [(VNBarcodeObservation *)self symbology];
      symbology2 = [(VNBarcodeObservation *)v5 symbology];
      v8 = VisionCoreEqualOrNilObjects();

      v16 = 0;
      if (v8)
      {
        barcodeDescriptor = [(VNBarcodeObservation *)self barcodeDescriptor];
        barcodeDescriptor2 = [(VNBarcodeObservation *)v5 barcodeDescriptor];
        v11 = VisionCoreEqualOrNilObjects();

        if (v11)
        {
          acbsBarcodeInfo = [(VNBarcodeObservation *)self acbsBarcodeInfo];
          acbsBarcodeInfo2 = [(VNBarcodeObservation *)v5 acbsBarcodeInfo];
          v14 = VisionCoreEqualOrNilObjects();

          if (v14)
          {
            mrcDescriptor = [(VNBarcodeObservation *)self mrcDescriptor];
            if (mrcDescriptor == [(VNBarcodeObservation *)v5 mrcDescriptor]|| CFEqual([(VNBarcodeObservation *)self mrcDescriptor], [(VNBarcodeObservation *)v5 mrcDescriptor]))
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
  symbology = [(VNBarcodeObservation *)self symbology];
  v5 = [symbology hash] ^ __ROR8__(v3, 51);

  barcodeDescriptor = [(VNBarcodeObservation *)self barcodeDescriptor];
  v7 = [barcodeDescriptor hash] ^ __ROR8__(v5, 51);

  acbsBarcodeInfo = [(VNBarcodeObservation *)self acbsBarcodeInfo];
  v9 = [acbsBarcodeInfo hash] ^ __ROR8__(v7, 51);

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
  vn_cloneObject = [(VNRectangleObservation *)&v23 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSString *)self->_symbology copy];
    v5 = *(vn_cloneObject + 288);
    *(vn_cloneObject + 288) = v4;

    objc_storeStrong((vn_cloneObject + 296), self->_barcodeDescriptor);
    [vn_cloneObject setACBSBarcodeInfo:self->_acbsBarcodeInfo];
    [vn_cloneObject setMrcDescriptor:self->_mrcDescriptor];
    v6 = [(NSString *)self->_cachedPayloadStringValue copy];
    v7 = *(vn_cloneObject + 224);
    *(vn_cloneObject + 224) = v6;

    v8 = [(NSData *)self->_cachedPayloadData copy];
    v9 = *(vn_cloneObject + 232);
    *(vn_cloneObject + 232) = v8;

    v10 = [(NSNumber *)self->_cachedAppClipCodeMetadataValue copy];
    v11 = *(vn_cloneObject + 240);
    *(vn_cloneObject + 240) = v10;

    v12 = [(NSNumber *)self->_cachedIsColorInverted copy];
    v13 = *(vn_cloneObject + 248);
    *(vn_cloneObject + 248) = v12;

    v14 = [(NSNumber *)self->_cachedIsGS1DataCarrier copy];
    v15 = *(vn_cloneObject + 256);
    *(vn_cloneObject + 256) = v14;

    v16 = [(NSString *)self->_cachedSupplementalPayload copy];
    v17 = *(vn_cloneObject + 264);
    *(vn_cloneObject + 264) = v16;

    v18 = [(NSData *)self->_cachedSupplementalPayloadRawData copy];
    v19 = *(vn_cloneObject + 280);
    *(vn_cloneObject + 280) = v18;

    v20 = [(NSNumber *)self->_cachedSupplementalCompositeType copy];
    v21 = *(vn_cloneObject + 272);
    *(vn_cloneObject + 272) = v20;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = VNBarcodeObservation;
  [(VNRectangleObservation *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_symbology forKey:@"symbology"];
  [coderCopy encodeObject:self->_barcodeDescriptor forKey:@"barcodeDescriptor"];
  [coderCopy encodeObject:self->_acbsBarcodeInfo forKey:@"ACBSBarcodeInfo"];
  if (self->_mrcDescriptor)
  {
    v5 = MRCDescriptorCopyAttributes();
    [coderCopy encodeObject:v5 forKey:@"MRCDescriptorAttributes"];
    CFRelease(v5);
  }
}

- (VNBarcodeObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = VNBarcodeObservation;
  v5 = [(VNRectangleObservation *)&v31 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbology"];
    v7 = [v6 copy];
    symbology = v5->_symbology;
    v5->_symbology = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"barcodeDescriptor"];
    barcodeDescriptor = v5->_barcodeDescriptor;
    v5->_barcodeDescriptor = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"ACBSBarcodeInfo"];
    acbsBarcodeInfo = v5->_acbsBarcodeInfo;
    v5->_acbsBarcodeInfo = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v20 setWithObjects:{v21, v22, v23, v24, v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"MRCDescriptorAttributes"];

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
    integerValue = [v18 integerValue];
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    if ((integerValue - 2) >= 4)
    {
      v15 = 0;
    }

    else
    {
      v15 = integerValue - 1;
    }

    v16 = [v14 initWithInteger:v15];
    cachedSupplementalCompositeType = self->_cachedSupplementalCompositeType;
    self->_cachedSupplementalCompositeType = v16;
  }
}

- (void)setMrcDescriptor:(__MRCDescriptor *)descriptor
{
  mrcDescriptor = self->_mrcDescriptor;
  if (mrcDescriptor != descriptor)
  {
    if (mrcDescriptor)
    {
      CFRelease(mrcDescriptor);
      self->_mrcDescriptor = 0;
    }

    if (descriptor)
    {
      self->_mrcDescriptor = CFRetain(descriptor);

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

- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)specifier symbology:(id)symbology descriptor:(id)descriptor boundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  specifierCopy = specifier;
  descriptorCopy = descriptor;
  v21 = _validatedVNBarcodeSymbology(symbology);
  if (!v21)
  {
    VNValidatedLog(4, @"invalid barcode symbology", v15, v16, v17, v18, v19, v20, v27.receiver);
    height = 0;
    goto LABEL_5;
  }

  v27.receiver = self;
  v27.super_class = VNBarcodeObservation;
  height = [(VNRectangleObservation *)&v27 initWithOriginatingRequestSpecifier:specifierCopy boundingBox:x, y, width, height];
  if (height)
  {
    v23 = [v21 copy];
    v24 = *(height + 36);
    *(height + 36) = v23;

    v25 = descriptorCopy;
    self = *(height + 37);
    *(height + 37) = v25;
LABEL_5:
  }

  return height;
}

- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)specifier symbology:(id)symbology descriptor:(id)descriptor mrcDescriptor:(__MRCDescriptor *)mrcDescriptor topLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)self0
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v12 = bottomRight.y;
  v13 = bottomRight.x;
  v14 = right.y;
  v15 = right.x;
  v16 = left.y;
  v17 = left.x;
  specifierCopy = specifier;
  symbologyCopy = symbology;
  descriptorCopy = descriptor;
  if (mrcDescriptor)
  {
    self = [(VNBarcodeObservation *)self initWithOriginatingRequestSpecifier:specifierCopy symbology:symbologyCopy descriptor:descriptorCopy topLeft:v17 topRight:v16 bottomRight:v15 bottomLeft:v14, v13, v12, x, y];
    if (self)
    {
      self->_mrcDescriptor = CFRetain(mrcDescriptor);
      [(VNBarcodeObservation *)self _cacheMRCDescriptorValues];
      self = self;
      mrcDescriptor = self;
    }

    else
    {
      mrcDescriptor = 0;
    }
  }

  return mrcDescriptor;
}

- (VNBarcodeObservation)initWithOriginatingRequestSpecifier:(id)specifier symbology:(id)symbology descriptor:(id)descriptor topLeft:(CGPoint)left topRight:(CGPoint)right bottomRight:(CGPoint)bottomRight bottomLeft:(CGPoint)bottomLeft
{
  y = bottomLeft.y;
  x = bottomLeft.x;
  v11 = bottomRight.y;
  v12 = bottomRight.x;
  v13 = right.y;
  v14 = right.x;
  v15 = left.y;
  v16 = left.x;
  specifierCopy = specifier;
  descriptorCopy = descriptor;
  v28 = _validatedVNBarcodeSymbology(symbology);
  if (!v28)
  {
    VNValidatedLog(4, @"invalid barcode symbology", v22, v23, v24, v25, v26, v27, v34.receiver);
    v29 = 0;
    goto LABEL_5;
  }

  v34.receiver = self;
  v34.super_class = VNBarcodeObservation;
  v29 = [(VNRectangleObservation *)&v34 initWithOriginatingRequestSpecifier:specifierCopy topLeft:v16 topRight:v15 bottomRight:v14 bottomLeft:v13, v12, v11, x, y];
  if (v29)
  {
    v30 = [v28 copy];
    v31 = *(v29 + 36);
    *(v29 + 36) = v30;

    v32 = descriptorCopy;
    self = *(v29 + 37);
    *(v29 + 37) = v32;
LABEL_5:
  }

  return v29;
}

@end