@interface InboxRepliedSectionItem
- (InboxRepliedSectionItem)initWithOccurrenceInfo:(id)info;
- (id)description;
@end

@implementation InboxRepliedSectionItem

- (InboxRepliedSectionItem)initWithOccurrenceInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = InboxRepliedSectionItem;
  v6 = [(InboxRepliedSectionItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_occurrenceInfo, info);
  }

  return v7;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = InboxRepliedSectionItem;
  v3 = [(InboxRepliedSectionItem *)&v10 description];
  cellFrameDictionary = [(InboxRepliedSectionItem *)self cellFrameDictionary];
  event = [(InboxRepliedSectionItem *)self event];
  occurrenceInfo = [(InboxRepliedSectionItem *)self occurrenceInfo];
  notification = [(InboxRepliedSectionItem *)self notification];
  v8 = [NSString stringWithFormat:@"[%@] cellFrameDictionary: [%@] event: [%@] occurrenceInfo: [%@] notification: [%@]", v3, cellFrameDictionary, event, occurrenceInfo, notification];

  return v8;
}

@end