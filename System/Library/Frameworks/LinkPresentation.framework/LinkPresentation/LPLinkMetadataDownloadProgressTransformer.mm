@interface LPLinkMetadataDownloadProgressTransformer
- (LPLinkMetadataDownloadProgressTransformer)initWithBytesLoaded:(unint64_t)loaded downloadState:(int64_t)state metadata:(id)metadata;
- (id)downloadProgressForTransformer:(id)transformer;
@end

@implementation LPLinkMetadataDownloadProgressTransformer

- (LPLinkMetadataDownloadProgressTransformer)initWithBytesLoaded:(unint64_t)loaded downloadState:(int64_t)state metadata:(id)metadata
{
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = LPLinkMetadataDownloadProgressTransformer;
  v9 = [(LPLinkMetadataDownloadProgressTransformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_bytesLoaded = loaded;
    objc_storeStrong(&v9->_metadata, metadata);
    v11 = v10;
  }

  return v10;
}

- (id)downloadProgressForTransformer:(id)transformer
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  v5 = [specialization conformsToProtocol:&unk_1F24977F8];

  if (v5)
  {
    specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
    v7 = [specialization2 downloadProgressForTransformer:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end