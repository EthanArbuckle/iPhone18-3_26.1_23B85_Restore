@interface CNDetection
+ (id)_copyDetectionFromInternal:(id)a3;
+ (id)_copyDetectionsFromInternal:(id)a3;
+ (id)_copyInternalFromDetections:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)normalizedRect;
- (CMTime)time;
- (CNDetection)initWithTime:(CMTime *)time detectionType:(CNDetectionType)detectionType normalizedRect:(CGRect)normalizedRect focusDisparity:(float)focusDisparity;
- (id)_initCopyingInternalDetection:(id)a3;
- (id)_initTakingInternalDetection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CNDetection

- (CNDetection)initWithTime:(CMTime *)time detectionType:(CNDetectionType)detectionType normalizedRect:(CGRect)normalizedRect focusDisparity:(float)focusDisparity
{
  height = normalizedRect.size.height;
  width = normalizedRect.size.width;
  y = normalizedRect.origin.y;
  x = normalizedRect.origin.x;
  v14 = objc_alloc(MEMORY[0x277D3E840]);
  v19 = *time;
  *&v15 = focusDisparity;
  v16 = [v14 initWithTime:&v19 rect:x focusDistance:{y, width, height, v15}];
  [v16 setDetectionType:detectionType];
  [v16 setTrackIdentifier:-1];
  [v16 setGroupIdentifier:-1];
  v17 = [(CNDetection *)self _initTakingInternalDetection:v16];

  return v17;
}

- (CMTime)time
{
  result = self->_internalDetection;
  if (result)
  {
    return [(CMTime *)result time];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (CGRect)normalizedRect
{
  [(PTCinematographyDetection *)self->_internalDetection rect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CNDetection *)self internalDetection];
    v7 = [v5 internalDetection];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CNDetection *)self internalDetection];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  internalDetection = self->_internalDetection;

  return [v4 _initCopyingInternalDetection:internalDetection];
}

- (id)_initTakingInternalDetection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNDetection;
  v6 = [(CNDetection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalDetection, a3);
    v7->_creationHash = [(CNDetection *)v7 hash];
  }

  return v7;
}

- (id)_initCopyingInternalDetection:(id)a3
{
  v4 = [a3 copy];
  v5 = [(CNDetection *)self _initTakingInternalDetection:v4];

  return v5;
}

+ (id)_copyDetectionFromInternal:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initCopyingInternalDetection:v4];

  return v5;
}

+ (id)_copyDetectionsFromInternal:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _copyDetectionFromInternal:{*(*(&v15 + 1) + 8 * v10), v15}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_copyInternalFromDetections:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) internalDetection];
        v11 = [v10 copy];
        [v4 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end