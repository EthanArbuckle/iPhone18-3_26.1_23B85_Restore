@interface LPMessagesPayload
+ (id)_linkWithDataRepresentation:(id)a3 substitutingAttachments:(BOOL)a4 attachments:(id)a5;
+ (id)linkWithDataRepresentation:(id)a3 attachments:(id)a4;
+ (id)linkWithDataRepresentationWithoutSubstitutingAttachments:(id)a3;
- (BOOL)_needsWorkaroundForAppStoreTransformerCrash;
- (LPMessagesPayload)initWithCoder:(id)a3;
- (id)dataRepresentationWithOutOfLineAttachments:(id *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)performSubstitutionWithAttachments:(id)a3;
@end

@implementation LPMessagesPayload

- (LPMessagesPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LPMessagesPayload;
  v5 = [(LPMessagesPayload *)&v11 init];
  if (v5)
  {
    v5->_placeholder = [v4 decodeBoolForKey:@"richLinkIsPlaceholder"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"richLinkMetadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = v5->_metadata;
      v5->_metadata = 0;
    }

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_placeholder forKey:@"richLinkIsPlaceholder"];
  [v4 encodeObject:self->_metadata forKey:@"richLinkMetadata"];
}

+ (id)_linkWithDataRepresentation:(id)a3 substitutingAttachments:(BOOL)a4 attachments:(id)a5
{
  v6 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
  [v9 setClass:objc_opt_class() forClassName:@"RichLink"];
  [v9 setClass:objc_opt_class() forClassName:@"RichLinkARAssetAttachmentSubstitute"];
  [v9 setClass:objc_opt_class() forClassName:@"RichLinkImageAttachmentSubstitute"];
  [v9 setClass:objc_opt_class() forClassName:@"RichLinkVideoAttachmentSubstitute"];
  [v9 _enableStrictSecureDecodingMode];
  [v9 setDecodingFailurePolicy:1];
  if (v6)
  {
    v10 = objc_alloc_init(RichLinkAttachmentSubstituter);
    [(RichLinkAttachmentSubstituter *)v10 setAttachmentsForUnarchiving:v8];
    [v9 setDelegate:v10];
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = 0x1E7A34000;
  v15 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v16 = *MEMORY[0x1E696A508];
  v31 = 0;
  v17 = [v9 decodeTopLevelObjectOfClasses:v15 forKey:v16 error:&v31];
  v18 = v31;

  [v9 finishDecoding];
  if (v18)
  {
    v19 = LPLogChannelFetching();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[LPMessagesPayload _linkWithDataRepresentation:substitutingAttachments:attachments:];
    }

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  if (!v17)
  {
    v23 = LPLogChannelFetching();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[LPMessagesPayload _linkWithDataRepresentation:substitutingAttachments:attachments:];
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v17;
    v22 = [(LPMessagesPayload *)v20 metadata];
    -[LPMessagesPayload setNeedsCompleteFetch:](v20, "setNeedsCompleteFetch:", [v22 _isCurrentlyLoadingOrIncomplete]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = objc_alloc_init(LPMessagesPayload);
      [(LPMessagesPayload *)v20 setMetadata:v17];
      v24 = [(LPMessagesPayload *)v20 metadata];
      -[LPMessagesPayload setNeedsCompleteFetch:](v20, "setNeedsCompleteFetch:", [v24 _isCurrentlyLoadingOrIncomplete]);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = LPLogChannelFetching();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          [LPMessagesPayload _linkWithDataRepresentation:v30 substitutingAttachments:v32 attachments:v29];
        }

        goto LABEL_7;
      }

      v20 = objc_alloc_init(LPMessagesPayload);
      v25 = v17;
      v26 = [v25 metadata];
      [(LPMessagesPayload *)v20 setMetadata:v26];

      -[LPMessagesPayload setNeedsSubresourceFetch:](v20, "setNeedsSubresourceFetch:", [v25 hasFetchedSubresources] ^ 1);
      v27 = [v25 hasCompletedFetch];
      if (v27)
      {
        v14 = [v25 metadata];
        v28 = [v14 _isCurrentlyLoadingOrIncomplete];
      }

      else
      {
        v28 = 1;
      }

      [(LPMessagesPayload *)v20 setNeedsCompleteFetch:v28];
      if (v27)
      {
      }
    }
  }

LABEL_8:

  return v20;
}

+ (id)linkWithDataRepresentation:(id)a3 attachments:(id)a4
{
  v4 = [a1 _linkWithDataRepresentation:a3 substitutingAttachments:1 attachments:a4];

  return v4;
}

+ (id)linkWithDataRepresentationWithoutSubstitutingAttachments:(id)a3
{
  v3 = [a1 _linkWithDataRepresentation:a3 substitutingAttachments:0 attachments:0];

  return v3;
}

- (void)performSubstitutionWithAttachments:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(RichLinkAttachmentSubstituter);
  [(RichLinkAttachmentSubstituter *)v5 setAttachmentsForUnarchiving:v4];
  metadata = self->_metadata;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__LPMessagesPayload_performSubstitutionWithAttachments___block_invoke;
  v8[3] = &unk_1E7A36DE8;
  v8[4] = self;
  v7 = v5;
  v9 = v7;
  [(LPLinkMetadata *)metadata _enumerateSubstitutableFields:v8];
}

void __56__LPMessagesPayload_performSubstitutionWithAttachments___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(a1 + 32) + 16) valueForKeyPath:?];
  if (v3)
  {
    v4 = [*(a1 + 40) applyAttachmentSubstitutionForObject:v3];
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [v4 isEqual:v5];

    if (v6)
    {

      v4 = 0;
    }

    [*(*(a1 + 32) + 16) setValue:v4 forKeyPath:v7];
  }
}

- (id)dataRepresentationWithOutOfLineAttachments:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v5 setClassName:@"RichLink" forClass:objc_opt_class()];
  [v5 setClassName:@"RichLinkARAssetAttachmentSubstitute" forClass:objc_opt_class()];
  [v5 setClassName:@"RichLinkImageAttachmentSubstitute" forClass:objc_opt_class()];
  [v5 setClassName:@"RichLinkVideoAttachmentSubstitute" forClass:objc_opt_class()];
  v6 = objc_alloc_init(RichLinkAttachmentSubstituter);
  [(RichLinkAttachmentSubstituter *)v6 setShouldSubstituteAttachments:a3 != 0];
  [(RichLinkAttachmentSubstituter *)v6 setShouldIgnoreAppStoreMetadata:[(LPMessagesPayload *)self _needsWorkaroundForAppStoreTransformerCrash]];
  [v5 setDelegate:v6];
  [v5 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  v7 = [v5 encodedData];
  if (a3)
  {
    *a3 = [(RichLinkAttachmentSubstituter *)v6 archivedAttachments];
  }

  return v7;
}

- (BOOL)_needsWorkaroundForAppStoreTransformerCrash
{
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(LPLinkMetadata *)self->_metadata specialization];
  v6 = [v5 screenshots];
  v7 = [v6 count] == 0;

  return v7;
}

+ (void)_linkWithDataRepresentation:(void *)a1 substitutingAttachments:(uint64_t)a2 attachments:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_error_impl(&dword_1AE886000, a3, OS_LOG_TYPE_ERROR, "RichLink: Failed to decode; object was of an unexpected class: %@", a2, 0xCu);
}

@end