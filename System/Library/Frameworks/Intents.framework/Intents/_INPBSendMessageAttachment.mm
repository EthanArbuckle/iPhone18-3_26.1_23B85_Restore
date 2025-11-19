@interface _INPBSendMessageAttachment
- (BOOL)isEqual:(id)a3;
- (NSString)phAssetId;
- (_INPBFileDataAttachment)audioMessageFile;
- (_INPBFileDataAttachment)file;
- (_INPBSendMessageAttachment)initWithCoder:(id)a3;
- (_INPBURLValue)audioMessageFileURL;
- (_INPBURLValue)fileURL;
- (_INPBURLValue)sharedLink;
- (_INPBURLValue)speechDataURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioMessageFile:(id)a3;
- (void)setAudioMessageFileURL:(id)a3;
- (void)setCurrentLocation:(BOOL)a3;
- (void)setFile:(id)a3;
- (void)setFileURL:(id)a3;
- (void)setPhAssetId:(id)a3;
- (void)setSharedLink:(id)a3;
- (void)setSpeechDataURL:(id)a3;
- (void)setTypeIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSendMessageAttachment

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSendMessageAttachment *)self audioMessageFile];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"audioMessageFile"];

  v6 = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"audioMessageFileURL"];

  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSendMessageAttachment currentLocation](self, "currentLocation")}];
    [v3 setObject:v8 forKeyedSubscript:@"currentLocation"];
  }

  v9 = [(_INPBSendMessageAttachment *)self file];
  v10 = [v9 dictionaryRepresentation];
  [v3 setObject:v10 forKeyedSubscript:@"file"];

  v11 = [(_INPBSendMessageAttachment *)self fileURL];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"fileURL"];

  if (self->_phAssetId)
  {
    v13 = [(_INPBSendMessageAttachment *)self phAssetId];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"phAssetId"];
  }

  v15 = [(_INPBSendMessageAttachment *)self sharedLink];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"sharedLink"];

  v17 = [(_INPBSendMessageAttachment *)self speechDataURL];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"speechDataURL"];

  if (self->_typeIdentifier)
  {
    v19 = [(_INPBSendMessageAttachment *)self typeIdentifier];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"typeIdentifier"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBFileDataAttachment *)self->_audioMessageFile hash];
  v4 = [(_INPBURLValue *)self->_audioMessageFileURL hash];
  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    v5 = 2654435761 * self->_currentLocation;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(_INPBFileDataAttachment *)self->_file hash];
  v7 = [(_INPBURLValue *)self->_fileURL hash];
  v8 = v7 ^ [(NSString *)self->_phAssetId hash];
  v9 = v6 ^ v8 ^ [(_INPBURLValue *)self->_sharedLink hash];
  v10 = [(_INPBURLValue *)self->_speechDataURL hash];
  return v9 ^ v10 ^ [(NSString *)self->_typeIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = [(_INPBSendMessageAttachment *)self audioMessageFile];
  v6 = [v4 audioMessageFile];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v7 = [(_INPBSendMessageAttachment *)self audioMessageFile];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSendMessageAttachment *)self audioMessageFile];
    v10 = [v4 audioMessageFile];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
  v6 = [v4 audioMessageFileURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v12 = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
    v15 = [v4 audioMessageFileURL];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v17 = [(_INPBSendMessageAttachment *)self hasCurrentLocation];
  if (v17 != [v4 hasCurrentLocation])
  {
    goto LABEL_46;
  }

  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    if ([v4 hasCurrentLocation])
    {
      currentLocation = self->_currentLocation;
      if (currentLocation != [v4 currentLocation])
      {
        goto LABEL_46;
      }
    }
  }

  v5 = [(_INPBSendMessageAttachment *)self file];
  v6 = [v4 file];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v19 = [(_INPBSendMessageAttachment *)self file];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSendMessageAttachment *)self file];
    v22 = [v4 file];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageAttachment *)self fileURL];
  v6 = [v4 fileURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v24 = [(_INPBSendMessageAttachment *)self fileURL];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBSendMessageAttachment *)self fileURL];
    v27 = [v4 fileURL];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageAttachment *)self phAssetId];
  v6 = [v4 phAssetId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v29 = [(_INPBSendMessageAttachment *)self phAssetId];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBSendMessageAttachment *)self phAssetId];
    v32 = [v4 phAssetId];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageAttachment *)self sharedLink];
  v6 = [v4 sharedLink];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v34 = [(_INPBSendMessageAttachment *)self sharedLink];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBSendMessageAttachment *)self sharedLink];
    v37 = [v4 sharedLink];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageAttachment *)self speechDataURL];
  v6 = [v4 speechDataURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v39 = [(_INPBSendMessageAttachment *)self speechDataURL];
  if (v39)
  {
    v40 = v39;
    v41 = [(_INPBSendMessageAttachment *)self speechDataURL];
    v42 = [v4 speechDataURL];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageAttachment *)self typeIdentifier];
  v6 = [v4 typeIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v44 = [(_INPBSendMessageAttachment *)self typeIdentifier];
    if (!v44)
    {

LABEL_49:
      v49 = 1;
      goto LABEL_47;
    }

    v45 = v44;
    v46 = [(_INPBSendMessageAttachment *)self typeIdentifier];
    v47 = [v4 typeIdentifier];
    v48 = [v46 isEqual:v47];

    if (v48)
    {
      goto LABEL_49;
    }
  }

  else
  {
LABEL_45:
  }

LABEL_46:
  v49 = 0;
LABEL_47:

  return v49;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSendMessageAttachment allocWithZone:](_INPBSendMessageAttachment init];
  v6 = [(_INPBFileDataAttachment *)self->_audioMessageFile copyWithZone:a3];
  [(_INPBSendMessageAttachment *)v5 setAudioMessageFile:v6];

  v7 = [(_INPBURLValue *)self->_audioMessageFileURL copyWithZone:a3];
  [(_INPBSendMessageAttachment *)v5 setAudioMessageFileURL:v7];

  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    [(_INPBSendMessageAttachment *)v5 setCurrentLocation:[(_INPBSendMessageAttachment *)self currentLocation]];
  }

  v8 = [(_INPBFileDataAttachment *)self->_file copyWithZone:a3];
  [(_INPBSendMessageAttachment *)v5 setFile:v8];

  v9 = [(_INPBURLValue *)self->_fileURL copyWithZone:a3];
  [(_INPBSendMessageAttachment *)v5 setFileURL:v9];

  v10 = [(NSString *)self->_phAssetId copyWithZone:a3];
  [(_INPBSendMessageAttachment *)v5 setPhAssetId:v10];

  v11 = [(_INPBURLValue *)self->_sharedLink copyWithZone:a3];
  [(_INPBSendMessageAttachment *)v5 setSharedLink:v11];

  v12 = [(_INPBURLValue *)self->_speechDataURL copyWithZone:a3];
  [(_INPBSendMessageAttachment *)v5 setSpeechDataURL:v12];

  v13 = [(NSString *)self->_typeIdentifier copyWithZone:a3];
  [(_INPBSendMessageAttachment *)v5 setTypeIdentifier:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSendMessageAttachment *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSendMessageAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSendMessageAttachment *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = a3;
  v4 = [(_INPBSendMessageAttachment *)self audioMessageFile];

  if (v4)
  {
    v5 = [(_INPBSendMessageAttachment *)self audioMessageFile];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSendMessageAttachment *)self audioMessageFileURL];

  if (v6)
  {
    v7 = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    currentLocation = self->_currentLocation;
    PBDataWriterWriteBOOLField();
  }

  v9 = [(_INPBSendMessageAttachment *)self file];

  if (v9)
  {
    v10 = [(_INPBSendMessageAttachment *)self file];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBSendMessageAttachment *)self fileURL];

  if (v11)
  {
    v12 = [(_INPBSendMessageAttachment *)self fileURL];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBSendMessageAttachment *)self phAssetId];

  if (v13)
  {
    phAssetId = self->_phAssetId;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBSendMessageAttachment *)self sharedLink];

  if (v15)
  {
    v16 = [(_INPBSendMessageAttachment *)self sharedLink];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBSendMessageAttachment *)self speechDataURL];

  if (v17)
  {
    v18 = [(_INPBSendMessageAttachment *)self speechDataURL];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_INPBSendMessageAttachment *)self typeIdentifier];

  v20 = v22;
  if (v19)
  {
    typeIdentifier = self->_typeIdentifier;
    PBDataWriterWriteStringField();
    v20 = v22;
  }
}

- (void)setTypeIdentifier:(id)a3
{
  v4 = [a3 copy];
  typeIdentifier = self->_typeIdentifier;
  self->_typeIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, typeIdentifier);
}

- (_INPBURLValue)speechDataURL
{
  if (self->_whichDatasource == 4)
  {
    v3 = self->_speechDataURL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeechDataURL:(id)a3
{
  v4 = a3;
  file = self->_file;
  self->_file = 0;

  fileURL = self->_fileURL;
  self->_fileURL = 0;

  self->_currentLocation = 0;
  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = 0;

  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = 0;

  sharedLink = self->_sharedLink;
  self->_sharedLink = 0;

  phAssetId = self->_phAssetId;
  self->_phAssetId = 0;

  self->_whichDatasource = 4 * (v4 != 0);
  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = v4;
}

- (_INPBURLValue)sharedLink
{
  if (self->_whichDatasource == 7)
  {
    v3 = self->_sharedLink;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSharedLink:(id)a3
{
  v4 = a3;
  file = self->_file;
  self->_file = 0;

  fileURL = self->_fileURL;
  self->_fileURL = 0;

  self->_currentLocation = 0;
  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = 0;

  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = 0;

  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = 0;

  phAssetId = self->_phAssetId;
  self->_phAssetId = 0;

  v11 = 7;
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichDatasource = v11;
  sharedLink = self->_sharedLink;
  self->_sharedLink = v4;
}

- (NSString)phAssetId
{
  if (self->_whichDatasource == 8)
  {
    v3 = self->_phAssetId;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPhAssetId:(id)a3
{
  file = self->_file;
  self->_file = 0;
  v12 = a3;

  fileURL = self->_fileURL;
  self->_fileURL = 0;

  self->_currentLocation = 0;
  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = 0;

  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = 0;

  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = 0;

  sharedLink = self->_sharedLink;
  self->_sharedLink = 0;

  self->_whichDatasource = 8 * (v12 != 0);
  v10 = [v12 copy];
  phAssetId = self->_phAssetId;
  self->_phAssetId = v10;
}

- (_INPBURLValue)fileURL
{
  if (self->_whichDatasource == 2)
  {
    v3 = self->_fileURL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFileURL:(id)a3
{
  v4 = a3;
  file = self->_file;
  self->_file = 0;

  self->_currentLocation = 0;
  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = 0;

  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = 0;

  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = 0;

  sharedLink = self->_sharedLink;
  self->_sharedLink = 0;

  phAssetId = self->_phAssetId;
  self->_phAssetId = 0;

  self->_whichDatasource = 2 * (v4 != 0);
  fileURL = self->_fileURL;
  self->_fileURL = v4;
}

- (_INPBFileDataAttachment)file
{
  if (self->_whichDatasource == 1)
  {
    v3 = self->_file;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFile:(id)a3
{
  v4 = a3;
  fileURL = self->_fileURL;
  self->_fileURL = 0;

  self->_currentLocation = 0;
  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = 0;

  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = 0;

  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = 0;

  sharedLink = self->_sharedLink;
  self->_sharedLink = 0;

  phAssetId = self->_phAssetId;
  self->_phAssetId = 0;

  self->_whichDatasource = v4 != 0;
  file = self->_file;
  self->_file = v4;
}

- (void)setCurrentLocation:(BOOL)a3
{
  file = self->_file;
  self->_file = 0;

  fileURL = self->_fileURL;
  self->_fileURL = 0;

  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = 0;

  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = 0;

  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = 0;

  sharedLink = self->_sharedLink;
  self->_sharedLink = 0;

  phAssetId = self->_phAssetId;
  self->_phAssetId = 0;

  self->_whichDatasource = 3;
  self->_currentLocation = a3;
}

- (_INPBURLValue)audioMessageFileURL
{
  if (self->_whichDatasource == 6)
  {
    v3 = self->_audioMessageFileURL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioMessageFileURL:(id)a3
{
  v4 = a3;
  file = self->_file;
  self->_file = 0;

  fileURL = self->_fileURL;
  self->_fileURL = 0;

  self->_currentLocation = 0;
  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = 0;

  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = 0;

  sharedLink = self->_sharedLink;
  self->_sharedLink = 0;

  phAssetId = self->_phAssetId;
  self->_phAssetId = 0;

  v11 = 6;
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichDatasource = v11;
  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = v4;
}

- (_INPBFileDataAttachment)audioMessageFile
{
  if (self->_whichDatasource == 5)
  {
    v3 = self->_audioMessageFile;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAudioMessageFile:(id)a3
{
  v4 = a3;
  file = self->_file;
  self->_file = 0;

  fileURL = self->_fileURL;
  self->_fileURL = 0;

  self->_currentLocation = 0;
  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = 0;

  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = 0;

  sharedLink = self->_sharedLink;
  self->_sharedLink = 0;

  phAssetId = self->_phAssetId;
  self->_phAssetId = 0;

  v11 = 5;
  if (!v4)
  {
    v11 = 0;
  }

  self->_whichDatasource = v11;
  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = v4;
}

@end