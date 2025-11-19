@interface EDAMNoteStoreClient
- (EDAMNoteStoreClient)initWithInProtocol:(id)a3 outProtocol:(id)a4;
- (id)acquireNoteLock:(id)a3 noteGuid:(id)a4;
- (id)authenticateToSharedNote:(id)a3 noteKey:(id)a4 authenticationToken:(id)a5;
- (id)authenticateToSharedNotebook:(id)a3 authenticationToken:(id)a4;
- (id)copyNote:(id)a3 noteGuid:(id)a4 toNotebookGuid:(id)a5;
- (id)createLinkedNotebook:(id)a3 linkedNotebook:(id)a4;
- (id)createNote:(id)a3 note:(id)a4;
- (id)createNotebook:(id)a3 notebook:(id)a4;
- (id)createOrUpdateNotebookShares:(id)a3 shareTemplate:(id)a4;
- (id)createOrUpdateSharedNotes:(id)a3 shareTemplate:(id)a4;
- (id)createSearch:(id)a3 search:(id)a4;
- (id)createSharedNotebook:(id)a3 sharedNotebook:(id)a4;
- (id)createTag:(id)a3 tag:(id)a4;
- (id)findContacts:(id)a3 query:(id)a4;
- (id)findInBusiness:(id)a3 query:(id)a4;
- (id)findRelated:(id)a3 query:(id)a4 resultSpec:(id)a5;
- (id)findSearchSuggestions:(id)a3 query:(id)a4 resultSpec:(id)a5;
- (id)getAds:(id)a3 adParameters:(id)a4;
- (id)getDefaultNotebook:(id)a3;
- (id)getLinkedAccountSyncState:(id)a3 linkedAccount:(id)a4;
- (id)getLinkedNotebookSyncState:(id)a3 linkedNotebook:(id)a4;
- (id)getNoteApplicationData:(id)a3 guid:(id)a4;
- (id)getNoteApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5;
- (id)getNoteContent:(id)a3 guid:(id)a4;
- (id)getNoteLockStatus:(id)a3 noteGuid:(id)a4;
- (id)getNoteShares:(id)a3 noteGuid:(id)a4;
- (id)getNoteTagNames:(id)a3 guid:(id)a4;
- (id)getNoteWithResultSpec:(id)a3 guid:(id)a4 resultSpec:(id)a5;
- (id)getNotebook:(id)a3 guid:(id)a4;
- (id)getNotebookShares:(id)a3 notebookGuid:(id)a4;
- (id)getNotebookSharesEmailAddresses:(id)a3 notebookGuid:(id)a4 identities:(id)a5 skipUnknownUserIdentities:(BOOL)a6;
- (id)getPreferences:(id)a3 preferenceNames:(id)a4;
- (id)getRandomAd:(id)a3 adParameters:(id)a4;
- (id)getResourceAlternateData:(id)a3 guid:(id)a4;
- (id)getResourceApplicationData:(id)a3 guid:(id)a4;
- (id)getResourceApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5;
- (id)getResourceAttributes:(id)a3 guid:(id)a4;
- (id)getResourceData:(id)a3 guid:(id)a4;
- (id)getResourceRecognition:(id)a3 guid:(id)a4;
- (id)getResourceSearchText:(id)a3 guid:(id)a4;
- (id)getSearch:(id)a3 guid:(id)a4;
- (id)getSharedNotebookByAuth:(id)a3;
- (id)getSyncState:(id)a3;
- (id)getSyncStateWithMetrics:(id)a3 clientMetrics:(id)a4;
- (id)getTag:(id)a3 guid:(id)a4;
- (id)getViewersForNotes:(id)a3 noteGuids:(id)a4;
- (id)joinPublishedBusinessNotebook:(id)a3 notebookGuid:(id)a4;
- (id)listAccessibleBusinessNotebooks:(id)a3;
- (id)listLinkedNotebooks:(id)a3;
- (id)listNoteVersions:(id)a3 noteGuid:(id)a4;
- (id)listNotebooks:(id)a3;
- (id)listPublishedBusinessNotebooks:(id)a3;
- (id)listSearches:(id)a3;
- (id)listSharedNotebooks:(id)a3;
- (id)listTags:(id)a3;
- (id)listTagsByNotebook:(id)a3 notebookGuid:(id)a4;
- (id)manageNoteShares:(id)a3 parameters:(id)a4;
- (id)manageNotebookShares:(id)a3 parameters:(id)a4;
- (id)releaseNoteLock:(id)a3 noteGuid:(id)a4;
- (id)sendLogRequest:(id)a3 logRequest:(id)a4;
- (id)setNotebookRecipientSettings:(id)a3 notebookGuid:(id)a4 recipientSettings:(id)a5;
- (id)shareNote:(id)a3 guid:(id)a4;
- (id)shareNotebook:(id)a3 sharedNotebook:(id)a4 message:(id)a5;
- (id)updateNote:(id)a3 note:(id)a4;
- (id)updateNoteIfUsnMatches:(id)a3 note:(id)a4;
- (int)deleteNote:(id)a3 guid:(id)a4;
- (int)expungeInactiveNotes:(id)a3;
- (int)expungeLinkedNotebook:(id)a3 guid:(id)a4;
- (int)expungeNote:(id)a3 guid:(id)a4;
- (int)expungeNotebook:(id)a3 guid:(id)a4;
- (int)expungeNotes:(id)a3 noteGuids:(id)a4;
- (int)expungeSearch:(id)a3 guid:(id)a4;
- (int)expungeSharedNotebooks:(id)a3 sharedNotebookIds:(id)a4;
- (int)expungeTag:(id)a3 guid:(id)a4;
- (int)findNoteOffset:(id)a3 filter:(id)a4 guid:(id)a5;
- (int)renameNotebook:(id)a3 notebookGuid:(id)a4 name:(id)a5;
- (int)sendMessageToSharedNotebookMembers:(id)a3 notebookGuid:(id)a4 messageText:(id)a5 recipients:(id)a6;
- (int)setNoteApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5 value:(id)a6;
- (int)setResourceApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5 value:(id)a6;
- (int)setSharedNotebookRecipientSettings:(id)a3 sharedNotebookId:(int64_t)a4 recipientSettings:(id)a5;
- (int)shareNoteWithBusiness:(id)a3 noteGuid:(id)a4;
- (int)stopSharingNoteWithBusiness:(id)a3 noteGuid:(id)a4;
- (int)unsetNoteApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5;
- (int)unsetResourceApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5;
- (int)updateLinkedNotebook:(id)a3 linkedNotebook:(id)a4;
- (int)updateNotebook:(id)a3 notebook:(id)a4;
- (int)updatePreferences:(id)a3 preferencesToUpdate:(id)a4;
- (int)updateResource:(id)a3 resource:(id)a4;
- (int)updateSearch:(id)a3 search:(id)a4;
- (int)updateSharedNotebook:(id)a3 sharedNotebook:(id)a4;
- (int)updateTag:(id)a3 tag:(id)a4;
- (void)emailNote:(id)a3 parameters:(id)a4;
- (void)stopSharingNote:(id)a3 guid:(id)a4;
- (void)stopSharingNoteWithRecipients:(id)a3 guid:(id)a4;
- (void)untagAll:(id)a3 guid:(id)a4;
@end

@implementation EDAMNoteStoreClient

- (id)getLinkedAccountSyncState:(id)a3 linkedAccount:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"linkedAccount" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getLinkedAccountSyncState" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getLinkedAccountSyncState" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)sendLogRequest:(id)a3 logRequest:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"logRequest" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"sendLogRequest" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"sendLogRequest" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int)renameNotebook:(id)a3 notebookGuid:(id)a4 name:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"name"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"renameNotebook" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"renameNotebook" fromProtocol:inProtocol withResponseTypes:v23];
  LODWORD(v17) = [v24 intValue];

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)getNotebookSharesEmailAddresses:(id)a3 notebookGuid:(id)a4 identities:(id)a5 skipUnknownUserIdentities:(BOOL)a6
{
  v31 = a6;
  v36[4] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v33 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v11 = [FATArgument argumentWithField:v33 value:v10];

  v36[0] = v11;
  v12 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v13 = [FATArgument argumentWithField:v12 value:v9];

  v36[1] = v13;
  v14 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v15 = [FATField fieldWithIndex:3 type:15 optional:0 name:@"identities" valueField:v14];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v36[2] = v16;
  v17 = [FATField fieldWithIndex:4 type:2 optional:0 name:@"skipUnknownUserIdentities"];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:v31];
  v19 = [FATArgument argumentWithField:v17 value:v18];
  v36[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [ENTProtocolUtil sendMessage:@"getNotebookSharesEmailAddresses" toProtocol:outProtocol withArguments:v20];

  inProtocol = self->_inProtocol;
  v22 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v23 = [FATField fieldWithIndex:0 type:14 optional:0 name:@"success" valueField:v22];
  v35[0] = v23;
  v24 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v35[1] = v24;
  v25 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v35[2] = v25;
  v26 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v35[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v28 = [ENTProtocolUtil readMessage:@"getNotebookSharesEmailAddresses" fromProtocol:inProtocol withResponseTypes:v27];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)joinPublishedBusinessNotebook:(id)a3 notebookGuid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"joinPublishedBusinessNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"joinPublishedBusinessNotebook" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)manageNoteShares:(id)a3 parameters:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"parameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"manageNoteShares" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"manageNoteShares" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getNoteShares:(id)a3 noteGuid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getNoteShares" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getNoteShares" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getNotebookShares:(id)a3 notebookGuid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getNotebookShares" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getNotebookShares" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)manageNotebookShares:(id)a3 parameters:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"parameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"manageNotebookShares" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"manageNotebookShares" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)updateNoteIfUsnMatches:(id)a3 note:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"note" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"updateNoteIfUsnMatches" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"updateNoteIfUsnMatches" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getViewersForNotes:(id)a3 noteGuids:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v26[0] = v10;
  v11 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v12 = [FATField fieldWithIndex:2 type:15 optional:0 name:@"noteGuids" valueField:v11];
  v13 = [FATArgument argumentWithField:v12 value:v7];

  v26[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [ENTProtocolUtil sendMessage:@"getViewersForNotes" toProtocol:outProtocol withArguments:v14];

  inProtocol = self->_inProtocol;
  v16 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v17 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v18 = [FATField fieldWithIndex:0 type:13 optional:0 name:@"success" keyField:v16 valueField:v17];
  v19 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v18];
  v25[1] = v19;
  v20 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v25[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v22 = [ENTProtocolUtil readMessage:@"getViewersForNotes" fromProtocol:inProtocol withResponseTypes:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)releaseNoteLock:(id)a3 noteGuid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"releaseNoteLock" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"releaseNoteLock" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)acquireNoteLock:(id)a3 noteGuid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"acquireNoteLock" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"acquireNoteLock" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getNoteLockStatus:(id)a3 noteGuid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getNoteLockStatus" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getNoteLockStatus" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int)stopSharingNoteWithBusiness:(id)a3 noteGuid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"stopSharingNoteWithBusiness" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"stopSharingNoteWithBusiness" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v8) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int)shareNoteWithBusiness:(id)a3 noteGuid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"shareNoteWithBusiness" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"shareNoteWithBusiness" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v8) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)findInBusiness:(id)a3 query:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v23[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"query" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [ENTProtocolUtil sendMessage:@"findInBusiness" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v15];
  v22[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v22[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = [ENTProtocolUtil readMessage:@"findInBusiness" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)findContacts:(id)a3 query:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"query" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"findContacts" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v15];
  v17 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v16];
  v23[1] = v17;
  v18 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v20 = [ENTProtocolUtil readMessage:@"findContacts" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)findSearchSuggestions:(id)a3 query:(id)a4 resultSpec:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"query" structClass:objc_opt_class()];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"resultSpec" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"findSearchSuggestions" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"findSearchSuggestions" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)findRelated:(id)a3 query:(id)a4 resultSpec:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"query" structClass:objc_opt_class()];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"resultSpec" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"findRelated" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"findRelated" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)createOrUpdateSharedNotes:(id)a3 shareTemplate:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v26[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"shareTemplate" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v26[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [ENTProtocolUtil sendMessage:@"createOrUpdateSharedNotes" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v15];
  v17 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v16];
  v25[1] = v17;
  v18 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v25[2] = v18;
  v19 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v25[3] = v19;
  v20 = [FATField fieldWithIndex:4 type:12 optional:0 name:@"invalidContactsException" structClass:objc_opt_class()];
  v25[4] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  v22 = [ENTProtocolUtil readMessage:@"createOrUpdateSharedNotes" fromProtocol:inProtocol withResponseTypes:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)authenticateToSharedNote:(id)a3 noteKey:(id)a4 authenticationToken:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteKey"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"authenticationToken"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"authenticateToSharedNote" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"authenticateToSharedNote" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)stopSharingNoteWithRecipients:(id)a3 guid:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v22[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v22[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [ENTProtocolUtil sendMessage:@"stopSharingNoteWithRecipients" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class(), v15];
  v21[1] = v16;
  v17 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v21[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v19 = [ENTProtocolUtil readMessage:@"stopSharingNoteWithRecipients" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingNote:(id)a3 guid:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v22[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v22[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [ENTProtocolUtil sendMessage:@"stopSharingNote" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class(), v15];
  v21[1] = v16;
  v17 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v21[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v19 = [ENTProtocolUtil readMessage:@"stopSharingNote" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (id)shareNote:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"shareNote" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:11 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"shareNote" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)emailNote:(id)a3 parameters:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v22[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"parameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v22[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [ENTProtocolUtil sendMessage:@"emailNote" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class(), v15];
  v21[1] = v16;
  v17 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v21[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v19 = [ENTProtocolUtil readMessage:@"emailNote" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (id)getSharedNotebookByAuth:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [ENTProtocolUtil sendMessage:@"getSharedNotebookByAuth" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v11 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v10];
  v18[1] = v11;
  v12 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v18[2] = v12;
  v13 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v18[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v15 = [ENTProtocolUtil readMessage:@"getSharedNotebookByAuth" fromProtocol:inProtocol withResponseTypes:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)authenticateToSharedNotebook:(id)a3 authenticationToken:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"shareKeyOrGlobalId"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"authenticateToSharedNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"authenticateToSharedNotebook" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int)expungeLinkedNotebook:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"expungeLinkedNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"expungeLinkedNotebook" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v8) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)listLinkedNotebooks:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v20[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [ENTProtocolUtil sendMessage:@"listLinkedNotebooks" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v11 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v10];
  v12 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v11];
  v19[1] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v19[2] = v13;
  v14 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  v16 = [ENTProtocolUtil readMessage:@"listLinkedNotebooks" fromProtocol:inProtocol withResponseTypes:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (int)updateLinkedNotebook:(id)a3 linkedNotebook:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"linkedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"updateLinkedNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"updateLinkedNotebook" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v7) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)createLinkedNotebook:(id)a3 linkedNotebook:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"linkedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"createLinkedNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"createLinkedNotebook" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int)expungeSharedNotebooks:(id)a3 sharedNotebookIds:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v6 = a4;
  v7 = a3;
  v8 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v9 = [FATArgument argumentWithField:v8 value:v7];

  v25[0] = v9;
  v10 = [FATField fieldWithIndex:0 type:10 optional:1 name:0];
  v11 = [FATField fieldWithIndex:2 type:15 optional:0 name:@"sharedNotebookIds" valueField:v10];
  v12 = [FATArgument argumentWithField:v11 value:v6];

  v25[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [ENTProtocolUtil sendMessage:@"expungeSharedNotebooks" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v24[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v24[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v24[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v24[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v20 = [ENTProtocolUtil readMessage:@"expungeSharedNotebooks" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v6) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)listSharedNotebooks:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v20[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [ENTProtocolUtil sendMessage:@"listSharedNotebooks" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v11 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v10];
  v12 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v11];
  v19[1] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v19[2] = v13;
  v14 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  v16 = [ENTProtocolUtil readMessage:@"listSharedNotebooks" fromProtocol:inProtocol withResponseTypes:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (int)sendMessageToSharedNotebookMembers:(id)a3 notebookGuid:(id)a4 messageText:(id)a5 recipients:(id)a6
{
  v35[4] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v31 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v13 = [FATArgument argumentWithField:v31 value:v12];

  v35[0] = v13;
  v14 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v15 = [FATArgument argumentWithField:v14 value:v11];

  v35[1] = v15;
  v16 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"messageText"];
  v17 = [FATArgument argumentWithField:v16 value:v10];

  v35[2] = v17;
  v18 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v19 = [FATField fieldWithIndex:4 type:15 optional:0 name:@"recipients" valueField:v18];
  v20 = [FATArgument argumentWithField:v19 value:v9];

  v35[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [ENTProtocolUtil sendMessage:@"sendMessageToSharedNotebookMembers" toProtocol:outProtocol withArguments:v21];

  inProtocol = self->_inProtocol;
  v23 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v34[0] = v23;
  v24 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v34[1] = v24;
  v25 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v34[2] = v25;
  v26 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v34[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v28 = [ENTProtocolUtil readMessage:@"sendMessageToSharedNotebookMembers" fromProtocol:inProtocol withResponseTypes:v27];
  LODWORD(inProtocol) = [v28 intValue];

  v29 = *MEMORY[0x277D85DE8];
  return inProtocol;
}

- (id)setNotebookRecipientSettings:(id)a3 notebookGuid:(id)a4 recipientSettings:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"recipientSettings" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"setNotebookRecipientSettings" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"setNotebookRecipientSettings" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (int)setSharedNotebookRecipientSettings:(id)a3 sharedNotebookId:(int64_t)a4 recipientSettings:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a3;
  v10 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v11 = [FATArgument argumentWithField:v10 value:v9];

  v29[0] = v11;
  v12 = [FATField fieldWithIndex:2 type:10 optional:0 name:@"sharedNotebookId"];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v14 = [FATArgument argumentWithField:v12 value:v13];
  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"recipientSettings" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"setSharedNotebookRecipientSettings" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"setSharedNotebookRecipientSettings" fromProtocol:inProtocol withResponseTypes:v23];
  LODWORD(v17) = [v24 intValue];

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int)updateSharedNotebook:(id)a3 sharedNotebook:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"sharedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"updateSharedNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"updateSharedNotebook" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v7) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)createOrUpdateNotebookShares:(id)a3 shareTemplate:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v25[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"shareTemplate" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v25[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [ENTProtocolUtil sendMessage:@"createOrUpdateNotebookShares" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v15];
  v24[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v24[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v24[3] = v18;
  v19 = [FATField fieldWithIndex:4 type:12 optional:0 name:@"invalidContactsException" structClass:objc_opt_class()];
  v24[4] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v21 = [ENTProtocolUtil readMessage:@"createOrUpdateNotebookShares" fromProtocol:inProtocol withResponseTypes:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)shareNotebook:(id)a3 sharedNotebook:(id)a4 message:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"sharedNotebook" structClass:objc_opt_class()];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"message"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"shareNotebook" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"shareNotebook" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)createSharedNotebook:(id)a3 sharedNotebook:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"sharedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"createSharedNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"createSharedNotebook" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getRandomAd:(id)a3 adParameters:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v23[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"adParameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [ENTProtocolUtil sendMessage:@"getRandomAd" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v15];
  v22[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v22[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = [ENTProtocolUtil readMessage:@"getRandomAd" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)getAds:(id)a3 adParameters:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"adParameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getAds" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v15];
  v17 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v16];
  v23[1] = v17;
  v18 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v20 = [ENTProtocolUtil readMessage:@"getAds" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getResourceAttributes:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getResourceAttributes" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getResourceAttributes" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getResourceAlternateData:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getResourceAlternateData" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:16 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getResourceAlternateData" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getResourceRecognition:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getResourceRecognition" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:16 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getResourceRecognition" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getResourceData:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getResourceData" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:16 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getResourceData" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int)updateResource:(id)a3 resource:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"resource" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"updateResource" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"updateResource" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v7) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)unsetResourceApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"unsetResourceApplicationDataEntry" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"unsetResourceApplicationDataEntry" fromProtocol:inProtocol withResponseTypes:v23];
  LODWORD(v17) = [v24 intValue];

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int)setResourceApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5 value:(id)a6
{
  v34[4] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v14 = [FATArgument argumentWithField:v13 value:v12];

  v34[0] = v14;
  v15 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v16 = [FATArgument argumentWithField:v15 value:v11];

  v34[1] = v16;
  v17 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v18 = [FATArgument argumentWithField:v17 value:v10];

  v34[2] = v18;
  v19 = [FATField fieldWithIndex:4 type:11 optional:0 name:@"value"];
  v20 = [FATArgument argumentWithField:v19 value:v9];

  v34[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [ENTProtocolUtil sendMessage:@"setResourceApplicationDataEntry" toProtocol:outProtocol withArguments:v21];

  inProtocol = self->_inProtocol;
  v23 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v33[0] = v23;
  v24 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v33[1] = v24;
  v25 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v33[2] = v25;
  v26 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v33[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v28 = [ENTProtocolUtil readMessage:@"setResourceApplicationDataEntry" fromProtocol:inProtocol withResponseTypes:v27];
  LODWORD(inProtocol) = [v28 intValue];

  v29 = *MEMORY[0x277D85DE8];
  return inProtocol;
}

- (id)getResourceApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"getResourceApplicationDataEntry" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:11 optional:0 name:@"success"];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"getResourceApplicationDataEntry" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)getResourceApplicationData:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getResourceApplicationData" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getResourceApplicationData" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)listNoteVersions:(id)a3 noteGuid:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v25[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v25[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [ENTProtocolUtil sendMessage:@"listNoteVersions" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v15];
  v24[0] = v16;
  v17 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v24[1] = v17;
  v18 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v24[2] = v18;
  v19 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v24[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v21 = [ENTProtocolUtil readMessage:@"listNoteVersions" fromProtocol:inProtocol withResponseTypes:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)copyNote:(id)a3 noteGuid:(id)a4 toNotebookGuid:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"toNotebookGuid"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"copyNote" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"copyNote" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (int)expungeInactiveNotes:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [ENTProtocolUtil sendMessage:@"expungeInactiveNotes" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v18[0] = v10;
  v11 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v18[1] = v11;
  v12 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [ENTProtocolUtil readMessage:@"expungeInactiveNotes" fromProtocol:inProtocol withResponseTypes:v13];
  v15 = [v14 intValue];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (int)expungeNotes:(id)a3 noteGuids:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v6 = a4;
  v7 = a3;
  v8 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v9 = [FATArgument argumentWithField:v8 value:v7];

  v25[0] = v9;
  v10 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v11 = [FATField fieldWithIndex:2 type:15 optional:0 name:@"noteGuids" valueField:v10];
  v12 = [FATArgument argumentWithField:v11 value:v6];

  v25[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [ENTProtocolUtil sendMessage:@"expungeNotes" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v24[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v24[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v24[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v24[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v20 = [ENTProtocolUtil readMessage:@"expungeNotes" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v6) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)expungeNote:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"expungeNote" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"expungeNote" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v8) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int)deleteNote:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"deleteNote" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"deleteNote" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v8) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)updateNote:(id)a3 note:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"note" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"updateNote" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"updateNote" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)createNote:(id)a3 note:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"note" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"createNote" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"createNote" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getNoteTagNames:(id)a3 guid:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v25[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v25[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [ENTProtocolUtil sendMessage:@"getNoteTagNames" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v16 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v15];
  v24[0] = v16;
  v17 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v24[1] = v17;
  v18 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v24[2] = v18;
  v19 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v24[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v21 = [ENTProtocolUtil readMessage:@"getNoteTagNames" fromProtocol:inProtocol withResponseTypes:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)getResourceSearchText:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getResourceSearchText" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:11 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getResourceSearchText" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getNoteContent:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getNoteContent" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:11 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getNoteContent" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int)unsetNoteApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"unsetNoteApplicationDataEntry" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"unsetNoteApplicationDataEntry" fromProtocol:inProtocol withResponseTypes:v23];
  LODWORD(v17) = [v24 intValue];

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int)setNoteApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5 value:(id)a6
{
  v34[4] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v14 = [FATArgument argumentWithField:v13 value:v12];

  v34[0] = v14;
  v15 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v16 = [FATArgument argumentWithField:v15 value:v11];

  v34[1] = v16;
  v17 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v18 = [FATArgument argumentWithField:v17 value:v10];

  v34[2] = v18;
  v19 = [FATField fieldWithIndex:4 type:11 optional:0 name:@"value"];
  v20 = [FATArgument argumentWithField:v19 value:v9];

  v34[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [ENTProtocolUtil sendMessage:@"setNoteApplicationDataEntry" toProtocol:outProtocol withArguments:v21];

  inProtocol = self->_inProtocol;
  v23 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v33[0] = v23;
  v24 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v33[1] = v24;
  v25 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v33[2] = v25;
  v26 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v33[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v28 = [ENTProtocolUtil readMessage:@"setNoteApplicationDataEntry" fromProtocol:inProtocol withResponseTypes:v27];
  LODWORD(inProtocol) = [v28 intValue];

  v29 = *MEMORY[0x277D85DE8];
  return inProtocol;
}

- (id)getNoteApplicationDataEntry:(id)a3 guid:(id)a4 key:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"getNoteApplicationDataEntry" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:11 optional:0 name:@"success"];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"getNoteApplicationDataEntry" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)getNoteApplicationData:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getNoteApplicationData" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getNoteApplicationData" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int)updatePreferences:(id)a3 preferencesToUpdate:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v6 = a4;
  v7 = a3;
  v8 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v9 = [FATArgument argumentWithField:v8 value:v7];

  v26[0] = v9;
  v10 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v11 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v12 = [FATField fieldWithIndex:0 type:15 optional:1 name:0 valueField:v11];
  v13 = [FATField fieldWithIndex:2 type:13 optional:0 name:@"preferencesToUpdate" keyField:v10 valueField:v12];
  v14 = [FATArgument argumentWithField:v13 value:v6];

  v26[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [ENTProtocolUtil sendMessage:@"updatePreferences" toProtocol:outProtocol withArguments:v15];

  inProtocol = self->_inProtocol;
  v17 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v25[0] = v17;
  v18 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v25[1] = v18;
  v19 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v25[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v21 = [ENTProtocolUtil readMessage:@"updatePreferences" fromProtocol:inProtocol withResponseTypes:v20];
  LODWORD(inProtocol) = [v21 intValue];

  v22 = *MEMORY[0x277D85DE8];
  return inProtocol;
}

- (id)getPreferences:(id)a3 preferenceNames:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v12 = [FATField fieldWithIndex:2 type:15 optional:0 name:@"preferenceNames" valueField:v11];
  v13 = [FATArgument argumentWithField:v12 value:v7];

  v24[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getPreferences" toProtocol:outProtocol withArguments:v14];

  inProtocol = self->_inProtocol;
  v16 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v17 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v16];
  v23[1] = v17;
  v18 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v20 = [ENTProtocolUtil readMessage:@"getPreferences" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getNoteWithResultSpec:(id)a3 guid:(id)a4 resultSpec:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"resultSpec" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"getNoteWithResultSpec" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"getNoteWithResultSpec" fromProtocol:inProtocol withResponseTypes:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (int)findNoteOffset:(id)a3 filter:(id)a4 guid:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:v10];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"filter" structClass:objc_opt_class()];
  v14 = [FATArgument argumentWithField:v13 value:v9];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"guid"];
  v16 = [FATArgument argumentWithField:v15 value:v8];

  v29[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [ENTProtocolUtil sendMessage:@"findNoteOffset" toProtocol:outProtocol withArguments:v17];

  inProtocol = self->_inProtocol;
  v19 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v28[0] = v19;
  v20 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v28[1] = v20;
  v21 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v28[2] = v21;
  v22 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v28[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v24 = [ENTProtocolUtil readMessage:@"findNoteOffset" fromProtocol:inProtocol withResponseTypes:v23];
  LODWORD(v17) = [v24 intValue];

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int)expungeSearch:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"expungeSearch" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"expungeSearch" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v8) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int)updateSearch:(id)a3 search:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"search" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"updateSearch" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"updateSearch" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v7) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)createSearch:(id)a3 search:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v23[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"search" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [ENTProtocolUtil sendMessage:@"createSearch" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v15];
  v22[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v22[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = [ENTProtocolUtil readMessage:@"createSearch" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)getSearch:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getSearch" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getSearch" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)listSearches:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [ENTProtocolUtil sendMessage:@"listSearches" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v11 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v10];
  v18[0] = v11;
  v12 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v18[1] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v18[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v15 = [ENTProtocolUtil readMessage:@"listSearches" fromProtocol:inProtocol withResponseTypes:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (int)expungeTag:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"expungeTag" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"expungeTag" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v8) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)untagAll:(id)a3 guid:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v22[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v22[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [ENTProtocolUtil sendMessage:@"untagAll" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class(), v15];
  v21[1] = v16;
  v17 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v21[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v19 = [ENTProtocolUtil readMessage:@"untagAll" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];
}

- (int)updateTag:(id)a3 tag:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"tag" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"updateTag" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"updateTag" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v7) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)createTag:(id)a3 tag:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"tag" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"createTag" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"createTag" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getTag:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getTag" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getTag" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)listTagsByNotebook:(id)a3 notebookGuid:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v25[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v25[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [ENTProtocolUtil sendMessage:@"listTagsByNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v15];
  v24[0] = v16;
  v17 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v24[1] = v17;
  v18 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v24[2] = v18;
  v19 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v24[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v21 = [ENTProtocolUtil readMessage:@"listTagsByNotebook" fromProtocol:inProtocol withResponseTypes:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)listTags:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [ENTProtocolUtil sendMessage:@"listTags" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v11 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v10];
  v18[0] = v11;
  v12 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v18[1] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v18[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v15 = [ENTProtocolUtil readMessage:@"listTags" fromProtocol:inProtocol withResponseTypes:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (int)expungeNotebook:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"expungeNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"expungeNotebook" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v8) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int)updateNotebook:(id)a3 notebook:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"updateNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:8 optional:0 name:@"success"];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"updateNotebook" fromProtocol:inProtocol withResponseTypes:v19];
  LODWORD(v7) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)createNotebook:(id)a3 notebook:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v23[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"notebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [ENTProtocolUtil sendMessage:@"createNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v15];
  v22[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v22[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = [ENTProtocolUtil readMessage:@"createNotebook" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)getDefaultNotebook:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v18[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [ENTProtocolUtil sendMessage:@"getDefaultNotebook" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v17[0] = v10;
  v11 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v17[1] = v11;
  v12 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v14 = [ENTProtocolUtil readMessage:@"getDefaultNotebook" fromProtocol:inProtocol withResponseTypes:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)getNotebook:(id)a3 guid:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getNotebook" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getNotebook" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)listAccessibleBusinessNotebooks:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [ENTProtocolUtil sendMessage:@"listAccessibleBusinessNotebooks" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v11 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v10];
  v18[0] = v11;
  v12 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v18[1] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v18[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v15 = [ENTProtocolUtil readMessage:@"listAccessibleBusinessNotebooks" fromProtocol:inProtocol withResponseTypes:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)listPublishedBusinessNotebooks:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [ENTProtocolUtil sendMessage:@"listPublishedBusinessNotebooks" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v11 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v10];
  v18[0] = v11;
  v12 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v18[1] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v18[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v15 = [ENTProtocolUtil readMessage:@"listPublishedBusinessNotebooks" fromProtocol:inProtocol withResponseTypes:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)listNotebooks:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [ENTProtocolUtil sendMessage:@"listNotebooks" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v11 = [FATField fieldWithIndex:0 type:15 optional:0 name:@"success" valueField:v10];
  v18[0] = v11;
  v12 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v18[1] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v18[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v15 = [ENTProtocolUtil readMessage:@"listNotebooks" fromProtocol:inProtocol withResponseTypes:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)getLinkedNotebookSyncState:(id)a3 linkedNotebook:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"linkedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [ENTProtocolUtil sendMessage:@"getLinkedNotebookSyncState" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v23[0] = v15;
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v23[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v23[2] = v17;
  v18 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"notFoundException" structClass:objc_opt_class()];
  v23[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [ENTProtocolUtil readMessage:@"getLinkedNotebookSyncState" fromProtocol:inProtocol withResponseTypes:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)getSyncStateWithMetrics:(id)a3 clientMetrics:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  v8 = a3;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:v8];

  v23[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"clientMetrics" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:v7];

  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [ENTProtocolUtil sendMessage:@"getSyncStateWithMetrics" toProtocol:outProtocol withArguments:v13];

  inProtocol = self->_inProtocol;
  v15 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v16 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class(), v15];
  v22[1] = v16;
  v17 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v22[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = [ENTProtocolUtil readMessage:@"getSyncStateWithMetrics" fromProtocol:inProtocol withResponseTypes:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)getSyncState:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v5 = a3;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:v5];

  v18[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [ENTProtocolUtil sendMessage:@"getSyncState" toProtocol:outProtocol withArguments:v8];

  inProtocol = self->_inProtocol;
  v10 = [FATField fieldWithIndex:0 type:12 optional:0 name:@"success" structClass:objc_opt_class()];
  v17[0] = v10;
  v11 = [FATField fieldWithIndex:1 type:12 optional:0 name:@"userException" structClass:objc_opt_class()];
  v17[1] = v11;
  v12 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"systemException" structClass:objc_opt_class()];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v14 = [ENTProtocolUtil readMessage:@"getSyncState" fromProtocol:inProtocol withResponseTypes:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (EDAMNoteStoreClient)initWithInProtocol:(id)a3 outProtocol:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDAMNoteStoreClient;
  v9 = [(EDAMNoteStoreClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inProtocol, a3);
    objc_storeStrong(&v10->_outProtocol, a4);
  }

  return v10;
}

@end