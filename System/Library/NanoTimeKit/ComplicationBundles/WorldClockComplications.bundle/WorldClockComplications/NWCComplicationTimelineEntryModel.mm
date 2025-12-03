@interface NWCComplicationTimelineEntryModel
- (NWCComplicationTimelineEntryModel)initWithEntryDate:(id)date;
- (id)timelineEntryForComplicationFamily:(int64_t)family;
@end

@implementation NWCComplicationTimelineEntryModel

- (NWCComplicationTimelineEntryModel)initWithEntryDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = NWCComplicationTimelineEntryModel;
  v6 = [(NWCComplicationTimelineEntryModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryDate, date);
  }

  return v7;
}

- (id)timelineEntryForComplicationFamily:(int64_t)family
{
  v5 = objc_opt_new();
  entryDate = [(NWCComplicationTimelineEntryModel *)self entryDate];
  [v5 setDate:entryDate];

  v7 = [(NWCComplicationTimelineEntryModel *)self templateForComplicationFamily:family];
  [v5 setComplicationTemplate:v7];

  [v5 finalize];

  return v5;
}

@end