@interface ICWindowStateArchive
+ (ICWindowStateArchive)windowStateArchiveWithDefaultState;
+ (ICWindowStateArchive)windowStateArchiveWithEmptyState;
+ (id)windowStateArchiveFromDictionary:(id)a3;
- (BOOL)isActiveEditorInEditMode;
- (BOOL)isAttachmentBrowserOpen;
- (BOOL)isAuxiliaryWindow;
- (BOOL)isPrimaryContentVisible;
- (BOOL)isSupplementaryContentVisible;
- (BOOL)isSystemPaper;
- (BOOL)isTrailingContentVisible;
- (ICActivityStreamSelection)currentActivityStreamSelection;
- (ICWindowStateArchive)init;
- (ICWindowStateArchive)initWithDictionary:(id)a3;
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
- (id)scrollStateForNote:(id)a3;
- (int64_t)currentActivityStreamViewMode;
- (int64_t)currentNoteContainerViewMode;
- (int64_t)noteCreationApproach;
- (int64_t)preferredNoteContainerViewMode;
- (void)setActiveEditorInEditMode:(BOOL)a3;
- (void)setAttachmentBrowserOpen:(BOOL)a3;
- (void)setCurrentActivityStreamSelection:(id)a3;
- (void)setCurrentActivityStreamViewMode:(int64_t)a3;
- (void)setCurrentContainerObjectIDURLs:(id)a3;
- (void)setCurrentFirstVisibleObjectIDURLForContainerObjectIDURL:(id)a3;
- (void)setCurrentInvitationObjectIDURL:(id)a3;
- (void)setCurrentNoteContainerViewMode:(int64_t)a3;
- (void)setCurrentNoteLastViewedDate:(id)a3;
- (void)setCurrentNoteObjectIDURL:(id)a3;
- (void)setCurrentObjectIDURL:(id)a3;
- (void)setCurrentSearchTerm:(id)a3;
- (void)setCurrentTagIdentifiers:(id)a3;
- (void)setCurrentVirtualSmartFolderAccountObjectIDURL:(id)a3;
- (void)setCurrentVirtualSmartFolderType:(id)a3;
- (void)setExpansionState:(id)a3;
- (void)setFocusedNoteObjectIDURL:(id)a3;
- (void)setHostApplicationIdentifier:(id)a3;
- (void)setIsAuxiliaryWindow:(BOOL)a3;
- (void)setIsPrimaryContentVisible:(BOOL)a3;
- (void)setIsSupplementaryContentVisible:(BOOL)a3;
- (void)setIsTrailingContentVisible:(BOOL)a3;
- (void)setMainSplitViewPrimaryColumnWidth:(id)a3;
- (void)setMainSplitViewSupplementaryColumnWidth:(id)a3;
- (void)setNoteCreationApproach:(int64_t)a3;
- (void)setPreferredNoteContainerViewMode:(int64_t)a3;
- (void)setScrollState:(id)a3;
- (void)setSelectionState:(id)a3;
- (void)setSystemPaper:(BOOL)a3;
- (void)setToolPickerIdentifier:(id)a3;
- (void)setWindowIdentifier:(id)a3;
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
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"windowIdentifier"];

  if (!v3)
  {
    v4 = +[NSUUID UUID];
    v3 = [v4 UUIDString];
  }

  return v3;
}

- (NSString)toolPickerIdentifier
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"toolPickerIdentifier"];

  return v3;
}

- (NSDictionary)expansionState
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"kICWindowStateExpansionState"];

  return v3;
}

- (BOOL)isAuxiliaryWindow
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"isAuxiliaryWindow"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)hostApplicationIdentifier
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"hostApplicationIdentifier"];

  return v3;
}

- (NSData)selectionState
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"kICWindowStateSelectionState"];

  return v3;
}

- (NSURL)currentObjectIDURL
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentObjectID"];

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
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentContainerObjectIDURLs"];

  v4 = [v3 ic_compactMap:&stru_100647450];

  return v4;
}

- (NSURL)currentNoteObjectIDURL
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentNoteObjectID"];

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
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentSearchTerm"];

  return v3;
}

- (int64_t)noteCreationApproach
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"createNewNoteApproach"];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)isSystemPaper
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"isSystemPaper"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)currentNoteContainerViewMode
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentNoteContainerViewMode"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)preferredNoteContainerViewMode
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"kICWindowStatePreferredNoteContainerViewMode"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (BOOL)isAttachmentBrowserOpen
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"attachmentBrowserOpen"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setCurrentContainerObjectIDURLs:(id)a3
{
  v7 = [a3 ic_compactMap:&stru_100647490];
  v4 = [(ICWindowStateArchive *)self stateDictionary];
  v5 = [v4 mutableCopy];

  [v5 setObject:v7 forKeyedSubscript:@"currentContainerObjectIDURLs"];
  v6 = [v5 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSArray)currentTagIdentifiers
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentTagIdentifiers"];

  return v3;
}

- (void)setCurrentTagIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"currentTagIdentifiers"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSString)currentVirtualSmartFolderType
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentVirtualSmartFolderType"];

  return v3;
}

- (void)setCurrentVirtualSmartFolderType:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"currentVirtualSmartFolderType"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSURL)currentVirtualSmartFolderAccountObjectIDURL
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentVirtualSmartFolderAccountObjectIDURL"];

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

- (void)setCurrentVirtualSmartFolderAccountObjectIDURL:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 absoluteString];

  [v8 setObject:v6 forKeyedSubscript:@"currentVirtualSmartFolderAccountObjectIDURL"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (NSDictionary)currentFirstVisibleObjectIDURLForContainerObjectIDURL
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"firstVisibleIdentifierForContainerIdentifier"];

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

- (void)setCurrentFirstVisibleObjectIDURLForContainerObjectIDURL:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
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
        v13 = [v12 absoluteString];
        v14 = [v11 absoluteString];
        [v5 setObject:v13 forKeyedSubscript:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = [(ICWindowStateArchive *)self stateDictionary];
  v16 = [v15 mutableCopy];

  v17 = [v5 copy];
  [v16 setObject:v17 forKeyedSubscript:@"firstVisibleIdentifierForContainerIdentifier"];

  v18 = [v16 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v18];
}

- (void)setCurrentNoteObjectIDURL:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 absoluteString];

  [v8 setObject:v6 forKeyedSubscript:@"currentNoteObjectID"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (NSURL)currentInvitationObjectIDURL
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentInvitationObjectID"];

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

- (void)setCurrentInvitationObjectIDURL:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 absoluteString];

  [v8 setObject:v6 forKeyedSubscript:@"currentInvitationObjectID"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setCurrentObjectIDURL:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 absoluteString];

  [v8 setObject:v6 forKeyedSubscript:@"currentObjectID"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (NSURL)focusedNoteObjectIDURL
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"focusedNoteObjectIDURL"];

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

- (void)setFocusedNoteObjectIDURL:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 absoluteString];

  [v8 setObject:v6 forKeyedSubscript:@"focusedNoteObjectIDURL"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setCurrentSearchTerm:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"currentSearchTerm"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (void)setCurrentNoteContainerViewMode:(int64_t)a3
{
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v6 forKeyedSubscript:@"currentNoteContainerViewMode"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setPreferredNoteContainerViewMode:(int64_t)a3
{
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v6 forKeyedSubscript:@"kICWindowStatePreferredNoteContainerViewMode"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (ICActivityStreamSelection)currentActivityStreamSelection
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentActivityStreamSelection"];

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

- (void)setCurrentActivityStreamSelection:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 encodedData];

  [v8 setObject:v6 forKeyedSubscript:@"currentActivityStreamSelection"];
  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (int64_t)currentActivityStreamViewMode
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentActivityStreamViewMode"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCurrentActivityStreamViewMode:(int64_t)a3
{
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v6 forKeyedSubscript:@"currentActivityStreamViewMode"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (BOOL)isPrimaryContentVisible
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"isPrimaryContentVisible"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)setIsPrimaryContentVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithBool:v3];
  [v8 setObject:v6 forKeyedSubscript:@"isPrimaryContentVisible"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (BOOL)isSupplementaryContentVisible
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"isSupplementaryContentVisible"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)setIsSupplementaryContentVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithBool:v3];
  [v8 setObject:v6 forKeyedSubscript:@"isSupplementaryContentVisible"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (BOOL)isTrailingContentVisible
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"isTrailingContentVisible"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)setIsTrailingContentVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithBool:v3];
  [v8 setObject:v6 forKeyedSubscript:@"isTrailingContentVisible"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (NSNumber)mainSplitViewPrimaryColumnWidth
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"mainSplitViewPrimaryColumnWidth"];

  return v3;
}

- (void)setMainSplitViewPrimaryColumnWidth:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"mainSplitViewPrimaryColumnWidth"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSNumber)mainSplitViewSupplementaryColumnWidth
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"mainSplitViewSupplementaryColumnWidth"];

  return v3;
}

- (void)setMainSplitViewSupplementaryColumnWidth:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"mainSplitViewSupplementaryColumnWidth"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (void)setExpansionState:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"kICWindowStateExpansionState"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (NSDate)currentNoteLastViewedDate
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"currentNoteLastViewedDate"];

  return v3;
}

- (void)setCurrentNoteLastViewedDate:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 copy];
  [v8 setObject:v6 forKeyedSubscript:@"currentNoteLastViewedDate"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setWindowIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [v5 mutableCopy];

  [v7 setObject:v4 forKeyedSubscript:@"windowIdentifier"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

- (void)setNoteCreationApproach:(int64_t)a3
{
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v6 forKeyedSubscript:@"createNewNoteApproach"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setToolPickerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 copy];
  [v8 setObject:v6 forKeyedSubscript:@"toolPickerIdentifier"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setSystemPaper:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithBool:v3];
  [v8 setObject:v6 forKeyedSubscript:@"isSystemPaper"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setHostApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [v4 copy];
  [v8 setObject:v6 forKeyedSubscript:@"hostApplicationIdentifier"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setAttachmentBrowserOpen:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithBool:v3];
  [v8 setObject:v6 forKeyedSubscript:@"attachmentBrowserOpen"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (BOOL)isActiveEditorInEditMode
{
  v2 = [(ICWindowStateArchive *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"activeEditorInEditMode"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setActiveEditorInEditMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithBool:v3];
  [v8 setObject:v6 forKeyedSubscript:@"activeEditorInEditMode"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (void)setIsAuxiliaryWindow:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v8 = [v5 mutableCopy];

  v6 = [NSNumber numberWithBool:v3];
  [v8 setObject:v6 forKeyedSubscript:@"isAuxiliaryWindow"];

  v7 = [v8 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v7];
}

- (id)scrollStateForNote:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v6 = [v5 objectForKeyedSubscript:@"scrollState"];

  objc_opt_class();
  v7 = ICDynamicCast();

  if (v7)
  {
    v8 = [[ICTextViewScrollState alloc] initWithDictionary:v7 note:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setScrollState:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  if (v4)
  {
    v8 = v4;
    v5 = [(ICWindowStateArchive *)self stateDictionary];
    v6 = [v5 mutableCopy];

    [v6 setObject:v8 forKeyedSubscript:@"scrollState"];
    v7 = [v6 copy];
    [(ICWindowStateArchive *)self setStateDictionary:v7];

    v4 = v8;
  }
}

- (void)setSelectionState:(id)a3
{
  v4 = a3;
  v5 = [(ICWindowStateArchive *)self stateDictionary];
  v7 = [v5 mutableCopy];

  [v7 ic_setNonNilObject:v4 forNonNilKey:@"kICWindowStateSelectionState"];
  v6 = [v7 copy];
  [(ICWindowStateArchive *)self setStateDictionary:v6];
}

+ (id)windowStateArchiveFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[ICWindowStateArchive alloc] initWithDictionary:v3];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICWindowStateArchive;
  v3 = [(ICWindowStateArchive *)&v7 description];
  v4 = [(ICWindowStateArchive *)self stateDictionary];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (ICWindowStateArchive)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICWindowStateArchive;
  v5 = [(ICWindowStateArchive *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICWindowStateArchive *)v5 setStateDictionary:v4];
  }

  return v6;
}

+ (ICWindowStateArchive)windowStateArchiveWithEmptyState
{
  v2 = [[a1 alloc] initWithDictionary:&__NSDictionary0__struct];

  return v2;
}

+ (ICWindowStateArchive)windowStateArchiveWithDefaultState
{
  v2 = objc_alloc_init(a1);
  [v2 setCurrentNoteContainerViewMode:0];
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];
  v5 = [ICAccount allActiveAccountsInContext:v4];

  v6 = [v5 count];
  if (v6 < 2)
  {
    v8 = v6;
    v9 = +[NotesApp sharedNotesApp];
    v10 = [v9 noteContext];
    v11 = [v10 allAccounts];
    v7 = [v11 ic_objectsPassingTest:&stru_1006474D0];

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

      v14 = [v13 firstObject];
      v15 = [v14 objectID];
      v16 = [v15 URIRepresentation];

      if (v16)
      {
        v19 = v16;
        v17 = [NSArray arrayWithObjects:&v19 count:1];
        [v2 setCurrentContainerObjectIDURLs:v17];

        [v2 setCurrentObjectIDURL:v16];
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