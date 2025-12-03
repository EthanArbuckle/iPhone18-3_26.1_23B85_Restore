@interface MFConversationViewCellExpansionTracker
- (MFConversationViewCellExpansionTracker)initWithDelegate:(id)delegate;
- (MFConversationViewCellExpansionTrackerDelegate)delegate;
- (NSDictionary)dictionaryRepresentation;
- (int64_t)expansionStatusForCellWithItemID:(id)d;
- (void)_updateCollapsingAllowed;
- (void)resetRecord;
- (void)restoreDictionaryRepresentation:(id)representation;
- (void)setMessageWithItemID:(id)d expansionStatus:(int64_t)status;
@end

@implementation MFConversationViewCellExpansionTracker

- (MFConversationViewCellExpansionTracker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = MFConversationViewCellExpansionTracker;
  v5 = [(MFConversationViewCellExpansionTracker *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(MFConversationViewCellExpansionTracker *)v5 setDelegate:delegateCopy];
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
  delegate = [(MFConversationViewCellExpansionTracker *)self delegate];
  [delegate expansionTracker:self didChangeCollapsingAllowed:{objc_msgSend(objc_opt_class(), "allowsCollapsing")}];
}

- (int64_t)expansionStatusForCellWithItemID:(id)d
{
  dCopy = d;
  if ([objc_opt_class() allowsCollapsing])
  {
    expansionRecord = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
    v6 = [expansionRecord objectForKeyedSubscript:dCopy];

    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 3;
  }

  return integerValue;
}

- (void)setMessageWithItemID:(id)d expansionStatus:(int64_t)status
{
  dCopy = d;
  v6 = [NSNumber numberWithInteger:status];
  expansionRecord = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
  [expansionRecord setObject:v6 forKeyedSubscript:dCopy];
}

- (void)resetRecord
{
  expansionRecord = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
  [expansionRecord removeAllObjects];
}

- (NSDictionary)dictionaryRepresentation
{
  expansionRecord = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
  v3 = [expansionRecord copy];

  return v3;
}

- (void)restoreDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  [(MFConversationViewCellExpansionTracker *)self resetRecord];
  expansionRecord = [(MFConversationViewCellExpansionTracker *)self expansionRecord];
  [expansionRecord addEntriesFromDictionary:representationCopy];
}

- (MFConversationViewCellExpansionTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end