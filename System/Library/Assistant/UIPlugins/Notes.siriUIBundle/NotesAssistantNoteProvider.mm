@interface NotesAssistantNoteProvider
+ (id)htmlManagedObjectContext;
- (NotesAssistantNoteProvider)initWithAceObject:(id)object;
- (id)stringForExpression:(id)expression containsPrivacySensitiveContents:(BOOL *)contents;
@end

@implementation NotesAssistantNoteProvider

+ (id)htmlManagedObjectContext
{
  v2 = +[NoteContext sharedContext];
  managedObjectContext = [v2 managedObjectContext];

  return managedObjectContext;
}

- (NotesAssistantNoteProvider)initWithAceObject:(id)object
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = NotesAssistantNoteProvider;
  v5 = [(NotesAssistantNoteProvider *)&v24 init];
  if (v5)
  {
    identifier = [objectCopy identifier];
    v7 = os_log_create("com.apple.notes", "Siri");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_AF0C(identifier, objectCopy, v7);
    }

    v8 = +[ICNoteContext sharedContext];
    managedObjectContext = [v8 managedObjectContext];
    htmlManagedObjectContext = [objc_opt_class() htmlManagedObjectContext];
    v11 = [NotesAssistantUtilities searchIndexableNoteForObject:objectCopy modernNoteContext:managedObjectContext htmlNoteContext:htmlManagedObjectContext];

    objc_opt_class();
    v12 = ICDynamicCast();
    note = v5->_note;
    v5->_note = v12;

    objc_opt_class();
    v14 = ICDynamicCast();
    htmlNote = v5->_htmlNote;
    v5->_htmlNote = v14;

    title = [objectCopy title];
    if (title)
    {
      v17 = title;
      contents = [objectCopy contents];

      if (contents)
      {
        title2 = [objectCopy title];
        noteTitle = v5->_noteTitle;
        v5->_noteTitle = title2;

        contents2 = [objectCopy contents];
        noteContents = v5->_noteContents;
        v5->_noteContents = contents2;
      }
    }
  }

  return v5;
}

- (id)stringForExpression:(id)expression containsPrivacySensitiveContents:(BOOL *)contents
{
  expressionCopy = expression;
  v7 = expressionCopy;
  if (contents)
  {
    *contents = 1;
  }

  if (![expressionCopy isEqualToString:SANoteObjectDeferredTitleKeyValue])
  {
    if (![v7 isEqualToString:SANoteObjectDeferredContentsKeyValue])
    {
      title2 = 0;
      if (contents)
      {
        *contents = 0;
      }

      goto LABEL_22;
    }

    note = [(NotesAssistantNoteProvider *)self note];

    if (note)
    {
      note2 = [(NotesAssistantNoteProvider *)self note];
      isPasswordProtected = [note2 isPasswordProtected];

      note3 = [(NotesAssistantNoteProvider *)self note];
      htmlNote2 = note3;
      if (isPasswordProtected)
      {
        title = [note3 title];
        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"This note is password protected." value:&stru_18718 table:@"NotesAssistant"];
        noteContents = [title stringByAppendingFormat:@"\n\n%@", v17];

LABEL_19:
LABEL_20:
        v24 = [noteContents stringByReplacingOccurrencesOfString:@"(\n)+" withString:@"\n" options:1024 range:{0, objc_msgSend(noteContents, "length")}];

        title2 = [v24 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\x1B\\pause=500\\""];

        goto LABEL_22;
      }

      noteAsPlainText = [note3 noteAsPlainText];
    }

    else
    {
      htmlNote = [(NotesAssistantNoteProvider *)self htmlNote];

      if (!htmlNote)
      {
        noteContents = [(NotesAssistantNoteProvider *)self noteContents];
        goto LABEL_20;
      }

      htmlNote2 = [(NotesAssistantNoteProvider *)self htmlNote];
      noteAsPlainText = [htmlNote2 contentAsPlainTextPreservingNewlines];
    }

    noteContents = noteAsPlainText;
    goto LABEL_19;
  }

  note4 = [(NotesAssistantNoteProvider *)self note];

  if (note4)
  {
    note5 = [(NotesAssistantNoteProvider *)self note];
LABEL_14:
    v21 = note5;
    title2 = [note5 title];

    goto LABEL_22;
  }

  htmlNote3 = [(NotesAssistantNoteProvider *)self htmlNote];

  if (htmlNote3)
  {
    note5 = [(NotesAssistantNoteProvider *)self htmlNote];
    goto LABEL_14;
  }

  title2 = [(NotesAssistantNoteProvider *)self noteTitle];
LABEL_22:

  return title2;
}

@end