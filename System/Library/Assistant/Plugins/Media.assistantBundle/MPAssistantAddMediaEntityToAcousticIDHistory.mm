@interface MPAssistantAddMediaEntityToAcousticIDHistory
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddMediaEntityToAcousticIDHistory

- (void)performWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (![(NSString *)self->_requestAceHash length])
  {
    aceId = [(MPAssistantAddMediaEntityToAcousticIDHistory *)self aceId];
    v6 = sub_233505670(@"Add Media Entity To Acoustic ID History", aceId);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    adamId = [(SAMPAddMediaEntityToAcousticIdHistory *)self adamId];
    affiliateId = [(SAMPAddMediaEntityToAcousticIdHistory *)self affiliateId];
    *buf = 138543874;
    v24 = v9;
    v25 = 2114;
    v26 = adamId;
    v27 = 2114;
    v28 = affiliateId;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Acoustic ID History (invoke) <%{public}@>: adam ID %{public}@, affiliate ID %{public}@", buf, 0x20u);
  }

  adamId2 = [(SAMPAddMediaEntityToAcousticIdHistory *)self adamId];
  longLongValue = [adamId2 longLongValue];

  affiliateId2 = [(SAMPAddMediaEntityToAcousticIdHistory *)self affiliateId];
  v15 = objc_alloc(MEMORY[0x277D7FC30]);
  activeAccount = [MEMORY[0x277D7FCA0] activeAccount];
  v17 = [v15 initWithIdentity:activeAccount];

  v18 = [objc_alloc(MEMORY[0x277D7FBF0]) initWithRequestContext:v17 storeItemID:longLongValue affiliateIdentifier:affiliateId2];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2334DD274;
  v21[3] = &unk_2789DAC48;
  v21[4] = self;
  v22 = completionCopy;
  v19 = completionCopy;
  [v18 performRequestWithCompletionHandler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

@end