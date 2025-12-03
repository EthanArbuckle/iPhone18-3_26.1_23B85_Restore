@interface EKEventOccurrenceInfo
- (EKEventOccurrenceInfo)initWithObjectID:(id)d date:(double)date;
- (id)description;
@end

@implementation EKEventOccurrenceInfo

- (EKEventOccurrenceInfo)initWithObjectID:(id)d date:(double)date
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = EKEventOccurrenceInfo;
  v8 = [(EKEventOccurrenceInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_objectID, d);
    v9->_date = date;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = EKEventOccurrenceInfo;
  v4 = [(EKEventOccurrenceInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"[%@] rowID: [%d] date: [%f]", v4, -[EKObjectID rowID](self->_objectID, "rowID"), *&self->_date];

  return v5;
}

@end