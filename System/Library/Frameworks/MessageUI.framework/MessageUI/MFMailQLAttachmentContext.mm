@interface MFMailQLAttachmentContext
+ (MFMailQLAttachmentContext)contextWithUserActivity:(id)activity;
- (MFMailQLAttachmentContext)initWithAttachmentBeingEdited:(id)edited;
- (MFMailQLAttachmentContext)initWithAttachmentURL:(id)l editBehavior:(int64_t)behavior messageObjectID:(id)d mailboxObjectID:(id)iD subject:(id)subject senderDisplayName:(id)name shouldShowReplyAll:(BOOL)all contentManaged:(BOOL)self0;
- (NSUserActivity)userActivity;
- (id)initForInsertingDrawing;
@end

@implementation MFMailQLAttachmentContext

+ (MFMailQLAttachmentContext)contextWithUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [activityType isEqualToString:*MEMORY[0x1E69ADCB8]];

  if (v6)
  {
    userInfo = [activityCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69ADCC0]];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69ADCC8]];
    v26 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69ADCD0]];
    v10 = *MEMORY[0x1E69ADC40];
    v25 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69ADC40]];
    v11 = [userInfo objectForKeyedSubscript:v10];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69ADC50]];
    v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69ADCD8]];
    v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69ADCE0]];
    bOOLValue = [v14 BOOLValue];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      v16 = v25;
      if (objc_opt_isKindOfClass())
      {
        if (v11)
        {
          v24 = [MEMORY[0x1E699AD20] objectIDFromSerializedRepresentation:v11];
        }

        else
        {
          v24 = 0;
        }

        v21 = [self alloc];
        v22 = [MEMORY[0x1E695DFF8] URLWithString:v8];
        integerValue = [v9 integerValue];
        v23 = [MEMORY[0x1E699ADA8] objectIDFromSerializedRepresentation:v25];
        BYTE1(v19) = [v26 BOOLValue];
        LOBYTE(v19) = bOOLValue;
        v17 = [v21 initWithAttachmentURL:v22 editBehavior:integerValue messageObjectID:v23 mailboxObjectID:v24 subject:v12 senderDisplayName:v13 shouldShowReplyAll:v19 contentManaged:?];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
      v16 = v25;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (MFMailQLAttachmentContext)initWithAttachmentURL:(id)l editBehavior:(int64_t)behavior messageObjectID:(id)d mailboxObjectID:(id)iD subject:(id)subject senderDisplayName:(id)name shouldShowReplyAll:(BOOL)all contentManaged:(BOOL)self0
{
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  subjectCopy = subject;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = MFMailQLAttachmentContext;
  v20 = [(MFMailQLAttachmentContext *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_attachmentURL, l);
    v21->_contentManaged = managed;
    v21->_editBehavior = behavior;
    objc_storeStrong(&v21->_messageObjectID, d);
    objc_storeStrong(&v21->_mailboxObjectID, iD);
    objc_storeStrong(&v21->_subject, subject);
    objc_storeStrong(&v21->_senderDisplayName, name);
    v21->_shouldShowReplyAll = all;
    v21->_insertingDrawing = 0;
    attachmentBeingEdited = v21->_attachmentBeingEdited;
    v21->_attachmentBeingEdited = 0;
  }

  return v21;
}

- (id)initForInsertingDrawing
{
  v3.receiver = self;
  v3.super_class = MFMailQLAttachmentContext;
  result = [(MFMailQLAttachmentContext *)&v3 init];
  if (result)
  {
    *(result + 10) = 1;
  }

  return result;
}

- (MFMailQLAttachmentContext)initWithAttachmentBeingEdited:(id)edited
{
  editedCopy = edited;
  v9.receiver = self;
  v9.super_class = MFMailQLAttachmentContext;
  v6 = [(MFMailQLAttachmentContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachmentBeingEdited, edited);
    v7->_insertingDrawing = 0;
  }

  return v7;
}

- (NSUserActivity)userActivity
{
  v27[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69636A8]);
  v4 = *MEMORY[0x1E69ADCB8];
  v25 = [v3 initWithActivityType:*MEMORY[0x1E69ADCB8]];
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v26[0] = *MEMORY[0x1E69ADCC0];
  attachmentURL = [(MFMailQLAttachmentContext *)self attachmentURL];
  absoluteString = [attachmentURL absoluteString];
  v27[0] = absoluteString;
  v26[1] = *MEMORY[0x1E69ADCC8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MFMailQLAttachmentContext editBehavior](self, "editBehavior")}];
  v27[1] = v7;
  v26[2] = *MEMORY[0x1E69ADCD0];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailQLAttachmentContext isContentManaged](self, "isContentManaged")}];
  v27[2] = v8;
  v26[3] = *MEMORY[0x1E69ADC40];
  messageObjectID = [(MFMailQLAttachmentContext *)self messageObjectID];
  serializedRepresentation = [messageObjectID serializedRepresentation];
  v27[3] = serializedRepresentation;
  v26[4] = *MEMORY[0x1E69ADC50];
  subject = [(MFMailQLAttachmentContext *)self subject];
  v23 = v4;
  v27[4] = subject;
  v26[5] = *MEMORY[0x1E69ADCE0];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailQLAttachmentContext shouldShowReplyAll](self, "shouldShowReplyAll")}];
  v27[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v14 = [v5 initWithDictionary:v13];

  senderDisplayName = [(MFMailQLAttachmentContext *)self senderDisplayName];

  if (senderDisplayName)
  {
    senderDisplayName2 = [(MFMailQLAttachmentContext *)self senderDisplayName];
    [v14 setObject:senderDisplayName2 forKeyedSubscript:*MEMORY[0x1E69ADCD8]];
  }

  mailboxObjectID = [(MFMailQLAttachmentContext *)self mailboxObjectID];
  serializedRepresentation2 = [mailboxObjectID serializedRepresentation];

  if (serializedRepresentation2)
  {
    [v14 setObject:serializedRepresentation2 forKeyedSubscript:*MEMORY[0x1E69ADC38]];
  }

  [v25 setUserInfo:v14];
  v19 = MEMORY[0x1E696AEC0];
  absoluteString2 = [(NSURL *)self->_attachmentURL absoluteString];
  v21 = [v19 stringWithFormat:@"%@.%@", v23, absoluteString2];
  [v25 setTargetContentIdentifier:v21];

  return v25;
}

@end