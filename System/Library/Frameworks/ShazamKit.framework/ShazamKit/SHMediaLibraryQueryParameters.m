@interface SHMediaLibraryQueryParameters
+ (id)defaultParameters;
- (SHMediaLibraryQueryParameters)initWithCoder:(id)a3;
- (SHMediaLibraryQueryParameters)initWithResultsLimit:(int64_t)a3;
- (SHMediaLibraryQueryParameters)initWithResultsLimit:(int64_t)a3 filterOptions:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)commonInitWithResultsLimit:(int64_t)a3 filterOptions:(unint64_t)a4 ascending:(BOOL)a5 shouldUpdate:(BOOL)a6 providerIdentifier:(id)a7 excludeCloudMetadata:(BOOL)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHMediaLibraryQueryParameters

+ (id)defaultParameters
{
  v2 = [[SHMediaLibraryQueryParameters alloc] initWithResultsLimit:0x7FFFFFFFFFFFFFFFLL];

  return v2;
}

- (SHMediaLibraryQueryParameters)initWithResultsLimit:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SHMediaLibraryQueryParameters;
  v4 = [(SHMediaLibraryQueryParameters *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SHMediaLibraryQueryParameters *)v4 commonInitWithResultsLimit:a3 filterOptions:3 ascending:0 shouldUpdate:0 providerIdentifier:0 excludeCloudMetadata:0];
  }

  return v5;
}

- (SHMediaLibraryQueryParameters)initWithResultsLimit:(int64_t)a3 filterOptions:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = SHMediaLibraryQueryParameters;
  v6 = [(SHMediaLibraryQueryParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SHMediaLibraryQueryParameters *)v6 commonInitWithResultsLimit:a3 filterOptions:a4 ascending:0 shouldUpdate:0 providerIdentifier:0 excludeCloudMetadata:0];
  }

  return v7;
}

- (void)commonInitWithResultsLimit:(int64_t)a3 filterOptions:(unint64_t)a4 ascending:(BOOL)a5 shouldUpdate:(BOOL)a6 providerIdentifier:(id)a7 excludeCloudMetadata:(BOOL)a8
{
  v14 = a7;
  if (![(SHMediaLibraryQueryParameters *)self validateLimit:a3])
  {
    v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Limit must be a non-negative number" userInfo:0];
    objc_exception_throw(v16);
  }

  self->_resultsLimit = a3;
  self->_filterOptions = a4;
  self->_ascending = a5;
  self->_shouldUpdate = a6;
  providerIdentifier = self->_providerIdentifier;
  self->_providerIdentifier = v14;

  self->_excludeCloudMetadata = a8;
}

- (SHMediaLibraryQueryParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"SHMediaLibraryQueryDescriptorLimit"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryQueryDescriptorFilterOptions"];
  v7 = [v4 decodeBoolForKey:@"SHMediaLibraryQueryDescriptorAscending"];
  v8 = [v4 decodeBoolForKey:@"SHMediaLibraryQueryDescriptorShouldUpdate"];
  v9 = [v4 decodeBoolForKey:@"SHMediaLibraryQueryParametersExcludeCloudMetadata"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryQueryDescriptorProviderIdentifier"];

  v11 = -[SHMediaLibraryQueryParameters initWithResultsLimit:filterOptions:ascending:shouldUpdate:providerIdentifier:excludeCloudMetadata:](self, "initWithResultsLimit:filterOptions:ascending:shouldUpdate:providerIdentifier:excludeCloudMetadata:", v5, [v6 unsignedIntegerValue], v7, v8, v10, v9);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  resultsLimit = self->_resultsLimit;
  v6 = a3;
  [v6 encodeInteger:resultsLimit forKey:@"SHMediaLibraryQueryDescriptorLimit"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_filterOptions];
  [v6 encodeObject:v5 forKey:@"SHMediaLibraryQueryDescriptorFilterOptions"];

  [v6 encodeBool:self->_ascending forKey:@"SHMediaLibraryQueryDescriptorAscending"];
  [v6 encodeBool:self->_shouldUpdate forKey:@"SHMediaLibraryQueryDescriptorShouldUpdate"];
  [v6 encodeBool:self->_excludeCloudMetadata forKey:@"SHMediaLibraryQueryParametersExcludeCloudMetadata"];
  [v6 encodeObject:self->_providerIdentifier forKey:@"SHMediaLibraryQueryDescriptorProviderIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHMediaLibraryQueryParameters allocWithZone:?];
  v6 = [(SHMediaLibraryQueryParameters *)self resultsLimit];
  v7 = [(SHMediaLibraryQueryParameters *)self filterOptions];
  v8 = [(SHMediaLibraryQueryParameters *)self ascending];
  v9 = [(SHMediaLibraryQueryParameters *)self shouldUpdate];
  v10 = [(SHMediaLibraryQueryParameters *)self providerIdentifier];
  v11 = [v10 copyWithZone:a3];
  v12 = [(SHMediaLibraryQueryParameters *)v5 initWithResultsLimit:v6 filterOptions:v7 ascending:v8 shouldUpdate:v9 providerIdentifier:v11 excludeCloudMetadata:[(SHMediaLibraryQueryParameters *)self excludeCloudMetadata]];

  return v12;
}

@end