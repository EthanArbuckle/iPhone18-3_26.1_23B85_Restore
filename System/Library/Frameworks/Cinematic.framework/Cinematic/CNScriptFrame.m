@interface CNScriptFrame
+ (id)_copyFrameFromInternal:(id)a3;
+ (id)_copyFramesFromInternal:(id)a3;
+ (id)_copyInternalFromFrames:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CMTime)time;
- (CNDetection)bestDetectionForGroupID:(CNDetectionGroupID)detectionGroupID;
- (CNDetection)detectionForID:(CNDetectionID)detectionID;
- (CNDetection)focusDetection;
- (CNScriptFrame)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (CNScriptFrame)initWithTimedMetadataGroup:(id)a3;
- (NSArray)allDetections;
- (id)_initCopyingInternalFrame:(id)a3;
- (id)_initTakingInternalFrame:(id)a3;
- (id)_initWithTimedData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CNScriptFrame

- (CNScriptFrame)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:a3];
  v5 = [(CNScriptFrame *)self initWithTimedMetadataGroup:v4];

  return v5;
}

- (CNScriptFrame)initWithTimedMetadataGroup:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a3 items];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v10 isEqual:0x284A05300];

        if (v11)
        {
          v13 = [v9 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v15 = [v9 value];
            self = [(CNScriptFrame *)self _initWithTimedData:v15];
            v12 = self;
          }

          else
          {
            v15 = _CNLogSystem();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [(CNScriptFrame *)0x284A05300 initWithTimedMetadataGroup:v9];
            }

            v12 = 0;
          }

          goto LABEL_16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (CMTime)time
{
  result = self->_internalFrame;
  if (result)
  {
    return [(CMTime *)result time];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (CNDetection)focusDetection
{
  v3 = [(PTCinematographyFrame *)self->_internalFrame focusDetection];
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D3E840]);
    [(CNScriptFrame *)self time];
    [(CNScriptFrame *)self focusDisparity];
    LODWORD(v6) = v5;
    v3 = [v4 initWithTime:v9 rect:*MEMORY[0x277CBF3A0] focusDistance:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v6}];
    [v3 setDetectionType:0];
    [v3 setTrackIdentifier:{-[PTCinematographyFrame focusTrackIdentifier](self->_internalFrame, "focusTrackIdentifier")}];
    [v3 setGroupIdentifier:{-[PTCinematographyFrame focusGroupIdentifier](self->_internalFrame, "focusGroupIdentifier")}];
  }

  v7 = [CNDetection _copyDetectionFromInternal:v3];

  return v7;
}

- (NSArray)allDetections
{
  v2 = [(PTCinematographyFrame *)self->_internalFrame allDetections];
  v3 = [CNDetection _copyDetectionsFromInternal:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CNScriptFrame *)self internalFrame];
    v7 = [v5 internalFrame];

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
  v2 = [(CNScriptFrame *)self internalFrame];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  internalFrame = self->_internalFrame;

  return [v4 _initCopyingInternalFrame:internalFrame];
}

- (id)_initTakingInternalFrame:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNScriptFrame;
  v6 = [(CNScriptFrame *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalFrame, a3);
  }

  return v7;
}

- (id)_initCopyingInternalFrame:(id)a3
{
  v4 = [a3 copy];
  v5 = [(CNScriptFrame *)self _initTakingInternalFrame:v4];

  return v5;
}

- (id)_initWithTimedData:(id)a3
{
  v4 = [MEMORY[0x277D3E8D0] objectFromData:a3 error:0];
  if (v4)
  {
    self = [(CNScriptFrame *)self _initTakingInternalFrame:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CNDetection)detectionForID:(CNDetectionID)detectionID
{
  v4 = [(CNScriptFrame *)self internalFrame];
  v5 = [v4 detectionForTrackIdentifier:detectionID];

  if (v5)
  {
    v6 = [CNDetection _copyDetectionFromInternal:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CNDetection)bestDetectionForGroupID:(CNDetectionGroupID)detectionGroupID
{
  v4 = [(CNScriptFrame *)self internalFrame];
  v5 = [v4 bestDetectionForGroupIdentifier:detectionGroupID];

  if (v5)
  {
    v6 = [CNDetection _copyDetectionFromInternal:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_copyFrameFromInternal:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initCopyingInternalFrame:v4];

  return v5;
}

+ (id)_copyFramesFromInternal:(id)a3
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

        v11 = [a1 _copyFrameFromInternal:{*(*(&v15 + 1) + 8 * v10), v15}];
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

+ (id)_copyInternalFromFrames:(id)a3
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

        v10 = [*(*(&v15 + 1) + 8 * v9) internalFrame];
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

- (void)initWithTimedMetadataGroup:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 value];
  v3 = objc_opt_class();
  v10 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end