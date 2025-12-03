@interface MFComposeMailMessage
+ (id)legacyMessageWithMessage:(id)message mailboxUid:(id)uid;
+ (id)legacyMessageWithMessage:(id)message mailboxUid:(id)uid skipAttachmentDownload:(BOOL)download;
- (EMMessageRepository)messageRepository;
- (id)account;
- (id)documentID;
- (void)markAsForwarded;
- (void)markAsReplied;
- (void)markAsViewed;
@end

@implementation MFComposeMailMessage

+ (id)legacyMessageWithMessage:(id)message mailboxUid:(id)uid skipAttachmentDownload:(BOOL)download
{
  downloadCopy = download;
  messageCopy = message;
  uidCopy = uid;
  v9 = [[MFEMMessageStore alloc] initWithEMMessage:messageCopy messageClass:objc_opt_class() mailboxUid:uidCopy skipAttachmentDownload:downloadCopy];
  legacyMessage = [(MFEMMessageStore *)v9 legacyMessage];
  [legacyMessage setEmailMessageRepresentation:messageCopy];

  return legacyMessage;
}

+ (id)legacyMessageWithMessage:(id)message mailboxUid:(id)uid
{
  v4 = [self legacyMessageWithMessage:message mailboxUid:uid skipAttachmentDownload:0];

  return v4;
}

- (id)account
{
  mailbox = [(MFComposeMailMessage *)self mailbox];
  account = [mailbox account];

  return account;
}

- (EMMessageRepository)messageRepository
{
  emailMessageRepresentation = [(MFComposeMailMessage *)self emailMessageRepresentation];
  repository = [emailMessageRepresentation repository];

  return repository;
}

- (id)documentID
{
  emailMessageRepresentation = [(MFComposeMailMessage *)self emailMessageRepresentation];
  documentID = [emailMessageRepresentation documentID];

  return documentID;
}

- (void)markAsViewed
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E699B300]) initWithBuilder:&__block_literal_global_7];
  v4 = objc_alloc(MEMORY[0x1E699AD68]);
  emailMessageRepresentation = [(MFComposeMailMessage *)self emailMessageRepresentation];
  v9[0] = emailMessageRepresentation;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v4 initWithMessageListItems:v6 origin:4 actor:2 flagChange:v3];

  messageRepository = [(MFComposeMailMessage *)self messageRepository];
  [messageRepository performMessageChangeAction:v7];
}

void __36__MFComposeMailMessage_markAsViewed__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 changesReadTo:1];
  [v2 setReason:3];
}

- (void)markAsReplied
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E699B300]) initWithBuilder:&__block_literal_global_16];
  v4 = objc_alloc(MEMORY[0x1E699AD68]);
  emailMessageRepresentation = [(MFComposeMailMessage *)self emailMessageRepresentation];
  v9[0] = emailMessageRepresentation;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v4 initWithMessageListItems:v6 origin:4 actor:2 flagChange:v3];

  messageRepository = [(MFComposeMailMessage *)self messageRepository];
  [messageRepository performMessageChangeAction:v7];
}

void __37__MFComposeMailMessage_markAsReplied__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 changesRepliedTo:1];
  [v2 setReason:4];
}

- (void)markAsForwarded
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E699B300]) initWithBuilder:&__block_literal_global_18];
  v4 = objc_alloc(MEMORY[0x1E699AD68]);
  emailMessageRepresentation = [(MFComposeMailMessage *)self emailMessageRepresentation];
  v9[0] = emailMessageRepresentation;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v4 initWithMessageListItems:v6 origin:4 actor:2 flagChange:v3];

  messageRepository = [(MFComposeMailMessage *)self messageRepository];
  [messageRepository performMessageChangeAction:v7];
}

void __39__MFComposeMailMessage_markAsForwarded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 changesForwardedTo:1];
  [v2 setReason:4];
}

@end