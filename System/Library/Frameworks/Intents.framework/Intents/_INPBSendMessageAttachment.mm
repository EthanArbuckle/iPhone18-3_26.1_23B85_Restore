@interface _INPBSendMessageAttachment
- (BOOL)isEqual:(id)equal;
- (NSString)phAssetId;
- (_INPBFileDataAttachment)audioMessageFile;
- (_INPBFileDataAttachment)file;
- (_INPBSendMessageAttachment)initWithCoder:(id)coder;
- (_INPBURLValue)audioMessageFileURL;
- (_INPBURLValue)fileURL;
- (_INPBURLValue)sharedLink;
- (_INPBURLValue)speechDataURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioMessageFile:(id)file;
- (void)setAudioMessageFileURL:(id)l;
- (void)setCurrentLocation:(BOOL)location;
- (void)setFile:(id)file;
- (void)setFileURL:(id)l;
- (void)setPhAssetId:(id)id;
- (void)setSharedLink:(id)link;
- (void)setSpeechDataURL:(id)l;
- (void)setTypeIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBSendMessageAttachment

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  audioMessageFile = [(_INPBSendMessageAttachment *)self audioMessageFile];
  dictionaryRepresentation = [audioMessageFile dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioMessageFile"];

  audioMessageFileURL = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
  dictionaryRepresentation2 = [audioMessageFileURL dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"audioMessageFileURL"];

  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSendMessageAttachment currentLocation](self, "currentLocation")}];
    [dictionary setObject:v8 forKeyedSubscript:@"currentLocation"];
  }

  file = [(_INPBSendMessageAttachment *)self file];
  dictionaryRepresentation3 = [file dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"file"];

  fileURL = [(_INPBSendMessageAttachment *)self fileURL];
  dictionaryRepresentation4 = [fileURL dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"fileURL"];

  if (self->_phAssetId)
  {
    phAssetId = [(_INPBSendMessageAttachment *)self phAssetId];
    v14 = [phAssetId copy];
    [dictionary setObject:v14 forKeyedSubscript:@"phAssetId"];
  }

  sharedLink = [(_INPBSendMessageAttachment *)self sharedLink];
  dictionaryRepresentation5 = [sharedLink dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"sharedLink"];

  speechDataURL = [(_INPBSendMessageAttachment *)self speechDataURL];
  dictionaryRepresentation6 = [speechDataURL dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"speechDataURL"];

  if (self->_typeIdentifier)
  {
    typeIdentifier = [(_INPBSendMessageAttachment *)self typeIdentifier];
    v20 = [typeIdentifier copy];
    [dictionary setObject:v20 forKeyedSubscript:@"typeIdentifier"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  audioMessageFile = [(_INPBSendMessageAttachment *)self audioMessageFile];
  audioMessageFile2 = [equalCopy audioMessageFile];
  if ((audioMessageFile != 0) == (audioMessageFile2 == 0))
  {
    goto LABEL_45;
  }

  audioMessageFile3 = [(_INPBSendMessageAttachment *)self audioMessageFile];
  if (audioMessageFile3)
  {
    v8 = audioMessageFile3;
    audioMessageFile4 = [(_INPBSendMessageAttachment *)self audioMessageFile];
    audioMessageFile5 = [equalCopy audioMessageFile];
    v11 = [audioMessageFile4 isEqual:audioMessageFile5];

    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  audioMessageFile = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
  audioMessageFile2 = [equalCopy audioMessageFileURL];
  if ((audioMessageFile != 0) == (audioMessageFile2 == 0))
  {
    goto LABEL_45;
  }

  audioMessageFileURL = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
  if (audioMessageFileURL)
  {
    v13 = audioMessageFileURL;
    audioMessageFileURL2 = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
    audioMessageFileURL3 = [equalCopy audioMessageFileURL];
    v16 = [audioMessageFileURL2 isEqual:audioMessageFileURL3];

    if (!v16)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  hasCurrentLocation = [(_INPBSendMessageAttachment *)self hasCurrentLocation];
  if (hasCurrentLocation != [equalCopy hasCurrentLocation])
  {
    goto LABEL_46;
  }

  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    if ([equalCopy hasCurrentLocation])
    {
      currentLocation = self->_currentLocation;
      if (currentLocation != [equalCopy currentLocation])
      {
        goto LABEL_46;
      }
    }
  }

  audioMessageFile = [(_INPBSendMessageAttachment *)self file];
  audioMessageFile2 = [equalCopy file];
  if ((audioMessageFile != 0) == (audioMessageFile2 == 0))
  {
    goto LABEL_45;
  }

  file = [(_INPBSendMessageAttachment *)self file];
  if (file)
  {
    v20 = file;
    file2 = [(_INPBSendMessageAttachment *)self file];
    file3 = [equalCopy file];
    v23 = [file2 isEqual:file3];

    if (!v23)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  audioMessageFile = [(_INPBSendMessageAttachment *)self fileURL];
  audioMessageFile2 = [equalCopy fileURL];
  if ((audioMessageFile != 0) == (audioMessageFile2 == 0))
  {
    goto LABEL_45;
  }

  fileURL = [(_INPBSendMessageAttachment *)self fileURL];
  if (fileURL)
  {
    v25 = fileURL;
    fileURL2 = [(_INPBSendMessageAttachment *)self fileURL];
    fileURL3 = [equalCopy fileURL];
    v28 = [fileURL2 isEqual:fileURL3];

    if (!v28)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  audioMessageFile = [(_INPBSendMessageAttachment *)self phAssetId];
  audioMessageFile2 = [equalCopy phAssetId];
  if ((audioMessageFile != 0) == (audioMessageFile2 == 0))
  {
    goto LABEL_45;
  }

  phAssetId = [(_INPBSendMessageAttachment *)self phAssetId];
  if (phAssetId)
  {
    v30 = phAssetId;
    phAssetId2 = [(_INPBSendMessageAttachment *)self phAssetId];
    phAssetId3 = [equalCopy phAssetId];
    v33 = [phAssetId2 isEqual:phAssetId3];

    if (!v33)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  audioMessageFile = [(_INPBSendMessageAttachment *)self sharedLink];
  audioMessageFile2 = [equalCopy sharedLink];
  if ((audioMessageFile != 0) == (audioMessageFile2 == 0))
  {
    goto LABEL_45;
  }

  sharedLink = [(_INPBSendMessageAttachment *)self sharedLink];
  if (sharedLink)
  {
    v35 = sharedLink;
    sharedLink2 = [(_INPBSendMessageAttachment *)self sharedLink];
    sharedLink3 = [equalCopy sharedLink];
    v38 = [sharedLink2 isEqual:sharedLink3];

    if (!v38)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  audioMessageFile = [(_INPBSendMessageAttachment *)self speechDataURL];
  audioMessageFile2 = [equalCopy speechDataURL];
  if ((audioMessageFile != 0) == (audioMessageFile2 == 0))
  {
    goto LABEL_45;
  }

  speechDataURL = [(_INPBSendMessageAttachment *)self speechDataURL];
  if (speechDataURL)
  {
    v40 = speechDataURL;
    speechDataURL2 = [(_INPBSendMessageAttachment *)self speechDataURL];
    speechDataURL3 = [equalCopy speechDataURL];
    v43 = [speechDataURL2 isEqual:speechDataURL3];

    if (!v43)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  audioMessageFile = [(_INPBSendMessageAttachment *)self typeIdentifier];
  audioMessageFile2 = [equalCopy typeIdentifier];
  if ((audioMessageFile != 0) != (audioMessageFile2 == 0))
  {
    typeIdentifier = [(_INPBSendMessageAttachment *)self typeIdentifier];
    if (!typeIdentifier)
    {

LABEL_49:
      v49 = 1;
      goto LABEL_47;
    }

    v45 = typeIdentifier;
    typeIdentifier2 = [(_INPBSendMessageAttachment *)self typeIdentifier];
    typeIdentifier3 = [equalCopy typeIdentifier];
    v48 = [typeIdentifier2 isEqual:typeIdentifier3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSendMessageAttachment allocWithZone:](_INPBSendMessageAttachment init];
  v6 = [(_INPBFileDataAttachment *)self->_audioMessageFile copyWithZone:zone];
  [(_INPBSendMessageAttachment *)v5 setAudioMessageFile:v6];

  v7 = [(_INPBURLValue *)self->_audioMessageFileURL copyWithZone:zone];
  [(_INPBSendMessageAttachment *)v5 setAudioMessageFileURL:v7];

  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    [(_INPBSendMessageAttachment *)v5 setCurrentLocation:[(_INPBSendMessageAttachment *)self currentLocation]];
  }

  v8 = [(_INPBFileDataAttachment *)self->_file copyWithZone:zone];
  [(_INPBSendMessageAttachment *)v5 setFile:v8];

  v9 = [(_INPBURLValue *)self->_fileURL copyWithZone:zone];
  [(_INPBSendMessageAttachment *)v5 setFileURL:v9];

  v10 = [(NSString *)self->_phAssetId copyWithZone:zone];
  [(_INPBSendMessageAttachment *)v5 setPhAssetId:v10];

  v11 = [(_INPBURLValue *)self->_sharedLink copyWithZone:zone];
  [(_INPBSendMessageAttachment *)v5 setSharedLink:v11];

  v12 = [(_INPBURLValue *)self->_speechDataURL copyWithZone:zone];
  [(_INPBSendMessageAttachment *)v5 setSpeechDataURL:v12];

  v13 = [(NSString *)self->_typeIdentifier copyWithZone:zone];
  [(_INPBSendMessageAttachment *)v5 setTypeIdentifier:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSendMessageAttachment *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSendMessageAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSendMessageAttachment *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  audioMessageFile = [(_INPBSendMessageAttachment *)self audioMessageFile];

  if (audioMessageFile)
  {
    audioMessageFile2 = [(_INPBSendMessageAttachment *)self audioMessageFile];
    PBDataWriterWriteSubmessage();
  }

  audioMessageFileURL = [(_INPBSendMessageAttachment *)self audioMessageFileURL];

  if (audioMessageFileURL)
  {
    audioMessageFileURL2 = [(_INPBSendMessageAttachment *)self audioMessageFileURL];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSendMessageAttachment *)self hasCurrentLocation])
  {
    currentLocation = self->_currentLocation;
    PBDataWriterWriteBOOLField();
  }

  file = [(_INPBSendMessageAttachment *)self file];

  if (file)
  {
    file2 = [(_INPBSendMessageAttachment *)self file];
    PBDataWriterWriteSubmessage();
  }

  fileURL = [(_INPBSendMessageAttachment *)self fileURL];

  if (fileURL)
  {
    fileURL2 = [(_INPBSendMessageAttachment *)self fileURL];
    PBDataWriterWriteSubmessage();
  }

  phAssetId = [(_INPBSendMessageAttachment *)self phAssetId];

  if (phAssetId)
  {
    phAssetId = self->_phAssetId;
    PBDataWriterWriteStringField();
  }

  sharedLink = [(_INPBSendMessageAttachment *)self sharedLink];

  if (sharedLink)
  {
    sharedLink2 = [(_INPBSendMessageAttachment *)self sharedLink];
    PBDataWriterWriteSubmessage();
  }

  speechDataURL = [(_INPBSendMessageAttachment *)self speechDataURL];

  if (speechDataURL)
  {
    speechDataURL2 = [(_INPBSendMessageAttachment *)self speechDataURL];
    PBDataWriterWriteSubmessage();
  }

  typeIdentifier = [(_INPBSendMessageAttachment *)self typeIdentifier];

  v20 = toCopy;
  if (typeIdentifier)
  {
    typeIdentifier = self->_typeIdentifier;
    PBDataWriterWriteStringField();
    v20 = toCopy;
  }
}

- (void)setTypeIdentifier:(id)identifier
{
  v4 = [identifier copy];
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

- (void)setSpeechDataURL:(id)l
{
  lCopy = l;
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

  self->_whichDatasource = 4 * (lCopy != 0);
  speechDataURL = self->_speechDataURL;
  self->_speechDataURL = lCopy;
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

- (void)setSharedLink:(id)link
{
  linkCopy = link;
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
  if (!linkCopy)
  {
    v11 = 0;
  }

  self->_whichDatasource = v11;
  sharedLink = self->_sharedLink;
  self->_sharedLink = linkCopy;
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

- (void)setPhAssetId:(id)id
{
  file = self->_file;
  self->_file = 0;
  idCopy = id;

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

  self->_whichDatasource = 8 * (idCopy != 0);
  v10 = [idCopy copy];
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

- (void)setFileURL:(id)l
{
  lCopy = l;
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

  self->_whichDatasource = 2 * (lCopy != 0);
  fileURL = self->_fileURL;
  self->_fileURL = lCopy;
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

- (void)setFile:(id)file
{
  fileCopy = file;
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

  self->_whichDatasource = fileCopy != 0;
  file = self->_file;
  self->_file = fileCopy;
}

- (void)setCurrentLocation:(BOOL)location
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
  self->_currentLocation = location;
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

- (void)setAudioMessageFileURL:(id)l
{
  lCopy = l;
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
  if (!lCopy)
  {
    v11 = 0;
  }

  self->_whichDatasource = v11;
  audioMessageFileURL = self->_audioMessageFileURL;
  self->_audioMessageFileURL = lCopy;
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

- (void)setAudioMessageFile:(id)file
{
  fileCopy = file;
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
  if (!fileCopy)
  {
    v11 = 0;
  }

  self->_whichDatasource = v11;
  audioMessageFile = self->_audioMessageFile;
  self->_audioMessageFile = fileCopy;
}

@end