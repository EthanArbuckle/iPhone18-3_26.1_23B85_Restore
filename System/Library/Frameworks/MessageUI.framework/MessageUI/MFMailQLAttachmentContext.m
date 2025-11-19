@interface MFMailQLAttachmentContext
+ (MFMailQLAttachmentContext)contextWithUserActivity:(id)a3;
- (MFMailQLAttachmentContext)initWithAttachmentBeingEdited:(id)a3;
- (MFMailQLAttachmentContext)initWithAttachmentURL:(id)a3 editBehavior:(int64_t)a4 messageObjectID:(id)a5 mailboxObjectID:(id)a6 subject:(id)a7 senderDisplayName:(id)a8 shouldShowReplyAll:(BOOL)a9 contentManaged:(BOOL)a10;
- (NSUserActivity)userActivity;
- (id)initForInsertingDrawing;
@end

@implementation MFMailQLAttachmentContext

+ (MFMailQLAttachmentContext)contextWithUserActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69ADCB8]];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69ADCC0]];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69ADCC8]];
    v26 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69ADCD0]];
    v10 = *MEMORY[0x1E69ADC40];
    v25 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69ADC40]];
    v11 = [v7 objectForKeyedSubscript:v10];
    v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69ADC50]];
    v13 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69ADCD8]];
    v14 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69ADCE0]];
    v15 = [v14 BOOLValue];

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

        v21 = [a1 alloc];
        v22 = [MEMORY[0x1E695DFF8] URLWithString:v8];
        v20 = [v9 integerValue];
        v23 = [MEMORY[0x1E699ADA8] objectIDFromSerializedRepresentation:v25];
        BYTE1(v19) = [v26 BOOLValue];
        LOBYTE(v19) = v15;
        v17 = [v21 initWithAttachmentURL:v22 editBehavior:v20 messageObjectID:v23 mailboxObjectID:v24 subject:v12 senderDisplayName:v13 shouldShowReplyAll:v19 contentManaged:?];
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

- (MFMailQLAttachmentContext)initWithAttachmentURL:(id)a3 editBehavior:(int64_t)a4 messageObjectID:(id)a5 mailboxObjectID:(id)a6 subject:(id)a7 senderDisplayName:(id)a8 shouldShowReplyAll:(BOOL)a9 contentManaged:(BOOL)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v25 = a8;
  v26.receiver = self;
  v26.super_class = MFMailQLAttachmentContext;
  v20 = [(MFMailQLAttachmentContext *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_attachmentURL, a3);
    v21->_contentManaged = a10;
    v21->_editBehavior = a4;
    objc_storeStrong(&v21->_messageObjectID, a5);
    objc_storeStrong(&v21->_mailboxObjectID, a6);
    objc_storeStrong(&v21->_subject, a7);
    objc_storeStrong(&v21->_senderDisplayName, a8);
    v21->_shouldShowReplyAll = a9;
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

- (MFMailQLAttachmentContext)initWithAttachmentBeingEdited:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFMailQLAttachmentContext;
  v6 = [(MFMailQLAttachmentContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachmentBeingEdited, a3);
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
  v24 = [(MFMailQLAttachmentContext *)self attachmentURL];
  v6 = [v24 absoluteString];
  v27[0] = v6;
  v26[1] = *MEMORY[0x1E69ADCC8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MFMailQLAttachmentContext editBehavior](self, "editBehavior")}];
  v27[1] = v7;
  v26[2] = *MEMORY[0x1E69ADCD0];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailQLAttachmentContext isContentManaged](self, "isContentManaged")}];
  v27[2] = v8;
  v26[3] = *MEMORY[0x1E69ADC40];
  v9 = [(MFMailQLAttachmentContext *)self messageObjectID];
  v10 = [v9 serializedRepresentation];
  v27[3] = v10;
  v26[4] = *MEMORY[0x1E69ADC50];
  v11 = [(MFMailQLAttachmentContext *)self subject];
  v23 = v4;
  v27[4] = v11;
  v26[5] = *MEMORY[0x1E69ADCE0];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailQLAttachmentContext shouldShowReplyAll](self, "shouldShowReplyAll")}];
  v27[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v14 = [v5 initWithDictionary:v13];

  v15 = [(MFMailQLAttachmentContext *)self senderDisplayName];

  if (v15)
  {
    v16 = [(MFMailQLAttachmentContext *)self senderDisplayName];
    [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69ADCD8]];
  }

  v17 = [(MFMailQLAttachmentContext *)self mailboxObjectID];
  v18 = [v17 serializedRepresentation];

  if (v18)
  {
    [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69ADC38]];
  }

  [v25 setUserInfo:v14];
  v19 = MEMORY[0x1E696AEC0];
  v20 = [(NSURL *)self->_attachmentURL absoluteString];
  v21 = [v19 stringWithFormat:@"%@.%@", v23, v20];
  [v25 setTargetContentIdentifier:v21];

  return v25;
}

@end