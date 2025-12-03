@interface NotesAssistantSnippetFactory
+ (void)setupNoteContext;
- (id)disambiguationItemForListItem:(id)item disambiguationKey:(id)key;
- (id)speakableNamespaceProviderForAceObject:(id)object;
- (id)viewControllerForSnippet:(id)snippet error:(id *)error;
@end

@implementation NotesAssistantSnippetFactory

+ (void)setupNoteContext
{
  if (qword_201E8 != -1)
  {
    sub_AFE4();
  }
}

- (id)viewControllerForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() setupNoteContext];
    v6 = [[NotesAssistantSnippetController alloc] initWithAceObject:snippetCopy error:error];
  }

  else
  {
    NSLog(@"SAUISnippet is not a SANoteSnippet object");
    if (error)
    {
      [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
      *error = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)speakableNamespaceProviderForAceObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_opt_class() setupNoteContext];
    v4 = [[NotesAssistantNoteProvider alloc] initWithAceObject:objectCopy];
  }

  else
  {
    NSLog(@"AceObject is not a SANoteObject object");
    v4 = 0;
  }

  return v4;
}

- (id)disambiguationItemForListItem:(id)item disambiguationKey:(id)key
{
  itemCopy = item;
  object = [itemCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [objc_opt_class() setupNoteContext];
    object2 = [itemCopy object];
    v8 = +[ICNoteContext sharedContext];
    managedObjectContext = [v8 managedObjectContext];
    v10 = +[NotesAssistantUtilities sharedHTMLNoteManagedObjectContext];
    v11 = [NotesAssistantUtilities searchIndexableNoteForObject:object2 modernNoteContext:managedObjectContext htmlNoteContext:v10];

    v12 = +[SiriUIDisambiguationItem disambiguationItem];
    title = [v11 title];
    [v12 setTitle:title];

    contentInfoText = [v11 contentInfoText];
    [v12 setSubtitle:contentInfoText];

    v15 = [ICNoteListSortUtilities dateForCurrentSortTypeForNote:v11 folderNoteSortType:0];
    ic_briefFormattedDate = [v15 ic_briefFormattedDate];
    [v12 setExtraDisambiguationText:ic_briefFormattedDate];
  }

  else
  {
    NSLog(@"ListItem.object is not a SANoteObject object");
    v12 = 0;
  }

  return v12;
}

@end