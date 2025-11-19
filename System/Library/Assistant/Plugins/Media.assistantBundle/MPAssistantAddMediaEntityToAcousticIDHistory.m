@interface MPAssistantAddMediaEntityToAcousticIDHistory
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantAddMediaEntityToAcousticIDHistory

- (void)performWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantAddMediaEntityToAcousticIDHistory *)self aceId];
    v6 = sub_233505670(@"Add Media Entity To Acoustic ID History", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_requestAceHash;
    v10 = [(SAMPAddMediaEntityToAcousticIdHistory *)self adamId];
    v11 = [(SAMPAddMediaEntityToAcousticIdHistory *)self affiliateId];
    *buf = 138543874;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Add Media Entity To Acoustic ID History (invoke) <%{public}@>: adam ID %{public}@, affiliate ID %{public}@", buf, 0x20u);
  }

  v12 = [(SAMPAddMediaEntityToAcousticIdHistory *)self adamId];
  v13 = [v12 longLongValue];

  v14 = [(SAMPAddMediaEntityToAcousticIdHistory *)self affiliateId];
  v15 = objc_alloc(MEMORY[0x277D7FC30]);
  v16 = [MEMORY[0x277D7FCA0] activeAccount];
  v17 = [v15 initWithIdentity:v16];

  v18 = [objc_alloc(MEMORY[0x277D7FBF0]) initWithRequestContext:v17 storeItemID:v13 affiliateIdentifier:v14];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2334DD274;
  v21[3] = &unk_2789DAC48;
  v21[4] = self;
  v22 = v4;
  v19 = v4;
  [v18 performRequestWithCompletionHandler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

@end