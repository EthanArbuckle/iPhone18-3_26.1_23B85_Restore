@interface CNScriptFrame
+ (id)_copyFrameFromInternal:(id)internal;
+ (id)_copyFramesFromInternal:(id)internal;
+ (id)_copyInternalFromFrames:(id)frames;
- (BOOL)isEqual:(id)equal;
- (CMTime)time;
- (CNDetection)bestDetectionForGroupID:(CNDetectionGroupID)detectionGroupID;
- (CNDetection)detectionForID:(CNDetectionID)detectionID;
- (CNDetection)focusDetection;
- (CNScriptFrame)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (CNScriptFrame)initWithTimedMetadataGroup:(id)group;
- (NSArray)allDetections;
- (id)_initCopyingInternalFrame:(id)frame;
- (id)_initTakingInternalFrame:(id)frame;
- (id)_initWithTimedData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CNScriptFrame

- (CNScriptFrame)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v4 = [objc_alloc(MEMORY[0x277CE6648]) initWithSampleBuffer:buffer];
  v5 = [(CNScriptFrame *)self initWithTimedMetadataGroup:v4];

  return v5;
}

- (CNScriptFrame)initWithTimedMetadataGroup:(id)group
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  items = [group items];
  v5 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v10 isEqual:0x284A05300];

        if (v11)
        {
          value = [v9 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            value2 = [v9 value];
            self = [(CNScriptFrame *)self _initWithTimedData:value2];
            selfCopy = self;
          }

          else
          {
            value2 = _CNLogSystem();
            if (os_log_type_enabled(value2, OS_LOG_TYPE_ERROR))
            {
              [(CNScriptFrame *)0x284A05300 initWithTimedMetadataGroup:v9];
            }

            selfCopy = 0;
          }

          goto LABEL_16;
        }
      }

      v6 = [items countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  selfCopy = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
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
  focusDetection = [(PTCinematographyFrame *)self->_internalFrame focusDetection];
  if (!focusDetection)
  {
    v4 = objc_alloc(MEMORY[0x277D3E840]);
    [(CNScriptFrame *)self time];
    [(CNScriptFrame *)self focusDisparity];
    LODWORD(v6) = v5;
    focusDetection = [v4 initWithTime:v9 rect:*MEMORY[0x277CBF3A0] focusDistance:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), v6}];
    [focusDetection setDetectionType:0];
    [focusDetection setTrackIdentifier:{-[PTCinematographyFrame focusTrackIdentifier](self->_internalFrame, "focusTrackIdentifier")}];
    [focusDetection setGroupIdentifier:{-[PTCinematographyFrame focusGroupIdentifier](self->_internalFrame, "focusGroupIdentifier")}];
  }

  v7 = [CNDetection _copyDetectionFromInternal:focusDetection];

  return v7;
}

- (NSArray)allDetections
{
  allDetections = [(PTCinematographyFrame *)self->_internalFrame allDetections];
  v3 = [CNDetection _copyDetectionsFromInternal:allDetections];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    internalFrame = [(CNScriptFrame *)self internalFrame];
    internalFrame2 = [v5 internalFrame];

    v8 = [internalFrame isEqual:internalFrame2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  internalFrame = [(CNScriptFrame *)self internalFrame];
  v3 = [internalFrame hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  internalFrame = self->_internalFrame;

  return [v4 _initCopyingInternalFrame:internalFrame];
}

- (id)_initTakingInternalFrame:(id)frame
{
  frameCopy = frame;
  v9.receiver = self;
  v9.super_class = CNScriptFrame;
  v6 = [(CNScriptFrame *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalFrame, frame);
  }

  return v7;
}

- (id)_initCopyingInternalFrame:(id)frame
{
  v4 = [frame copy];
  v5 = [(CNScriptFrame *)self _initTakingInternalFrame:v4];

  return v5;
}

- (id)_initWithTimedData:(id)data
{
  v4 = [MEMORY[0x277D3E8D0] objectFromData:data error:0];
  if (v4)
  {
    self = [(CNScriptFrame *)self _initTakingInternalFrame:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CNDetection)detectionForID:(CNDetectionID)detectionID
{
  internalFrame = [(CNScriptFrame *)self internalFrame];
  v5 = [internalFrame detectionForTrackIdentifier:detectionID];

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
  internalFrame = [(CNScriptFrame *)self internalFrame];
  v5 = [internalFrame bestDetectionForGroupIdentifier:detectionGroupID];

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

+ (id)_copyFrameFromInternal:(id)internal
{
  internalCopy = internal;
  v5 = [[self alloc] _initCopyingInternalFrame:internalCopy];

  return v5;
}

+ (id)_copyFramesFromInternal:(id)internal
{
  v20 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = internalCopy;
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

        v11 = [self _copyFrameFromInternal:{*(*(&v15 + 1) + 8 * v10), v15}];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_copyInternalFromFrames:(id)frames
{
  v20 = *MEMORY[0x277D85DE8];
  framesCopy = frames;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = framesCopy;
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

        internalFrame = [*(*(&v15 + 1) + 8 * v9) internalFrame];
        v11 = [internalFrame copy];
        [array addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [array copy];
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