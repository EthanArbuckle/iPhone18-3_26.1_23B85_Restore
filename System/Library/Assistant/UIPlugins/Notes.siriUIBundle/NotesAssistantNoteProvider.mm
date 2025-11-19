@interface NotesAssistantNoteProvider
+ (id)htmlManagedObjectContext;
- (NotesAssistantNoteProvider)initWithAceObject:(id)a3;
- (id)stringForExpression:(id)a3 containsPrivacySensitiveContents:(BOOL *)a4;
@end

@implementation NotesAssistantNoteProvider

+ (id)htmlManagedObjectContext
{
  v2 = +[NoteContext sharedContext];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (NotesAssistantNoteProvider)initWithAceObject:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NotesAssistantNoteProvider;
  v5 = [(NotesAssistantNoteProvider *)&v24 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = os_log_create("com.apple.notes", "Siri");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_AF0C(v6, v4, v7);
    }

    v8 = +[ICNoteContext sharedContext];
    v9 = [v8 managedObjectContext];
    v10 = [objc_opt_class() htmlManagedObjectContext];
    v11 = [NotesAssistantUtilities searchIndexableNoteForObject:v4 modernNoteContext:v9 htmlNoteContext:v10];

    objc_opt_class();
    v12 = ICDynamicCast();
    note = v5->_note;
    v5->_note = v12;

    objc_opt_class();
    v14 = ICDynamicCast();
    htmlNote = v5->_htmlNote;
    v5->_htmlNote = v14;

    v16 = [v4 title];
    if (v16)
    {
      v17 = v16;
      v18 = [v4 contents];

      if (v18)
      {
        v19 = [v4 title];
        noteTitle = v5->_noteTitle;
        v5->_noteTitle = v19;

        v21 = [v4 contents];
        noteContents = v5->_noteContents;
        v5->_noteContents = v21;
      }
    }
  }

  return v5;
}

- (id)stringForExpression:(id)a3 containsPrivacySensitiveContents:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 1;
  }

  if (![v6 isEqualToString:SANoteObjectDeferredTitleKeyValue])
  {
    if (![v7 isEqualToString:SANoteObjectDeferredContentsKeyValue])
    {
      v19 = 0;
      if (a4)
      {
        *a4 = 0;
      }

      goto LABEL_22;
    }

    v10 = [(NotesAssistantNoteProvider *)self note];

    if (v10)
    {
      v11 = [(NotesAssistantNoteProvider *)self note];
      v12 = [v11 isPasswordProtected];

      v13 = [(NotesAssistantNoteProvider *)self note];
      v14 = v13;
      if (v12)
      {
        v15 = [v13 title];
        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"This note is password protected." value:&stru_18718 table:@"NotesAssistant"];
        v18 = [v15 stringByAppendingFormat:@"\n\n%@", v17];

LABEL_19:
LABEL_20:
        v24 = [v18 stringByReplacingOccurrencesOfString:@"(\n)+" withString:@"\n" options:1024 range:{0, objc_msgSend(v18, "length")}];

        v19 = [v24 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\x1B\\pause=500\\""];

        goto LABEL_22;
      }

      v23 = [v13 noteAsPlainText];
    }

    else
    {
      v22 = [(NotesAssistantNoteProvider *)self htmlNote];

      if (!v22)
      {
        v18 = [(NotesAssistantNoteProvider *)self noteContents];
        goto LABEL_20;
      }

      v14 = [(NotesAssistantNoteProvider *)self htmlNote];
      v23 = [v14 contentAsPlainTextPreservingNewlines];
    }

    v18 = v23;
    goto LABEL_19;
  }

  v8 = [(NotesAssistantNoteProvider *)self note];

  if (v8)
  {
    v9 = [(NotesAssistantNoteProvider *)self note];
LABEL_14:
    v21 = v9;
    v19 = [v9 title];

    goto LABEL_22;
  }

  v20 = [(NotesAssistantNoteProvider *)self htmlNote];

  if (v20)
  {
    v9 = [(NotesAssistantNoteProvider *)self htmlNote];
    goto LABEL_14;
  }

  v19 = [(NotesAssistantNoteProvider *)self noteTitle];
LABEL_22:

  return v19;
}

@end