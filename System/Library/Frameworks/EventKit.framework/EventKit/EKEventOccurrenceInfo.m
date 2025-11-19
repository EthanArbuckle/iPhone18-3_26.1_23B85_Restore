@interface EKEventOccurrenceInfo
- (EKEventOccurrenceInfo)initWithObjectID:(id)a3 date:(double)a4;
- (id)description;
@end

@implementation EKEventOccurrenceInfo

- (EKEventOccurrenceInfo)initWithObjectID:(id)a3 date:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = EKEventOccurrenceInfo;
  v8 = [(EKEventOccurrenceInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_objectID, a3);
    v9->_date = a4;
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