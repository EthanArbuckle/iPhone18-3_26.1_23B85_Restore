@interface NotesAssistantSnippetFactory
+ (void)setupNoteContext;
- (id)disambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4;
- (id)speakableNamespaceProviderForAceObject:(id)a3;
- (id)viewControllerForSnippet:(id)a3 error:(id *)a4;
@end

@implementation NotesAssistantSnippetFactory

+ (void)setupNoteContext
{
  if (qword_201E8 != -1)
  {
    sub_AFE4();
  }
}

- (id)viewControllerForSnippet:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() setupNoteContext];
    v6 = [[NotesAssistantSnippetController alloc] initWithAceObject:v5 error:a4];
  }

  else
  {
    NSLog(@"SAUISnippet is not a SANoteSnippet object");
    if (a4)
    {
      [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
      *a4 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)speakableNamespaceProviderForAceObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() setupNoteContext];
    v4 = [[NotesAssistantNoteProvider alloc] initWithAceObject:v3];
  }

  else
  {
    NSLog(@"AceObject is not a SANoteObject object");
    v4 = 0;
  }

  return v4;
}

- (id)disambiguationItemForListItem:(id)a3 disambiguationKey:(id)a4
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [objc_opt_class() setupNoteContext];
    v7 = [v4 object];
    v8 = +[ICNoteContext sharedContext];
    v9 = [v8 managedObjectContext];
    v10 = +[NotesAssistantUtilities sharedHTMLNoteManagedObjectContext];
    v11 = [NotesAssistantUtilities searchIndexableNoteForObject:v7 modernNoteContext:v9 htmlNoteContext:v10];

    v12 = +[SiriUIDisambiguationItem disambiguationItem];
    v13 = [v11 title];
    [v12 setTitle:v13];

    v14 = [v11 contentInfoText];
    [v12 setSubtitle:v14];

    v15 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:v11 folderNoteSortType:0];
    v16 = [v15 ic_briefFormattedDate];
    [v12 setExtraDisambiguationText:v16];
  }

  else
  {
    NSLog(@"ListItem.object is not a SANoteObject object");
    v12 = 0;
  }

  return v12;
}

@end