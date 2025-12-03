@interface LPSharingMetadataWrapper
- (LPSharingMetadataWrapper)initWithCoder:(id)coder;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setMetadata:(id)metadata;
@end

@implementation LPSharingMetadataWrapper

- (id)dataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (LPSharingMetadataWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = LPSharingMetadataWrapper;
  v5 = [(LPSharingMetadataWrapper *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v5->_hasFetchedSubresources = [coderCopy decodeBoolForKey:@"hasFetchedSubresources"];
    v5->_hasCompletedFetch = [coderCopy decodeBoolForKey:@"hasCompletedFetch"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeBool:self->_hasFetchedSubresources forKey:@"hasFetchedSubresources"];
  [coderCopy encodeBool:self->_hasCompletedFetch forKey:@"hasCompletedFetch"];
}

- (void)setMetadata:(id)metadata
{
  objc_storeStrong(&self->_metadata, metadata);
  metadataCopy = metadata;
  _isCurrentlyLoadingOrIncomplete = [(LPLinkMetadata *)self->_metadata _isCurrentlyLoadingOrIncomplete];

  self->_hasCompletedFetch = !_isCurrentlyLoadingOrIncomplete;
}

@end