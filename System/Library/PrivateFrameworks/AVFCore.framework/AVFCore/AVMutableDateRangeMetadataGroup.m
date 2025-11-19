@interface AVMutableDateRangeMetadataGroup
- (NSArray)items;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)_initWithTaggedRangeMetadataDictionary:(id)a3 items:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setEndDate:(NSDate *)endDate;
- (void)setItems:(NSArray *)items;
- (void)setStartDate:(NSDate *)startDate;
@end

@implementation AVMutableDateRangeMetadataGroup

- (id)_initWithTaggedRangeMetadataDictionary:(id)a3 items:(id)a4
{
  v7.receiver = self;
  v7.super_class = AVMutableDateRangeMetadataGroup;
  v4 = [(AVDateRangeMetadataGroup *)&v7 _initWithTaggedRangeMetadataDictionary:a3 items:a4];
  v5 = v4;
  if (v4)
  {
    v4[2] = [v4 _dateRangeMetadataGroupInternal];
  }

  return v5;
}

- (NSDate)startDate
{
  v3.receiver = self;
  v3.super_class = AVMutableDateRangeMetadataGroup;
  return [(AVDateRangeMetadataGroup *)&v3 startDate];
}

- (void)setStartDate:(NSDate *)startDate
{
  v4 = [(NSDate *)startDate copy];

  self->_mutablePriv->startDate = v4;
}

- (NSDate)endDate
{
  v3.receiver = self;
  v3.super_class = AVMutableDateRangeMetadataGroup;
  return [(AVDateRangeMetadataGroup *)&v3 endDate];
}

- (void)setEndDate:(NSDate *)endDate
{
  v4 = [(NSDate *)endDate copy];

  self->_mutablePriv->endDate = v4;
}

- (NSArray)items
{
  v3.receiver = self;
  v3.super_class = AVMutableDateRangeMetadataGroup;
  return [(AVDateRangeMetadataGroup *)&v3 items];
}

- (void)setItems:(NSArray *)items
{
  if (!items)
  {
    items = [MEMORY[0x1E695DEC8] array];
  }

  v4 = [(NSArray *)items copy];

  self->_mutablePriv->metadataItems = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVDateRangeMetadataGroup alloc];
  v5 = [(AVDateRangeMetadataGroup *)self _taggedRangeMetadataDictionary];
  v6 = [(AVMutableDateRangeMetadataGroup *)self items];

  return [(AVDateRangeMetadataGroup *)v4 _initWithTaggedRangeMetadataDictionary:v5 items:v6];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = AVMutableDateRangeMetadataGroup;
  return [(AVDateRangeMetadataGroup *)&v4 mutableCopyWithZone:a3];
}

@end