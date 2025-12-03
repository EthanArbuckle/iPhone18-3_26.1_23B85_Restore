@interface AVMutableTimedMetadataGroup
- (AVMutableTimedMetadataGroup)initWithItems:(id)items timeRange:(id *)range;
- (CMTimeRange)timeRange;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setItems:(NSArray *)items;
- (void)setTimeRange:(CMTimeRange *)timeRange;
@end

@implementation AVMutableTimedMetadataGroup

- (AVMutableTimedMetadataGroup)initWithItems:(id)items timeRange:(id *)range
{
  v9.receiver = self;
  v9.super_class = AVMutableTimedMetadataGroup;
  v4 = *&range->var0.var3;
  v8[0] = *&range->var0.var0;
  v8[1] = v4;
  v8[2] = *&range->var1.var1;
  v5 = [(AVTimedMetadataGroup *)&v9 initWithItems:items timeRange:v8];
  v6 = v5;
  if (v5)
  {
    v5->_mutablePriv = [(AVTimedMetadataGroup *)v5 _timedMetadataGroupInternal];
  }

  return v6;
}

- (CMTimeRange)timeRange
{
  epoch = self->start.epoch;
  v4 = epoch[2];
  *&retstr->start.value = epoch[1];
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = epoch[3];
  return self;
}

- (void)setTimeRange:(CMTimeRange *)timeRange
{
  mutablePriv = self->_mutablePriv;
  v5 = *&timeRange->start.epoch;
  v4 = *&timeRange->duration.timescale;
  *&mutablePriv->timeRange.start.value = *&timeRange->start.value;
  *&mutablePriv->timeRange.start.epoch = v5;
  *&mutablePriv->timeRange.duration.timescale = v4;
}

- (void)setItems:(NSArray *)items
{
  if (items)
  {
    v3 = items;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = self->_mutablePriv->items;
  if (v4 != v3)
  {

    self->_mutablePriv->items = [(NSArray *)v3 copy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTimedMetadataGroup alloc];
  items = [(AVMutableTimedMetadataGroup *)self items];
  if (self)
  {
    [(AVMutableTimedMetadataGroup *)self timeRange];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  return [(AVTimedMetadataGroup *)v4 initWithItems:items timeRange:v7];
}

@end