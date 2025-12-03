@interface WFAnnounceWrapper
+ (NSString)afPreferencesLanguageCode;
+ (NSString)currentSiriVoiceVSAssetName;
+ (NSURL)sharedAnnouncementsDirectoryURL;
- (WFAnnounceWrapper)init;
- (void)invalidate;
- (void)prewarmWithHandler:(id)handler;
- (void)requestAnnouncementWithAudioFileURL:(id)l homeAreaDescriptor:(id)descriptor completionHandler:(id)handler;
@end

@implementation WFAnnounceWrapper

- (void)requestAnnouncementWithAudioFileURL:(id)l homeAreaDescriptor:(id)descriptor completionHandler:(id)handler
{
  v42[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v11 = getANAnnouncementContentClass_softClass;
  v40 = getANAnnouncementContentClass_softClass;
  if (!getANAnnouncementContentClass_softClass)
  {
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __getANAnnouncementContentClass_block_invoke;
    v35 = &unk_278C222B8;
    v36 = &v37;
    __getANAnnouncementContentClass_block_invoke(&v32);
    v11 = v38[3];
  }

  v12 = v11;
  _Block_object_dispose(&v37, 8);
  v13 = [v11 contentWithAudioFileURL:lCopy];
  areaType = [descriptorCopy areaType];
  switch(areaType)
  {
    case 2:
      ANAnnouncementDestinationClass = getANAnnouncementDestinationClass();
      homeIdentifier = [descriptorCopy homeIdentifier];
      uniqueIdentifier = [descriptorCopy uniqueIdentifier];
      v41 = uniqueIdentifier;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v17 = [ANAnnouncementDestinationClass destinationWithHomeIdentifier:homeIdentifier zoneIdentifiers:MEMORY[0x277CBEBF8] roomIdentifiers:v23];

      goto LABEL_9;
    case 1:
      v18 = getANAnnouncementDestinationClass();
      homeIdentifier = [descriptorCopy homeIdentifier];
      uniqueIdentifier2 = [descriptorCopy uniqueIdentifier];
      v42[0] = uniqueIdentifier2;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
      v17 = [v18 destinationWithHomeIdentifier:homeIdentifier zoneIdentifiers:v20 roomIdentifiers:MEMORY[0x277CBEBF8]];

      goto LABEL_9;
    case 0:
      v15 = getANAnnouncementDestinationClass();
      homeIdentifier = [descriptorCopy homeIdentifier];
      v17 = [v15 destinationWithHomeIdentifier:homeIdentifier];
LABEL_9:

      goto LABEL_11;
  }

  v17 = 0;
LABEL_11:
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v24 = getANAnnouncementRequestClass_softClass;
  v40 = getANAnnouncementRequestClass_softClass;
  if (!getANAnnouncementRequestClass_softClass)
  {
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __getANAnnouncementRequestClass_block_invoke;
    v35 = &unk_278C222B8;
    v36 = &v37;
    __getANAnnouncementRequestClass_block_invoke(&v32);
    v24 = v38[3];
  }

  v25 = v24;
  _Block_object_dispose(&v37, 8);
  v26 = [v24 requestWithContent:v13 destination:v17];
  announce = [(WFAnnounceWrapper *)self announce];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __94__WFAnnounceWrapper_requestAnnouncementWithAudioFileURL_homeAreaDescriptor_completionHandler___block_invoke;
  v30[3] = &unk_278C19ED0;
  v31 = handlerCopy;
  v28 = handlerCopy;
  [announce sendRequest:v26 completion:v30];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  announce = [(WFAnnounceWrapper *)self announce];
  [announce invalidate];
}

- (void)prewarmWithHandler:(id)handler
{
  handlerCopy = handler;
  announce = [(WFAnnounceWrapper *)self announce];
  [announce prewarmWithHandler:handlerCopy];
}

- (WFAnnounceWrapper)init
{
  v9.receiver = self;
  v9.super_class = WFAnnounceWrapper;
  v2 = [(WFAnnounceWrapper *)&v9 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getANAnnounceClass_softClass;
    v14 = getANAnnounceClass_softClass;
    if (!getANAnnounceClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getANAnnounceClass_block_invoke;
      v10[3] = &unk_278C222B8;
      v10[4] = &v11;
      __getANAnnounceClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = objc_alloc_init(v3);
    announce = v2->_announce;
    v2->_announce = v5;

    v7 = v2;
  }

  return v2;
}

+ (NSString)currentSiriVoiceVSAssetName
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  outputVoice = [sharedPreferences outputVoice];
  name = [outputVoice name];

  return name;
}

+ (NSString)afPreferencesLanguageCode
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  outputVoice = [sharedPreferences outputVoice];
  languageCode = [outputVoice languageCode];

  return languageCode;
}

+ (NSURL)sharedAnnouncementsDirectoryURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getHFUtilitiesClass_softClass;
  v10 = getHFUtilitiesClass_softClass;
  if (!getHFUtilitiesClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getHFUtilitiesClass_block_invoke;
    v6[3] = &unk_278C222B8;
    v6[4] = &v7;
    __getHFUtilitiesClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  sharedAnnouncementsDirectoryURL = [v2 sharedAnnouncementsDirectoryURL];

  return sharedAnnouncementsDirectoryURL;
}

@end