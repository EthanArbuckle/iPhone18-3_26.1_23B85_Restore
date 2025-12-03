@interface ICWindowStateArchive
+ (ICWindowStateArchive)windowStateArchiveWithDefaultState;
+ (ICWindowStateArchive)windowStateArchiveWithEmptyState;
+ (id)windowStateArchiveFromDictionary:(id)dictionary;
- (BOOL)isActiveEditorInEditMode;
- (BOOL)isAttachmentBrowserOpen;
- (BOOL)isAuxiliaryWindow;
- (BOOL)isPrimaryContentVisible;
- (BOOL)isSupplementaryContentVisible;
- (BOOL)isSystemPaper;
- (BOOL)isTrailingContentVisible;
- (ICActivityStreamSelection)currentActivityStreamSelection;
- (ICWindowStateArchive)init;
- (ICWindowStateArchive)initWithDictionary:(id)dictionary;
- (NSArray)currentContainerObjectIDURLs;
- (NSArray)currentTagIdentifiers;
- (NSData)selectionState;
- (NSDate)currentNoteLastViewedDate;
- (NSDictionary)currentFirstVisibleObjectIDURLForContainerObjectIDURL;
- (NSDictionary)expansionState;
- (NSNumber)mainSplitViewPrimaryColumnWidth;
- (NSNumber)mainSplitViewSupplementaryColumnWidth;
- (NSString)currentSearchTerm;
- (NSString)currentVirtualSmartFolderType;
- (NSString)hostApplicationIdentifier;
- (NSString)toolPickerIdentifier;
- (NSString)windowIdentifier;
- (NSURL)currentInvitationObjectIDURL;
- (NSURL)currentNoteObjectIDURL;
- (NSURL)currentObjectIDURL;
- (NSURL)currentVirtualSmartFolderAccountObjectIDURL;
- (NSURL)focusedNoteObjectIDURL;
- (id)description;
- (id)scrollStateForNote:(id)note;
- (int64_t)currentActivityStreamViewMode;
- (int64_t)currentNoteContainerViewMode;
- (int64_t)noteCreationApproach;
- (int64_t)preferredNoteContainerViewMode;
- (void)setActiveEditorInEditMode:(BOOL)mode;
- (void)setAttachmentBrowserOpen:(BOOL)open;
- (void)setCurrentActivityStreamSelection:(id)selection;
- (void)setCurrentActivityStreamViewMode:(int64_t)mode;
- (void)setCurrentContainerObjectIDURLs:(id)ls;
- (void)setCurrentFirstVisibleObjectIDURLForContainerObjectIDURL:(id)l;
- (void)setCurrentInvitationObjectIDURL:(id)l;
- (void)setCurrentNoteContainerViewMode:(int64_t)mode;
- (void)setCurrentNoteLastViewedDate:(id)date;
- (void)setCurrentNoteObjectIDURL:(id)l;
- (void)setCurrentObjectIDURL:(id)l;
- (void)setCurrentSearchTerm:(id)term;
- (void)setCurrentTagIdentifiers:(id)identifiers;
- (void)setCurrentVirtualSmartFolderAccountObjectIDURL:(id)l;
- (void)setCurrentVirtualSmartFolderType:(id)type;
- (void)setExpansionState:(id)state;
- (void)setFocusedNoteObjectIDURL:(id)l;
- (void)setHostApplicationIdentifier:(id)identifier;
- (void)setIsAuxiliaryWindow:(BOOL)window;
- (void)setIsPrimaryContentVisible:(BOOL)visible;
- (void)setIsSupplementaryContentVisible:(BOOL)visible;
- (void)setIsTrailingContentVisible:(BOOL)visible;
- (void)setMainSplitViewPrimaryColumnWidth:(id)width;
- (void)setMainSplitViewSupplementaryColumnWidth:(id)width;
- (void)setNoteCreationApproach:(int64_t)approach;
- (void)setPreferredNoteContainerViewMode:(int64_t)mode;
- (void)setScrollState:(id)state;
- (void)setSelectionState:(id)state;
- (void)setSystemPaper:(BOOL)paper;
- (void)setToolPickerIdentifier:(id)identifier;
- (void)setWindowIdentifier:(id)identifier;
@end

@implementation ICWindowStateArchive

- (ICWindowStateArchive)init
{
  v6[0] = @"isPrimaryContentVisible";
  v6[1] = @"isSupplementaryContentVisible";
  v7[0] = &__kCFBooleanFalse;
  v7[1] = &__kCFBooleanTrue;
  v6[2] = @"isTrailingContentVisible";
  v7[2] = &__kCFBooleanFalse;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = [(ICWindowStateArchive *)self initWithDictionary:v3];

  return v4;
}

- (NSString)windowIdentifier
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  uUIDString = [stateDictionary objectForKeyedSubscript:@"windowIdentifier"];

  if (!uUIDString)
  {
    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];
  }

  return uUIDString;
}

- (NSString)toolPickerIdentifier
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"toolPickerIdentifier"];

  return v3;
}

- (NSDictionary)expansionState
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"kICWindowStateExpansionState"];

  return v3;
}

- (BOOL)isAuxiliaryWindow
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"isAuxiliaryWindow"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)hostApplicationIdentifier
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"hostApplicationIdentifier"];

  return v3;
}

- (NSData)selectionState
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"kICWindowStateSelectionState"];

  return v3;
}

- (NSURL)currentObjectIDURL
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentObjectID"];

  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)currentContainerObjectIDURLs
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentContainerObjectIDURLs"];

  v4 = [v3 ic_compactMap:&stru_100647450];

  return v4;
}

- (NSURL)currentNoteObjectIDURL
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentNoteObjectID"];

  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)currentSearchTerm
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentSearchTerm"];

  return v3;
}

- (int64_t)noteCreationApproach
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"createNewNoteApproach"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isSystemPaper
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"isSystemPaper"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int64_t)currentNoteContainerViewMode
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentNoteContainerViewMode"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)preferredNoteContainerViewMode
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"kICWindowStatePreferredNoteContainerViewMode"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (BOOL)isAttachmentBrowserOpen
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"attachmentBrowserOpen"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setCurrentContainerObjectIDURLs:(id)ls
{
  v7 = [ls ic_compactMap:&stru_100647490];
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v5 = [stateDictionary mutableCopy];

  [v5 setObject:v7 forKeyedSubscript:@"currentContainerObjectIDURLs"];
  v6 = [v5 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSArray)currentTagIdentifiers
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentTagIdentifiers"];

  return v3;
}

- (void)setCurrentTagIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [stateDictionary mutableCopy];

  [v7 setObject:identifiersCopy forKeyedSubscript:@"currentTagIdentifiers"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSString)currentVirtualSmartFolderType
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentVirtualSmartFolderType"];

  return v3;
}

- (void)setCurrentVirtualSmartFolderType:(id)type
{
  typeCopy = type;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [stateDictionary mutableCopy];

  [v7 setObject:typeCopy forKeyedSubscript:@"currentVirtualSmartFolderType"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSURL)currentVirtualSmartFolderAccountObjectIDURL
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentVirtualSmartFolderAccountObjectIDURL"];

  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCurrentVirtualSmartFolderAccountObjectIDURL:(id)l
{
  lCopy = l;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v8 setObject:absoluteString forKeyedSubscript:@"currentVirtualSmartFolderAccountObjectIDURL"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (NSDictionary)currentFirstVisibleObjectIDURLForContainerObjectIDURL
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"firstVisibleIdentifierForContainerIdentifier"];

  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v15}];
        v12 = [NSURL URLWithString:v11];
        v13 = [NSURL URLWithString:v10];
        [v4 setObject:v12 forKeyedSubscript:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)setCurrentFirstVisibleObjectIDURLForContainerObjectIDURL:(id)l
{
  lCopy = l;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [lCopy count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = lCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v19}];
        absoluteString = [v12 absoluteString];
        absoluteString2 = [v11 absoluteString];
        [v5 setObject:absoluteString forKeyedSubscript:absoluteString2];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v16 = [stateDictionary mutableCopy];

  v17 = [v5 copy];
  [v16 setObject:v17 forKeyedSubscript:@"firstVisibleIdentifierForContainerIdentifier"];

  v18 = [v16 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v18];
}

- (void)setCurrentNoteObjectIDURL:(id)l
{
  lCopy = l;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v8 setObject:absoluteString forKeyedSubscript:@"currentNoteObjectID"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (NSURL)currentInvitationObjectIDURL
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentInvitationObjectID"];

  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCurrentInvitationObjectIDURL:(id)l
{
  lCopy = l;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v8 setObject:absoluteString forKeyedSubscript:@"currentInvitationObjectID"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setCurrentObjectIDURL:(id)l
{
  lCopy = l;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v8 setObject:absoluteString forKeyedSubscript:@"currentObjectID"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (NSURL)focusedNoteObjectIDURL
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"focusedNoteObjectIDURL"];

  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFocusedNoteObjectIDURL:(id)l
{
  lCopy = l;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v8 setObject:absoluteString forKeyedSubscript:@"focusedNoteObjectIDURL"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setCurrentSearchTerm:(id)term
{
  termCopy = term;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [stateDictionary mutableCopy];

  [v7 setObject:termCopy forKeyedSubscript:@"currentSearchTerm"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (void)setCurrentNoteContainerViewMode:(int64_t)mode
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithInteger:mode];
  [v8 setObject:v6 forKeyedSubscript:@"currentNoteContainerViewMode"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setPreferredNoteContainerViewMode:(int64_t)mode
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithInteger:mode];
  [v8 setObject:v6 forKeyedSubscript:@"kICWindowStatePreferredNoteContainerViewMode"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (ICActivityStreamSelection)currentActivityStreamSelection
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentActivityStreamSelection"];

  if (v3)
  {
    v4 = [ICActivityStreamSelection selectionFromData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCurrentActivityStreamSelection:(id)selection
{
  selectionCopy = selection;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  encodedData = [selectionCopy encodedData];

  [v8 setObject:encodedData forKeyedSubscript:@"currentActivityStreamSelection"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (int64_t)currentActivityStreamViewMode
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentActivityStreamViewMode"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setCurrentActivityStreamViewMode:(int64_t)mode
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithInteger:mode];
  [v8 setObject:v6 forKeyedSubscript:@"currentActivityStreamViewMode"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (BOOL)isPrimaryContentVisible
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"isPrimaryContentVisible"];

  LOBYTE(stateDictionary) = [v3 BOOLValue];
  return stateDictionary;
}

- (void)setIsPrimaryContentVisible:(BOOL)visible
{
  visibleCopy = visible;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithBool:visibleCopy];
  [v8 setObject:v6 forKeyedSubscript:@"isPrimaryContentVisible"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (BOOL)isSupplementaryContentVisible
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"isSupplementaryContentVisible"];

  LOBYTE(stateDictionary) = [v3 BOOLValue];
  return stateDictionary;
}

- (void)setIsSupplementaryContentVisible:(BOOL)visible
{
  visibleCopy = visible;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithBool:visibleCopy];
  [v8 setObject:v6 forKeyedSubscript:@"isSupplementaryContentVisible"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (BOOL)isTrailingContentVisible
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"isTrailingContentVisible"];

  LOBYTE(stateDictionary) = [v3 BOOLValue];
  return stateDictionary;
}

- (void)setIsTrailingContentVisible:(BOOL)visible
{
  visibleCopy = visible;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithBool:visibleCopy];
  [v8 setObject:v6 forKeyedSubscript:@"isTrailingContentVisible"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (NSNumber)mainSplitViewPrimaryColumnWidth
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"mainSplitViewPrimaryColumnWidth"];

  return v3;
}

- (void)setMainSplitViewPrimaryColumnWidth:(id)width
{
  widthCopy = width;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [stateDictionary mutableCopy];

  [v7 setObject:widthCopy forKeyedSubscript:@"mainSplitViewPrimaryColumnWidth"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSNumber)mainSplitViewSupplementaryColumnWidth
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"mainSplitViewSupplementaryColumnWidth"];

  return v3;
}

- (void)setMainSplitViewSupplementaryColumnWidth:(id)width
{
  widthCopy = width;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [stateDictionary mutableCopy];

  [v7 setObject:widthCopy forKeyedSubscript:@"mainSplitViewSupplementaryColumnWidth"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (void)setExpansionState:(id)state
{
  stateCopy = state;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [stateDictionary mutableCopy];

  [v7 setObject:stateCopy forKeyedSubscript:@"kICWindowStateExpansionState"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSDate)currentNoteLastViewedDate
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"currentNoteLastViewedDate"];

  return v3;
}

- (void)setCurrentNoteLastViewedDate:(id)date
{
  dateCopy = date;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [dateCopy copy];
  [v8 setObject:v6 forKeyedSubscript:@"currentNoteLastViewedDate"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setWindowIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [stateDictionary mutableCopy];

  [v7 setObject:identifierCopy forKeyedSubscript:@"windowIdentifier"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (void)setNoteCreationApproach:(int64_t)approach
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithInteger:approach];
  [v8 setObject:v6 forKeyedSubscript:@"createNewNoteApproach"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setToolPickerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [identifierCopy copy];
  [v8 setObject:v6 forKeyedSubscript:@"toolPickerIdentifier"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setSystemPaper:(BOOL)paper
{
  paperCopy = paper;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithBool:paperCopy];
  [v8 setObject:v6 forKeyedSubscript:@"isSystemPaper"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setHostApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [identifierCopy copy];
  [v8 setObject:v6 forKeyedSubscript:@"hostApplicationIdentifier"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setAttachmentBrowserOpen:(BOOL)open
{
  openCopy = open;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithBool:openCopy];
  [v8 setObject:v6 forKeyedSubscript:@"attachmentBrowserOpen"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (BOOL)isActiveEditorInEditMode
{
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"activeEditorInEditMode"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setActiveEditorInEditMode:(BOOL)mode
{
  modeCopy = mode;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithBool:modeCopy];
  [v8 setObject:v6 forKeyedSubscript:@"activeEditorInEditMode"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setIsAuxiliaryWindow:(BOOL)window
{
  windowCopy = window;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [stateDictionary mutableCopy];

  v6 = [NSNumber numberWithBool:windowCopy];
  [v8 setObject:v6 forKeyedSubscript:@"isAuxiliaryWindow"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (id)scrollStateForNote:(id)note
{
  noteCopy = note;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v6 = [stateDictionary objectForKeyedSubscript:@"scrollState"];

  objc_opt_class();
  v7 = ICDynamicCast();

  if (v7)
  {
    v8 = [[ICTextViewScrollState alloc] initWithDictionary:v7 note:noteCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setScrollState:(id)state
{
  dictionaryRepresentation = [state dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    v8 = dictionaryRepresentation;
    stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
    v6 = [stateDictionary mutableCopy];

    [v6 setObject:v8 forKeyedSubscript:@"scrollState"];
    v7 = [v6 copy];
    [(ICWindowStateArchive *)self setStateDictionary:v7];

    dictionaryRepresentation = v8;
  }
}

- (void)setSelectionState:(id)state
{
  stateCopy = state;
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [stateDictionary mutableCopy];

  [v7 ic_setNonNilObject:stateCopy forNonNilKey:@"kICWindowStateSelectionState"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

+ (id)windowStateArchiveFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[ICWindowStateArchive alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICWindowStateArchive;
  v3 = [(ICWindowStateArchive *)&v7 description];
  stateDictionary = [(ICWindowStateArchive *)self stateDictionary];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, stateDictionary];

  return v5;
}

- (ICWindowStateArchive)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = ICWindowStateArchive;
  v5 = [(ICWindowStateArchive *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICWindowStateArchive *)v5 setStateDictionary:dictionaryCopy];
  }

  return v6;
}

+ (ICWindowStateArchive)windowStateArchiveWithEmptyState
{
  v2 = [[self alloc] initWithDictionary:&__NSDictionary0__struct];

  return v2;
}

+ (ICWindowStateArchive)windowStateArchiveWithDefaultState
{
  v2 = objc_alloc_init(self);
  [v2 setCurrentNoteContainerViewMode:0];
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];
  v5 = [ICAccount allActiveAccountsInContext:managedObjectContext];

  v6 = [v5 count];
  if (v6 < 2)
  {
    v8 = v6;
    v9 = +[NotesApp sharedNotesApp];
    noteContext = [v9 noteContext];
    allAccounts = [noteContext allAccounts];
    v7 = [allAccounts ic_objectsPassingTest:&stru_1006474D0];

    v12 = &v8[[v7 count]];
    [v2 setIsPrimaryContentVisible:v12 > 1];
    if (v12 <= 1)
    {
      if ([v5 count])
      {
        v13 = v5;
      }

      else
      {
        v13 = v7;
      }

      firstObject = [v13 firstObject];
      objectID = [firstObject objectID];
      uRIRepresentation = [objectID URIRepresentation];

      if (uRIRepresentation)
      {
        v19 = uRIRepresentation;
        v17 = [NSArray arrayWithObjects:&v19 count:1];
        [v2 setCurrentContainerObjectIDURLs:v17];

        [v2 setCurrentObjectIDURL:uRIRepresentation];
      }
    }
  }

  else
  {
    [v2 setIsPrimaryContentVisible:1];
    v7 = 0;
  }

  return v2;
}

@end