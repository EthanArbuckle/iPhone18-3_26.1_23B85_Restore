@interface NSObject(MusicKit_SoftLinking_MPArtworkCatalog)
- (double)musicKit_fittingSize;
- (id)_musicKit_self_artworkCatalog;
- (id)musicKit_artworkCatalogWithFittingSize:()MusicKit_SoftLinking_MPArtworkCatalog;
- (id)musicKit_artworkDataSourceIdentifier;
- (id)musicKit_artworkDataSourceShortDescription;
- (id)musicKit_artworkDictionary;
- (id)musicKit_artworkTokenParameters;
- (id)musicKit_existingColorAnalysis;
- (id)musicKit_visualIdenticalityIdentifier;
- (void)musicKit_requestColorAnalysisWithCompletionHandler:()MusicKit_SoftLinking_MPArtworkCatalog;
- (void)musicKit_requestImageDataWithCompletion:()MusicKit_SoftLinking_MPArtworkCatalog;
- (void)musicKit_setFittingSize:()MusicKit_SoftLinking_MPArtworkCatalog;
@end

@implementation NSObject(MusicKit_SoftLinking_MPArtworkCatalog)

- (id)_musicKit_self_artworkCatalog
{
  getMPArtworkCatalogClass_0();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_artworkDataSourceShortDescription
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  dataSource = [_musicKit_self_artworkCatalog dataSource];

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    artworkDataSourceShortDescription = [objc_opt_class() artworkDataSourceShortDescription];
  }

  else
  {
    artworkDataSourceShortDescription = 0;
  }

  return artworkDataSourceShortDescription;
}

- (id)musicKit_artworkDataSourceIdentifier
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  dataSource = [_musicKit_self_artworkCatalog dataSource];

  if (objc_opt_respondsToSelector())
  {
    artworkDataSourceIdentifier = [dataSource artworkDataSourceIdentifier];
  }

  else
  {
    artworkDataSourceIdentifier = 0;
  }

  return artworkDataSourceIdentifier;
}

- (id)musicKit_artworkTokenParameters
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  token = [_musicKit_self_artworkCatalog token];

  if (objc_opt_respondsToSelector())
  {
    artworkTokenParameters = [token artworkTokenParameters];
  }

  else
  {
    artworkTokenParameters = 0;
  }

  return artworkTokenParameters;
}

- (id)musicKit_artworkDictionary
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  token = [_musicKit_self_artworkCatalog token];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getMPStoreArtworkRequestTokenClass_softClass_0;
  v13 = getMPStoreArtworkRequestTokenClass_softClass_0;
  if (!getMPStoreArtworkRequestTokenClass_softClass_0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getMPStoreArtworkRequestTokenClass_block_invoke_0;
    v9[3] = &unk_278229610;
    v9[4] = &v10;
    __getMPStoreArtworkRequestTokenClass_block_invoke_0(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageArtworkInfo = [token imageArtworkInfo];
    responseDictionary = [imageArtworkInfo responseDictionary];
    if (!responseDictionary)
    {
      responseArray = [imageArtworkInfo responseArray];
      responseDictionary = [responseArray firstObject];
    }
  }

  else
  {
    responseDictionary = 0;
  }

  return responseDictionary;
}

- (id)musicKit_visualIdenticalityIdentifier
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  visualIdenticalityIdentifier = [_musicKit_self_artworkCatalog visualIdenticalityIdentifier];

  if (objc_opt_respondsToSelector())
  {
    stringRepresentation = [visualIdenticalityIdentifier stringRepresentation];
  }

  else
  {
    stringRepresentation = 0;
  }

  return stringRepresentation;
}

- (id)musicKit_existingColorAnalysis
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  v2 = [_musicKit_self_artworkCatalog existingColorAnalysisWithAlgorithm:1];

  return v2;
}

- (id)musicKit_artworkCatalogWithFittingSize:()MusicKit_SoftLinking_MPArtworkCatalog
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  dataSource = [_musicKit_self_artworkCatalog dataSource];
  if (dataSource)
  {
    v8 = objc_alloc(getMPArtworkCatalogClass_0());
    token = [_musicKit_self_artworkCatalog token];
    selfCopy = [v8 initWithToken:token dataSource:dataSource];
  }

  else
  {
    v11 = MusicKit_Logging_Artwork();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(NSObject(MusicKit_SoftLinking_MPArtworkCatalog) *)_musicKit_self_artworkCatalog musicKit_artworkCatalogWithFittingSize:v11];
    }

    selfCopy = self;
  }

  [selfCopy musicKit_setFittingSize:{a2, a3}];

  return selfCopy;
}

- (double)musicKit_fittingSize
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  [_musicKit_self_artworkCatalog fittingSize];
  v3 = v2;

  return v3;
}

- (void)musicKit_setFittingSize:()MusicKit_SoftLinking_MPArtworkCatalog
{
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  [_musicKit_self_artworkCatalog setFittingSize:{a2, a3}];
}

- (void)musicKit_requestImageDataWithCompletion:()MusicKit_SoftLinking_MPArtworkCatalog
{
  v4 = a3;
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__NSObject_MusicKit_SoftLinking_MPArtworkCatalog__musicKit_requestImageDataWithCompletion___block_invoke;
  v7[3] = &unk_27822A090;
  v8 = v4;
  v6 = v4;
  [_musicKit_self_artworkCatalog requestImageWithCompletion:v7];
}

- (void)musicKit_requestColorAnalysisWithCompletionHandler:()MusicKit_SoftLinking_MPArtworkCatalog
{
  v4 = a3;
  _musicKit_self_artworkCatalog = [self _musicKit_self_artworkCatalog];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__NSObject_MusicKit_SoftLinking_MPArtworkCatalog__musicKit_requestColorAnalysisWithCompletionHandler___block_invoke;
  v7[3] = &unk_27822A0B8;
  v8 = v4;
  v6 = v4;
  [_musicKit_self_artworkCatalog requestColorAnalysisWithAlgorithm:1 completion:v7];
}

- (void)musicKit_artworkCatalogWithFittingSize:()MusicKit_SoftLinking_MPArtworkCatalog .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_2171EE000, a2, OS_LOG_TYPE_FAULT, "Data source for artwork catalog %{public}@ was deallocated prematurely. Unable to make a proper fresh instance.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end