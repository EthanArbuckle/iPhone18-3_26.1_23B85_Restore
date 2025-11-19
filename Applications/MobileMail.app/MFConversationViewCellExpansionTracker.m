@interface MFConversationViewCellExpansionTracker
- (MFConversationViewCellExpansionTracker)initWithDelegate:(id)a3;
- (MFConversationViewCellExpansionTrackerDelegate)delegate;
- (NSDictionary)dictionaryRepresentation;
- (int64_t)expansionStatusForCellWithItemID:(id)a3;
- (void)_updateCollapsingAllowed;
- (void)resetRecord;
- (void)restoreDictionaryRepresentation:(id)a3;
- (void)setMessageWithItemID:(id)a3 expansionStatus:(int64_t)a4;
@end

@implementation MFConversationViewCellExpansionTracker

- (MFConversationViewCellExpansionTracker)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MFConversationViewCellExpansionTracker;
  v5 = [(MFConversationViewCellExpansionTracker *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(MFConversationViewCellExpansionTracker *)v5 setDelegate:v4];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"_updateCollapsingAllowed" name:MailApplicationDidChangeConversationViewCollapseReadMessagesNotification object:0];

    v8 = objc_alloc_init(NSMutableDictionary);
    expansionRecord = v6->_expansionRecord;
    v6->_expansionRecord = v8;
  }

  return v6;
}

- (void)_updateCollapsingAllowed
{
  v3 = [(MFConversationViewCellExpansionTracker *)self delegate];
  [v3 expansionTracker:self didChangeCollapsingAllowed:{objc_msgSend(objc_opt_class(), "allowsCollapsing")}];
}

- (int64_t)expansionStatusForCellWithItemID:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() allowsCollapsing])
  {
    v5 = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

- (void)setMessageWithItemID:(id)a3 expansionStatus:(int64_t)a4
{
  v8 = a3;
  v6 = [NSNumber numberWithInteger:a4];
  v7 = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

- (void)resetRecord
{
  v2 = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
  [v2 removeAllObjects];
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
  v3 = [v2 copy];

  return v3;
}

- (void)restoreDictionaryRepresentation:(id)a3
{
  v5 = a3;
  [(MFConversationViewCellExpansionTracker *)self resetRecord];
  v4 = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
  [v4 addEntriesFromDictionary:v5];
}

- (MFConversationViewCellExpansionTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end