@interface INSendMessageAttachment
+ (INSendMessageAttachment)attachmentWithAudioMessageFile:(INFile *)audioMessageFile;
+ (INSendMessageAttachment)attachmentWithCurrentLocation;
+ (INSendMessageAttachment)attachmentWithFile:(id)file;
+ (INSendMessageAttachment)attachmentWithPHAsset:(id)asset;
+ (INSendMessageAttachment)attachmentWithPHAssetId:(id)id;
+ (INSendMessageAttachment)attachmentWithSharedLink:(id)link;
+ (INSendMessageAttachment)attachmentWithSpeechDataURL:(id)l;
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (INSendMessageAttachment)initWithCoder:(id)coder;
- (PHAsset)phAsset;
- (id)_dictionaryRepresentation;
- (id)_initWithCurrentLocation:(BOOL)location file:(id)file speechDataURL:(id)l audioMessageFile:(id)messageFile sharedLink:(id)link phAssetId:(id)id;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSendMessageAttachment

- (id)_dictionaryRepresentation
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15[0] = @"currentLocation";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_currentLocation];
  v16[0] = v3;
  v15[1] = @"file";
  file = self->_file;
  null = file;
  if (!file)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null;
  v15[2] = @"speechDataURL";
  speechDataURL = self->_speechDataURL;
  null2 = speechDataURL;
  if (!speechDataURL)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null2;
  v15[3] = @"audioMessageFile";
  audioMessageFile = self->_audioMessageFile;
  null3 = audioMessageFile;
  if (!audioMessageFile)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null3;
  v15[4] = @"sharedLink";
  sharedLink = self->_sharedLink;
  null4 = sharedLink;
  if (!sharedLink)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  if (sharedLink)
  {
    if (audioMessageFile)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (audioMessageFile)
    {
LABEL_11:
      if (speechDataURL)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (file)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!speechDataURL)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (file)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  currentLocation = self->_currentLocation;
  coderCopy = coder;
  [coderCopy encodeBool:currentLocation forKey:@"currentLocation"];
  [coderCopy encodeObject:self->_file forKey:@"file"];
  [coderCopy encodeObject:self->_speechDataURL forKey:@"speechDataURL"];
  [coderCopy encodeObject:self->_audioMessageFile forKey:@"audioMessageFile"];
  [coderCopy encodeObject:self->_sharedLink forKey:@"sharedLink"];
  [coderCopy encodeObject:self->_phAssetId forKey:@"phAssetId"];
}

- (INSendMessageAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"currentLocation"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechDataURL"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioMessageFile"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedLink"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phAssetId"];

  v11 = [objc_alloc(objc_opt_class()) _initWithCurrentLocation:v5 file:v6 speechDataURL:v7 audioMessageFile:v8 sharedLink:v9 phAssetId:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v11 = 0;
    if (self->_currentLocation == *(v5 + 8))
    {
      file = self->_file;
      if (file == v5[3] || [(INFile *)file isEqual:?])
      {
        speechDataURL = self->_speechDataURL;
        if (speechDataURL == v5[4] || [(NSURL *)speechDataURL isEqual:?])
        {
          audioMessageFile = self->_audioMessageFile;
          if (audioMessageFile == v5[2] || [(INFile *)audioMessageFile isEqual:?])
          {
            sharedLink = self->_sharedLink;
            if (sharedLink == v5[5] || [(NSURL *)sharedLink isEqual:?])
            {
              phAssetId = self->_phAssetId;
              if (phAssetId == v5[6] || [(NSString *)phAssetId isEqual:?])
              {
                v11 = 1;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_currentLocation];
  v4 = [v3 hash];
  v5 = [(INFile *)self->_file hash];
  v6 = v5 ^ [(NSURL *)self->_speechDataURL hash];
  v7 = v6 ^ [(INFile *)self->_audioMessageFile hash]^ v4;
  v8 = [(NSURL *)self->_sharedLink hash];

  return v7 ^ v8;
}

- (PHAsset)phAsset
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (self->_phAssetId)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getPHAssetClass_softClass;
    v14 = getPHAssetClass_softClass;
    if (!getPHAssetClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getPHAssetClass_block_invoke;
      v10[3] = &unk_1E72888B8;
      v10[4] = &v11;
      __getPHAssetClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v15[0] = self->_phAssetId;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v6 = [v3 fetchAssetsWithLocalIdentifiers:v5 options:0];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)_initWithCurrentLocation:(BOOL)location file:(id)file speechDataURL:(id)l audioMessageFile:(id)messageFile sharedLink:(id)link phAssetId:(id)id
{
  fileCopy = file;
  lCopy = l;
  messageFileCopy = messageFile;
  linkCopy = link;
  idCopy = id;
  v32.receiver = self;
  v32.super_class = INSendMessageAttachment;
  v19 = [(INSendMessageAttachment *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_currentLocation = location;
    v21 = [fileCopy copy];
    file = v20->_file;
    v20->_file = v21;

    v23 = [lCopy copy];
    speechDataURL = v20->_speechDataURL;
    v20->_speechDataURL = v23;

    v25 = [messageFileCopy copy];
    audioMessageFile = v20->_audioMessageFile;
    v20->_audioMessageFile = v25;

    v27 = [linkCopy copy];
    sharedLink = v20->_sharedLink;
    v20->_sharedLink = v27;

    v29 = [idCopy copy];
    phAssetId = v20->_phAssetId;
    v20->_phAssetId = v29;
  }

  return v20;
}

+ (INSendMessageAttachment)attachmentWithPHAssetId:(id)id
{
  idCopy = id;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:0 speechDataURL:0 audioMessageFile:0 sharedLink:0 phAssetId:idCopy];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithPHAsset:(id)asset
{
  assetCopy = asset;
  v4 = [INSendMessageAttachment alloc];
  localIdentifier = [assetCopy localIdentifier];

  v6 = [(INSendMessageAttachment *)v4 _initWithCurrentLocation:0 file:0 speechDataURL:0 audioMessageFile:0 sharedLink:0 phAssetId:localIdentifier];

  return v6;
}

+ (INSendMessageAttachment)attachmentWithSharedLink:(id)link
{
  linkCopy = link;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:0 speechDataURL:0 audioMessageFile:0 sharedLink:linkCopy phAssetId:0];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithAudioMessageFile:(INFile *)audioMessageFile
{
  v3 = audioMessageFile;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:0 speechDataURL:0 audioMessageFile:v3 sharedLink:0 phAssetId:0];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithSpeechDataURL:(id)l
{
  lCopy = l;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:0 speechDataURL:lCopy audioMessageFile:0 sharedLink:0 phAssetId:0];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithFile:(id)file
{
  fileCopy = file;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:fileCopy speechDataURL:0 audioMessageFile:0 sharedLink:0 phAssetId:0];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithCurrentLocation
{
  v2 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:1 file:0 speechDataURL:0 audioMessageFile:0 sharedLink:0 phAssetId:0];

  return v2;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v26[2] = *MEMORY[0x1E69E9840];
  encoderCopy = encoder;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  speechDataURL = [(INSendMessageAttachment *)self speechDataURL];

  if (speechDataURL)
  {
    speechDataURL2 = [(INSendMessageAttachment *)self speechDataURL];
    data = [encoderCopy encodeObject:speechDataURL2];
    v10 = @"speechDataURL";
LABEL_5:
    [dictionary if_setObjectIfNonNil:data forKey:v10];
LABEL_6:

    goto LABEL_7;
  }

  sharedLink = [(INSendMessageAttachment *)self sharedLink];

  if (sharedLink)
  {
    speechDataURL2 = [(INSendMessageAttachment *)self sharedLink];
    data = [encoderCopy encodeObject:speechDataURL2];
    v10 = @"sharedLink";
    goto LABEL_5;
  }

  if (![(INSendMessageAttachment *)self currentLocation])
  {
    audioMessageFile = [(INSendMessageAttachment *)self audioMessageFile];

    if (audioMessageFile)
    {
      speechDataURL2 = [(INSendMessageAttachment *)self audioMessageFile];
      if (![speechDataURL2 _isFileURLBased])
      {
        v25[0] = @"data";
        data = [speechDataURL2 data];
        v15 = [encoderCopy encodeObject:data];
        v25[1] = @"filename";
        v26[0] = v15;
        filename = [speechDataURL2 filename];
        v17 = [encoderCopy encodeObject:filename];
        v26[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
        v19 = @"audioMessageFile";
LABEL_20:
        [dictionary if_setObjectIfNonNil:v18 forKey:v19];

        goto LABEL_21;
      }
    }

    else
    {
      speechDataURL2 = [(INSendMessageAttachment *)self file];
      typeIdentifier = [speechDataURL2 typeIdentifier];

      if (typeIdentifier)
      {
        typeIdentifier2 = [speechDataURL2 typeIdentifier];
        v22 = [encoderCopy encodeObject:typeIdentifier2];
        [dictionary if_setObjectIfNonNil:v22 forKey:@"typeIdentifier"];
      }

      if (![speechDataURL2 _isFileURLBased])
      {
        v23[0] = @"data";
        data = [speechDataURL2 data];
        v15 = [encoderCopy encodeObject:data];
        v23[1] = @"filename";
        v24[0] = v15;
        filename = [speechDataURL2 filename];
        v17 = [encoderCopy encodeObject:filename];
        v24[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
        v19 = @"file";
        goto LABEL_20;
      }
    }

    data = [speechDataURL2 fileURL];
    v15 = [encoderCopy encodeObject:data];
    [dictionary if_setObjectIfNonNil:v15 forKey:@"fileURL"];
LABEL_21:

    goto LABEL_6;
  }

  [dictionary if_setObjectIfNonNil:MEMORY[0x1E695E118] forKey:@"currentLocation"];
LABEL_7:

  v12 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  descriptionCopy = description;
  fromCopy = from;
  if (!fromCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    attachmentWithCurrentLocation = 0;
    goto LABEL_9;
  }

  v11 = [fromCopy objectForKeyedSubscript:@"speechDataURL"];

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"speechDataURL"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];
    v15 = [self attachmentWithSpeechDataURL:v14];
LABEL_8:
    attachmentWithCurrentLocation = v15;

    goto LABEL_9;
  }

  v17 = [fromCopy objectForKeyedSubscript:@"sharedLink"];

  if (v17)
  {
    v18 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"sharedLink"];
    v14 = [decoderCopy decodeObjectOfClass:v18 from:v13];
    v15 = [self attachmentWithSharedLink:v14];
    goto LABEL_8;
  }

  v20 = [fromCopy objectForKeyedSubscript:@"currentLocation"];

  if (v20)
  {
    attachmentWithCurrentLocation = [self attachmentWithCurrentLocation];
    goto LABEL_9;
  }

  v21 = [fromCopy objectForKeyedSubscript:@"audioMessageFile"];

  if (v21)
  {
    v22 = objc_opt_class();
    v23 = [fromCopy objectForKeyedSubscript:@"audioMessageFile"];
    v24 = [v23 objectForKeyedSubscript:@"data"];
    v25 = [decoderCopy decodeObjectOfClass:v22 from:v24];

    v26 = objc_opt_class();
    v27 = [fromCopy objectForKeyedSubscript:@"audioMessageFile"];
    v28 = [v27 objectForKeyedSubscript:@"filename"];
    v29 = [decoderCopy decodeObjectOfClass:v26 from:v28];

    v30 = [INFile fileWithData:v25 filename:v29 typeIdentifier:0];
    if (v30)
    {
      attachmentWithCurrentLocation = [self attachmentWithAudioMessageFile:v30];
    }

    else
    {
      attachmentWithCurrentLocation = 0;
    }

    goto LABEL_26;
  }

  v31 = objc_opt_class();
  v32 = [fromCopy objectForKeyedSubscript:@"typeIdentifier"];
  v25 = [decoderCopy decodeObjectOfClass:v31 from:v32];

  v33 = [fromCopy objectForKeyedSubscript:@"fileURL"];

  if (v33)
  {
    v34 = objc_opt_class();
    v35 = [fromCopy objectForKeyedSubscript:@"fileURL"];
    v36 = [decoderCopy decodeObjectOfClass:v34 from:v35];
    v37 = [INFile fileWithFileURL:v36 filename:0 typeIdentifier:v25];
  }

  else
  {
    v38 = [fromCopy objectForKeyedSubscript:@"file"];

    if (!v38)
    {
LABEL_25:
      attachmentWithCurrentLocation = 0;
      goto LABEL_26;
    }

    v39 = objc_opt_class();
    v40 = [fromCopy objectForKeyedSubscript:@"file"];
    v41 = [v40 objectForKeyedSubscript:@"data"];
    v35 = [decoderCopy decodeObjectOfClass:v39 from:v41];

    v42 = objc_opt_class();
    v43 = [fromCopy objectForKeyedSubscript:@"file"];
    v44 = [v43 objectForKeyedSubscript:@"filename"];
    v36 = [decoderCopy decodeObjectOfClass:v42 from:v44];

    v37 = [INFile fileWithData:v35 filename:v36 typeIdentifier:v25];
  }

  v45 = v37;

  if (!v45)
  {
    goto LABEL_25;
  }

  attachmentWithCurrentLocation = [self attachmentWithFile:v45];

LABEL_26:
LABEL_9:

  return attachmentWithCurrentLocation;
}

- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block
{
  blockCopy = block;
  audioMessageFile = [(INSendMessageAttachment *)self audioMessageFile];
  v8 = [audioMessageFile _intents_enumerateObjectsOfClass:class withBlock:blockCopy];

  if (v8 & 1) != 0 || (-[INSendMessageAttachment file](self, "file"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 _intents_enumerateObjectsOfClass:class withBlock:blockCopy], v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = INSendMessageAttachment;
    v11 = [&v13 _intents_enumerateObjectsOfClass:class withBlock:blockCopy];
  }

  return v11;
}

@end