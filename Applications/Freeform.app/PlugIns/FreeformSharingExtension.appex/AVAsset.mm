@interface AVAsset
+ (id)crl_creatorArtistOrAuthorWithMetadataArray:(id)array;
+ (id)crl_titleWithMetadataArray:(id)array;
+ (id)keyPathsForValuesAffectingTsu_isPlayable;
- (BOOL)crl_containsAudioTracks;
- (BOOL)crl_containsHDRContent;
- (BOOL)crl_containsTracksWithVisualCharacteristics;
- (BOOL)crl_containsVideoTracks;
- (BOOL)p_doesTrack:(id)track matchCodecTypes:(id)types;
- (CGSize)naturalSizeWithPreferredTransforms;
- (id)crl_creatorArtistOrAuthor;
- (id)crl_firstTrackWithMediaType:(id)type;
- (id)crl_title;
- (void)crl_loadValuesAsynchronouslyForKeys:(id)keys completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation AVAsset

- (CGSize)naturalSizeWithPreferredTransforms
{
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(AVAsset *)self tracksWithMediaType:AVMediaTypeVideo];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    v9 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 isEnabled])
        {
          [v11 naturalSize];
          v13 = v12;
          v15 = v14;
          if (v11)
          {
            [v11 preferredTransform];
          }

          else
          {
            memset(&v18, 0, sizeof(v18));
          }

          v25.origin.x = 0.0;
          v25.origin.y = 0.0;
          v25.size.width = v13;
          v25.size.height = v15;
          v28 = CGRectApplyAffineTransform(v25, &v18);
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          v27 = CGRectUnion(v26, v28);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (id)keyPathsForValuesAffectingTsu_isPlayable
{
  v2 = [self crl_playableKeysWithKeys:&__NSArray0__struct];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (BOOL)p_doesTrack:(id)track matchCodecTypes:(id)types
{
  typesCopy = types;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  formatDescriptions = [track formatDescriptions];
  v7 = [formatDescriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(formatDescriptions);
        }

        v10 = [NSNumber numberWithUnsignedInt:CMFormatDescriptionGetMediaSubType(*(*(&v13 + 1) + 8 * i))];
        v11 = [typesCopy containsObject:v10];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [formatDescriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)crl_loadValuesAsynchronouslyForKeys:(id)keys completionQueue:(id)queue completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000110D8;
  v10[3] = &unk_1000A68C8;
  queueCopy = queue;
  handlerCopy = handler;
  v8 = queueCopy;
  v9 = handlerCopy;
  [(AVAsset *)self loadValuesAsynchronouslyForKeys:keys completionHandler:v10];
}

- (BOOL)crl_containsHDRContent
{
  v2 = [(AVAsset *)self tracksWithMediaCharacteristic:AVMediaCharacteristicContainsHDRVideo];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)crl_containsVideoTracks
{
  v2 = [(AVAsset *)self crl_firstTrackWithMediaType:AVMediaTypeVideo];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)crl_containsAudioTracks
{
  v2 = [(AVAsset *)self crl_firstTrackWithMediaType:AVMediaTypeAudio];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)crl_containsTracksWithVisualCharacteristics
{
  [(AVAsset *)self tracksWithMediaCharacteristic:AVMediaCharacteristicVisual];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) isEnabled])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (id)crl_firstTrackWithMediaType:(id)type
{
  [(AVAsset *)self tracksWithMediaType:type];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isEnabled])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)crl_creatorArtistOrAuthor
{
  metadata = [(AVAsset *)self metadata];
  v3 = [AVAsset crl_creatorArtistOrAuthorWithMetadataArray:metadata];

  return v3;
}

+ (id)crl_creatorArtistOrAuthorWithMetadataArray:(id)array
{
  arrayCopy = array;
  v18[0] = AVMetadataCommonIdentifierCreator;
  v18[1] = AVMetadataCommonIdentifierArtist;
  v18[2] = AVMetadataCommonIdentifierAuthor;
  v18[3] = @"caaf/info-author";
  v18[4] = AVMetadataIdentifierQuickTimeUserDataArtist;
  v18[5] = AVMetadataIdentifierQuickTimeUserDataAuthor;
  v18[6] = AVMetadataIdentifierQuickTimeUserDataComposer;
  v18[7] = AVMetadataIdentifierQuickTimeUserDataDirector;
  v18[8] = AVMetadataIdentifierQuickTimeUserDataOriginalArtist;
  v18[9] = AVMetadataIdentifier3GPUserDataAuthor;
  v18[10] = AVMetadataIdentifier3GPUserDataPerformer;
  v18[11] = AVMetadataIdentifierQuickTimeMetadataAuthor;
  v18[12] = AVMetadataIdentifierQuickTimeMetadataDirector;
  v18[13] = AVMetadataIdentifierQuickTimeMetadataArtist;
  v18[14] = AVMetadataIdentifierQuickTimeMetadataArranger;
  v18[15] = AVMetadataIdentifierQuickTimeMetadataOriginalArtist;
  v18[16] = AVMetadataIdentifierQuickTimeMetadataPerformer;
  v18[17] = AVMetadataIdentifierQuickTimeMetadataComposer;
  [NSArray arrayWithObjects:v18 count:18];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [AVMetadataItem metadataItemsFromArray:arrayCopy filteredByIdentifier:*(*(&v13 + 1) + 8 * v8), v13];
      firstObject = [v9 firstObject];

      if (firstObject)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    firstObject = 0;
  }

  stringValue = [firstObject stringValue];

  return stringValue;
}

- (id)crl_title
{
  metadata = [(AVAsset *)self metadata];
  v3 = [AVAsset crl_titleWithMetadataArray:metadata];

  return v3;
}

+ (id)crl_titleWithMetadataArray:(id)array
{
  arrayCopy = array;
  v18[0] = AVMetadataCommonIdentifierTitle;
  v18[1] = @"caaf/info-title";
  v18[2] = AVMetadataCommonIdentifierAlbumName;
  v18[3] = @"caaf/info-parent_title";
  v18[4] = AVMetadataIdentifierQuickTimeUserDataTrackName;
  v18[5] = AVMetadataIdentifier3GPUserDataTitle;
  v18[6] = AVMetadataIdentifier3GPUserDataAlbumAndTrack;
  v18[7] = AVMetadataIdentifierQuickTimeMetadataDisplayName;
  v18[8] = AVMetadataIdentifierQuickTimeMetadataAlbum;
  v18[9] = AVMetadataIdentifierQuickTimeMetadataTitle;
  [NSArray arrayWithObjects:v18 count:10];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [AVMetadataItem metadataItemsFromArray:arrayCopy filteredByIdentifier:*(*(&v13 + 1) + 8 * v8), v13];
      firstObject = [v9 firstObject];

      if (firstObject)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    firstObject = 0;
  }

  stringValue = [firstObject stringValue];

  return stringValue;
}

@end