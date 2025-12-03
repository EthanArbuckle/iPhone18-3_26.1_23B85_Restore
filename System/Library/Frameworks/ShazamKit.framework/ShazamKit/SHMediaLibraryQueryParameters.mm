@interface SHMediaLibraryQueryParameters
+ (id)defaultParameters;
- (SHMediaLibraryQueryParameters)initWithCoder:(id)coder;
- (SHMediaLibraryQueryParameters)initWithResultsLimit:(int64_t)limit;
- (SHMediaLibraryQueryParameters)initWithResultsLimit:(int64_t)limit filterOptions:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)commonInitWithResultsLimit:(int64_t)limit filterOptions:(unint64_t)options ascending:(BOOL)ascending shouldUpdate:(BOOL)update providerIdentifier:(id)identifier excludeCloudMetadata:(BOOL)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMediaLibraryQueryParameters

+ (id)defaultParameters
{
  v2 = [[SHMediaLibraryQueryParameters alloc] initWithResultsLimit:0x7FFFFFFFFFFFFFFFLL];

  return v2;
}

- (SHMediaLibraryQueryParameters)initWithResultsLimit:(int64_t)limit
{
  v7.receiver = self;
  v7.super_class = SHMediaLibraryQueryParameters;
  v4 = [(SHMediaLibraryQueryParameters *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SHMediaLibraryQueryParameters *)v4 commonInitWithResultsLimit:limit filterOptions:3 ascending:0 shouldUpdate:0 providerIdentifier:0 excludeCloudMetadata:0];
  }

  return v5;
}

- (SHMediaLibraryQueryParameters)initWithResultsLimit:(int64_t)limit filterOptions:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = SHMediaLibraryQueryParameters;
  v6 = [(SHMediaLibraryQueryParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SHMediaLibraryQueryParameters *)v6 commonInitWithResultsLimit:limit filterOptions:options ascending:0 shouldUpdate:0 providerIdentifier:0 excludeCloudMetadata:0];
  }

  return v7;
}

- (void)commonInitWithResultsLimit:(int64_t)limit filterOptions:(unint64_t)options ascending:(BOOL)ascending shouldUpdate:(BOOL)update providerIdentifier:(id)identifier excludeCloudMetadata:(BOOL)metadata
{
  identifierCopy = identifier;
  if (![(SHMediaLibraryQueryParameters *)self validateLimit:limit])
  {
    v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Limit must be a non-negative number" userInfo:0];
    objc_exception_throw(v16);
  }

  self->_resultsLimit = limit;
  self->_filterOptions = options;
  self->_ascending = ascending;
  self->_shouldUpdate = update;
  providerIdentifier = self->_providerIdentifier;
  self->_providerIdentifier = identifierCopy;

  self->_excludeCloudMetadata = metadata;
}

- (SHMediaLibraryQueryParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"SHMediaLibraryQueryDescriptorLimit"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryQueryDescriptorFilterOptions"];
  v7 = [coderCopy decodeBoolForKey:@"SHMediaLibraryQueryDescriptorAscending"];
  v8 = [coderCopy decodeBoolForKey:@"SHMediaLibraryQueryDescriptorShouldUpdate"];
  v9 = [coderCopy decodeBoolForKey:@"SHMediaLibraryQueryParametersExcludeCloudMetadata"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHMediaLibraryQueryDescriptorProviderIdentifier"];

  v11 = -[SHMediaLibraryQueryParameters initWithResultsLimit:filterOptions:ascending:shouldUpdate:providerIdentifier:excludeCloudMetadata:](self, "initWithResultsLimit:filterOptions:ascending:shouldUpdate:providerIdentifier:excludeCloudMetadata:", v5, [v6 unsignedIntegerValue], v7, v8, v10, v9);
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  resultsLimit = self->_resultsLimit;
  coderCopy = coder;
  [coderCopy encodeInteger:resultsLimit forKey:@"SHMediaLibraryQueryDescriptorLimit"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_filterOptions];
  [coderCopy encodeObject:v5 forKey:@"SHMediaLibraryQueryDescriptorFilterOptions"];

  [coderCopy encodeBool:self->_ascending forKey:@"SHMediaLibraryQueryDescriptorAscending"];
  [coderCopy encodeBool:self->_shouldUpdate forKey:@"SHMediaLibraryQueryDescriptorShouldUpdate"];
  [coderCopy encodeBool:self->_excludeCloudMetadata forKey:@"SHMediaLibraryQueryParametersExcludeCloudMetadata"];
  [coderCopy encodeObject:self->_providerIdentifier forKey:@"SHMediaLibraryQueryDescriptorProviderIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMediaLibraryQueryParameters allocWithZone:?];
  resultsLimit = [(SHMediaLibraryQueryParameters *)self resultsLimit];
  filterOptions = [(SHMediaLibraryQueryParameters *)self filterOptions];
  ascending = [(SHMediaLibraryQueryParameters *)self ascending];
  shouldUpdate = [(SHMediaLibraryQueryParameters *)self shouldUpdate];
  providerIdentifier = [(SHMediaLibraryQueryParameters *)self providerIdentifier];
  v11 = [providerIdentifier copyWithZone:zone];
  v12 = [(SHMediaLibraryQueryParameters *)v5 initWithResultsLimit:resultsLimit filterOptions:filterOptions ascending:ascending shouldUpdate:shouldUpdate providerIdentifier:v11 excludeCloudMetadata:[(SHMediaLibraryQueryParameters *)self excludeCloudMetadata]];

  return v12;
}

@end