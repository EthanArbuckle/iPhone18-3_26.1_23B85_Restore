@interface INSendMessageAttachment
+ (INSendMessageAttachment)attachmentWithAudioMessageFile:(INFile *)audioMessageFile;
+ (INSendMessageAttachment)attachmentWithCurrentLocation;
+ (INSendMessageAttachment)attachmentWithFile:(id)a3;
+ (INSendMessageAttachment)attachmentWithPHAsset:(id)a3;
+ (INSendMessageAttachment)attachmentWithPHAssetId:(id)a3;
+ (INSendMessageAttachment)attachmentWithSharedLink:(id)a3;
+ (INSendMessageAttachment)attachmentWithSpeechDataURL:(id)a3;
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)_intents_enumerateObjectsOfClass:(Class)a3 withBlock:(id)a4;
- (BOOL)isEqual:(id)a3;
- (INSendMessageAttachment)initWithCoder:(id)a3;
- (PHAsset)phAsset;
- (id)_dictionaryRepresentation;
- (id)_initWithCurrentLocation:(BOOL)a3 file:(id)a4 speechDataURL:(id)a5 audioMessageFile:(id)a6 sharedLink:(id)a7 phAssetId:(id)a8;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v5 = file;
  if (!file)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v5;
  v15[2] = @"speechDataURL";
  speechDataURL = self->_speechDataURL;
  v7 = speechDataURL;
  if (!speechDataURL)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v7;
  v15[3] = @"audioMessageFile";
  audioMessageFile = self->_audioMessageFile;
  v9 = audioMessageFile;
  if (!audioMessageFile)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v9;
  v15[4] = @"sharedLink";
  sharedLink = self->_sharedLink;
  v11 = sharedLink;
  if (!sharedLink)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[4] = v11;
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

- (void)encodeWithCoder:(id)a3
{
  currentLocation = self->_currentLocation;
  v5 = a3;
  [v5 encodeBool:currentLocation forKey:@"currentLocation"];
  [v5 encodeObject:self->_file forKey:@"file"];
  [v5 encodeObject:self->_speechDataURL forKey:@"speechDataURL"];
  [v5 encodeObject:self->_audioMessageFile forKey:@"audioMessageFile"];
  [v5 encodeObject:self->_sharedLink forKey:@"sharedLink"];
  [v5 encodeObject:self->_phAssetId forKey:@"phAssetId"];
}

- (INSendMessageAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"currentLocation"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speechDataURL"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioMessageFile"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedLink"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phAssetId"];

  v11 = [objc_alloc(objc_opt_class()) _initWithCurrentLocation:v5 file:v6 speechDataURL:v7 audioMessageFile:v8 sharedLink:v9 phAssetId:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_initWithCurrentLocation:(BOOL)a3 file:(id)a4 speechDataURL:(id)a5 audioMessageFile:(id)a6 sharedLink:(id)a7 phAssetId:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v32.receiver = self;
  v32.super_class = INSendMessageAttachment;
  v19 = [(INSendMessageAttachment *)&v32 init];
  v20 = v19;
  if (v19)
  {
    v19->_currentLocation = a3;
    v21 = [v14 copy];
    file = v20->_file;
    v20->_file = v21;

    v23 = [v15 copy];
    speechDataURL = v20->_speechDataURL;
    v20->_speechDataURL = v23;

    v25 = [v16 copy];
    audioMessageFile = v20->_audioMessageFile;
    v20->_audioMessageFile = v25;

    v27 = [v17 copy];
    sharedLink = v20->_sharedLink;
    v20->_sharedLink = v27;

    v29 = [v18 copy];
    phAssetId = v20->_phAssetId;
    v20->_phAssetId = v29;
  }

  return v20;
}

+ (INSendMessageAttachment)attachmentWithPHAssetId:(id)a3
{
  v3 = a3;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:0 speechDataURL:0 audioMessageFile:0 sharedLink:0 phAssetId:v3];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithPHAsset:(id)a3
{
  v3 = a3;
  v4 = [INSendMessageAttachment alloc];
  v5 = [v3 localIdentifier];

  v6 = [(INSendMessageAttachment *)v4 _initWithCurrentLocation:0 file:0 speechDataURL:0 audioMessageFile:0 sharedLink:0 phAssetId:v5];

  return v6;
}

+ (INSendMessageAttachment)attachmentWithSharedLink:(id)a3
{
  v3 = a3;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:0 speechDataURL:0 audioMessageFile:0 sharedLink:v3 phAssetId:0];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithAudioMessageFile:(INFile *)audioMessageFile
{
  v3 = audioMessageFile;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:0 speechDataURL:0 audioMessageFile:v3 sharedLink:0 phAssetId:0];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithSpeechDataURL:(id)a3
{
  v3 = a3;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:0 speechDataURL:v3 audioMessageFile:0 sharedLink:0 phAssetId:0];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithFile:(id)a3
{
  v3 = a3;
  v4 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:0 file:v3 speechDataURL:0 audioMessageFile:0 sharedLink:0 phAssetId:0];

  return v4;
}

+ (INSendMessageAttachment)attachmentWithCurrentLocation
{
  v2 = [[INSendMessageAttachment alloc] _initWithCurrentLocation:1 file:0 speechDataURL:0 audioMessageFile:0 sharedLink:0 phAssetId:0];

  return v2;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(INSendMessageAttachment *)self speechDataURL];

  if (v7)
  {
    v8 = [(INSendMessageAttachment *)self speechDataURL];
    v9 = [v5 encodeObject:v8];
    v10 = @"speechDataURL";
LABEL_5:
    [v6 if_setObjectIfNonNil:v9 forKey:v10];
LABEL_6:

    goto LABEL_7;
  }

  v11 = [(INSendMessageAttachment *)self sharedLink];

  if (v11)
  {
    v8 = [(INSendMessageAttachment *)self sharedLink];
    v9 = [v5 encodeObject:v8];
    v10 = @"sharedLink";
    goto LABEL_5;
  }

  if (![(INSendMessageAttachment *)self currentLocation])
  {
    v14 = [(INSendMessageAttachment *)self audioMessageFile];

    if (v14)
    {
      v8 = [(INSendMessageAttachment *)self audioMessageFile];
      if (![v8 _isFileURLBased])
      {
        v25[0] = @"data";
        v9 = [v8 data];
        v15 = [v5 encodeObject:v9];
        v25[1] = @"filename";
        v26[0] = v15;
        v16 = [v8 filename];
        v17 = [v5 encodeObject:v16];
        v26[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
        v19 = @"audioMessageFile";
LABEL_20:
        [v6 if_setObjectIfNonNil:v18 forKey:v19];

        goto LABEL_21;
      }
    }

    else
    {
      v8 = [(INSendMessageAttachment *)self file];
      v20 = [v8 typeIdentifier];

      if (v20)
      {
        v21 = [v8 typeIdentifier];
        v22 = [v5 encodeObject:v21];
        [v6 if_setObjectIfNonNil:v22 forKey:@"typeIdentifier"];
      }

      if (![v8 _isFileURLBased])
      {
        v23[0] = @"data";
        v9 = [v8 data];
        v15 = [v5 encodeObject:v9];
        v23[1] = @"filename";
        v24[0] = v15;
        v16 = [v8 filename];
        v17 = [v5 encodeObject:v16];
        v24[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
        v19 = @"file";
        goto LABEL_20;
      }
    }

    v9 = [v8 fileURL];
    v15 = [v5 encodeObject:v9];
    [v6 if_setObjectIfNonNil:v15 forKey:@"fileURL"];
LABEL_21:

    goto LABEL_6;
  }

  [v6 if_setObjectIfNonNil:MEMORY[0x1E695E118] forKey:@"currentLocation"];
LABEL_7:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = 0;
    goto LABEL_9;
  }

  v11 = [v10 objectForKeyedSubscript:@"speechDataURL"];

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [v10 objectForKeyedSubscript:@"speechDataURL"];
    v14 = [v8 decodeObjectOfClass:v12 from:v13];
    v15 = [a1 attachmentWithSpeechDataURL:v14];
LABEL_8:
    v16 = v15;

    goto LABEL_9;
  }

  v17 = [v10 objectForKeyedSubscript:@"sharedLink"];

  if (v17)
  {
    v18 = objc_opt_class();
    v13 = [v10 objectForKeyedSubscript:@"sharedLink"];
    v14 = [v8 decodeObjectOfClass:v18 from:v13];
    v15 = [a1 attachmentWithSharedLink:v14];
    goto LABEL_8;
  }

  v20 = [v10 objectForKeyedSubscript:@"currentLocation"];

  if (v20)
  {
    v16 = [a1 attachmentWithCurrentLocation];
    goto LABEL_9;
  }

  v21 = [v10 objectForKeyedSubscript:@"audioMessageFile"];

  if (v21)
  {
    v22 = objc_opt_class();
    v23 = [v10 objectForKeyedSubscript:@"audioMessageFile"];
    v24 = [v23 objectForKeyedSubscript:@"data"];
    v25 = [v8 decodeObjectOfClass:v22 from:v24];

    v26 = objc_opt_class();
    v27 = [v10 objectForKeyedSubscript:@"audioMessageFile"];
    v28 = [v27 objectForKeyedSubscript:@"filename"];
    v29 = [v8 decodeObjectOfClass:v26 from:v28];

    v30 = [INFile fileWithData:v25 filename:v29 typeIdentifier:0];
    if (v30)
    {
      v16 = [a1 attachmentWithAudioMessageFile:v30];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_26;
  }

  v31 = objc_opt_class();
  v32 = [v10 objectForKeyedSubscript:@"typeIdentifier"];
  v25 = [v8 decodeObjectOfClass:v31 from:v32];

  v33 = [v10 objectForKeyedSubscript:@"fileURL"];

  if (v33)
  {
    v34 = objc_opt_class();
    v35 = [v10 objectForKeyedSubscript:@"fileURL"];
    v36 = [v8 decodeObjectOfClass:v34 from:v35];
    v37 = [INFile fileWithFileURL:v36 filename:0 typeIdentifier:v25];
  }

  else
  {
    v38 = [v10 objectForKeyedSubscript:@"file"];

    if (!v38)
    {
LABEL_25:
      v16 = 0;
      goto LABEL_26;
    }

    v39 = objc_opt_class();
    v40 = [v10 objectForKeyedSubscript:@"file"];
    v41 = [v40 objectForKeyedSubscript:@"data"];
    v35 = [v8 decodeObjectOfClass:v39 from:v41];

    v42 = objc_opt_class();
    v43 = [v10 objectForKeyedSubscript:@"file"];
    v44 = [v43 objectForKeyedSubscript:@"filename"];
    v36 = [v8 decodeObjectOfClass:v42 from:v44];

    v37 = [INFile fileWithData:v35 filename:v36 typeIdentifier:v25];
  }

  v45 = v37;

  if (!v45)
  {
    goto LABEL_25;
  }

  v16 = [a1 attachmentWithFile:v45];

LABEL_26:
LABEL_9:

  return v16;
}

- (BOOL)_intents_enumerateObjectsOfClass:(Class)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = [(INSendMessageAttachment *)self audioMessageFile];
  v8 = [v7 _intents_enumerateObjectsOfClass:a3 withBlock:v6];

  if (v8 & 1) != 0 || (-[INSendMessageAttachment file](self, "file"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 _intents_enumerateObjectsOfClass:a3 withBlock:v6], v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = INSendMessageAttachment;
    v11 = [&v13 _intents_enumerateObjectsOfClass:a3 withBlock:v6];
  }

  return v11;
}

@end