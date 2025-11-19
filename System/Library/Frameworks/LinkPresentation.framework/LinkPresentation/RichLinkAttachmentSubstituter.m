@interface RichLinkAttachmentSubstituter
- (RichLinkAttachmentSubstituter)init;
- (id)applyAttachmentSubstitutionForObject:(id)a3;
- (id)archiver:(id)a3 willEncodeObject:(id)a4;
- (id)unarchiver:(id)a3 didDecodeObject:(id)a4;
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

- (id)archiver:(id)a3 willEncodeObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_shouldSubstituteAttachments)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [v8 data];

      if (!v9)
      {
LABEL_6:

        goto LABEL_22;
      }

      v9 = [[LPARAssetAttachmentSubstitute alloc] initWithARAsset:v8];
      [(LPARAssetAttachmentSubstitute *)v9 setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
      archivedAttachments = self->_archivedAttachments;
      v11 = [v8 data];
      [(NSMutableArray *)archivedAttachments addObject:v11];
LABEL_5:

      goto LABEL_6;
    }

    if (self->_shouldSubstituteAttachments)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v9 = [v8 data];

        if (!v9)
        {
          goto LABEL_6;
        }

        v9 = [[LPImageAttachmentSubstitute alloc] initWithImage:v8];
        [(LPARAssetAttachmentSubstitute *)v9 setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
        v12 = self->_archivedAttachments;
        v11 = [v8 data];
        [(NSMutableArray *)v12 addObject:v11];
        goto LABEL_5;
      }

      if (self->_shouldSubstituteAttachments)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v13 = [v8 data];

          if (v13)
          {
            v9 = [[LPVideoAttachmentSubstitute alloc] initWithVideo:v8];
            [(LPARAssetAttachmentSubstitute *)v9 setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
            v14 = self->_archivedAttachments;
            v11 = [v8 data];
            [(NSMutableArray *)v14 addObject:v11];
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

    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

LABEL_22:

  return v9;
}

- (id)applyAttachmentSubstitutionForObject:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 index];
    if (v6 < [(NSArray *)self->_attachmentsForUnarchiving count])
    {
      v7 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [v5 index]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setFileURL:v7];
LABEL_21:
        v20 = [[LPARAsset alloc] _initWithARAsset:v5];
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
        v28 = [v5 index];
        _os_log_impl(&dword_1AE886000, v24, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v27, 0xCu);
      }

LABEL_31:

      v20 = [MEMORY[0x1E695DFB0] null];
      goto LABEL_41;
    }

    v10 = LPLogChannelFetching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 index];
      v12 = [(NSArray *)self->_attachmentsForUnarchiving count];
      v27 = 134218240;
      v28 = v11;
      v29 = 2048;
      v30 = v12;
      _os_log_impl(&dword_1AE886000, v10, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v27, 0x16u);
    }

LABEL_11:

    v13 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    v9 = [v8 index];
    if (v9 < [(NSArray *)self->_attachmentsForUnarchiving count])
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
            v28 = [v8 index];
            _os_log_impl(&dword_1AE886000, v24, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v27, 0xCu);
          }

          goto LABEL_31;
        }

        [v8 setData:v7];
      }

      v20 = [[LPImage alloc] _initWithImage:v8];
      goto LABEL_41;
    }

    v10 = LPLogChannelFetching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 index];
      v19 = [(NSArray *)self->_attachmentsForUnarchiving count];
      v27 = 134218240;
      v28 = v18;
      v29 = 2048;
      v30 = v19;
      _os_log_impl(&dword_1AE886000, v10, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v27, 0x16u);
    }

    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = v4;
  v16 = v15;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_43;
  }

  v17 = [v15 index];
  if (v17 < [(NSArray *)self->_attachmentsForUnarchiving count])
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
          v28 = [v16 index];
          _os_log_impl(&dword_1AE886000, v25, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v27, 0xCu);
        }

        v20 = [MEMORY[0x1E695DFB0] null];
        goto LABEL_41;
      }

      [v16 setData:v7];
    }

    v20 = [[LPVideo alloc] _initWithVideo:v16];
LABEL_41:
    v16 = v20;

    goto LABEL_42;
  }

  v21 = LPLogChannelFetching();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v16 index];
    v23 = [(NSArray *)self->_attachmentsForUnarchiving count];
    v27 = 134218240;
    v28 = v22;
    v29 = 2048;
    v30 = v23;
    _os_log_impl(&dword_1AE886000, v21, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v27, 0x16u);
  }

  v13 = [MEMORY[0x1E695DFB0] null];
LABEL_25:
  v16 = v13;
LABEL_42:

LABEL_43:

  return v16;
}

- (id)unarchiver:(id)a3 didDecodeObject:(id)a4
{
  if (self->_shouldSubstituteAttachments)
  {
    v5 = [(RichLinkAttachmentSubstituter *)self applyAttachmentSubstitutionForObject:a4];
  }

  else
  {
    v5 = a4;
  }

  v6 = v5;

  return v6;
}

@end