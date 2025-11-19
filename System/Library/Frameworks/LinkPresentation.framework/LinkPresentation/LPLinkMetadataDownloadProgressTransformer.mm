@interface LPLinkMetadataDownloadProgressTransformer
- (LPLinkMetadataDownloadProgressTransformer)initWithBytesLoaded:(unint64_t)a3 downloadState:(int64_t)a4 metadata:(id)a5;
- (id)downloadProgressForTransformer:(id)a3;
@end

@implementation LPLinkMetadataDownloadProgressTransformer

- (LPLinkMetadataDownloadProgressTransformer)initWithBytesLoaded:(unint64_t)a3 downloadState:(int64_t)a4 metadata:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = LPLinkMetadataDownloadProgressTransformer;
  v9 = [(LPLinkMetadataDownloadProgressTransformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_bytesLoaded = a3;
    objc_storeStrong(&v9->_metadata, a5);
    v11 = v10;
  }

  return v10;
}

- (id)downloadProgressForTransformer:(id)a3
{
  v4 = [(LPLinkMetadata *)self->_metadata specialization];
  v5 = [v4 conformsToProtocol:&unk_1F24977F8];

  if (v5)
  {
    v6 = [(LPLinkMetadata *)self->_metadata specialization];
    v7 = [v6 downloadProgressForTransformer:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end