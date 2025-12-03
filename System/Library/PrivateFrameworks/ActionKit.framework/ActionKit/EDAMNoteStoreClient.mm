@interface EDAMNoteStoreClient
- (EDAMNoteStoreClient)initWithInProtocol:(id)protocol outProtocol:(id)outProtocol;
- (id)acquireNoteLock:(id)lock noteGuid:(id)guid;
- (id)authenticateToSharedNote:(id)note noteKey:(id)key authenticationToken:(id)token;
- (id)authenticateToSharedNotebook:(id)notebook authenticationToken:(id)token;
- (id)copyNote:(id)note noteGuid:(id)guid toNotebookGuid:(id)notebookGuid;
- (id)createLinkedNotebook:(id)notebook linkedNotebook:(id)linkedNotebook;
- (id)createNote:(id)note note:(id)a4;
- (id)createNotebook:(id)notebook notebook:(id)a4;
- (id)createOrUpdateNotebookShares:(id)shares shareTemplate:(id)template;
- (id)createOrUpdateSharedNotes:(id)notes shareTemplate:(id)template;
- (id)createSearch:(id)search search:(id)a4;
- (id)createSharedNotebook:(id)notebook sharedNotebook:(id)sharedNotebook;
- (id)createTag:(id)tag tag:(id)a4;
- (id)findContacts:(id)contacts query:(id)query;
- (id)findInBusiness:(id)business query:(id)query;
- (id)findRelated:(id)related query:(id)query resultSpec:(id)spec;
- (id)findSearchSuggestions:(id)suggestions query:(id)query resultSpec:(id)spec;
- (id)getAds:(id)ads adParameters:(id)parameters;
- (id)getDefaultNotebook:(id)notebook;
- (id)getLinkedAccountSyncState:(id)state linkedAccount:(id)account;
- (id)getLinkedNotebookSyncState:(id)state linkedNotebook:(id)notebook;
- (id)getNoteApplicationData:(id)data guid:(id)guid;
- (id)getNoteApplicationDataEntry:(id)entry guid:(id)guid key:(id)key;
- (id)getNoteContent:(id)content guid:(id)guid;
- (id)getNoteLockStatus:(id)status noteGuid:(id)guid;
- (id)getNoteShares:(id)shares noteGuid:(id)guid;
- (id)getNoteTagNames:(id)names guid:(id)guid;
- (id)getNoteWithResultSpec:(id)spec guid:(id)guid resultSpec:(id)resultSpec;
- (id)getNotebook:(id)notebook guid:(id)guid;
- (id)getNotebookShares:(id)shares notebookGuid:(id)guid;
- (id)getNotebookSharesEmailAddresses:(id)addresses notebookGuid:(id)guid identities:(id)identities skipUnknownUserIdentities:(BOOL)userIdentities;
- (id)getPreferences:(id)preferences preferenceNames:(id)names;
- (id)getRandomAd:(id)ad adParameters:(id)parameters;
- (id)getResourceAlternateData:(id)data guid:(id)guid;
- (id)getResourceApplicationData:(id)data guid:(id)guid;
- (id)getResourceApplicationDataEntry:(id)entry guid:(id)guid key:(id)key;
- (id)getResourceAttributes:(id)attributes guid:(id)guid;
- (id)getResourceData:(id)data guid:(id)guid;
- (id)getResourceRecognition:(id)recognition guid:(id)guid;
- (id)getResourceSearchText:(id)text guid:(id)guid;
- (id)getSearch:(id)search guid:(id)guid;
- (id)getSharedNotebookByAuth:(id)auth;
- (id)getSyncState:(id)state;
- (id)getSyncStateWithMetrics:(id)metrics clientMetrics:(id)clientMetrics;
- (id)getTag:(id)tag guid:(id)guid;
- (id)getViewersForNotes:(id)notes noteGuids:(id)guids;
- (id)joinPublishedBusinessNotebook:(id)notebook notebookGuid:(id)guid;
- (id)listAccessibleBusinessNotebooks:(id)notebooks;
- (id)listLinkedNotebooks:(id)notebooks;
- (id)listNoteVersions:(id)versions noteGuid:(id)guid;
- (id)listNotebooks:(id)notebooks;
- (id)listPublishedBusinessNotebooks:(id)notebooks;
- (id)listSearches:(id)searches;
- (id)listSharedNotebooks:(id)notebooks;
- (id)listTags:(id)tags;
- (id)listTagsByNotebook:(id)notebook notebookGuid:(id)guid;
- (id)manageNoteShares:(id)shares parameters:(id)parameters;
- (id)manageNotebookShares:(id)shares parameters:(id)parameters;
- (id)releaseNoteLock:(id)lock noteGuid:(id)guid;
- (id)sendLogRequest:(id)request logRequest:(id)logRequest;
- (id)setNotebookRecipientSettings:(id)settings notebookGuid:(id)guid recipientSettings:(id)recipientSettings;
- (id)shareNote:(id)note guid:(id)guid;
- (id)shareNotebook:(id)notebook sharedNotebook:(id)sharedNotebook message:(id)message;
- (id)updateNote:(id)note note:(id)a4;
- (id)updateNoteIfUsnMatches:(id)matches note:(id)note;
- (int)deleteNote:(id)note guid:(id)guid;
- (int)expungeInactiveNotes:(id)notes;
- (int)expungeLinkedNotebook:(id)notebook guid:(id)guid;
- (int)expungeNote:(id)note guid:(id)guid;
- (int)expungeNotebook:(id)notebook guid:(id)guid;
- (int)expungeNotes:(id)notes noteGuids:(id)guids;
- (int)expungeSearch:(id)search guid:(id)guid;
- (int)expungeSharedNotebooks:(id)notebooks sharedNotebookIds:(id)ids;
- (int)expungeTag:(id)tag guid:(id)guid;
- (int)findNoteOffset:(id)offset filter:(id)filter guid:(id)guid;
- (int)renameNotebook:(id)notebook notebookGuid:(id)guid name:(id)name;
- (int)sendMessageToSharedNotebookMembers:(id)members notebookGuid:(id)guid messageText:(id)text recipients:(id)recipients;
- (int)setNoteApplicationDataEntry:(id)entry guid:(id)guid key:(id)key value:(id)value;
- (int)setResourceApplicationDataEntry:(id)entry guid:(id)guid key:(id)key value:(id)value;
- (int)setSharedNotebookRecipientSettings:(id)settings sharedNotebookId:(int64_t)id recipientSettings:(id)recipientSettings;
- (int)shareNoteWithBusiness:(id)business noteGuid:(id)guid;
- (int)stopSharingNoteWithBusiness:(id)business noteGuid:(id)guid;
- (int)unsetNoteApplicationDataEntry:(id)entry guid:(id)guid key:(id)key;
- (int)unsetResourceApplicationDataEntry:(id)entry guid:(id)guid key:(id)key;
- (int)updateLinkedNotebook:(id)notebook linkedNotebook:(id)linkedNotebook;
- (int)updateNotebook:(id)notebook notebook:(id)a4;
- (int)updatePreferences:(id)preferences preferencesToUpdate:(id)update;
- (int)updateResource:(id)resource resource:(id)a4;
- (int)updateSearch:(id)search search:(id)a4;
- (int)updateSharedNotebook:(id)notebook sharedNotebook:(id)sharedNotebook;
- (int)updateTag:(id)tag tag:(id)a4;
- (void)emailNote:(id)note parameters:(id)parameters;
- (void)stopSharingNote:(id)note guid:(id)guid;
- (void)stopSharingNoteWithRecipients:(id)recipients guid:(id)guid;
- (void)untagAll:(id)all guid:(id)guid;
@end

@implementation EDAMNoteStoreClient

- (id)getLinkedAccountSyncState:(id)state linkedAccount:(id)account
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  accountCopy = account;
  stateCopy = state;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:stateCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"linkedAccount" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:accountCopy];

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

- (id)sendLogRequest:(id)request logRequest:(id)logRequest
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  logRequestCopy = logRequest;
  requestCopy = request;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:requestCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"logRequest" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:logRequestCopy];

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

- (int)renameNotebook:(id)notebook notebookGuid:(id)guid name:(id)name
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  nameCopy = name;
  guidCopy = guid;
  notebookCopy = notebook;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:notebookCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v14 = [FATArgument argumentWithField:v13 value:guidCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"name"];
  v16 = [FATArgument argumentWithField:v15 value:nameCopy];

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

- (id)getNotebookSharesEmailAddresses:(id)addresses notebookGuid:(id)guid identities:(id)identities skipUnknownUserIdentities:(BOOL)userIdentities
{
  userIdentitiesCopy = userIdentities;
  v36[4] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  identitiesCopy = identities;
  guidCopy = guid;
  addressesCopy = addresses;
  v33 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v11 = [FATArgument argumentWithField:v33 value:addressesCopy];

  v36[0] = v11;
  v12 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v13 = [FATArgument argumentWithField:v12 value:guidCopy];

  v36[1] = v13;
  v14 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
  v15 = [FATField fieldWithIndex:3 type:15 optional:0 name:@"identities" valueField:v14];
  v16 = [FATArgument argumentWithField:v15 value:identitiesCopy];

  v36[2] = v16;
  v17 = [FATField fieldWithIndex:4 type:2 optional:0 name:@"skipUnknownUserIdentities"];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:userIdentitiesCopy];
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

- (id)joinPublishedBusinessNotebook:(id)notebook notebookGuid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)manageNoteShares:(id)shares parameters:(id)parameters
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  parametersCopy = parameters;
  sharesCopy = shares;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:sharesCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"parameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:parametersCopy];

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

- (id)getNoteShares:(id)shares noteGuid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  sharesCopy = shares;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:sharesCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)getNotebookShares:(id)shares notebookGuid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  sharesCopy = shares;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:sharesCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)manageNotebookShares:(id)shares parameters:(id)parameters
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  parametersCopy = parameters;
  sharesCopy = shares;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:sharesCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"parameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:parametersCopy];

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

- (id)updateNoteIfUsnMatches:(id)matches note:(id)note
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  noteCopy = note;
  matchesCopy = matches;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:matchesCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"note" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:noteCopy];

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

- (id)getViewersForNotes:(id)notes noteGuids:(id)guids
{
  v26[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidsCopy = guids;
  notesCopy = notes;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notesCopy];

  v26[0] = v10;
  v11 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v12 = [FATField fieldWithIndex:2 type:15 optional:0 name:@"noteGuids" valueField:v11];
  v13 = [FATArgument argumentWithField:v12 value:guidsCopy];

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

- (id)releaseNoteLock:(id)lock noteGuid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  lockCopy = lock;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:lockCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)acquireNoteLock:(id)lock noteGuid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  lockCopy = lock;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:lockCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)getNoteLockStatus:(id)status noteGuid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  statusCopy = status;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:statusCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (int)stopSharingNoteWithBusiness:(id)business noteGuid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  businessCopy = business;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:businessCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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
  LODWORD(businessCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return businessCopy;
}

- (int)shareNoteWithBusiness:(id)business noteGuid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  businessCopy = business;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:businessCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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
  LODWORD(businessCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return businessCopy;
}

- (id)findInBusiness:(id)business query:(id)query
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  queryCopy = query;
  businessCopy = business;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:businessCopy];

  v23[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"query" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:queryCopy];

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

- (id)findContacts:(id)contacts query:(id)query
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  queryCopy = query;
  contactsCopy = contacts;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:contactsCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"query" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:queryCopy];

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

- (id)findSearchSuggestions:(id)suggestions query:(id)query resultSpec:(id)spec
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  specCopy = spec;
  queryCopy = query;
  suggestionsCopy = suggestions;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:suggestionsCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"query" structClass:objc_opt_class()];
  v14 = [FATArgument argumentWithField:v13 value:queryCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"resultSpec" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:specCopy];

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

- (id)findRelated:(id)related query:(id)query resultSpec:(id)spec
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  specCopy = spec;
  queryCopy = query;
  relatedCopy = related;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:relatedCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"query" structClass:objc_opt_class()];
  v14 = [FATArgument argumentWithField:v13 value:queryCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"resultSpec" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:specCopy];

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

- (id)createOrUpdateSharedNotes:(id)notes shareTemplate:(id)template
{
  v26[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  templateCopy = template;
  notesCopy = notes;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notesCopy];

  v26[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"shareTemplate" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:templateCopy];

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

- (id)authenticateToSharedNote:(id)note noteKey:(id)key authenticationToken:(id)token
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  tokenCopy = token;
  keyCopy = key;
  noteCopy = note;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:noteCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteKey"];
  v14 = [FATArgument argumentWithField:v13 value:keyCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"authenticationToken"];
  v16 = [FATArgument argumentWithField:v15 value:tokenCopy];

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

- (void)stopSharingNoteWithRecipients:(id)recipients guid:(id)guid
{
  v22[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  recipientsCopy = recipients;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:recipientsCopy];

  v22[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (void)stopSharingNote:(id)note guid:(id)guid
{
  v22[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  noteCopy = note;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:noteCopy];

  v22[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)shareNote:(id)note guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  noteCopy = note;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:noteCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (void)emailNote:(id)note parameters:(id)parameters
{
  v22[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  parametersCopy = parameters;
  noteCopy = note;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:noteCopy];

  v22[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"parameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:parametersCopy];

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

- (id)getSharedNotebookByAuth:(id)auth
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  authCopy = auth;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:authCopy];

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

- (id)authenticateToSharedNotebook:(id)notebook authenticationToken:(id)token
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  tokenCopy = token;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"shareKeyOrGlobalId"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:tokenCopy];

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

- (int)expungeLinkedNotebook:(id)notebook guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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
  LODWORD(notebookCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return notebookCopy;
}

- (id)listLinkedNotebooks:(id)notebooks
{
  v20[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notebooksCopy = notebooks;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:notebooksCopy];

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

- (int)updateLinkedNotebook:(id)notebook linkedNotebook:(id)linkedNotebook
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  linkedNotebookCopy = linkedNotebook;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"linkedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:linkedNotebookCopy];

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
  LODWORD(linkedNotebookCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return linkedNotebookCopy;
}

- (id)createLinkedNotebook:(id)notebook linkedNotebook:(id)linkedNotebook
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  linkedNotebookCopy = linkedNotebook;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"linkedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:linkedNotebookCopy];

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

- (int)expungeSharedNotebooks:(id)notebooks sharedNotebookIds:(id)ids
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  idsCopy = ids;
  notebooksCopy = notebooks;
  v8 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v9 = [FATArgument argumentWithField:v8 value:notebooksCopy];

  v25[0] = v9;
  v10 = [FATField fieldWithIndex:0 type:10 optional:1 name:0];
  v11 = [FATField fieldWithIndex:2 type:15 optional:0 name:@"sharedNotebookIds" valueField:v10];
  v12 = [FATArgument argumentWithField:v11 value:idsCopy];

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
  LODWORD(idsCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return idsCopy;
}

- (id)listSharedNotebooks:(id)notebooks
{
  v20[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notebooksCopy = notebooks;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:notebooksCopy];

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

- (int)sendMessageToSharedNotebookMembers:(id)members notebookGuid:(id)guid messageText:(id)text recipients:(id)recipients
{
  v35[4] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  recipientsCopy = recipients;
  textCopy = text;
  guidCopy = guid;
  membersCopy = members;
  v31 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v13 = [FATArgument argumentWithField:v31 value:membersCopy];

  v35[0] = v13;
  v14 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v15 = [FATArgument argumentWithField:v14 value:guidCopy];

  v35[1] = v15;
  v16 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"messageText"];
  v17 = [FATArgument argumentWithField:v16 value:textCopy];

  v35[2] = v17;
  v18 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v19 = [FATField fieldWithIndex:4 type:15 optional:0 name:@"recipients" valueField:v18];
  v20 = [FATArgument argumentWithField:v19 value:recipientsCopy];

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

- (id)setNotebookRecipientSettings:(id)settings notebookGuid:(id)guid recipientSettings:(id)recipientSettings
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  recipientSettingsCopy = recipientSettings;
  guidCopy = guid;
  settingsCopy = settings;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:settingsCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v14 = [FATArgument argumentWithField:v13 value:guidCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"recipientSettings" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:recipientSettingsCopy];

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

- (int)setSharedNotebookRecipientSettings:(id)settings sharedNotebookId:(int64_t)id recipientSettings:(id)recipientSettings
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  recipientSettingsCopy = recipientSettings;
  settingsCopy = settings;
  v10 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v11 = [FATArgument argumentWithField:v10 value:settingsCopy];

  v29[0] = v11;
  v12 = [FATField fieldWithIndex:2 type:10 optional:0 name:@"sharedNotebookId"];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:id];
  v14 = [FATArgument argumentWithField:v12 value:v13];
  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"recipientSettings" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:recipientSettingsCopy];

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

- (int)updateSharedNotebook:(id)notebook sharedNotebook:(id)sharedNotebook
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  sharedNotebookCopy = sharedNotebook;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"sharedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:sharedNotebookCopy];

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
  LODWORD(sharedNotebookCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return sharedNotebookCopy;
}

- (id)createOrUpdateNotebookShares:(id)shares shareTemplate:(id)template
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  templateCopy = template;
  sharesCopy = shares;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:sharesCopy];

  v25[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"shareTemplate" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:templateCopy];

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

- (id)shareNotebook:(id)notebook sharedNotebook:(id)sharedNotebook message:(id)message
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  messageCopy = message;
  sharedNotebookCopy = sharedNotebook;
  notebookCopy = notebook;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:notebookCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"sharedNotebook" structClass:objc_opt_class()];
  v14 = [FATArgument argumentWithField:v13 value:sharedNotebookCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"message"];
  v16 = [FATArgument argumentWithField:v15 value:messageCopy];

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

- (id)createSharedNotebook:(id)notebook sharedNotebook:(id)sharedNotebook
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  sharedNotebookCopy = sharedNotebook;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"sharedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:sharedNotebookCopy];

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

- (id)getRandomAd:(id)ad adParameters:(id)parameters
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  parametersCopy = parameters;
  adCopy = ad;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:adCopy];

  v23[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"adParameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:parametersCopy];

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

- (id)getAds:(id)ads adParameters:(id)parameters
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  parametersCopy = parameters;
  adsCopy = ads;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:adsCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"adParameters" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:parametersCopy];

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

- (id)getResourceAttributes:(id)attributes guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  attributesCopy = attributes;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:attributesCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)getResourceAlternateData:(id)data guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  dataCopy = data;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:dataCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)getResourceRecognition:(id)recognition guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  recognitionCopy = recognition;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:recognitionCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)getResourceData:(id)data guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  dataCopy = data;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:dataCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (int)updateResource:(id)resource resource:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  resourceCopy = resource;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:resourceCopy];

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

- (int)unsetResourceApplicationDataEntry:(id)entry guid:(id)guid key:(id)key
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  keyCopy = key;
  guidCopy = guid;
  entryCopy = entry;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:entryCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:guidCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v16 = [FATArgument argumentWithField:v15 value:keyCopy];

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

- (int)setResourceApplicationDataEntry:(id)entry guid:(id)guid key:(id)key value:(id)value
{
  v34[4] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  valueCopy = value;
  keyCopy = key;
  guidCopy = guid;
  entryCopy = entry;
  v13 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v14 = [FATArgument argumentWithField:v13 value:entryCopy];

  v34[0] = v14;
  v15 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v16 = [FATArgument argumentWithField:v15 value:guidCopy];

  v34[1] = v16;
  v17 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v18 = [FATArgument argumentWithField:v17 value:keyCopy];

  v34[2] = v18;
  v19 = [FATField fieldWithIndex:4 type:11 optional:0 name:@"value"];
  v20 = [FATArgument argumentWithField:v19 value:valueCopy];

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

- (id)getResourceApplicationDataEntry:(id)entry guid:(id)guid key:(id)key
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  keyCopy = key;
  guidCopy = guid;
  entryCopy = entry;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:entryCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:guidCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v16 = [FATArgument argumentWithField:v15 value:keyCopy];

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

- (id)getResourceApplicationData:(id)data guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  dataCopy = data;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:dataCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)listNoteVersions:(id)versions noteGuid:(id)guid
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  versionsCopy = versions;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:versionsCopy];

  v25[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)copyNote:(id)note noteGuid:(id)guid toNotebookGuid:(id)notebookGuid
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notebookGuidCopy = notebookGuid;
  guidCopy = guid;
  noteCopy = note;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:noteCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"noteGuid"];
  v14 = [FATArgument argumentWithField:v13 value:guidCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"toNotebookGuid"];
  v16 = [FATArgument argumentWithField:v15 value:notebookGuidCopy];

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

- (int)expungeInactiveNotes:(id)notes
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notesCopy = notes;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:notesCopy];

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
  intValue = [v14 intValue];

  v16 = *MEMORY[0x277D85DE8];
  return intValue;
}

- (int)expungeNotes:(id)notes noteGuids:(id)guids
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidsCopy = guids;
  notesCopy = notes;
  v8 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v9 = [FATArgument argumentWithField:v8 value:notesCopy];

  v25[0] = v9;
  v10 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v11 = [FATField fieldWithIndex:2 type:15 optional:0 name:@"noteGuids" valueField:v10];
  v12 = [FATArgument argumentWithField:v11 value:guidsCopy];

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
  LODWORD(guidsCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return guidsCopy;
}

- (int)expungeNote:(id)note guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  noteCopy = note;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:noteCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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
  LODWORD(noteCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return noteCopy;
}

- (int)deleteNote:(id)note guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  noteCopy = note;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:noteCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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
  LODWORD(noteCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return noteCopy;
}

- (id)updateNote:(id)note note:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  noteCopy = note;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:noteCopy];

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

- (id)createNote:(id)note note:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  noteCopy = note;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:noteCopy];

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

- (id)getNoteTagNames:(id)names guid:(id)guid
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  namesCopy = names;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:namesCopy];

  v25[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)getResourceSearchText:(id)text guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  textCopy = text;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:textCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)getNoteContent:(id)content guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  contentCopy = content;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:contentCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (int)unsetNoteApplicationDataEntry:(id)entry guid:(id)guid key:(id)key
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  keyCopy = key;
  guidCopy = guid;
  entryCopy = entry;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:entryCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:guidCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v16 = [FATArgument argumentWithField:v15 value:keyCopy];

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

- (int)setNoteApplicationDataEntry:(id)entry guid:(id)guid key:(id)key value:(id)value
{
  v34[4] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  valueCopy = value;
  keyCopy = key;
  guidCopy = guid;
  entryCopy = entry;
  v13 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v14 = [FATArgument argumentWithField:v13 value:entryCopy];

  v34[0] = v14;
  v15 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v16 = [FATArgument argumentWithField:v15 value:guidCopy];

  v34[1] = v16;
  v17 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v18 = [FATArgument argumentWithField:v17 value:keyCopy];

  v34[2] = v18;
  v19 = [FATField fieldWithIndex:4 type:11 optional:0 name:@"value"];
  v20 = [FATArgument argumentWithField:v19 value:valueCopy];

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

- (id)getNoteApplicationDataEntry:(id)entry guid:(id)guid key:(id)key
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  keyCopy = key;
  guidCopy = guid;
  entryCopy = entry;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:entryCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:guidCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"key"];
  v16 = [FATArgument argumentWithField:v15 value:keyCopy];

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

- (id)getNoteApplicationData:(id)data guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  dataCopy = data;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:dataCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (int)updatePreferences:(id)preferences preferencesToUpdate:(id)update
{
  v26[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  updateCopy = update;
  preferencesCopy = preferences;
  v8 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v9 = [FATArgument argumentWithField:v8 value:preferencesCopy];

  v26[0] = v9;
  v10 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v11 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v12 = [FATField fieldWithIndex:0 type:15 optional:1 name:0 valueField:v11];
  v13 = [FATField fieldWithIndex:2 type:13 optional:0 name:@"preferencesToUpdate" keyField:v10 valueField:v12];
  v14 = [FATArgument argumentWithField:v13 value:updateCopy];

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

- (id)getPreferences:(id)preferences preferenceNames:(id)names
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  namesCopy = names;
  preferencesCopy = preferences;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:preferencesCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
  v12 = [FATField fieldWithIndex:2 type:15 optional:0 name:@"preferenceNames" valueField:v11];
  v13 = [FATArgument argumentWithField:v12 value:namesCopy];

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

- (id)getNoteWithResultSpec:(id)spec guid:(id)guid resultSpec:(id)resultSpec
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  resultSpecCopy = resultSpec;
  guidCopy = guid;
  specCopy = spec;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:specCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v14 = [FATArgument argumentWithField:v13 value:guidCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:12 optional:0 name:@"resultSpec" structClass:objc_opt_class()];
  v16 = [FATArgument argumentWithField:v15 value:resultSpecCopy];

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

- (int)findNoteOffset:(id)offset filter:(id)filter guid:(id)guid
{
  v29[3] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  filterCopy = filter;
  offsetCopy = offset;
  v11 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v12 = [FATArgument argumentWithField:v11 value:offsetCopy];

  v29[0] = v12;
  v13 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"filter" structClass:objc_opt_class()];
  v14 = [FATArgument argumentWithField:v13 value:filterCopy];

  v29[1] = v14;
  v15 = [FATField fieldWithIndex:3 type:11 optional:0 name:@"guid"];
  v16 = [FATArgument argumentWithField:v15 value:guidCopy];

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

- (int)expungeSearch:(id)search guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  searchCopy = search;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:searchCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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
  LODWORD(searchCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return searchCopy;
}

- (int)updateSearch:(id)search search:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  searchCopy = search;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:searchCopy];

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

- (id)createSearch:(id)search search:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  searchCopy = search;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:searchCopy];

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

- (id)getSearch:(id)search guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  searchCopy = search;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:searchCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)listSearches:(id)searches
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  searchesCopy = searches;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:searchesCopy];

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

- (int)expungeTag:(id)tag guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  tagCopy = tag;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:tagCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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
  LODWORD(tagCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return tagCopy;
}

- (void)untagAll:(id)all guid:(id)guid
{
  v22[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  allCopy = all;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:allCopy];

  v22[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (int)updateTag:(id)tag tag:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  tagCopy = tag;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:tagCopy];

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

- (id)createTag:(id)tag tag:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  tagCopy = tag;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:tagCopy];

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

- (id)getTag:(id)tag guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  tagCopy = tag;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:tagCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)listTagsByNotebook:(id)notebook notebookGuid:(id)guid
{
  v25[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v25[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"notebookGuid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)listTags:(id)tags
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  tagsCopy = tags;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:tagsCopy];

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

- (int)expungeNotebook:(id)notebook guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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
  LODWORD(notebookCopy) = [v20 intValue];

  v21 = *MEMORY[0x277D85DE8];
  return notebookCopy;
}

- (int)updateNotebook:(id)notebook notebook:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

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

- (id)createNotebook:(id)notebook notebook:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  v7 = a4;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

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

- (id)getDefaultNotebook:(id)notebook
{
  v18[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notebookCopy = notebook;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:notebookCopy];

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

- (id)getNotebook:(id)notebook guid:(id)guid
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  guidCopy = guid;
  notebookCopy = notebook;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:notebookCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:11 optional:0 name:@"guid"];
  v12 = [FATArgument argumentWithField:v11 value:guidCopy];

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

- (id)listAccessibleBusinessNotebooks:(id)notebooks
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notebooksCopy = notebooks;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:notebooksCopy];

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

- (id)listPublishedBusinessNotebooks:(id)notebooks
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notebooksCopy = notebooks;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:notebooksCopy];

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

- (id)listNotebooks:(id)notebooks
{
  v19[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notebooksCopy = notebooks;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:notebooksCopy];

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

- (id)getLinkedNotebookSyncState:(id)state linkedNotebook:(id)notebook
{
  v24[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  notebookCopy = notebook;
  stateCopy = state;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:stateCopy];

  v24[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"linkedNotebook" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:notebookCopy];

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

- (id)getSyncStateWithMetrics:(id)metrics clientMetrics:(id)clientMetrics
{
  v23[2] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  clientMetricsCopy = clientMetrics;
  metricsCopy = metrics;
  v9 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v10 = [FATArgument argumentWithField:v9 value:metricsCopy];

  v23[0] = v10;
  v11 = [FATField fieldWithIndex:2 type:12 optional:0 name:@"clientMetrics" structClass:objc_opt_class()];
  v12 = [FATArgument argumentWithField:v11 value:clientMetricsCopy];

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

- (id)getSyncState:(id)state
{
  v18[1] = *MEMORY[0x277D85DE8];
  outProtocol = self->_outProtocol;
  stateCopy = state;
  v6 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"authenticationToken"];
  v7 = [FATArgument argumentWithField:v6 value:stateCopy];

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

- (EDAMNoteStoreClient)initWithInProtocol:(id)protocol outProtocol:(id)outProtocol
{
  protocolCopy = protocol;
  outProtocolCopy = outProtocol;
  v12.receiver = self;
  v12.super_class = EDAMNoteStoreClient;
  v9 = [(EDAMNoteStoreClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inProtocol, protocol);
    objc_storeStrong(&v10->_outProtocol, outProtocol);
  }

  return v10;
}

@end