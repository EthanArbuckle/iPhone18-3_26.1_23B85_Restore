@interface AVMediaSelectionTrackOption
- (AVMediaSelectionTrackOption)initWithAsset:(id)asset group:(id)group dictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlayable;
- (id)associatedMediaSelectionOptionInMediaSelectionGroup:(id)group;
- (id)mediaSubTypes;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVMediaSelectionTrackOption

- (AVMediaSelectionTrackOption)initWithAsset:(id)asset group:(id)group dictionary:(id)dictionary
{
  v13.receiver = self;
  v13.super_class = AVMediaSelectionTrackOption;
  v8 = [(AVMediaSelectionOption *)&v13 initWithGroup:group];
  v9 = v8;
  if (v8)
  {
    if (asset && group && dictionary)
    {
      v8->_dictionary = [dictionary copy];
      v9->_groupID = [group _groupID];
      v9->_weakReferenceToGroup = [group _weakReference];
      v10 = [dictionary objectForKey:*MEMORY[0x1E69737D8]];
      v11 = [dictionary objectForKey:*MEMORY[0x1E69737A0]];
      if ([v11 count])
      {
        v10 = [v11 objectAtIndex:0];
      }

      v9->_track = [asset trackWithTrackID:{objc_msgSend(v10, "intValue")}];
      v9->_displaysNonForcedSubtitles = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E6973790]), "BOOLValue"}];
      v9->_audioCompositionPresetIndex = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E6973778]), "copy"}];
      v9->_audioCompositionPresetIndexesForFallbackIDs = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E6973780]), "copy"}];
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMediaSelectionTrackOption;
  [(AVMediaSelectionOption *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_6:
      LOBYTE(v5) = 0;
      return v5;
    }

    v5 = -[AVAssetTrack isEqual:](self->_track, "isEqual:", [equal track]);
    if (v5)
    {
      displaysNonForcedSubtitles = self->_displaysNonForcedSubtitles;
      if (displaysNonForcedSubtitles != [equal displaysNonForcedSubtitles])
      {
        goto LABEL_6;
      }

      audioCompositionPresetIndex = self->_audioCompositionPresetIndex;
      if (audioCompositionPresetIndex != [equal _audioCompositionPresetIndex])
      {
        goto LABEL_6;
      }

      v8 = [-[NSArray firstObject](self->_audioCompositionPresetIndexesForFallbackIDs "firstObject")];
      LOBYTE(v5) = v8 == [objc_msgSend(objc_msgSend(equal "_audioCompositionPresetIndexesForFallbackIDs")];
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(AVAssetTrack *)self->_track hash]^ self->_displaysNonForcedSubtitles;
  integerValue = [(NSNumber *)self->_audioCompositionPresetIndex integerValue];
  return v3 ^ integerValue ^ [(NSArray *)self->_audioCompositionPresetIndexesForFallbackIDs hash];
}

- (id)mediaSubTypes
{
  v30 = *MEMORY[0x1E69E9840];
  fallbackIDs = [(AVMediaSelectionOption *)self fallbackIDs];
  if (fallbackIDs)
  {
    v4 = fallbackIDs;
    formatDescriptions = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = -[AVAssetTrack formatDescriptions](-[AVAsset trackWithTrackID:](-[AVAssetTrack asset](self->_track, "asset"), "trackWithTrackID:", [*(*(&v24 + 1) + 8 * i) unsignedIntValue]), "formatDescriptions");
          if (v10)
          {
            [(NSArray *)formatDescriptions addObjectsFromArray:v10];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }
  }

  else
  {
    formatDescriptions = [(AVAssetTrack *)self->_track formatDescriptions];
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(NSArray *)formatDescriptions countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(formatDescriptions);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        v17 = CFGetTypeID(v16);
        if (v17 == CMFormatDescriptionGetTypeID())
        {
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CMFormatDescriptionGetMediaSubType(v16)];
          if (([v11 containsObject:v18] & 1) == 0)
          {
            [v11 addObject:v18];
          }
        }
      }

      v13 = [(NSArray *)formatDescriptions countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  return v11;
}

- (BOOL)isPlayable
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [-[AVMediaSelectionOption fallbackIDs](self "fallbackIDs")];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (-[AVAssetTrack isPlayable](-[AVAsset trackWithTrackID:](-[AVAssetTrack asset](self->_track, "asset"), "trackWithTrackID:", [*(*(&v9 + 1) + 8 * i) unsignedIntValue]), "isPlayable"))
        {
          return 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(AVAssetTrack *)self->_track isPlayable];
}

- (id)associatedMediaSelectionOptionInMediaSelectionGroup:(id)group
{
  if (![group isEqual:{-[AVMediaSelectionTrackOption group](self, "group")}])
  {
    v8.receiver = self;
    v8.super_class = AVMediaSelectionTrackOption;
    return [(AVMediaSelectionOption *)&v8 associatedMediaSelectionOptionInMediaSelectionGroup:group];
  }

  mediaType = [(AVAssetTrack *)self->_track mediaType];
  if ([(NSString *)mediaType isEqualToString:@"sbtl"])
  {
    if ([(AVMediaSelectionTrackOption *)self displaysNonForcedSubtitles])
    {
      result = [(AVAssetTrack *)self->_track _pairedForcedOnlySubtitlesTrack];
      if (!result)
      {
        result = self->_track;
        if (!result)
        {
          return result;
        }
      }

      goto LABEL_10;
    }

    return 0;
  }

  if (![(NSString *)mediaType isEqualToString:@"soun"])
  {
    return 0;
  }

  result = [(AVAssetTrack *)self->_track _fallbackTrack];
  if (!result)
  {
    return result;
  }

LABEL_10:
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(result, "trackID")}];

  return [group _optionWithID:v7 displaysNonForcedSubtitles:0 audioCompositionPresetIndex:0];
}

@end