@interface InboxRepliedSectionItem
- (InboxRepliedSectionItem)initWithOccurrenceInfo:(id)a3;
- (id)description;
@end

@implementation InboxRepliedSectionItem

- (InboxRepliedSectionItem)initWithOccurrenceInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = InboxRepliedSectionItem;
  v6 = [(InboxRepliedSectionItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_occurrenceInfo, a3);
  }

  return v7;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = InboxRepliedSectionItem;
  v3 = [(InboxRepliedSectionItem *)&v10 description];
  v4 = [(InboxRepliedSectionItem *)self cellFrameDictionary];
  v5 = [(InboxRepliedSectionItem *)self event];
  v6 = [(InboxRepliedSectionItem *)self occurrenceInfo];
  v7 = [(InboxRepliedSectionItem *)self notification];
  v8 = [NSString stringWithFormat:@"[%@] cellFrameDictionary: [%@] event: [%@] occurrenceInfo: [%@] notification: [%@]", v3, v4, v5, v6, v7];

  return v8;
}

@end