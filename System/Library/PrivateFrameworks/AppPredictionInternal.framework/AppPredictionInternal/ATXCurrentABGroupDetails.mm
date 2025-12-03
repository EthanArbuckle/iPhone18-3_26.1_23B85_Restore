@interface ATXCurrentABGroupDetails
- (ATXCurrentABGroupDetails)init;
- (ATXCurrentABGroupDetails)initWithAssetMapping:(id)mapping;
- (id)abGroupIdentifierForFilename:(id)filename;
- (void)loadAssetFromAssetMapping:(id)mapping;
@end

@implementation ATXCurrentABGroupDetails

- (ATXCurrentABGroupDetails)init
{
  mEMORY[0x277CEB3A0] = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
  v4 = [(ATXCurrentABGroupDetails *)self initWithAssetMapping:mEMORY[0x277CEB3A0]];

  return v4;
}

- (ATXCurrentABGroupDetails)initWithAssetMapping:(id)mapping
{
  mappingCopy = mapping;
  v11.receiver = self;
  v11.super_class = ATXCurrentABGroupDetails;
  v5 = [(ATXCurrentABGroupDetails *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_new();
    subTypeToABGroup = v5->_subTypeToABGroup;
    v5->_subTypeToABGroup = v6;

    v8 = objc_opt_new();
    subTypeToFinalSubscore = v5->_subTypeToFinalSubscore;
    v5->_subTypeToFinalSubscore = v8;

    [(ATXCurrentABGroupDetails *)v5 loadAssetFromAssetMapping:mappingCopy];
  }

  return v5;
}

- (void)loadAssetFromAssetMapping:(id)mapping
{
  mappingCopy = mapping;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CEBCF0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ATXCurrentABGroupDetails_loadAssetFromAssetMapping___block_invoke;
  v9[3] = &unk_2785A1068;
  v10 = mappingCopy;
  selfCopy = self;
  v12 = v5;
  v7 = v5;
  v8 = mappingCopy;
  [v6 iterConsumerSubTypesWithBlock:v9];
}

void __54__ATXCurrentABGroupDetails_loadAssetFromAssetMapping___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) getAssetFileAndSubscoreForConsumerSubType:a2];
  v4 = *(a1 + 40);
  v5 = [v8 second];
  [v4 setFinalSubscore:v5 subType:a2];

  v6 = *(a1 + 40);
  v7 = [v8 first];
  [v6 setABGroupFromFilename:v7 subType:a2 filenameToABGroup:*(a1 + 48)];
}

- (id)abGroupIdentifierForFilename:(id)filename
{
  filenameCopy = filename;
  v4 = objc_alloc(MEMORY[0x277CEB3C8]);
  abGroupOverride = [MEMORY[0x277CEB2B8] abGroupOverride];
  v6 = [v4 initWithAssetsForResource:filenameCopy ofType:@"plplist" specifiedABGroup:abGroupOverride];

  if (!v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ATXCurrentABGroupDetails *)filenameCopy abGroupIdentifierForFilename:v7];
    }
  }

  groupIdentifier = [v6 groupIdentifier];
  v9 = groupIdentifier;
  if (groupIdentifier)
  {
    abGroupNilString = groupIdentifier;
  }

  else
  {
    abGroupNilString = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v11 = abGroupNilString;

  return v11;
}

- (void)setFinalSubscore:(uint64_t)a1 subType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "'subscore' value not specified for consumerSubType of '%@'", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)abGroupIdentifierForFilename:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Couldn't find file %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end