@interface AVTimedMetadataGroup
- (AVTimedMetadataGroup)init;
- (AVTimedMetadataGroup)initWithItems:(NSArray *)items timeRange:(CMTimeRange *)timeRange;
- (AVTimedMetadataGroup)initWithSampleBuffer:(CMSampleBufferRef)sampleBuffer;
- (BOOL)isEqual:(id)equal;
- (CMMetadataFormatDescriptionRef)copyFormatDescription;
- (CMTimeRange)timeRange;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (opaqueCMSampleBuffer)_createSerializedRepresentationWithFormatDescription:(opaqueCMFormatDescription *)description error:(id *)error;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVTimedMetadataGroup

- (AVTimedMetadataGroup)init
{
  array = [MEMORY[0x1E695DEC8] array];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v6[0] = *MEMORY[0x1E6960C98];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x1E6960C98] + 32);
  return [(AVTimedMetadataGroup *)self initWithItems:array timeRange:v6];
}

- (AVTimedMetadataGroup)initWithItems:(NSArray *)items timeRange:(CMTimeRange *)timeRange
{
  v12.receiver = self;
  v12.super_class = AVTimedMetadataGroup;
  v6 = [(AVTimedMetadataGroup *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVTimedMetadataGroupInternal);
    v6->_priv = v7;
    if (v7)
    {
      CFRetain(v7);
      v6->_priv->items = [(NSArray *)items copy];
      priv = v6->_priv;
      v10 = *&timeRange->start.epoch;
      v9 = *&timeRange->duration.timescale;
      *&priv->timeRange.start.value = *&timeRange->start.value;
      *&priv->timeRange.start.epoch = v10;
      *&priv->timeRange.duration.timescale = v9;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (AVTimedMetadataGroup)initWithSampleBuffer:(CMSampleBufferRef)sampleBuffer
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&v15.start.value = *MEMORY[0x1E6960C98];
  *&v15.start.epoch = v4;
  *&v15.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (!sampleBuffer)
  {
    goto LABEL_16;
  }

  if (!self)
  {
    return selfCopy;
  }

  array = [MEMORY[0x1E695DEC8] array];
  DataBuffer = CMSampleBufferGetDataBuffer(sampleBuffer);
  memset(&v19, 0, sizeof(v19));
  CMSampleBufferGetOutputPresentationTimeStamp(&v19, sampleBuffer);
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetOutputDuration(&v18, sampleBuffer);
  if (DataBuffer)
  {
    MetadataItemsFromSampleBuffer = FigMetadataCreateMetadataItemsFromSampleBuffer();
    v17 = v19;
    v16 = v18;
    array = [MEMORY[0x1E695DF70] array];
    memset(duration, 0, sizeof(duration));
    v22 = 0u;
    v23 = 0u;
    v9 = [MetadataItemsFromSampleBuffer countByEnumeratingWithState:duration objects:start count:16];
    if (v9)
    {
      v10 = v9;
      v11 = **&duration[16];
      do
      {
        v12 = 0;
        do
        {
          if (**&duration[16] != v11)
          {
            objc_enumerationMutation(MetadataItemsFromSampleBuffer);
          }

          v13 = [+[AVMetadataItem _metadataItemWithFigMetadataDictionary:](AVMetadataItem _metadataItemWithFigMetadataDictionary:{*(*&duration[8] + 8 * v12), *&v15.start.value, *&v15.start.epoch, *&v15.duration.timescale), "mutableCopy"}];
          v20 = v17;
          [v13 setTime:&v20];
          v20 = v16;
          [v13 setDuration:&v20];
          [array addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [MetadataItemsFromSampleBuffer countByEnumeratingWithState:duration objects:start count:16];
      }

      while (v10);
    }

    if (MetadataItemsFromSampleBuffer)
    {
      CFRelease(MetadataItemsFromSampleBuffer);
    }
  }

  start[0].start = v19;
  *duration = v18;
  CMTimeRangeMake(&v15, &start[0].start, duration);
  if (!DataBuffer)
  {
LABEL_16:

    return 0;
  }

  start[0] = v15;
  selfCopy = [(AVTimedMetadataGroup *)selfCopy initWithItems:array timeRange:start];
  if (selfCopy)
  {
    selfCopy->_priv->backingSBuf = CFRetain(sampleBuffer);
  }

  return selfCopy;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {

    v4 = self->_priv;
    if (v4->backingSBuf)
    {
      CFRelease(v4->backingSBuf);
      v4 = self->_priv;
    }

    CFRelease(v4);
    priv = self->_priv;
  }

  v5.receiver = self;
  v5.super_class = AVTimedMetadataGroup;
  [(AVTimedMetadataGroup *)&v5 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [AVMutableTimedMetadataGroup allocWithZone:zone];
  items = [(AVTimedMetadataGroup *)self items];
  if (self)
  {
    [(AVTimedMetadataGroup *)self timeRange];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  return [(AVMutableTimedMetadataGroup *)v4 initWithItems:items timeRange:v7];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *MEMORY[0x1E695E480];
  if (self)
  {
    [(AVTimedMetadataGroup *)self timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  return [v3 stringWithFormat:@"<%@: %p, timeRange=%@, items=%@>", v5, self, CMTimeRangeCopyDescription(v6, &range), -[AVTimedMetadataGroup items](self, "items")];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v16 = v3;
    v17 = v4;
    if (equal && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = 0uLL;
      memset(&v15, 0, sizeof(v15));
      if (self)
      {
        [(AVTimedMetadataGroup *)self timeRange];
        v7 = 0uLL;
      }

      *&v14.start.epoch = v7;
      *&v14.duration.timescale = v7;
      *&v14.start.value = v7;
      [equal timeRange];
      items = [(AVTimedMetadataGroup *)self items];
      items2 = [equal items];
      range1 = v15;
      v12 = v14;
      v10 = CMTimeRangeEqual(&range1, &v12);
      if (v10)
      {
        if (items == items2)
        {
          LOBYTE(v10) = 1;
        }

        else
        {
          LOBYTE(v10) = [(NSArray *)items isEqual:items2];
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  if (self)
  {
    [(AVTimedMetadataGroup *)self timeRange];
  }

  *&v6.value = v7;
  v6.epoch = *&v8[0];
  v3 = CMTimeHash(&v6);
  v6 = *(v8 + 8);
  v4 = CMTimeHash(&v6) ^ v3;
  return v4 ^ [(NSArray *)[(AVTimedMetadataGroup *)self items] hash];
}

- (CMTimeRange)timeRange
{
  v3 = *&self->start.timescale;
  v4 = v3[2];
  *&retstr->start.value = v3[1];
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = v3[3];
  return self;
}

- (CMMetadataFormatDescriptionRef)copyFormatDescription
{
  backingSBuf = self->_priv->backingSBuf;
  if (!backingSBuf || (FormatDescription = CMSampleBufferGetFormatDescription(backingSBuf)) == 0 || (result = CFRetain(FormatDescription)) == 0)
  {
    v6.receiver = self;
    v6.super_class = AVTimedMetadataGroup;
    return [(AVMetadataGroup *)&v6 copyFormatDescription];
  }

  return result;
}

- (opaqueCMSampleBuffer)_createSerializedRepresentationWithFormatDescription:(opaqueCMFormatDescription *)description error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  backingSBuf = self->_priv->backingSBuf;
  if (backingSBuf)
  {
    CMSampleBufferGetFormatDescription(backingSBuf);
    if (FigCFEqual())
    {
      result = self->_priv->backingSBuf;
      if (result)
      {
        result = CFRetain(result);
      }

      v9 = 0;
      goto LABEL_65;
    }
  }

  obj = [(AVTimedMetadataGroup *)self items];
  [(AVTimedMetadataGroup *)self timeRange];
  cf = 0;
  v66 = 0;
  if (!description)
  {
    v9 = 0;
LABEL_62:
    result = 0;
    goto LABEL_63;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = FigBoxedMetadataCreateForConstruction();
  if (v11)
  {
    goto LABEL_41;
  }

  formatDescription = description;
  errorCopy = error;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v54 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  v9 = 0;
  if (!v54)
  {
    goto LABEL_39;
  }

  v56 = *v62;
  v48 = *MEMORY[0x1E69601F8];
  v49 = *MEMORY[0x1E695D940];
  v50 = *MEMORY[0x1E6960268];
  v51 = *MEMORY[0x1E6960240];
  v12 = &selRef_availableTrackAssociationTypes;
  v13 = &selRef_flushAndRemoveImage;
  v45 = v10;
  while (2)
  {
    v14 = 0;
    v46 = v12[200];
    aSelector = v13[88];
    do
    {
      if (*v62 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v61 + 1) + 8 * v14);
      v69 = 0;
      v16 = FigBoxedMetadataGetFormatDescription();
      identifier = [v15 identifier];
      _serializationDataType = [v15 _serializationDataType];
      extendedLanguageTag = [v15 extendedLanguageTag];
      value = [v15 value];
      if (!identifier)
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        sampleSizeArray = [v32 stringWithFormat:@"Metadata item %p has no identifier.  If the item was given a key and key space, use +[%@ %@] to check whether an identifier can be made from that key and key space", v15, v34, NSStringFromSelector(aSelector)];
LABEL_47:
        v36 = sampleSizeArray;
LABEL_49:
        v39 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:v49 reason:v36 userInfo:0]);
        error = errorCopy;
        goto LABEL_50;
      }

      if (!_serializationDataType)
      {
        sampleSizeArray = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metadata item %p has no data type", v15, v43, sampleSizeArray];
        goto LABEL_47;
      }

      v21 = value;
      if (!value)
      {
        sampleSizeArray = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metadata item %p has no value", v15, v43, sampleSizeArray];
        goto LABEL_47;
      }

      if (!FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No entry in format description %p for metadata item %p with identifier %@, data type %@ and extended language tag %@.  If you created this format description using -[%@ %@], make sure the instance of %@ used to create the format description contains a representative sample of metadata items which includes an item with the same combination of identifier, dataType, and extended language tag as this one", v16, v15, identifier, _serializationDataType, extendedLanguageTag, v38, NSStringFromSelector(v46), v38];
        goto LABEL_49;
      }

      *v68 = *MEMORY[0x1E695EFF8];
      v22 = *(MEMORY[0x1E695F058] + 16);
      *&sampleTimingArray.duration.value = *MEMORY[0x1E695F058];
      *&sampleTimingArray.duration.epoch = v22;
      v67 = *MEMORY[0x1E695F060];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && AVCGPointFromNSValue(v21, v68))
      {
        if (![(__CFString *)_serializationDataType isEqualToString:v51])
        {
          goto LABEL_59;
        }

        appended = FigBoxedMetadataAppendCGPoint();
        goto LABEL_29;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && AVCGRectFromNSValue(v21, &sampleTimingArray))
      {
        if (![(__CFString *)_serializationDataType isEqualToString:v50])
        {
          goto LABEL_59;
        }

        appended = FigBoxedMetadataAppendCGRect();
        goto LABEL_29;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && AVCGSizeFromNSValue(v21, &v67))
      {
        if ([(__CFString *)_serializationDataType isEqualToString:v48])
        {
          appended = FigBoxedMetadataAppendCGSize();
LABEL_29:
          v24 = 0;
          goto LABEL_32;
        }

LABEL_59:
        v40 = MEMORY[0x1E696AEC0];
        v41 = objc_opt_class();
        v42 = [MEMORY[0x1E695DF30] exceptionWithName:v49 reason:objc_msgSend(v40 userInfo:{"stringWithFormat:", @"Value %@ of class %@ in metadata item %p is not compatible with base data type %@", v21, NSStringFromClass(v41), v15, _serializationDataType), 0}];
        v39 = AVErrorForClientProgrammingError(v42);
        v69 = v39;
LABEL_50:
        if (v39)
        {
          v9 = v39;
        }

        goto LABEL_52;
      }

      v25 = [v15 _copyValueAsCFTypeWithFormatDescription:v16 error:&v69];
      if (!v25)
      {
        v39 = v69;
        goto LABEL_50;
      }

      v24 = v25;
      appended = FigBoxedMetadataAppendCFTypedValue();
LABEL_32:
      if (appended)
      {
        if (appended == -16328)
        {
          BaseDataTypeForConformingDataType = CMMetadataDataTypeRegistryGetBaseDataTypeForConformingDataType(_serializationDataType);
          v28 = MEMORY[0x1E696AEC0];
          v29 = objc_opt_class();
          v30 = [MEMORY[0x1E695DF30] exceptionWithName:v49 reason:objc_msgSend(v28 userInfo:{"stringWithFormat:", @"Value %@ of class %@ in metadata item %p is not compatible with base data type %@", v21, NSStringFromClass(v29), v15, BaseDataTypeForConformingDataType), 0}];
          v31 = AVErrorForClientProgrammingError(v30);
        }

        else
        {
          v31 = AVLocalizedErrorWithUnderlyingOSStatus(appended, 0);
        }

        error = errorCopy;
        v69 = v31;
        if (v31)
        {
          v9 = v31;
        }

        if (v24)
        {
          CFRelease(v24);
        }

        goto LABEL_52;
      }

      if (v69)
      {
        v9 = v69;
      }

      if (v24)
      {
        CFRelease(v24);
      }

      ++v14;
    }

    while (v54 != v14);
    v10 = v45;
    v54 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    v12 = &selRef_availableTrackAssociationTypes;
    v13 = &selRef_flushAndRemoveImage;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_39:
  v11 = FigBoxedMetadataEndConstruction();
  if (v11 || (BlockBuffer = FigBoxedMetadataGetBlockBuffer(), *&sampleTimingArray.duration.value = v58, sampleTimingArray.duration.epoch = v59, sampleTimingArray.presentationTimeStamp = v57, sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70], v68[0] = CMBlockBufferGetDataLength(BlockBuffer), (v11 = CMSampleBufferCreate(v10, BlockBuffer, 1u, 0, 0, formatDescription, 1, 1, &sampleTimingArray, 1, v68, &v66)) != 0))
  {
LABEL_41:
    v9 = AVLocalizedErrorWithUnderlyingOSStatus(v11, 0);
  }

LABEL_52:
  result = v66;
  if (!v66)
  {
    goto LABEL_62;
  }

  v9 = 0;
LABEL_63:
  if (cf)
  {
    CFRelease(cf);
    result = v66;
  }

LABEL_65:
  if (error)
  {
    if (!result)
    {
      *error = v9;
    }
  }

  return result;
}

@end