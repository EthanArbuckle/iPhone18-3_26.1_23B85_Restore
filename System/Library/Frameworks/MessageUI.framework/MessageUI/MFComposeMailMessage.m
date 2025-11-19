@interface MFComposeMailMessage
+ (id)legacyMessageWithMessage:(id)a3 mailboxUid:(id)a4;
+ (id)legacyMessageWithMessage:(id)a3 mailboxUid:(id)a4 skipAttachmentDownload:(BOOL)a5;
- (EMMessageRepository)messageRepository;
- (id)account;
- (id)documentID;
- (void)markAsForwarded;
- (void)markAsReplied;
- (void)markAsViewed;
@end

@implementation MFComposeMailMessage

+ (id)legacyMessageWithMessage:(id)a3 mailboxUid:(id)a4 skipAttachmentDownload:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [[MFEMMessageStore alloc] initWithEMMessage:v7 messageClass:objc_opt_class() mailboxUid:v8 skipAttachmentDownload:v5];
  v10 = [(MFEMMessageStore *)v9 legacyMessage];
  [v10 setEmailMessageRepresentation:v7];

  return v10;
}

+ (id)legacyMessageWithMessage:(id)a3 mailboxUid:(id)a4
{
  v4 = [a1 legacyMessageWithMessage:a3 mailboxUid:a4 skipAttachmentDownload:0];

  return v4;
}

- (id)account
{
  v2 = [(MFComposeMailMessage *)self mailbox];
  v3 = [v2 account];

  return v3;
}

- (EMMessageRepository)messageRepository
{
  v2 = [(MFComposeMailMessage *)self emailMessageRepresentation];
  v3 = [v2 repository];

  return v3;
}

- (id)documentID
{
  v2 = [(MFComposeMailMessage *)self emailMessageRepresentation];
  v3 = [v2 documentID];

  return v3;
}

- (void)markAsViewed
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E699B300]) initWithBuilder:&__block_literal_global_7];
  v4 = objc_alloc(MEMORY[0x1E699AD68]);
  v5 = [(MFComposeMailMessage *)self emailMessageRepresentation];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v4 initWithMessageListItems:v6 origin:4 actor:2 flagChange:v3];

  v8 = [(MFComposeMailMessage *)self messageRepository];
  [v8 performMessageChangeAction:v7];
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
  v5 = [(MFComposeMailMessage *)self emailMessageRepresentation];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v4 initWithMessageListItems:v6 origin:4 actor:2 flagChange:v3];

  v8 = [(MFComposeMailMessage *)self messageRepository];
  [v8 performMessageChangeAction:v7];
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
  v5 = [(MFComposeMailMessage *)self emailMessageRepresentation];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v4 initWithMessageListItems:v6 origin:4 actor:2 flagChange:v3];

  v8 = [(MFComposeMailMessage *)self messageRepository];
  [v8 performMessageChangeAction:v7];
}

void __39__MFComposeMailMessage_markAsForwarded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 changesForwardedTo:1];
  [v2 setReason:4];
}

@end