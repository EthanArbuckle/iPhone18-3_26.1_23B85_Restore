@interface MPAssistantGeniusSummon
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantGeniusSummon

- (void)performWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D47540];
  v5 = a3;
  v6 = [[v4 alloc] initWithReason:@"Unsupported Feature"];
  if (![(NSString *)self->_requestAceHash length])
  {
    v7 = [(MPAssistantGeniusSummon *)self aceId];
    v8 = sub_233505670(@"Genius Summon", v7);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v8;
  }

  v10 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = self->_requestAceHash;
    v12 = [v6 dictionary];
    v15 = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_ERROR, "Genius Summon (completion) <%{public}@>: notifying assistant %{public}@", &v15, 0x16u);
  }

  v13 = [v6 dictionary];
  v5[2](v5, v13);

  v14 = *MEMORY[0x277D85DE8];
}

@end