@interface LPSharingMetadataWrapper
- (LPSharingMetadataWrapper)initWithCoder:(id)a3;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setMetadata:(id)a3;
@end

@implementation LPSharingMetadataWrapper

- (id)dataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  v4 = [v3 encodedData];

  return v4;
}

- (LPSharingMetadataWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LPSharingMetadataWrapper;
  v5 = [(LPSharingMetadataWrapper *)&v10 init];
  if (v5)
  {
    v6 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v5->_hasFetchedSubresources = [v4 decodeBoolForKey:@"hasFetchedSubresources"];
    v5->_hasCompletedFetch = [v4 decodeBoolForKey:@"hasCompletedFetch"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_metadata forKey:@"metadata"];
  [v4 encodeBool:self->_hasFetchedSubresources forKey:@"hasFetchedSubresources"];
  [v4 encodeBool:self->_hasCompletedFetch forKey:@"hasCompletedFetch"];
}

- (void)setMetadata:(id)a3
{
  objc_storeStrong(&self->_metadata, a3);
  v5 = a3;
  v6 = [(LPLinkMetadata *)self->_metadata _isCurrentlyLoadingOrIncomplete];

  self->_hasCompletedFetch = !v6;
}

@end