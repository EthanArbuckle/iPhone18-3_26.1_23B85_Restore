@interface RichLinkAttachmentSubstituter
- (RichLinkAttachmentSubstituter)init;
- (id)applyAttachmentSubstitutionForObject:(id)object;
- (id)archiver:(id)archiver willEncodeObject:(id)object;
- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object;
@end

@implementation RichLinkAttachmentSubstituter

- (RichLinkAttachmentSubstituter)init
{
  v7.receiver = self;
  v7.super_class = RichLinkAttachmentSubstituter;
  v2 = [(RichLinkAttachmentSubstituter *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    archivedAttachments = v2->_archivedAttachments;
    v2->_archivedAttachments = v3;

    *&v2->_shouldSubstituteAttachments = 1;
    v5 = v2;
  }

  return v2;
}

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  archiverCopy = archiver;
  objectCopy = object;
  if (self->_shouldSubstituteAttachments)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      data = [v8 data];

      if (!data)
      {
LABEL_6:

        goto LABEL_22;
      }

      data = [[LPARAssetAttachmentSubstitute alloc] initWithARAsset:v8];
      [(LPARAssetAttachmentSubstitute *)data setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
      archivedAttachments = self->_archivedAttachments;
      data2 = [v8 data];
      [(NSMutableArray *)archivedAttachments addObject:data2];
LABEL_5:

      goto LABEL_6;
    }

    if (self->_shouldSubstituteAttachments)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = objectCopy;
        data = [v8 data];

        if (!data)
        {
          goto LABEL_6;
        }

        data = [[LPImageAttachmentSubstitute alloc] initWithImage:v8];
        [(LPARAssetAttachmentSubstitute *)data setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
        v12 = self->_archivedAttachments;
        data2 = [v8 data];
        [(NSMutableArray *)v12 addObject:data2];
        goto LABEL_5;
      }

      if (self->_shouldSubstituteAttachments)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = objectCopy;
          data3 = [v8 data];

          if (data3)
          {
            data = [[LPVideoAttachmentSubstitute alloc] initWithVideo:v8];
            [(LPARAssetAttachmentSubstitute *)data setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
            v14 = self->_archivedAttachments;
            data2 = [v8 data];
            [(NSMutableArray *)v14 addObject:data2];
            goto LABEL_5;
          }
        }
      }
    }
  }

  if (self->_shouldIgnoreAppStoreMetadata && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = LPLogChannelFetching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RichLinkAttachmentSubstituter archiver:willEncodeObject:];
    }

    data = 0;
  }

  else
  {
    data = objectCopy;
  }

LABEL_22:

  return data;
}

- (id)applyAttachmentSubstitutionForObject:(id)object
{
  v31 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    index = [v5 index];
    if (index < [(NSArray *)self->_attachmentsForUnarchiving count])
    {
      v7 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [v5 index]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setFileURL:v7];
LABEL_21:
        null = [[LPARAsset alloc] _initWithARAsset:v5];
        goto LABEL_41;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setData:v7];
        goto LABEL_21;
      }

      v24 = LPLogChannelFetching();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 134217984;
        index2 = [v5 index];
        _os_log_impl(&dword_1AE886000, v24, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v27, 0xCu);
      }

LABEL_31:

      null = [MEMORY[0x1E695DFB0] null];
      goto LABEL_41;
    }

    v10 = LPLogChannelFetching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      index3 = [v5 index];
      v12 = [(NSArray *)self->_attachmentsForUnarchiving count];
      v27 = 134218240;
      index2 = index3;
      v29 = 2048;
      v30 = v12;
      _os_log_impl(&dword_1AE886000, v10, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v27, 0x16u);
    }

LABEL_11:

    null2 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    index4 = [v8 index];
    if (index4 < [(NSArray *)self->_attachmentsForUnarchiving count])
    {
      v7 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [v8 index]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setFileURL:v7];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = LPLogChannelFetching();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 134217984;
            index2 = [v8 index];
            _os_log_impl(&dword_1AE886000, v24, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v27, 0xCu);
          }

          goto LABEL_31;
        }

        [v8 setData:v7];
      }

      null = [[LPImage alloc] _initWithImage:v8];
      goto LABEL_41;
    }

    v10 = LPLogChannelFetching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      index5 = [v8 index];
      v19 = [(NSArray *)self->_attachmentsForUnarchiving count];
      v27 = 134218240;
      index2 = index5;
      v29 = 2048;
      v30 = v19;
      _os_log_impl(&dword_1AE886000, v10, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v27, 0x16u);
    }

    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = objectCopy;
  v16 = v15;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_43;
  }

  index6 = [v15 index];
  if (index6 < [(NSArray *)self->_attachmentsForUnarchiving count])
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [v16 index]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 setFileURL:v7];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = LPLogChannelFetching();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 134217984;
          index2 = [v16 index];
          _os_log_impl(&dword_1AE886000, v25, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v27, 0xCu);
        }

        null = [MEMORY[0x1E695DFB0] null];
        goto LABEL_41;
      }

      [v16 setData:v7];
    }

    null = [[LPVideo alloc] _initWithVideo:v16];
LABEL_41:
    v16 = null;

    goto LABEL_42;
  }

  v21 = LPLogChannelFetching();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    index7 = [v16 index];
    v23 = [(NSArray *)self->_attachmentsForUnarchiving count];
    v27 = 134218240;
    index2 = index7;
    v29 = 2048;
    v30 = v23;
    _os_log_impl(&dword_1AE886000, v21, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v27, 0x16u);
  }

  null2 = [MEMORY[0x1E695DFB0] null];
LABEL_25:
  v16 = null2;
LABEL_42:

LABEL_43:

  return v16;
}

- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object
{
  if (self->_shouldSubstituteAttachments)
  {
    objectCopy = [(RichLinkAttachmentSubstituter *)self applyAttachmentSubstitutionForObject:object];
  }

  else
  {
    objectCopy = object;
  }

  v6 = objectCopy;

  return v6;
}

@end