@interface AVApplePortraitMetadata
- (AVApplePortraitMetadata)initWithCoder:(id)a3;
- (AVApplePortraitMetadata)initWithInternal:(id)a3;
- (AVApplePortraitMetadata)initWithPortraitMetadataDictionary:(id)a3;
- (CGRect)focusRectangle;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVApplePortraitMetadata

- (AVApplePortraitMetadata)initWithPortraitMetadataDictionary:(id)a3
{
  v21.receiver = self;
  v21.super_class = AVApplePortraitMetadata;
  v4 = [(AVApplePortraitMetadata *)&v21 init];
  if (!v4 || ![a3 count])
  {

    return 0;
  }

  v5 = objc_alloc_init(AVApplePortraitMetadataInternal);
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990BB8]), "intValue"}];
  if (v6 < 1)
  {
    goto LABEL_12;
  }

  [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990B68]), "floatValue"}];
  [(AVApplePortraitMetadataInternal *)v5 setApertureFocalRatio:?];
  [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990B88]), "floatValue"}];
  [(AVApplePortraitMetadataInternal *)v5 setLuminanceNoiseAmplitude:?];
  -[AVApplePortraitMetadataInternal setFaceOrientation:](v5, "setFaceOrientation:", [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990B78]), "intValue"}]);
  -[AVApplePortraitMetadataInternal setFaceObservationsData:](v5, "setFaceObservationsData:", [a3 objectForKeyedSubscript:*MEMORY[0x1E6990B70]]);
  v7 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990BA8]];
  v8 = [v7 count] == 2 ? objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", objc_msgSend(objc_msgSend(v7, "objectAtIndexedSubscript:", 0), "unsignedIntegerValue"), objc_msgSend(objc_msgSend(v7, "objectAtIndexedSubscript:", 1), "unsignedIntegerValue")) : 0;
  [(AVApplePortraitMetadataInternal *)v5 setIndexesOfShallowDepthOfFieldObservations:v8];
  v10 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990B80]];
  __asm { FMOV            V0.2D, #0.5 }

  v20.origin = _Q0;
  v20.size.width = 0.0;
  v20.size.height = 0.0;
  CGRectMakeWithDictionaryRepresentation(v10, &v20);
  [(AVApplePortraitMetadataInternal *)v5 setFocusRectangle:*&v20.origin, v20.size.width, v20.size.height];
  if (v6 <= 3)
  {
LABEL_12:
    [(AVApplePortraitMetadataInternal *)v5 setMinimumApertureFocalRatio:0.0];
    [(AVApplePortraitMetadataInternal *)v5 setMaximumApertureFocalRatio:0.0];
    goto LABEL_13;
  }

  [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990B98]), "floatValue"}];
  [(AVApplePortraitMetadataInternal *)v5 setMinimumApertureFocalRatio:?];
  [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990B90]), "floatValue"}];
  [(AVApplePortraitMetadataInternal *)v5 setMaximumApertureFocalRatio:?];
  if (v6 == 4)
  {
LABEL_13:
    LODWORD(v16) = 2143289344;
    [(AVApplePortraitMetadataInternal *)v5 setPortraitLightingEffectStrength:v16];
    goto LABEL_14;
  }

  v17 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6990BA0]];
  if (v17)
  {
    [v17 floatValue];
  }

  else
  {
    LODWORD(v18) = 2143289344;
  }

  [(AVApplePortraitMetadataInternal *)v5 setPortraitLightingEffectStrength:v18];
  if (v6 >= 6)
  {
    v19 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990BB0]), "intValue"}];
    goto LABEL_15;
  }

LABEL_14:
  v19 = 0;
LABEL_15:
  [(AVApplePortraitMetadataInternal *)v5 setSDOFRenderingVersion:v19];
  [(AVApplePortraitMetadataInternal *)v5 setVersion:v6];
  return [(AVApplePortraitMetadata *)v4 initWithInternal:v5];
}

- (AVApplePortraitMetadata)initWithInternal:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVApplePortraitMetadata;
  v4 = [(AVApplePortraitMetadata *)&v6 init];
  if (v4)
  {
    v4->_internal = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVApplePortraitMetadata;
  [(AVApplePortraitMetadata *)&v3 dealloc];
}

- (AVApplePortraitMetadata)initWithCoder:(id)a3
{
  v5 = objc_alloc_init(AVApplePortraitMetadataInternal);
  v6 = [a3 decodeIntForKey:*MEMORY[0x1E6990BB8]];
  if (v6 >= 1)
  {
    [a3 decodeFloatForKey:*MEMORY[0x1E6990B68]];
    [(AVApplePortraitMetadataInternal *)v5 setApertureFocalRatio:?];
    v7 = *MEMORY[0x1E6990B98];
    v8 = [a3 containsValueForKey:*MEMORY[0x1E6990B98]];
    v9 = 0;
    v10 = 0.0;
    if (v8)
    {
      [a3 decodeFloatForKey:{v7, 0.0}];
    }

    [(AVApplePortraitMetadataInternal *)v5 setMinimumApertureFocalRatio:v10];
    v11 = *MEMORY[0x1E6990B90];
    if ([a3 containsValueForKey:*MEMORY[0x1E6990B90]])
    {
      [a3 decodeFloatForKey:v11];
      v9 = LODWORD(v12);
    }

    LODWORD(v12) = v9;
    [(AVApplePortraitMetadataInternal *)v5 setMaximumApertureFocalRatio:v12];
    v13 = *MEMORY[0x1E6990BA0];
    if ([a3 containsValueForKey:*MEMORY[0x1E6990BA0]])
    {
      [a3 decodeFloatForKey:v13];
    }

    else
    {
      LODWORD(v14) = 2143289344;
    }

    [(AVApplePortraitMetadataInternal *)v5 setPortraitLightingEffectStrength:v14];
    [a3 decodeFloatForKey:*MEMORY[0x1E6990B88]];
    [(AVApplePortraitMetadataInternal *)v5 setLuminanceNoiseAmplitude:?];
    -[AVApplePortraitMetadataInternal setFaceOrientation:](v5, "setFaceOrientation:", [a3 decodeIntForKey:*MEMORY[0x1E6990B78]]);
    -[AVApplePortraitMetadataInternal setFaceObservationsData:](v5, "setFaceObservationsData:", [a3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E6990B70]]);
    -[AVApplePortraitMetadataInternal setIndexesOfShallowDepthOfFieldObservations:](v5, "setIndexesOfShallowDepthOfFieldObservations:", [a3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E6990BA8]]);
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [a3 decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithObjects:", v16, v17, objc_opt_class(), 0), *MEMORY[0x1E6990B80]}];
    __asm { FMOV            V0.2D, #0.5 }

    rect.origin = _Q0;
    rect.size.width = 0.0;
    rect.size.height = 0.0;
    CGRectMakeWithDictionaryRepresentation(v18, &rect);
    [(AVApplePortraitMetadataInternal *)v5 setFocusRectangle:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    if (v6 < 6)
    {
      v24 = 0;
    }

    else
    {
      v24 = [a3 decodeIntForKey:*MEMORY[0x1E6990BB0]];
    }

    [(AVApplePortraitMetadataInternal *)v5 setSDOFRenderingVersion:v24];
  }

  [(AVApplePortraitMetadataInternal *)v5 setVersion:v6];
  return [(AVApplePortraitMetadata *)self initWithInternal:v5];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(AVApplePortraitMetadataInternal *)self->_internal version];
  [a3 encodeInt:v5 forKey:*MEMORY[0x1E6990BB8]];
  [(AVApplePortraitMetadataInternal *)self->_internal apertureFocalRatio];
  [a3 encodeFloat:*MEMORY[0x1E6990B68] forKey:?];
  [(AVApplePortraitMetadataInternal *)self->_internal minimumApertureFocalRatio];
  [a3 encodeFloat:*MEMORY[0x1E6990B98] forKey:?];
  [(AVApplePortraitMetadataInternal *)self->_internal maximumApertureFocalRatio];
  [a3 encodeFloat:*MEMORY[0x1E6990B90] forKey:?];
  [(AVApplePortraitMetadataInternal *)self->_internal portraitLightingEffectStrength];
  [(AVApplePortraitMetadataInternal *)self->_internal portraitLightingEffectStrength];
  [a3 encodeFloat:*MEMORY[0x1E6990BA0] forKey:?];
  [(AVApplePortraitMetadataInternal *)self->_internal luminanceNoiseAmplitude];
  [a3 encodeFloat:*MEMORY[0x1E6990B88] forKey:?];
  v6 = [(AVApplePortraitMetadataInternal *)self->_internal faceOrientation];
  [a3 encodeInt:v6 forKey:*MEMORY[0x1E6990B78]];
  v7 = [(AVApplePortraitMetadataInternal *)self->_internal faceObservationsData];
  [a3 encodeObject:v7 forKey:*MEMORY[0x1E6990B70]];
  v8 = [(AVApplePortraitMetadataInternal *)self->_internal indexesOfShallowDepthOfFieldObservations];
  [a3 encodeObject:v8 forKey:*MEMORY[0x1E6990BA8]];
  [(AVApplePortraitMetadataInternal *)self->_internal focusRectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v13);
  [a3 encodeObject:DictionaryRepresentation forKey:*MEMORY[0x1E6990B80]];

  v10 = [(AVApplePortraitMetadataInternal *)self->_internal SDOFRenderingVersion];
  v11 = *MEMORY[0x1E6990BB0];

  [a3 encodeInt:v10 forKey:v11];
}

- (CGRect)focusRectangle
{
  [(AVApplePortraitMetadataInternal *)self->_internal focusRectangle];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end