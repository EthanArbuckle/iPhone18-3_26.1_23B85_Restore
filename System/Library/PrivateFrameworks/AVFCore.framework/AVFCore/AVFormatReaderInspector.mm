@interface AVFormatReaderInspector
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overallDurationHint;
- (AVFormatReaderInspector)initWithFormatReader:(OpaqueFigFormatReader *)reader;
- (BOOL)_hasQTSaveRestriction;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)preferredTransform;
- (CGSize)naturalSize;
- (OpaqueFigFormatReader)_copyFormatReader;
- (float)preferredRate;
- (float)preferredVolume;
- (id)commonMetadata;
- (int64_t)trackCount;
- (unint64_t)hash;
- (void)_setFormatReader:(OpaqueFigFormatReader *)reader;
- (void)_valueAsCFTypeForProperty:(__CFString *)property;
- (void)dealloc;
@end

@implementation AVFormatReaderInspector

- (AVFormatReaderInspector)initWithFormatReader:(OpaqueFigFormatReader *)reader
{
  v7.receiver = self;
  v7.super_class = AVFormatReaderInspector;
  v4 = [(AVFormatReaderInspector *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (reader)
    {
      [(AVFormatReaderInspector *)v4 _setFormatReader:reader];
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  [(AVFormatReaderInspector *)self _setFormatReader:0];
  v3.receiver = self;
  v3.super_class = AVFormatReaderInspector;
  [(AVFormatReaderInspector *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  _copyFormatReader = [(AVFormatReaderInspector *)self _copyFormatReader];
  _copyFormatReader2 = [equal _copyFormatReader];
  v7 = _copyFormatReader2;
  v8 = _copyFormatReader == _copyFormatReader2;
  if (_copyFormatReader != _copyFormatReader2 && _copyFormatReader && _copyFormatReader2)
  {
    v8 = CFEqual(_copyFormatReader, _copyFormatReader2) != 0;
  }

  else if (!_copyFormatReader)
  {
    goto LABEL_9;
  }

  CFRelease(_copyFormatReader);
LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

- (unint64_t)hash
{
  _copyFormatReader = [(AVFormatReaderInspector *)self _copyFormatReader];
  if (_copyFormatReader)
  {
    v4 = _copyFormatReader;
    v5 = CFHash(_copyFormatReader);
    CFRelease(v4);
    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AVFormatReaderInspector;
    return [(AVFormatReaderInspector *)&v7 hash];
  }
}

- (void)_setFormatReader:(OpaqueFigFormatReader *)reader
{
  if (reader)
  {
    CFRetain(reader);
  }

  formatReader = self->_formatReader;
  if (formatReader)
  {
    CFRelease(formatReader);
  }

  self->_formatReader = reader;
}

- (OpaqueFigFormatReader)_copyFormatReader
{
  result = self->_formatReader;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

- (void)_valueAsCFTypeForProperty:(__CFString *)property
{
  v8 = 0;
  result = [(AVFormatReaderInspector *)self _copyFormatReader];
  if (result)
  {
    v5 = result;
    FigBaseObject = FigFormatReaderGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(FigBaseObject, property, *MEMORY[0x1E695E480], &v8);
    }

    CFRelease(v5);
    return v8;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  result = [(AVFormatReaderInspector *)self providesPreciseDurationAndTiming];
  if (!result)
  {
    if (self)
    {
      v6 = MEMORY[0x1E6971A50];
      goto LABEL_6;
    }

LABEL_9:
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
    return result;
  }

  if (!self)
  {
    goto LABEL_9;
  }

  v6 = MEMORY[0x1E6971A48];
LABEL_6:
  v7 = *v6;

  return [(AVFigObjectInspector *)self _timeForProperty:v7];
}

- (float)preferredRate
{
  LODWORD(v2) = 1.0;
  [(AVFigObjectInspector *)self _floatForProperty:*MEMORY[0x1E6971A90] defaultValue:v2];
  return result;
}

- (float)preferredVolume
{
  LODWORD(v2) = 1.0;
  [(AVFigObjectInspector *)self _floatForProperty:*MEMORY[0x1E6971AA0] defaultValue:v2];
  return result;
}

- (CGAffineTransform)preferredTransform
{
  if (self)
  {
    return [(CGAffineTransform *)self _affineTransformForProperty:*MEMORY[0x1E6971A80]];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return self;
}

- (CGSize)naturalSize
{
  v4.receiver = self;
  v4.super_class = AVFormatReaderInspector;
  [(AVAssetInspector *)&v4 naturalSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)trackCount
{
  v5 = 0;
  result = [(AVFormatReaderInspector *)self _copyFormatReader];
  if (result)
  {
    v3 = result;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(v3, &v5);
    }

    CFRelease(v3);
    return v5;
  }

  return result;
}

- (id)commonMetadata
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  cf = 0;
  _copyFormatReader = [(AVFormatReaderInspector *)self _copyFormatReader];
  if (_copyFormatReader)
  {
    v5 = _copyFormatReader;
    if (!FigMetadataCopyMovieCommonMetadata())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = cf;
      v7 = [cf countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v13 + 1) + 8 * i)];
            if (v11)
            {
              [array addObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        }

        while (v8);
      }
    }

    CFRelease(v5);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return array;
}

- (BOOL)_hasQTSaveRestriction
{
  if (!self->didCheckForSaveRestriction)
  {
    if ([-[AVFormatReaderInspector availableMetadataFormats](self "availableMetadataFormats")])
    {
      v3 = [(AVFormatReaderInspector *)self metadataForFormat:@"com.apple.quicktime.udta"];
      v4 = +[AVMetadataItem metadataItemsFromArray:withKey:keySpace:](AVMetadataItem, "metadataItemsFromArray:withKey:keySpace:", v3, [MEMORY[0x1E696AD98] numberWithUnsignedInt:1853055350], @"udta");
      if ([(NSArray *)v4 count])
      {
        v6 = 0;
        [objc_msgSend(-[NSArray objectAtIndex:](v4 objectAtIndex:{0), "dataValue"), "getBytes:length:", &v6, 4}];
        if ((v6 & 0x1000000) != 0)
        {
          self->hasSaveRestriction = 1;
        }
      }
    }

    self->didCheckForSaveRestriction = 1;
  }

  return self->hasSaveRestriction;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overallDurationHint
{
  if (self)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _timeForProperty:*MEMORY[0x1E6971A70]];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return self;
}

@end